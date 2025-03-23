import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BarangayRecord extends FirestoreRecord {
  BarangayRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "description_link" field.
  String? _descriptionLink;
  String get descriptionLink => _descriptionLink ?? '';
  bool hasDescriptionLink() => _descriptionLink != null;

  // "description_display_link" field.
  String? _descriptionDisplayLink;
  String get descriptionDisplayLink => _descriptionDisplayLink ?? '';
  bool hasDescriptionDisplayLink() => _descriptionDisplayLink != null;

  // "barangay" field.
  String? _barangay;
  String get barangay => _barangay ?? '';
  bool hasBarangay() => _barangay != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "barangay_paragraph" field.
  String? _barangayParagraph;
  String get barangayParagraph => _barangayParagraph ?? '';
  bool hasBarangayParagraph() => _barangayParagraph != null;

  void _initializeFields() {
    _descriptionLink = snapshotData['description_link'] as String?;
    _descriptionDisplayLink =
        snapshotData['description_display_link'] as String?;
    _barangay = snapshotData['barangay'] as String?;
    _image = snapshotData['image'] as String?;
    _barangayParagraph = snapshotData['barangay_paragraph'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('barangay');

  static Stream<BarangayRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BarangayRecord.fromSnapshot(s));

  static Future<BarangayRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BarangayRecord.fromSnapshot(s));

  static BarangayRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BarangayRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BarangayRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BarangayRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BarangayRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BarangayRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBarangayRecordData({
  String? descriptionLink,
  String? descriptionDisplayLink,
  String? barangay,
  String? image,
  String? barangayParagraph,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'description_link': descriptionLink,
      'description_display_link': descriptionDisplayLink,
      'barangay': barangay,
      'image': image,
      'barangay_paragraph': barangayParagraph,
    }.withoutNulls,
  );

  return firestoreData;
}

class BarangayRecordDocumentEquality implements Equality<BarangayRecord> {
  const BarangayRecordDocumentEquality();

  @override
  bool equals(BarangayRecord? e1, BarangayRecord? e2) {
    return e1?.descriptionLink == e2?.descriptionLink &&
        e1?.descriptionDisplayLink == e2?.descriptionDisplayLink &&
        e1?.barangay == e2?.barangay &&
        e1?.image == e2?.image &&
        e1?.barangayParagraph == e2?.barangayParagraph;
  }

  @override
  int hash(BarangayRecord? e) => const ListEquality().hash([
        e?.descriptionLink,
        e?.descriptionDisplayLink,
        e?.barangay,
        e?.image,
        e?.barangayParagraph
      ]);

  @override
  bool isValidKey(Object? o) => o is BarangayRecord;
}
