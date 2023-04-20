import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'userdetails_record.g.dart';

abstract class UserdetailsRecord
    implements Built<UserdetailsRecord, UserdetailsRecordBuilder> {
  static Serializer<UserdetailsRecord> get serializer =>
      _$userdetailsRecordSerializer;

  String? get name;

  String? get image;

  String? get email;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(UserdetailsRecordBuilder builder) => builder
    ..name = ''
    ..image = ''
    ..email = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Userdetails');

  static Stream<UserdetailsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UserdetailsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  UserdetailsRecord._();
  factory UserdetailsRecord([void Function(UserdetailsRecordBuilder) updates]) =
      _$UserdetailsRecord;

  static UserdetailsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createUserdetailsRecordData({
  String? name,
  String? image,
  String? email,
}) {
  final firestoreData = serializers.toFirestore(
    UserdetailsRecord.serializer,
    UserdetailsRecord(
      (u) => u
        ..name = name
        ..image = image
        ..email = email,
    ),
  );

  return firestoreData;
}
