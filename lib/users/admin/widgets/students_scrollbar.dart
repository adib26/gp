import 'package:flutter/material.dart';

import '../../../Constraint.dart';

class StudentsScrollbar extends StatefulWidget {
  @override
  _StudentsScrollbarState createState() => _StudentsScrollbarState();
}

class _StudentsScrollbarState extends State<StudentsScrollbar> {
  final tableHeader = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 15.0,
  );
  final tableContent = TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: 13.0,
  );
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Scrollbar(
        child: ListView(
            children: <Widget>[
              Table(
                children: [
                  TableRow(children: [
                    Text(
                      'name',
                      style: tableHeader,
                    ),
                    Text('ID',
                      style: tableHeader,),
                    Text('Performance',
                      style: tableHeader,),
                  ]),
                  TableRow(
                      children: [
                        SizedBox(
                          height: 20.0,
                          width: 150.0,
                          child: Divider(
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                          width: 150.0,
                          child: Divider(
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                          width: 10.0,
                          child: Divider(
                            color: Colors.black,
                          ),
                        ),
                      ],
                  ),
                  TableRow(children: [
                    Text(
                      'john doe',
                      style: tableContent,
                    ),
                    Text('20170079',
                      style: tableContent,),
                    Text('80%',
                      style: tableContent,),
                  ]),
                  TableRow(children: [
                    Text(
                      'john doe',
                      style: tableContent,
                    ),
                    Text('20170079',
                      style: tableContent,),
                    Text('80%',
                      style: tableContent,),
                  ]),
                  TableRow(children: [
                    Text(
                      'john doe',
                      style: tableContent,
                    ),
                    Text('20170079',
                      style: tableContent,),
                    Text('80%',
                      style: tableContent,),
                  ]),
                  TableRow(children: [
                    Text(
                      'john doe',
                      style: tableContent,
                    ),
                    Text('20170079',
                      style: tableContent,),
                    Text('80%',
                      style: tableContent,),
                  ]),
                  TableRow(children: [
                    Text(
                      'john doe',
                      style: tableContent,
                    ),
                    Text('20170079',
                      style: tableContent,),
                    Text('80%',
                      style: tableContent,),
                  ]),
                  TableRow(children: [
                    Text(
                      'john doe',
                      style: tableContent,
                    ),
                    Text('20170079',
                      style: tableContent,),
                    Text('80%',
                      style: tableContent,),
                  ]),
                  TableRow(children: [
                    Text(
                      'john doe',
                      style: tableContent,
                    ),
                    Text('20170079',
                      style: tableContent,),
                    Text('80%',
                      style: tableContent,),
                  ]),
                  TableRow(children: [
                    Text(
                      'john doe',
                      style: tableContent,
                    ),
                    Text('20170079',
                      style: tableContent,),
                    Text('80%',
                      style: tableContent,),
                  ]),
                  TableRow(children: [
                    Text(
                      'john doe',
                      style: tableContent,
                    ),
                    Text('20170079',
                      style: tableContent,),
                    Text('80%',
                      style: tableContent,),
                  ]),TableRow(children: [
                    Text(
                      'john doe',
                      style: tableContent,
                    ),
                    Text('20170079',
                      style: tableContent,),
                    Text('80%',
                      style: tableContent,),
                  ]),TableRow(children: [
                    Text(
                      'john doe',
                      style: tableContent,
                    ),
                    Text('20170079',
                      style: tableContent,),
                    Text('80%',
                      style: tableContent,),
                  ]),
                  TableRow(children: [
                    Text(
                      'john doe',
                      style: tableContent,
                    ),
                    Text('20170079',
                      style: tableContent,),
                    Text('80%',
                      style: tableContent,),
                  ]),
                  TableRow(children: [
                    Text(
                      'john doe',
                      style: tableContent,
                    ),
                    Text('20170079',
                      style: tableContent,),
                    Text('80%',
                      style: tableContent,),
                  ]),
                  TableRow(children: [
                    Text(
                      'john doe',
                      style: tableContent,
                    ),
                    Text('20170079',
                      style: tableContent,),
                    Text('80%',
                      style: tableContent,),
                  ]),
                  TableRow(children: [
                    Text(
                      'john doe',
                      style: tableContent,
                    ),
                    Text('20170079',
                      style: tableContent,),
                    Text('80%',
                      style: tableContent,),
                  ]),
                  TableRow(children: [
                    Text(
                      'john doe',
                      style: tableContent,
                    ),
                    Text('20170079',
                      style: tableContent,),
                    Text('80%',
                      style: tableContent,),
                  ]),TableRow(children: [
                    Text(
                      'john doe',
                      style: tableContent,
                    ),
                    Text('20170079',
                      style: tableContent,),
                    Text('80%',
                      style: tableContent,),
                  ]),
                  TableRow(children: [
                    Text(
                      'john doe',
                      style: tableContent,
                    ),
                    Text('20170079',
                      style: tableContent,),
                    Text('80%',
                      style: tableContent,),
                  ]),
                  TableRow(children: [
                    Text(
                      'john doe',
                      style: tableContent,
                    ),
                    Text('20170079',
                      style: tableContent,),
                    Text('80%',
                      style: tableContent,),
                  ]),
                  TableRow(children: [
                    Text(
                      'john doe',
                      style: tableContent,
                    ),
                    Text('20170079',
                      style: tableContent,),
                    Text('80%',
                      style: tableContent,),
                  ]),
                  TableRow(children: [
                    Text(
                      'john doe',
                      style: tableContent,
                    ),
                    Text('20170079',
                      style: tableContent,),
                    Text('80%',
                      style: tableContent,),
                  ]),
                  TableRow(children: [
                    Text(
                      'john doe',
                      style: tableContent,
                    ),
                    Text('20170079',
                      style: tableContent,),
                    Text('80%',
                      style: tableContent,),
                  ]),
                  TableRow(children: [
                    Text(
                      'john doe',
                      style: tableContent,
                    ),
                    Text('20170079',
                      style: tableContent,),
                    Text('80%',
                      style: tableContent,),
                  ]),
                  TableRow(children: [
                    Text(
                      'john doe',
                      style: tableContent,
                    ),
                    Text('20170079',
                      style: tableContent,),
                    Text('80%',
                      style: tableContent,),
                  ]),
                  TableRow(children: [
                    Text(
                      'john doe',
                      style: tableContent,
                    ),
                    Text('20170079',
                      style: tableContent,),
                    Text('80%',
                      style: tableContent,),
                  ]),
                  TableRow(children: [
                    Text(
                      'john doe',
                      style: tableContent,
                    ),
                    Text('20170079',
                      style: tableContent,),
                    Text('80%',
                      style: tableContent,),
                  ]),
                  TableRow(children: [
                    Text(
                      'john doe',
                      style: tableContent,
                    ),
                    Text('20170079',
                      style: tableContent,),
                    Text('80%',
                      style: tableContent,),
                  ]),
                  TableRow(children: [
                    Text(
                      'john doe',
                      style: tableContent,
                    ),
                    Text('20170079',
                      style: tableContent,),
                    Text('80%',
                      style: tableContent,),
                  ]),TableRow(children: [
                    Text(
                      'john doe',
                      style: tableContent,
                    ),
                    Text('20170079',
                      style: tableContent,),
                    Text('80%',
                      style: tableContent,),
                  ]),TableRow(children: [
                    Text(
                      'john doe',
                      style: tableContent,
                    ),
                    Text('20170079',
                      style: tableContent,),
                    Text('80%',
                      style: tableContent,),
                  ]),
                  TableRow(children: [
                    Text(
                      'john doe',
                      style: tableContent,
                    ),
                    Text('20170079',
                      style: tableContent,),
                    Text('80%',
                      style: tableContent,),
                  ]),
                  TableRow(children: [
                    Text(
                      'john doe',
                      style: tableContent,
                    ),
                    Text('20170079',
                      style: tableContent,),
                    Text('80%',
                      style: tableContent,),
                  ]),
                  TableRow(children: [
                    Text(
                      'john doe',
                      style: tableContent,
                    ),
                    Text('20170079',
                      style: tableContent,),
                    Text('80%',
                      style: tableContent,),
                  ]),
                  TableRow(children: [
                    Text(
                      'john doe',
                      style: tableContent,
                    ),
                    Text('20170079',
                      style: tableContent,),
                    Text('80%',
                      style: tableContent,),
                  ]),
                  TableRow(children: [
                    Text(
                      'john doe',
                      style: tableContent,
                    ),
                    Text('20170079',
                      style: tableContent,),
                    Text('80%',
                      style: tableContent,),
                  ]),TableRow(children: [
                    Text(
                      'john doe',
                      style: tableContent,
                    ),
                    Text('20170079',
                      style: tableContent,),
                    Text('80%',
                      style: tableContent,),
                  ]),
                  TableRow(children: [
                    Text(
                      'john doe',
                      style: tableContent,
                    ),
                    Text('20170079',
                      style: tableContent,),
                    Text('80%',
                      style: tableContent,),
                  ]),
                  TableRow(children: [
                    Text(
                      'john doe',
                      style: tableContent,
                    ),
                    Text('20170079',
                      style: tableContent,),
                    Text('80%',
                      style: tableContent,),
                  ]),
                  TableRow(children: [
                    Text(
                      'john doe',
                      style: tableContent,
                    ),
                    Text('20170079',
                      style: tableContent,),
                    Text('80%',
                      style: tableContent,),
                  ]),
                  TableRow(children: [
                    Text(
                      'john doe',
                      style: tableContent,
                    ),
                    Text('20170079',
                      style: tableContent,),
                    Text('80%',
                      style: tableContent,),
                  ]),
                  TableRow(children: [
                    Text(
                      'john doe',
                      style: tableContent,
                    ),
                    Text('20170079',
                      style: tableContent,),
                    Text('80%',
                      style: tableContent,),
                  ]),
                  TableRow(children: [
                    Text(
                      'john doe',
                      style: tableContent,
                    ),
                    Text('20170079',
                      style: tableContent,),
                    Text('80%',
                      style: tableContent,),
                  ]),
                  TableRow(children: [
                    Text(
                      'john doe',
                      style: tableContent,
                    ),
                    Text('20170079',
                      style: tableContent,),
                    Text('80%',
                      style: tableContent,),
                  ]),
                  TableRow(children: [
                    Text(
                      'john doe',
                      style: tableContent,
                    ),
                    Text('20170079',
                      style: tableContent,),
                    Text('80%',
                      style: tableContent,),
                  ]),
                  TableRow(children: [
                    Text(
                      'john doe',
                      style: tableContent,
                    ),
                    Text('20170079',
                      style: tableContent,),
                    Text('80%',
                      style: tableContent,),
                  ]),
                  TableRow(children: [
                    Text(
                      'john doe',
                      style: tableContent,
                    ),
                    Text('20170079',
                      style: tableContent,),
                    Text('80%',
                      style: tableContent,),
                  ]),
                  TableRow(children: [
                    Text(
                      'john doe',
                      style: tableContent,
                    ),
                    Text('20170079',
                      style: tableContent,),
                    Text('80%',
                      style: tableContent,),
                  ]),TableRow(children: [
                    Text(
                      'john doe',
                      style: tableContent,
                    ),
                    Text('20170079',
                      style: tableContent,),
                    Text('80%',
                      style: tableContent,),
                  ]),TableRow(children: [
                    Text(
                      'john doe',
                      style: tableContent,
                    ),
                    Text('20170079',
                      style: tableContent,),
                    Text('80%',
                      style: tableContent,),
                  ]),
                  TableRow(children: [
                    Text(
                      'john doe',
                      style: tableContent,
                    ),
                    Text('20170079',
                      style: tableContent,),
                    Text('80%',
                      style: tableContent,),
                  ]),
                  TableRow(children: [
                    Text(
                      'john doe',
                      style: tableContent,
                    ),
                    Text('20170079',
                      style: tableContent,),
                    Text('80%',
                      style: tableContent,),
                  ]),
                  TableRow(children: [
                    Text(
                      'john doe',
                      style: tableContent,
                    ),
                    Text('20170079',
                      style: tableContent,),
                    Text('80%',
                      style: tableContent,),
                  ]),
                  TableRow(children: [
                    Text(
                      'john doe',
                      style: tableContent,
                    ),
                    Text('20170079',
                      style: tableContent,),
                    Text('80%',
                      style: tableContent,),
                  ]),
                  TableRow(children: [
                    Text(
                      'john doe',
                      style: tableContent,
                    ),
                    Text('20170079',
                      style: tableContent,),
                    Text('80%',
                      style: tableContent,),
                  ]),TableRow(children: [
                    Text(
                      'john doe',
                      style: tableContent,
                    ),
                    Text('20170079',
                      style: tableContent,),
                    Text('80%',
                      style: tableContent,),
                  ]),
                  TableRow(children: [
                    Text(
                      'john doe',
                      style: tableContent,
                    ),
                    Text('20170079',
                      style: tableContent,),
                    Text('80%',
                      style: tableContent,),
                  ]),
                  TableRow(children: [
                    Text(
                      'john doe',
                      style: tableContent,
                    ),
                    Text('20170079',
                      style: tableContent,),
                    Text('80%',
                      style: tableContent,),
                  ]),
                  TableRow(children: [
                    Text(
                      'john doe',
                      style: tableContent,
                    ),
                    Text('20170079',
                      style: tableContent,),
                    Text('80%',
                      style: tableContent,),
                  ]),
                  TableRow(children: [
                    Text(
                      'john doe',
                      style: tableContent,
                    ),
                    Text('20170079',
                      style: tableContent,),
                    Text('80%',
                      style: tableContent,),
                  ]),
                  TableRow(children: [
                    Text(
                      'john doe',
                      style: tableContent,
                    ),
                    Text('20170079',
                      style: tableContent,),
                    Text('80%',
                      style: tableContent,),
                  ]),
                  TableRow(children: [
                    Text(
                      'john doe',
                      style: tableContent,
                    ),
                    Text('20170079',
                      style: tableContent,),
                    Text('80%',
                      style: tableContent,),
                  ]),
                  TableRow(children: [
                    Text(
                      'john doe',
                      style: tableContent,
                    ),
                    Text('20170079',
                      style: tableContent,),
                    Text('80%',
                      style: tableContent,),
                  ]),
                  TableRow(children: [
                    Text(
                      'john doe',
                      style: tableContent,
                    ),
                    Text('20170079',
                      style: tableContent,),
                    Text('80%',
                      style: tableContent,),
                  ]),
                  TableRow(children: [
                    Text(
                      'john doe',
                      style: tableContent,
                    ),
                    Text('20170079',
                      style: tableContent,),
                    Text('80%',
                      style: tableContent,),
                  ]),
                  TableRow(children: [
                    Text(
                      'john doe',
                      style: tableContent,
                    ),
                    Text('20170079',
                      style: tableContent,),
                    Text('80%',
                      style: tableContent,),
                  ]),
                  TableRow(children: [
                    Text(
                      'john doe',
                      style: tableContent,
                    ),
                    Text('20170079',
                      style: tableContent,),
                    Text('80%',
                      style: tableContent,),
                  ]),TableRow(children: [
                    Text(
                      'john doe',
                      style: tableContent,
                    ),
                    Text('20170079',
                      style: tableContent,),
                    Text('80%',
                      style: tableContent,),
                  ]),TableRow(children: [
                    Text(
                      'john doe',
                      style: tableContent,
                    ),
                    Text('20170079',
                      style: tableContent,),
                    Text('80%',
                      style: tableContent,),
                  ]),
                  TableRow(children: [
                    Text(
                      'john doe',
                      style: tableContent,
                    ),
                    Text('20170079',
                      style: tableContent,),
                    Text('80%',
                      style: tableContent,),
                  ]),
                  TableRow(children: [
                    Text(
                      'john doe',
                      style: tableContent,
                    ),
                    Text('20170079',
                      style: tableContent,),
                    Text('80%',
                      style: tableContent,),
                  ]),
                  TableRow(children: [
                    Text(
                      'john doe',
                      style: tableContent,
                    ),
                    Text('20170079',
                      style: tableContent,),
                    Text('80%',
                      style: tableContent,),
                  ]),
                  TableRow(children: [
                    Text(
                      'john doe',
                      style: tableContent,
                    ),
                    Text('20170079',
                      style: tableContent,),
                    Text('80%',
                      style: tableContent,),
                  ]),
                  TableRow(children: [
                    Text(
                      'john doe',
                      style: tableContent,
                    ),
                    Text('20170079',
                      style: tableContent,),
                    Text('80%',
                      style: tableContent,),
                  ]),TableRow(children: [
                    Text(
                      'john doe',
                      style: tableContent,
                    ),
                    Text('20170079',
                      style: tableContent,),
                    Text('80%',
                      style: tableContent,),
                  ]),
                  TableRow(children: [
                    Text(
                      'john doe',
                      style: tableContent,
                    ),
                    Text('20170079',
                      style: tableContent,),
                    Text('80%',
                      style: tableContent,),
                  ]),
                  TableRow(children: [
                    Text(
                      'john doe',
                      style: tableContent,
                    ),
                    Text('20170079',
                      style: tableContent,),
                    Text('80%',
                      style: tableContent,),
                  ]),
                ],
              ),
            ]
        ),
      ),
    );
  }
}
