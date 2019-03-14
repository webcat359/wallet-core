// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: Stellar.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

public struct TW_Stellar_Proto_MemoVoid {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct TW_Stellar_Proto_MemoText {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var text: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct TW_Stellar_Proto_MemoId {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var id: Int64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct TW_Stellar_Proto_MemoHash {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var hash: Data = SwiftProtobuf.Internal.emptyData

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Input data necessary to create a signed transaction.
public struct TW_Stellar_Proto_SigningInput {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var amount: Int64 {
    get {return _storage._amount}
    set {_uniqueStorage()._amount = newValue}
  }

  public var fee: Int32 {
    get {return _storage._fee}
    set {_uniqueStorage()._fee = newValue}
  }

  public var sequence: Int64 {
    get {return _storage._sequence}
    set {_uniqueStorage()._sequence = newValue}
  }

  public var account: String {
    get {return _storage._account}
    set {_uniqueStorage()._account = newValue}
  }

  public var destination: String {
    get {return _storage._destination}
    set {_uniqueStorage()._destination = newValue}
  }

  /// Private key.
  public var privateKey: Data {
    get {return _storage._privateKey}
    set {_uniqueStorage()._privateKey = newValue}
  }

  public var memoTypeOneof: OneOf_MemoTypeOneof? {
    get {return _storage._memoTypeOneof}
    set {_uniqueStorage()._memoTypeOneof = newValue}
  }

  public var memoVoid: TW_Stellar_Proto_MemoVoid {
    get {
      if case .memoVoid(let v)? = _storage._memoTypeOneof {return v}
      return TW_Stellar_Proto_MemoVoid()
    }
    set {_uniqueStorage()._memoTypeOneof = .memoVoid(newValue)}
  }

  public var memoText: TW_Stellar_Proto_MemoText {
    get {
      if case .memoText(let v)? = _storage._memoTypeOneof {return v}
      return TW_Stellar_Proto_MemoText()
    }
    set {_uniqueStorage()._memoTypeOneof = .memoText(newValue)}
  }

  public var memoID: TW_Stellar_Proto_MemoId {
    get {
      if case .memoID(let v)? = _storage._memoTypeOneof {return v}
      return TW_Stellar_Proto_MemoId()
    }
    set {_uniqueStorage()._memoTypeOneof = .memoID(newValue)}
  }

  public var memoHash: TW_Stellar_Proto_MemoHash {
    get {
      if case .memoHash(let v)? = _storage._memoTypeOneof {return v}
      return TW_Stellar_Proto_MemoHash()
    }
    set {_uniqueStorage()._memoTypeOneof = .memoHash(newValue)}
  }

