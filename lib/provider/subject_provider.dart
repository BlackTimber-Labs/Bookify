import 'package:flutter/material.dart';

import '../model/subject.dart';
/// Subject Provider contains the Subject List and
/// all the functions require.
class SubjectProvider with ChangeNotifier {
  final List<Subject> _subjectList = <Subject>[
    Subject(
      semID: 1,
      courseID: 'btech',
      departmentID: 'fy',
      title: 'MA1101',
      id:'ma1101'
    ),
    Subject(
      semID: 1,
      courseID: 'btech',
      departmentID: 'fy',
      title: 'CV1001',
      id:'cv1001'
    ),
    Subject(
      semID: 1,
      courseID: 'btech',
      departmentID: 'fy',
      title: 'PY1001',
      id:'py1001'
    ),
    Subject(
      semID: 1,
      courseID: 'btech',
      departmentID: 'fy',
      title: 'CY1002',
      id:'cy1002'
    ),
    Subject(
      semID: 1,
      courseID: 'btech',
      departmentID: 'fy',
      title: 'EC1001',
      id:'ec1001'
    ),
    Subject(
      semID: 1,
      courseID: 'btech',
      departmentID: 'fy',
      title: 'ME1002',
      id:'me1002'
    ),
    Subject(
      semID: 2,
      courseID: 'btech',
      departmentID: 'fy',
      title: 'MA1101',
      id:'ma1101'
    ),
    Subject(
      semID: 2,
      courseID: 'btech',
      departmentID: 'fy',
      title: 'CY1001',
      id:'cy1001'
    ),
    Subject(
      semID: 2,
      courseID: 'btech',
      departmentID: 'fy',
      title: 'EE1001',
      id:'ee1001'
    ),
    Subject(
      semID: 2,
      courseID: 'btech',
      departmentID: 'fy',
      title: 'CS1001',
      id:'cs1001'
    ),
    Subject(
      semID: 2,
      courseID: 'btech',
      departmentID: 'fy',
      title: 'ME1001',
      id:'me1001'
    ),
    Subject(
      semID: 2,
      courseID: 'btech',
      departmentID: 'fy',
      title: 'LN1001',
      id:'ln10001'
    ),
  ];

  /// Getter to make a copy of the List.
  List<Subject> get subjectList => _subjectList;

/// Function to get final list of the subject department wise.
  List<Subject> findSubject(
    String courseID,
    String departmentID,
    int sem,
  ) {
    final List<Subject> finalSubjectList = subjectList
        .where(
          (Subject element) =>
              element.courseID
                  .toLowerCase()
                  .contains(courseID.toLowerCase()) &&
              element.departmentID
                  .toLowerCase()
                  .contains(departmentID.toLowerCase()) &&
              element.semID == sem,
        )
        .toList();
    return finalSubjectList;
  }
}
