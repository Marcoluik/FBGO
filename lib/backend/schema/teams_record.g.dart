// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teams_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TeamsRecord> _$teamsRecordSerializer = new _$TeamsRecordSerializer();

class _$TeamsRecordSerializer implements StructuredSerializer<TeamsRecord> {
  @override
  final Iterable<Type> types = const [TeamsRecord, _$TeamsRecord];
  @override
  final String wireName = 'TeamsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, TeamsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.tname;
    if (value != null) {
      result
        ..add('tname')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tpfp;
    if (value != null) {
      result
        ..add('tpfp')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tbio;
    if (value != null) {
      result
        ..add('tbio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  TeamsRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TeamsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'tname':
          result.tname = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'tpfp':
          result.tpfp = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'tbio':
          result.tbio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$TeamsRecord extends TeamsRecord {
  @override
  final String? tname;
  @override
  final String? tpfp;
  @override
  final String? tbio;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$TeamsRecord([void Function(TeamsRecordBuilder)? updates]) =>
      (new TeamsRecordBuilder()..update(updates))._build();

  _$TeamsRecord._({this.tname, this.tpfp, this.tbio, this.ffRef}) : super._();

  @override
  TeamsRecord rebuild(void Function(TeamsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TeamsRecordBuilder toBuilder() => new TeamsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TeamsRecord &&
        tname == other.tname &&
        tpfp == other.tpfp &&
        tbio == other.tbio &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tname.hashCode);
    _$hash = $jc(_$hash, tpfp.hashCode);
    _$hash = $jc(_$hash, tbio.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TeamsRecord')
          ..add('tname', tname)
          ..add('tpfp', tpfp)
          ..add('tbio', tbio)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class TeamsRecordBuilder implements Builder<TeamsRecord, TeamsRecordBuilder> {
  _$TeamsRecord? _$v;

  String? _tname;
  String? get tname => _$this._tname;
  set tname(String? tname) => _$this._tname = tname;

  String? _tpfp;
  String? get tpfp => _$this._tpfp;
  set tpfp(String? tpfp) => _$this._tpfp = tpfp;

  String? _tbio;
  String? get tbio => _$this._tbio;
  set tbio(String? tbio) => _$this._tbio = tbio;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  TeamsRecordBuilder() {
    TeamsRecord._initializeBuilder(this);
  }

  TeamsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tname = $v.tname;
      _tpfp = $v.tpfp;
      _tbio = $v.tbio;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TeamsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TeamsRecord;
  }

  @override
  void update(void Function(TeamsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TeamsRecord build() => _build();

  _$TeamsRecord _build() {
    final _$result = _$v ??
        new _$TeamsRecord._(tname: tname, tpfp: tpfp, tbio: tbio, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
