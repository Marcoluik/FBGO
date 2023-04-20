// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userdetails_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserdetailsRecord> _$userdetailsRecordSerializer =
    new _$UserdetailsRecordSerializer();

class _$UserdetailsRecordSerializer
    implements StructuredSerializer<UserdetailsRecord> {
  @override
  final Iterable<Type> types = const [UserdetailsRecord, _$UserdetailsRecord];
  @override
  final String wireName = 'UserdetailsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, UserdetailsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
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
  UserdetailsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserdetailsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
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

class _$UserdetailsRecord extends UserdetailsRecord {
  @override
  final String? name;
  @override
  final String? image;
  @override
  final String? email;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$UserdetailsRecord(
          [void Function(UserdetailsRecordBuilder)? updates]) =>
      (new UserdetailsRecordBuilder()..update(updates))._build();

  _$UserdetailsRecord._({this.name, this.image, this.email, this.ffRef})
      : super._();

  @override
  UserdetailsRecord rebuild(void Function(UserdetailsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserdetailsRecordBuilder toBuilder() =>
      new UserdetailsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserdetailsRecord &&
        name == other.name &&
        image == other.image &&
        email == other.email &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserdetailsRecord')
          ..add('name', name)
          ..add('image', image)
          ..add('email', email)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class UserdetailsRecordBuilder
    implements Builder<UserdetailsRecord, UserdetailsRecordBuilder> {
  _$UserdetailsRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  UserdetailsRecordBuilder() {
    UserdetailsRecord._initializeBuilder(this);
  }

  UserdetailsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _image = $v.image;
      _email = $v.email;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserdetailsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserdetailsRecord;
  }

  @override
  void update(void Function(UserdetailsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserdetailsRecord build() => _build();

  _$UserdetailsRecord _build() {
    final _$result = _$v ??
        new _$UserdetailsRecord._(
            name: name, image: image, email: email, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