  public var memoReturnHash: TW_Stellar_Proto_MemoHash {
    get {
      if case .memoReturnHash(let v)? = _storage._memoTypeOneof {return v}
      return TW_Stellar_Proto_MemoHash()
    }
    set {_uniqueStorage()._memoTypeOneof = .memoReturnHash(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum OneOf_MemoTypeOneof: Equatable {
    case memoVoid(TW_Stellar_Proto_MemoVoid)
    case memoText(TW_Stellar_Proto_MemoText)
    case memoID(TW_Stellar_Proto_MemoId)
    case memoHash(TW_Stellar_Proto_MemoHash)
    case memoReturnHash(TW_Stellar_Proto_MemoHash)

  #if !swift(>=4.1)
    public static func ==(lhs: TW_Stellar_Proto_SigningInput.OneOf_MemoTypeOneof, rhs: TW_Stellar_Proto_SigningInput.OneOf_MemoTypeOneof) -> Bool {
      switch (lhs, rhs) {
      case (.memoVoid(let l), .memoVoid(let r)): return l == r
      case (.memoText(let l), .memoText(let r)): return l == r
      case (.memoID(let l), .memoID(let r)): return l == r
      case (.memoHash(let l), .memoHash(let r)): return l == r
      case (.memoReturnHash(let l), .memoReturnHash(let r)): return l == r
      default: return false
      }
    }
  #endif
  }

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

/// Transaction signing output.
public struct TW_Stellar_Proto_SigningOutput {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Signature.
  public var signature: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "TW.Stellar.Proto"

extension TW_Stellar_Proto_MemoVoid: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".MemoVoid"
  public static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: TW_Stellar_Proto_MemoVoid, rhs: TW_Stellar_Proto_MemoVoid) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension TW_Stellar_Proto_MemoText: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".MemoText"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "text"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.text)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.text.isEmpty {
      try visitor.visitSingularStringField(value: self.text, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: TW_Stellar_Proto_MemoText, rhs: TW_Stellar_Proto_MemoText) -> Bool {
    if lhs.text != rhs.text {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension TW_Stellar_Proto_MemoId: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".MemoId"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularInt64Field(value: &self.id)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.id != 0 {
      try visitor.visitSingularInt64Field(value: self.id, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: TW_Stellar_Proto_MemoId, rhs: TW_Stellar_Proto_MemoId) -> Bool {
    if lhs.id != rhs.id {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension TW_Stellar_Proto_MemoHash: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".MemoHash"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "hash"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularBytesField(value: &self.hash)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.hash.isEmpty {
      try visitor.visitSingularBytesField(value: self.hash, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: TW_Stellar_Proto_MemoHash, rhs: TW_Stellar_Proto_MemoHash) -> Bool {
    if lhs.hash != rhs.hash {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension TW_Stellar_Proto_SigningInput: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".SigningInput"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "amount"),
    2: .same(proto: "fee"),
    3: .same(proto: "sequence"),
    4: .same(proto: "account"),
    5: .same(proto: "destination"),
    6: .standard(proto: "private_key"),
    7: .standard(proto: "memo_void"),
    8: .standard(proto: "memo_text"),
    9: .standard(proto: "memo_id"),
    10: .standard(proto: "memo_hash"),
    11: .standard(proto: "memo_return_hash"),
  ]

  fileprivate class _StorageClass {
    var _amount: Int64 = 0
    var _fee: Int32 = 0
    var _sequence: Int64 = 0
    var _account: String = String()
    var _destination: String = String()
    var _privateKey: Data = SwiftProtobuf.Internal.emptyData
    var _memoTypeOneof: TW_Stellar_Proto_SigningInput.OneOf_MemoTypeOneof?

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _amount = source._amount
      _fee = source._fee
      _sequence = source._sequence
      _account = source._account
      _destination = source._destination
      _privateKey = source._privateKey
      _memoTypeOneof = source._memoTypeOneof
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularInt64Field(value: &_storage._amount)
        case 2: try decoder.decodeSingularInt32Field(value: &_storage._fee)
        case 3: try decoder.decodeSingularInt64Field(value: &_storage._sequence)
        case 4: try decoder.decodeSingularStringField(value: &_storage._account)
        case 5: try decoder.decodeSingularStringField(value: &_storage._destination)
        case 6: try decoder.decodeSingularBytesField(value: &_storage._privateKey)
        case 7:
          var v: TW_Stellar_Proto_MemoVoid?
          if let current = _storage._memoTypeOneof {
            try decoder.handleConflictingOneOf()
            if case .memoVoid(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._memoTypeOneof = .memoVoid(v)}
        case 8:
          var v: TW_Stellar_Proto_MemoText?
          if let current = _storage._memoTypeOneof {
            try decoder.handleConflictingOneOf()
            if case .memoText(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._memoTypeOneof = .memoText(v)}
        case 9:
          var v: TW_Stellar_Proto_MemoId?
          if let current = _storage._memoTypeOneof {
            try decoder.handleConflictingOneOf()
            if case .memoID(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._memoTypeOneof = .memoID(v)}
        case 10:
          var v: TW_Stellar_Proto_MemoHash?
          if let current = _storage._memoTypeOneof {
            try decoder.handleConflictingOneOf()
            if case .memoHash(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._memoTypeOneof = .memoHash(v)}
        case 11:
          var v: TW_Stellar_Proto_MemoHash?
          if let current = _storage._memoTypeOneof {
            try decoder.handleConflictingOneOf()
            if case .memoReturnHash(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._memoTypeOneof = .memoReturnHash(v)}
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if _storage._amount != 0 {
        try visitor.visitSingularInt64Field(value: _storage._amount, fieldNumber: 1)
      }
      if _storage._fee != 0 {
        try visitor.visitSingularInt32Field(value: _storage._fee, fieldNumber: 2)
      }
      if _storage._sequence != 0 {
        try visitor.visitSingularInt64Field(value: _storage._sequence, fieldNumber: 3)
      }
      if !_storage._account.isEmpty {
        try visitor.visitSingularStringField(value: _storage._account, fieldNumber: 4)
      }
      if !_storage._destination.isEmpty {
        try visitor.visitSingularStringField(value: _storage._destination, fieldNumber: 5)
      }
      if !_storage._privateKey.isEmpty {
        try visitor.visitSingularBytesField(value: _storage._privateKey, fieldNumber: 6)
      }
      switch _storage._memoTypeOneof {
      case .memoVoid(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 7)
      case .memoText(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 8)
      case .memoID(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 9)
      case .memoHash(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 10)
      case .memoReturnHash(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 11)
      case nil: break
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: TW_Stellar_Proto_SigningInput, rhs: TW_Stellar_Proto_SigningInput) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._amount != rhs_storage._amount {return false}
        if _storage._fee != rhs_storage._fee {return false}
        if _storage._sequence != rhs_storage._sequence {return false}
        if _storage._account != rhs_storage._account {return false}
        if _storage._destination != rhs_storage._destination {return false}
        if _storage._privateKey != rhs_storage._privateKey {return false}
        if _storage._memoTypeOneof != rhs_storage._memoTypeOneof {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension TW_Stellar_Proto_SigningOutput: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".SigningOutput"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "signature"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.signature)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.signature.isEmpty {
      try visitor.visitSingularStringField(value: self.signature, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: TW_Stellar_Proto_SigningOutput, rhs: TW_Stellar_Proto_SigningOutput) -> Bool {
    if lhs.signature != rhs.signature {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
