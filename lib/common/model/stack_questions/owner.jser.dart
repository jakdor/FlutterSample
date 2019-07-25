// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'owner.dart';

// **************************************************************************
// JaguarSerializerGenerator
// **************************************************************************

abstract class _$OwnerSerializer implements Serializer<Owner> {
  @override
  Map<String, dynamic> toMap(Owner model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValue(ret, 'profile_image', model.profileImageUrl);
    return ret;
  }

  @override
  Owner fromMap(Map map) {
    if (map == null) return null;
    final obj = Owner();
    obj.profileImageUrl = map['profile_image'] as String;
    return obj;
  }
}
