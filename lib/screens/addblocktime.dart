import 'package:flutter/material.dart';
import 'package:salon_app/constants/themeconstants.dart';




class AddBlockTime extends StatefulWidget {
  const AddBlockTime({Key? key}) : super(key: key);

  @override
  State<AddBlockTime> createState() => _AddBlockTimeState();
}

class _AddBlockTimeState extends State<AddBlockTime> {
  DateTime Today = DateTime.now();
  late String _loyaltycontroller;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _loyaltycontroller = 'select value';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Text(
                    'Create Invoice',
                    style: getText(context).headline5,
                  ),
                  Spacer(),
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    direction: Axis.horizontal,
                    children: [
                      Text(
                        'Date:',
                        style: getText(context).button,
                      ),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child:
                          Text('${Today.day}:${Today.month}:${Today.year}'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),


            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                // width: getWidth(context)*0.90,
                child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      labelText: 'Loyalty Point',
                      labelStyle: TextStyle(
                        fontFamily: 'Lexend Deca',
                        color: Color(0xFF95A1AC),
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                      hintText: 'Loyalty point',
                      hintStyle: TextStyle(
                        fontFamily: 'Lexend Deca',
                        color: Color(0xFF95A1AC),
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFEE4E3A),
                          width: 0.5,
                        ),
                        borderRadius: BorderRadius.circular(9),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFEE4E3A),
                          width: 0.5,
                        ),
                        borderRadius: BorderRadius.circular(9),
                      ),
                      filled: true,
                      fillColor: Color(0xFFFBEEE2),
                    ),
                    value: _loyaltycontroller,
                    items: ['select value', 'value1', 'value2']
                        .map((label) => DropdownMenuItem(
                      child: Text(
                        label.toString(),
                        style: getText(context)
                            .labelLarge!
                            .apply(color: Colors.grey),
                      ),
                      value: label,
                    ))
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        _loyaltycontroller = value!;
                      });
                    }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                // width: getWidth(context)*0.90,
                child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      labelText: 'Loyalty Point',
                      labelStyle: TextStyle(
                        fontFamily: 'Lexend Deca',
                        color: Color(0xFF95A1AC),
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                      hintText: 'Loyalty point',
                      hintStyle: TextStyle(
                        fontFamily: 'Lexend Deca',
                        color: Color(0xFF95A1AC),
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFEE4E3A),
                          width: 0.5,
                        ),
                        borderRadius: BorderRadius.circular(9),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFEE4E3A),
                          width: 0.5,
                        ),
                        borderRadius: BorderRadius.circular(9),
                      ),
                      filled: true,
                      fillColor: Color(0xFFFBEEE2),
                    ),
                    value: _loyaltycontroller,
                    items: ['select value', 'value1', 'value2']
                        .map((label) => DropdownMenuItem(
                      child: Text(
                        label.toString(),
                        style: getText(context)
                            .labelLarge!
                            .apply(color: Colors.grey),
                      ),
                      value: label,
                    ))
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        _loyaltycontroller = value!;
                      });
                    }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                // width: getWidth(context)*0.90,
                child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      labelText: 'Loyalty Point',
                      labelStyle: TextStyle(
                        fontFamily: 'Lexend Deca',
                        color: Color(0xFF95A1AC),
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                      hintText: 'Loyalty point',
                      hintStyle: TextStyle(
                        fontFamily: 'Lexend Deca',
                        color: Color(0xFF95A1AC),
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFEE4E3A),
                          width: 0.5,
                        ),
                        borderRadius: BorderRadius.circular(9),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFEE4E3A),
                          width: 0.5,
                        ),
                        borderRadius: BorderRadius.circular(9),
                      ),
                      filled: true,
                      fillColor: Color(0xFFFBEEE2),
                    ),
                    value: _loyaltycontroller,
                    items: ['select value', 'value1', 'value2']
                        .map((label) => DropdownMenuItem(
                      child: Text(
                        label.toString(),
                        style: getText(context)
                            .labelLarge!
                            .apply(color: Colors.grey),
                      ),
                      value: label,
                    ))
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        _loyaltycontroller = value!;
                      });
                    }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 16.0, right: 16.0, top: 8.0, bottom: 8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Discount',
                  labelStyle: TextStyle(
                    fontFamily: 'Lexend Deca',
                    color: Color(0xFF95A1AC),
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                  hintText: 'Discount',
                  hintStyle: TextStyle(
                    fontFamily: 'Lexend Deca',
                    color: Color(0xFF95A1AC),
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFEE4E3A),
                      width: 0.5,
                    ),
                    borderRadius: BorderRadius.circular(9),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFEE4E3A),
                      width: 0.5,
                    ),
                    borderRadius: BorderRadius.circular(9),
                  ),
                  filled: true,
                  fillColor: Color(0xFFFBEEE2),
                ),
                style: TextStyle(
                  fontFamily: 'Lexend Deca',
                  color: Color(0xFF2B343A),
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {},
                  child: SizedBox(
                      width: getWidth(context)*0.50,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            'Save',
                            style: getText(context)
                                .headline6
                                ?.apply(color: Colors.white, fontSizeFactor: 0.8),
                          ),
                        ),
                      ))),
            ),

            SizedBox(
              height: getHeight(context)*0.10,
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,
        required this.title,
        required this.icon,
        required this.OnPressed})
      : super(key: key);
  final String title;
  final Icon icon;
  final void Function()? OnPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(color: Colors.red, width: 0.5)),
            ),
          ),
          onPressed: OnPressed,
          child: SizedBox(
            width: getWidth(context) * 0.83,
            height: getHeight(context) * 0.07,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: getText(context).headline6?.apply(color: Colors.red),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: icon,
                ),
              ],
            ),
          )),
    );
  }
}
