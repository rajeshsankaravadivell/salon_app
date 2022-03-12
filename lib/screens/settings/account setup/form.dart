import 'package:flutter/material.dart';
import 'package:salon_app/constants/themeconstants.dart';
import 'package:intl/intl.dart';
import 'package:salon_app/extensions/datetimeext.dart';

class AccountSetupForm extends StatefulWidget {
  const AccountSetupForm({Key? key}) : super(key: key);

  @override
  State<AccountSetupForm> createState() => _AccountSetupFormState();
}

class _AccountSetupFormState extends State<AccountSetupForm> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Form'),
      ),
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
                          'Form',
                          style: getText(context).bodyText1,
                        ),
                        selected: true),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ChoiceChip(
                        labelStyle: TextStyle(color: Colors.white),
                        label: Text(
                          'Add Form',
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
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Table(
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
                              child: Text('Title    :'),
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
                              child: Text('Entries  :'),
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
                              child: Text('Views      :'),
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
                              child: Text('Date&Time       :'),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('${DateTime.now().formatDate()}'),
                            ),
                          ],
                        ),
                      ],
                    ),
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
