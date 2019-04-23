// Copyright © 2017-2019 Trust Wallet.
//
// This file is part of Trust. The full Trust copyright notice, including
// terms governing use, modification, and redistribution, is contained in the
// file LICENSE at the root of the source code distribution tree.

#include "TWTestUtilities.h"

#include <TrustWalletCore/TWBech32Address.h>
#include <TrustWalletCore/TWBitcoinAddress.h>
#include <TrustWalletCore/TWBitcoinScript.h>
#include <TrustWalletCore/TWHash.h>
#include <TrustWalletCore/TWHDWallet.h>
#include <TrustWalletCore/TWHRP.h>
#include <TrustWalletCore/TWP2PKHPrefix.h>
#include <TrustWalletCore/TWPrivateKey.h>

#include <gtest/gtest.h>

TEST(Viacoin, LegacyAddress) {
    auto privateKey = WRAP(TWPrivateKey, TWPrivateKeyCreateWithData(DATA("a22ddec5c567b4488bb00f69b6146c50da2ee883e2c096db098726394d585730").get()));
    auto publicKey = TWPrivateKeyGetPublicKeySecp256k1(privateKey.get(), true);
    auto address = TWBitcoinAddress();
    TWBitcoinAddressInitWithPublicKey(&address, publicKey, TWP2PKHPrefixViacoin);
    auto addressString = WRAPS(TWBitcoinAddressDescription(address));
    assertStringsEqual(addressString, "VjtD8cQgvesPYWxfWoHjwz1BuLCHwDn7PA");
}

TEST(Viacoin, Address) {
    auto privateKey = WRAP(TWPrivateKey, TWPrivateKeyCreateWithData(DATA("55f9cbb0376c422946fa28397c1219933ac60b312ede41bfacaf701ecd546625").get()));
    auto publicKey = TWPrivateKeyGetPublicKeySecp256k1(privateKey.get(), true);
    auto address = WRAP(TWBech32Address, TWBech32AddressCreateWithPublicKey(TWHRPViacoin, publicKey));
    auto string = WRAPS(TWBech32AddressDescription(address.get()));

    assertStringsEqual(string, "via1qytnqzjknvv03jwfgrsmzt0ycmwqgl0asu2r3d2");
}

TEST(Viacoin, BuildForAddressV) {
    auto script = WRAP(TWBitcoinScript, TWBitcoinScriptBuildForAddress(STRING("Vw6bJFaF5Hyiveko7dpqRjVvcTAsjz7eYa").get()));
    auto scriptData = WRAPD(TWBitcoinScriptData(script.get()));
    assertHexEqual(scriptData, "76a914e771c6695c5dd189ccc4ef00cd0f3db3096d79bd88ac");
}

TEST(Viacoin, BuildForAddressE) {
    auto script = WRAP(TWBitcoinScript, TWBitcoinScriptBuildForAddress(STRING("ESxRxvhJP6ZKtYaMGjj48As1kgCh6hXa6X").get()));
    auto scriptData = WRAPD(TWBitcoinScriptData(script.get()));
    assertHexEqual(scriptData, "a9146b85b3dac9340f36b9d32bbacf2ffcb0851ef17987");
}

