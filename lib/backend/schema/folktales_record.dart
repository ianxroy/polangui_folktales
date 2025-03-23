import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FolktalesRecord extends FirestoreRecord {
  FolktalesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "fullstory" field.
  String? _fullstory;
  String get fullstory => _fullstory ?? '';
  bool hasFullstory() => _fullstory != null;

  // "en_translation" field.
  String? _enTranslation;
  String get enTranslation => _enTranslation ?? '';
  bool hasEnTranslation() => _enTranslation != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _description = snapshotData['description'] as String?;
    _fullstory = snapshotData['fullstory'] as String?;
    _enTranslation = snapshotData['en_translation'] as String?;
    _image = snapshotData['image'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('folktales')
          : FirebaseFirestore.instance.collectionGroup('folktales');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('folktales').doc(id);

  static Stream<FolktalesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FolktalesRecord.fromSnapshot(s));

  static Future<FolktalesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FolktalesRecord.fromSnapshot(s));

  static FolktalesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FolktalesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FolktalesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FolktalesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FolktalesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FolktalesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFolktalesRecordData({
  String? title,
  String? description,
  String? fullstory,
  String? enTranslation,
  String? image,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'description': description,
      'fullstory': fullstory,
      'en_translation': enTranslation,
      'image': image,
    }.withoutNulls,
  );

  return firestoreData;
}

class FolktalesRecordDocumentEquality implements Equality<FolktalesRecord> {
  const FolktalesRecordDocumentEquality();

  @override
  bool equals(FolktalesRecord? e1, FolktalesRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.description == e2?.description &&
        e1?.fullstory == e2?.fullstory &&
        e1?.enTranslation == e2?.enTranslation &&
        e1?.image == e2?.image;
  }

  @override
  int hash(FolktalesRecord? e) => const ListEquality().hash(
      [e?.title, e?.description, e?.fullstory, e?.enTranslation, e?.image]);

  @override
  bool isValidKey(Object? o) => o is FolktalesRecord;
}
