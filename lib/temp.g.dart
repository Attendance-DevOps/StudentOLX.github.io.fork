// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'temp.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ThemesAdapter extends TypeAdapter<Themes> {
  @override
  final int typeId = 1;

  @override
  Themes read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Themes(
      themeName: fields[0] as String,
      themeId: fields[1] as int,
    );
  }

  @override
  void write(BinaryWriter writer, Themes obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.themeName)
      ..writeByte(1)
      ..write(obj.themeId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ThemesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
