import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:withprovider/Provider/count_provider.dart';


class CountExample extends StatelessWidget {
   CountExample({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    //geting the instance of the Count Provider
    final countProvider = Provider.of<CountProvider>(context,listen: false);
    print("Count Example Build");
    return Scaffold(
      appBar: AppBar(
        title: Text("Provoder Example"),
      ),
      body: Center(
        child: Number(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:(){
          countProvider.CountPlus();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}


// class Number extends StatefulWidget {
//   const Number({Key? key}) : super(key: key);
//
//   @override
//   State<Number> createState() => _NumberState();
// }
//
// class _NumberState extends State<Number> {
//   @override
//   Widget build(BuildContext context) {
//     print("Number Build Build");
//     final countProvider = Provider.of<CountProvider>(context,listen: false);
//     return Consumer<CountProvider>(builder: (context,value,chile){
//         return Text(value.count.toString(),
//           style: TextStyle(
//               fontSize: 30
//           ),
//         );
//     });
//   }
// }


class Number extends StatelessWidget {
  const Number({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("Number Build Build");
    final countProvider = Provider.of<CountProvider>(context,listen: false);
    return Consumer<CountProvider>(builder: (context,value,child){
      return Text(value.count.toString(),
        style: TextStyle(
          fontSize: 35,
        ),
      );
    }
    );
  }
}
