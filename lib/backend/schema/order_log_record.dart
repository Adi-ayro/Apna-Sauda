import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'order_log_record.g.dart';

abstract class OrderLogRecord
    implements Built<OrderLogRecord, OrderLogRecordBuilder> {
  static Serializer<OrderLogRecord> get serializer =>
      _$orderLogRecordSerializer;

  @BuiltValueField(wireName: 'BuyerID')
  String? get buyerID;

  @BuiltValueField(wireName: 'SellerID')
  String? get sellerID;

  @BuiltValueField(wireName: 'BuyerAccept')
  bool? get buyerAccept;

  @BuiltValueField(wireName: 'SellerAccept')
  bool? get sellerAccept;

  @BuiltValueField(wireName: 'Item')
  String? get item;

  @BuiltValueField(wireName: 'Qty')
  String? get qty;

  @BuiltValueField(wireName: 'Price')
  int? get price;

  @BuiltValueField(wireName: 'ETA')
  DateTime? get eta;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(OrderLogRecordBuilder builder) => builder
    ..buyerID = ''
    ..sellerID = ''
    ..buyerAccept = false
    ..sellerAccept = false
    ..item = ''
    ..qty = ''
    ..price = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('OrderLog');

  static Stream<OrderLogRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<OrderLogRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  OrderLogRecord._();
  factory OrderLogRecord([void Function(OrderLogRecordBuilder) updates]) =
      _$OrderLogRecord;

  static OrderLogRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createOrderLogRecordData({
  String? buyerID,
  String? sellerID,
  bool? buyerAccept,
  bool? sellerAccept,
  String? item,
  String? qty,
  int? price,
  DateTime? eta,
}) {
  final firestoreData = serializers.toFirestore(
    OrderLogRecord.serializer,
    OrderLogRecord(
      (o) => o
        ..buyerID = buyerID
        ..sellerID = sellerID
        ..buyerAccept = buyerAccept
        ..sellerAccept = sellerAccept
        ..item = item
        ..qty = qty
        ..price = price
        ..eta = eta,
    ),
  );

  return firestoreData;
}
