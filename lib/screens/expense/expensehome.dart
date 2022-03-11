import 'package:flutter/material.dart';
import 'package:salon_app/constants/themeconstants.dart';

class ExpenseHome extends StatefulWidget {
  const ExpenseHome({Key? key}) : super(key: key);

  @override
  State<ExpenseHome> createState() => _ExpenseHomeState();
}

class _ExpenseHomeState extends State<ExpenseHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ChoiceChip(
                        label: Text(
                          'Expense Tran',
                          style: getText(context).bodyText1,
                        ),
                        selected: true),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ChoiceChip(
                        labelStyle: TextStyle(color: Colors.white),
                        label: Text(
                          'Expense Tran',
                          style: getText(context).bodyText1,
                        ),
                        selected: false),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ChoiceChip(
                        label: Text(
                          'Expense Tran',
                          style: getText(context).bodyText1,
                        ),
                        selected: false),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 16.0, right: 16.0, bottom: 4.0, top: 4.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)),
                elevation: 3.0,
                child: SizedBox(
                  width: getHeight(context) * 0.90,
                  height: getHeight(context) * 0.18,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: CircleAvatar(
                          radius: getWidth(context) * 0.08,
                          child: Image.network(
                              'https://previews.123rf.com/images/metelsky/metelsky1904/metelsky190400021/121859823-male-avatar-icon-or-portrait-handsome-young-man-face-with-beard-vector-illustration-.jpg'),
                        ),
                      ),
                      Table(
                        // border: TableBorder.all(color: Colors.redAccent,borderRadius: BorderRadius.circular(20)),
                        columnWidths: <int, TableColumnWidth>{
                          0: FixedColumnWidth(getWidth(context) * 0.20),
                          1: FixedColumnWidth(getWidth(context) * 0.35),
                          // 2: FixedColumnWidth(64),
                        },
                        defaultVerticalAlignment:
                            TableCellVerticalAlignment.middle,
                        children: <TableRow>[
                          TableRow(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Name     :'),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Benial'),
                              ),
                            ],
                          ),
                          TableRow(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Contact  :'),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('89401123467'),
                              ),
                            ],
                          ),
                          TableRow(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Email      :'),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('raj@gmail.com'),
                              ),
                            ],
                          ),
                          TableRow(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Note       :'),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Need services'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
