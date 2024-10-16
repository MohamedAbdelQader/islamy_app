import 'package:flutter/material.dart';
class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int sbhanCounter=0;
  int hamdCounter=0;
  int tkberCounter=0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(

        children:
        [Align(
          alignment: Alignment.topCenter,
            child: Image.asset("assets/images/head_of_seb7a.png")),
        Container(
          margin: EdgeInsets.only(
            top: 75,
          ),
          child: Align(
            alignment: Alignment.bottomCenter,
              child: Image.asset("assets/images/body_of_seb7a.png")),
        ),
          Positioned(
            top: 150,
            left: 150,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.secondary, // Background color
                padding: EdgeInsets.all(15), // Equivalent to margin in Container
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0), // Rounded corners
                ),
              ),
              onPressed: () {
                setState(() {
                   sbhanCounter=0;
                   hamdCounter=0;
                   tkberCounter=0;

                });                  },
              child: Text(
                "اعاده\n التسبيح",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ]
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text("عدد التسبيحات",style: TextStyle(
            fontSize: 25,
          ),),
        ),

        Row(
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Text(tkberCounter.toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,

                ),),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Text(hamdCounter.toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,

                  ),),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Text(sbhanCounter.toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,

                  ),),
              ),
            ),

          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.all(10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.secondary, // Background color
                    padding: EdgeInsets.all(15), // Equivalent to margin in Container
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0), // Rounded corners
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      tkberCounter++;
                    });
                  },
                  child: Text(
                    "الله   أكبر",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )

            ),
            Expanded(
              child:  Container(
                margin: EdgeInsets.all(10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.secondary, // Background color
                    padding: EdgeInsets.all(15), // Equivalent to margin in Container
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0), // Rounded corners
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      hamdCounter++;
                    });                  },
                  child: Text(
                    "الحمد لله",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )

            ),
            Expanded(
              child:  Container(
                margin: EdgeInsets.all(10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.secondary, // Background color
                    padding: EdgeInsets.all(15), // Equivalent to margin in Container
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0), // Rounded corners
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      sbhanCounter++;
                    });                  },
                  child: Text(
                    "سبحان الله",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ),

          ],
        ),

    ]);


  }
}
