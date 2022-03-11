import 'package:flutter/material.dart';
import 'package:salon_app/constants/themeconstants.dart';

class ReportHome extends StatefulWidget {
  const ReportHome({Key? key}) : super(key: key);

  @override
  State<ReportHome> createState() => _ReportHomeState();
}

class _ReportHomeState extends State<ReportHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: SingleChildScrollView(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text('Report',style: getText(context).headline6,),
          ),

          CustomElevatedButton(
            title: 'Cancelled / Void Bill',
            onPressed: (){},
          ),
            CustomElevatedButton(
              title: 'Sales Summary',
              onPressed: (){},
            ),
            CustomElevatedButton(
              title: 'Payment Distributions',
              onPressed: (){},
            ),
            CustomElevatedButton(
              title: 'Sales By Prepaid Method',
              onPressed: (){},
            ),
            CustomElevatedButton(
              title: 'Daily Sheet',
              onPressed: (){},
            ),
            CustomElevatedButton(
              title: 'Daily Sales',
              onPressed: (){},
            ),
            CustomElevatedButton(
              title: 'Pending Amount',
              onPressed: (){},
            ),
            CustomElevatedButton(
              title: 'Taxes',
              onPressed: (){},
            ),
            CustomElevatedButton(
              title: 'Services Sales',
              onPressed: (){},
            ),
            CustomElevatedButton(
              title: 'Services Client',
              onPressed: (){},
            ),
            CustomElevatedButton(
              title: 'Services Untaken',
              onPressed: (){},
            ),
            CustomElevatedButton(
              title: 'Staff Sales',
              onPressed: (){},
            ),
            CustomElevatedButton(
              title: 'Staff Services Sales',
              onPressed: (){},
            ),
            CustomElevatedButton(
              title: 'Package Sales',
              onPressed: (){},
            ),
            CustomElevatedButton(
              title: 'Pending Packages',
              onPressed: (){},
            ),
            CustomElevatedButton(
              title: 'Product Sales',
              onPressed: (){},
            ),
            CustomElevatedButton(
              title: 'Product In / out (Retail)',
              onPressed: (){},
            ), CustomElevatedButton(
              title: 'Product In / out (House)',
              onPressed: (){},
            ), CustomElevatedButton(
              title: 'Inventory Report',
              onPressed: (){},
            ), CustomElevatedButton(
              title: 'Appointment List',
              onPressed: (){},
            ), CustomElevatedButton(
              title: 'Cancelled / Void Bill Appointment',
              onPressed: (){},
            ),
            CustomElevatedButton(
              title: 'Detailed Appointment List',
              onPressed: (){},
            ),
            CustomElevatedButton(
              title: 'Job Card',
              onPressed: (){},
            ),
            CustomElevatedButton(
              title: 'Custom Sales',
              onPressed: (){},
            ),
            CustomElevatedButton(
              title: 'Custom Feedback',
              onPressed: (){},
            ),
            CustomElevatedButton(
              title: 'Custom History',
              onPressed: (){},
            ),
            CustomElevatedButton(
              title: 'Client Revenue',
              onPressed: (){},
            ),
            CustomElevatedButton(
              title: 'Payroll history',
              onPressed: (){},
            ),
            CustomElevatedButton(
              title: 'Delete Invoices',
              onPressed: (){},
            ),
            CustomElevatedButton(
              title: 'Lead Report',
              onPressed: (){},
            ),CustomElevatedButton(
              title: 'Employee Attendance',
              onPressed: (){},
            ),CustomElevatedButton(
              title: 'Vender List',
              onPressed: (){},
            ),
            CustomElevatedButton(
              title: 'Membership Sales',
              onPressed: (){},
            ),
            CustomElevatedButton(
              title: 'Membership Sales by Customer',
              onPressed: (){},
            ),
            CustomElevatedButton(
              title: 'Membership Redeem',
              onPressed: (){},
            ),
            CustomElevatedButton(
              title: 'Membership Sales by Customer',
              onPressed: (){},
            ),
            CustomElevatedButton(
              title: 'Client Subscription',
              onPressed: (){},
            ),
            CustomElevatedButton(
              title: 'Member & Non Member Sales',
              onPressed: (){},
            ),












        ],),
      ),
    );
  }
}

class CustomElevatedButton extends StatelessWidget {
   CustomElevatedButton({
    Key? key, required this.title, this.onPressed,
  }) : super(key: key);
  final String title;
  final  void Function()? onPressed;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18)
            ))
          ),
          onPressed: onPressed, child:Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 3,
                child: Text(title,style: getText(context).button?.apply(color: Colors.white,fontSizeFactor: 1.2),)),

            Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.centerRight
                ,
                child: Icon(
                  Icons.navigate_next
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