TEST(Viacoin, ExtendedKeys) {
    auto wallet = WRAP(TWHDWallet, TWHDWalletCreateWithMnemonic(
        STRING("ripple scissors kick mammal hire column oak again sun offer wealth tomorrow wagon turn fatal").get(),
        STRING("TREZOR").get()
    ));

    // .bip44
    auto xpub = WRAPS(TWHDWalletGetExtendedPrivateKey(wallet.get(), TWPurposeBIP44, TWCoinTypeViacoin, TWHDVersionXPUB));
    auto xprv = WRAPS(TWHDWalletGetExtendedPublicKey(wallet.get(), TWPurposeBIP44, TWCoinTypeViacoin, TWHDVersionXPRV));

    assertStringsEqual(xpub, "xpub6Cezzf2KCXiVS4fuL4REsdU7tKruYStmsSeFfR62Hui7DUgA45rVk9M8mwvvq9EK1k9riyaHgFUELk2GNpsubV2GxqsbDaiPQ1pxmWAgbLV");
    assertStringsEqual(xprv, "xprv9yfeb9VRNAACDabSE2tEWVXPLJ2R8zAvWDies2gQjaB8LgM1WYYFCM2evs7TNQxY2EZbnDoLKKNm4KzjAhYNTBovPtQGTSojmT3NrRLPXwy");

    // .bip49
    auto yprv = WRAPS(TWHDWalletGetExtendedPrivateKey(wallet.get(), TWPurposeBIP49, TWCoinTypeViacoin, TWHDVersionYPRV));
    auto ypub = WRAPS(TWHDWalletGetExtendedPublicKey(wallet.get(), TWPurposeBIP49, TWCoinTypeViacoin, TWHDVersionYPUB));

    assertStringsEqual(yprv, "yprvAKLdkDwhRv7XF5WTrvBfUJ24Fw9k1ucaAwapzJ9qf2wJJqThVpiQNbfUNy7ptmyBfPGy3BauBWHqoA33cox7decvLedUVe7d1GTHNe2u6pY");
    assertStringsEqual(ypub, "ypub6YKz9jUbGHfpTZavxwifqRxnoxzERNLRYAWRngZTDNUHBdnr3N2evPyxEDVzsHBv8ZCtwZ7Fdx9ge9zk4nheQiDVtEApy71r2m3sLkrjeVK");

    // .bip84
    auto zprv = WRAPS(TWHDWalletGetExtendedPrivateKey(wallet.get(), TWPurposeBIP84, TWCoinTypeViacoin, TWHDVersionZPRV));
    auto zpub = WRAPS(TWHDWalletGetExtendedPublicKey(wallet.get(), TWPurposeBIP84, TWCoinTypeViacoin, TWHDVersionZPUB));
    assertStringsEqual(zprv, "zprvAcV8GDQ8b8UQpxtftFxgEbrftqsa5HxLjriVeMQEbvQFcKD7hsV5gY7DyLaGi448CNBKxZFspSKtiHNwd2VtqeUidEdD87SLumsmkDDvogA");
    assertStringsEqual(zpub, "zpub6qUUfiw2RW2i3Sy8zHVgbjoQSsi4UkgC75e6SjorAFwEV7YGFQoLELRhpe8NZ3xtsKHhbJW3kYWQLMFfCmMFDPkSer8BP9fiJcaZRL4LsR4");
}

TEST(Viacoin, DeriveFromZpub) {
    auto zpub = STRING("zpub6sCFp8chadVDXVt7GRmQFpq8B7W8wMLdFDto1hXu2jLZtvkFhRnwScXARNfrGSeyhR8DBLJnaUUkBbkmB2GwUYkecEAMUcbUpFQV4v7PXcs");
    auto pubKey4 = TWHDWalletGetPublicKeyFromExtended(zpub.get(), STRING("m/44'/14'/0'/0/4").get());
    auto pubKey11 = TWHDWalletGetPublicKeyFromExtended(zpub.get(), STRING("m/44'/14'/0'/0/11").get());

    auto address4 = WRAP(TWBech32Address, TWBech32AddressCreateWithPublicKey(TWHRPViacoin, pubKey4));
    auto address4String = WRAPS(TWBech32AddressDescription(address4.get()));

    auto address11 = WRAP(TWBech32Address, TWBech32AddressCreateWithPublicKey(TWHRPViacoin, pubKey11));
    auto address11String = WRAPS(TWBech32AddressDescription(address11.get()));

    assertStringsEqual(address4String, "via1qcgnevr9rp7aazy62m4gen0tfzlssa52agh6ugv");
    assertStringsEqual(address11String, "via1qy072y8968nzp6mz3j292h8lp72d678fc4zwd0f");
}

TEST(Viacoin, LockScripts) {
    auto script = WRAP(TWBitcoinScript, TWBitcoinScriptBuildForAddress(STRING("via1qs32zgdhe2tpzcnz55r7d9jvhce33063s8w4xre").get()));
    auto scriptData = WRAPD(TWBitcoinScriptData(script.get()));
    assertHexEqual(scriptData, "001484542436f952c22c4c54a0fcd2c997c66317ea30");

    auto script2 = WRAP(TWBitcoinScript, TWBitcoinScriptBuildForAddress(STRING("ESxRxvhJP6ZKtYaMGjj48As1kgCh6hXa6X").get()));
    auto scriptData2 = WRAPD(TWBitcoinScriptData(script2.get()));
    assertHexEqual(scriptData2, "a9146b85b3dac9340f36b9d32bbacf2ffcb0851ef17987");

    auto script3 = WRAP(TWBitcoinScript, TWBitcoinScriptBuildForAddress(STRING("Vw6bJFaF5Hyiveko7dpqRjVvcTAsjz7eYa").get()));
    auto scriptData3 = WRAPD(TWBitcoinScriptData(script3.get()));
    assertHexEqual(scriptData3, "76a914e771c6695c5dd189ccc4ef00cd0f3db3096d79bd88ac");
}
