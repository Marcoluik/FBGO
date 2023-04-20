import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'teams_record.g.dart';

abstract class TeamsRecord implements Built<TeamsRecord, TeamsRecordBuilder> {
  static Serializer<TeamsRecord> get serializer => _$teamsRecordSerializer;

  String? get tname;

  String? get tpfp;

  String? get tbio;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(TeamsRecordBuilder builder) => builder
    ..tname = ''
    ..tpfp = ''
    ..tbio = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('teams');

  static Stream<TeamsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<TeamsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  TeamsRecord._();
  factory TeamsRecord([void Function(TeamsRecordBuilder) updates]) =
      _$TeamsRecord;

  static TeamsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createTeamsRecordData({
  String? tname,
  String? tpfp,
  String? tbio,
}) {
  final firestoreData = serializers.toFirestore(
    TeamsRecord.serializer,
    TeamsRecord(
      (t) => t
        ..tname = tname
        ..tpfp = tpfp
        ..tbio = tbio,
    ),
  );

  return firestoreData;
}
