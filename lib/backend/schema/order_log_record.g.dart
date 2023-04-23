// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_log_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OrderLogRecord> _$orderLogRecordSerializer =
    new _$OrderLogRecordSerializer();

class _$OrderLogRecordSerializer
    implements StructuredSerializer<OrderLogRecord> {
  @override
  final Iterable<Type> types = const [OrderLogRecord, _$OrderLogRecord];
  @override
  final String wireName = 'OrderLogRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, OrderLogRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.buyerID;
    if (value != null) {
      result
        ..add('BuyerID')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sellerID;
    if (value != null) {
      result
        ..add('SellerID')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.buyerAccept;
    if (value != null) {
      result
        ..add('BuyerAccept')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.sellerAccept;
    if (value != null) {
      result
        ..add('SellerAccept')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.item;
    if (value != null) {
      result
        ..add('Item')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.qty;
    if (value != null) {
      result
        ..add('Qty')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('Price')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.eta;
    if (value != null) {
      result
        ..add('ETA')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  OrderLogRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OrderLogRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'BuyerID':
          result.buyerID = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'SellerID':
          result.sellerID = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'BuyerAccept':
          result.buyerAccept = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'SellerAccept':
          result.sellerAccept = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'Item':
          result.item = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Qty':
          result.qty = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'ETA':
          result.eta = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$OrderLogRecord extends OrderLogRecord {
  @override
  final String? buyerID;
  @override
  final String? sellerID;
  @override
  final bool? buyerAccept;
  @override
  final bool? sellerAccept;
  @override
  final String? item;
  @override
  final String? qty;
  @override
  final int? price;
  @override
  final DateTime? eta;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$OrderLogRecord([void Function(OrderLogRecordBuilder)? updates]) =>
      (new OrderLogRecordBuilder()..update(updates))._build();

  _$OrderLogRecord._(
      {this.buyerID,
      this.sellerID,
      this.buyerAccept,
      this.sellerAccept,
      this.item,
      this.qty,
      this.price,
      this.eta,
      this.ffRef})
      : super._();

  @override
  OrderLogRecord rebuild(void Function(OrderLogRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderLogRecordBuilder toBuilder() =>
      new OrderLogRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderLogRecord &&
        buyerID == other.buyerID &&
        sellerID == other.sellerID &&
        buyerAccept == other.buyerAccept &&
        sellerAccept == other.sellerAccept &&
        item == other.item &&
        qty == other.qty &&
        price == other.price &&
        eta == other.eta &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, buyerID.hashCode);
    _$hash = $jc(_$hash, sellerID.hashCode);
    _$hash = $jc(_$hash, buyerAccept.hashCode);
    _$hash = $jc(_$hash, sellerAccept.hashCode);
    _$hash = $jc(_$hash, item.hashCode);
    _$hash = $jc(_$hash, qty.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, eta.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OrderLogRecord')
          ..add('buyerID', buyerID)
          ..add('sellerID', sellerID)
          ..add('buyerAccept', buyerAccept)
          ..add('sellerAccept', sellerAccept)
          ..add('item', item)
          ..add('qty', qty)
          ..add('price', price)
          ..add('eta', eta)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class OrderLogRecordBuilder
    implements Builder<OrderLogRecord, OrderLogRecordBuilder> {
  _$OrderLogRecord? _$v;

  String? _buyerID;
  String? get buyerID => _$this._buyerID;
  set buyerID(String? buyerID) => _$this._buyerID = buyerID;

  String? _sellerID;
  String? get sellerID => _$this._sellerID;
  set sellerID(String? sellerID) => _$this._sellerID = sellerID;

  bool? _buyerAccept;
  bool? get buyerAccept => _$this._buyerAccept;
  set buyerAccept(bool? buyerAccept) => _$this._buyerAccept = buyerAccept;

  bool? _sellerAccept;
  bool? get sellerAccept => _$this._sellerAccept;
  set sellerAccept(bool? sellerAccept) => _$this._sellerAccept = sellerAccept;

  String? _item;
  String? get item => _$this._item;
  set item(String? item) => _$this._item = item;

  String? _qty;
  String? get qty => _$this._qty;
  set qty(String? qty) => _$this._qty = qty;

  int? _price;
  int? get price => _$this._price;
  set price(int? price) => _$this._price = price;

  DateTime? _eta;
  DateTime? get eta => _$this._eta;
  set eta(DateTime? eta) => _$this._eta = eta;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  OrderLogRecordBuilder() {
    OrderLogRecord._initializeBuilder(this);
  }

  OrderLogRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _buyerID = $v.buyerID;
      _sellerID = $v.sellerID;
      _buyerAccept = $v.buyerAccept;
      _sellerAccept = $v.sellerAccept;
      _item = $v.item;
      _qty = $v.qty;
      _price = $v.price;
      _eta = $v.eta;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrderLogRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OrderLogRecord;
  }

  @override
  void update(void Function(OrderLogRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrderLogRecord build() => _build();

  _$OrderLogRecord _build() {
    final _$result = _$v ??
        new _$OrderLogRecord._(
            buyerID: buyerID,
            sellerID: sellerID,
            buyerAccept: buyerAccept,
            sellerAccept: sellerAccept,
            item: item,
            qty: qty,
            price: price,
            eta: eta,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
