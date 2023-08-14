import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:practice/provider/provider_class.dart';
import 'package:provider/provider.dart';

class drower extends StatefulWidget {
  const drower({Key? key}) : super(key: key);

  @override
  State<drower> createState() => _drowerState();
}

provider? nspT;
provider? nspF;

class _drowerState extends State<drower> {
  @override
  Widget build(BuildContext context) {
    nspT = Provider.of<provider>(context, listen: true);
    nspF = Provider.of<provider>(context, listen: false);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Movies"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CarouselSlider.builder(
                itemCount: nspF!.slides.length,
                itemBuilder: (context, index, realIndex) {
                  return Padding(
                    padding: const EdgeInsets.all(5),
                    child: Container(
                      height: 500,
                      width: 100,
                      alignment: Alignment.center,
                      //child: Container(height: 25.h,width: 72.w,color:Colors.red,),
                      // child: Image.network("${nspF!.slides[index]}",height: 25.h,width: 75.h,fit: BoxFit.fill,),
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: NetworkImage("${nspF!.slides[index]}"),
                              fit: BoxFit.fill)),
                    ),
                  );
                },
                options: CarouselOptions(
                  scrollDirection: Axis.horizontal,
                  autoPlay: true,
                  enableInfiniteScroll: true,
                  autoPlayInterval: Duration(seconds: 2),
                  onPageChanged: (index, reason) {
                    return nspF!.changeslider(index);
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: nspF!.slides
                    .asMap()
                    .entries
                    .map(
                      (e) => Container(
                          margin: EdgeInsets.all(5),
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              color: nspT!.sliderindex == e.key
                                  ? Colors.red
                                  : Colors.red.shade50,
                              shape: BoxShape.circle)),
                    )
                    .toList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           leading: Builder(
//             builder: (context) => IconButton(
//               icon: Icon(Icons.menu_open_outlined),
//               onPressed: () => Scaffold.of(context).openDrawer(),
//             ),
//           ),
//           backgroundColor: Colors.teal,
//           elevation: 0,
//           title: Text('Form File'),
//         ),
//         body: SingleChildScrollView(
//           child: Column(
//             children: [
//               Theme(
//                 data: ThemeData(
//                   canvasColor: Colors.teal,
//                   colorScheme: Theme.of(context).colorScheme.copyWith(
//                         primary: Colors.teal,
//                         background: Colors.red,
//                         secondary: Colors.teal,
//                       ),
//                 ),
//                 child: SizedBox(
//                   height: 580,
//                   child: Stepper(
//                     steps: [
//                       Step(
//                           title: Text("personal info"),
//                           content: Column(
//                             children: [
//                               TextField(
//                                 obscureText: true,
//                                 decoration: InputDecoration(
//                                   border: OutlineInputBorder(),
//                                   labelText: 'Name',
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 10,
//                               ),
//                               TextField(
//                                 obscureText: true,
//                                 decoration: InputDecoration(
//                                   border: OutlineInputBorder(),
//                                   labelText: 'Last Name',
//                                 ),
//                               )
//                             ],
//                           )),
//                       Step(
//                           title: Text("Contact"),
//                           content: Column(
//                             children: [
//                               TextField(
//                                 obscureText: true,
//                                 decoration: InputDecoration(
//                                   border: OutlineInputBorder(),
//                                   labelText: 'Contact',
//                                 ),
//                               ),
//                             ],
//                           )),
//                       Step(
//                           title: Text("Address"),
//                           content: Column(
//                             children: [
//                               TextField(
//                                 obscureText: true,
//                                 decoration: InputDecoration(
//                                   border: OutlineInputBorder(),
//                                   labelText: 'Address',
//                                 ),
//                               ),
//                             ],
//                           )),
//                       Step(
//                           title: Text("card details"),
//                           content: Column(
//                             children: [
//                               TextField(
//                                 obscureText: true,
//                                 decoration: InputDecoration(
//                                   border: OutlineInputBorder(),
//                                   labelText: 'card details',
//                                 ),
//                               ),
//                             ],
//                           )),
//                       Step(
//                           title: Text("veryfication"),
//                           content: Column(
//                             children: [
//                               TextField(
//                                 obscureText: true,
//                                 decoration: InputDecoration(
//                                   border: OutlineInputBorder(),
//                                   labelText: 'upload Details',
//                                 ),
//                               ),
//                             ],
//                           )),
//                     ],
//                     currentStep: pT!.selecteIndex,
//                     onStepContinue: () {
//                       pf!.ChangContinue();
//                     },
//                     onStepCancel: () {
//                       pf!.Changcalean();
//                     },
//                   ),
//                 ),
//               ),
//               ElevatedButton(
//                 onPressed: () {
//                   showModalBottomSheet(
//                     context: context,
//                     shape: const RoundedRectangleBorder(
//                       borderRadius: BorderRadius.vertical(
//                         top: Radius.circular(20),
//                       ),
//                     ),
//                     builder: (context) {
//                       return SizedBox(
//                           height: 200,
//                           child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               mainAxisSize: MainAxisSize.min,
//                               children: [
//                                 Container(
//                                   height: 200,
//                                   decoration: BoxDecoration(
//                                       color: Colors.teal.shade50,
//                                       borderRadius: BorderRadius.only(
//                                           topLeft: Radius.circular(25),
//                                           topRight: Radius.circular(25))),
//                                   child: Center(
//                                       child: Text(
//                                     "Hellow",
//                                     style: TextStyle(
//                                         color: Colors.black38, fontSize: 25),
//                                   )),
//                                 ),
//                               ]));
//                     },
//                   );
//                 },
//                 child: Text("Show Bottom Sheet"),
//                 style: ElevatedButton.styleFrom(backgroundColor: Colors.teal),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               ElevatedButton(
//                   onPressed: () async {
//                     DateTime? d1 = await showDatePicker(
//                         context: context,
//                         initialDate: pT!.date,
//                         firstDate: DateTime(2021),
//                         lastDate: DateTime(2030));
//                     pf!.Changedate(d1!);
//                   },
//                   child: Text(
//                       "Show date"),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.teal,
//                   )),Container(child: Text(
//                   "${pT!.date.day}-${pT!.date.month}-${pT!.date.year}"),),
//               SizedBox(
//                 height: 10,
//               ),
//               ElevatedButton(
//                 onPressed: () async {
//                   TimeOfDay? T1 = await showTimePicker(
//                     context: context,
//                     initialTime: pT!.time,
//                   );
//                   pf!.ChangeTime(T1!);
//                 },
//                 child: Text("Show time"),
//                 style: ElevatedButton.styleFrom(backgroundColor: Colors.teal),
//               ),Container(child: Text(
//       "${pT!.time.hour}-${pT!.time.minute}"),),
//             ],
//           ),
//         ),
//         drawer: Drawer(
//             child: Column(
//           children: [
//             Container(
//               height: 203,
//               color: Colors.teal,
//               child: Column(
//                 children: [
//                   SizedBox(
//                     height: 40,
//                   ),
//                   Padding(
//                     padding: EdgeInsets.only(left: 20),
//                     child: Row(children: [
//                       CircleAvatar(
//                         backgroundImage: AssetImage("assets/images/p.png"),
//                         radius: 50,
//                         backgroundColor: Colors.white70,
//                       ),
//                     ]),
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   Padding(
//                     padding: EdgeInsets.only(left: 35, bottom: 1),
//                     child: Row(children: [
//                       Text("ravina ahir",
//                           style: TextStyle(color: Colors.white)),
//                     ]),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.only(left: 20),
//                     child: Row(
//                       children: [
//                         Text("ravina@gmail.com",
//                             style: TextStyle(color: Colors.white)),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Row(
//               children: [
//                 Expanded(
//                     child: ListTile(
//                   leading: Icon(Icons.home, size: 25, color: Colors.black),
//                   title: Text("Home", style: TextStyle(fontSize: 15)),
//                 )),
//               ],
//             ),
//             Row(
//               children: [
//                 Expanded(
//                     child: ListTile(
//                   leading: Icon(Icons.person, size: 25, color: Colors.black),
//                   title: Text("profile", style: TextStyle(fontSize: 15)),
//                 )),
//               ],
//             ),
//             Row(
//               children: [
//                 Expanded(
//                     child: ListTile(
//                   leading:
//                       Icon(Icons.notifications, size: 25, color: Colors.black),
//                   title: Text("Notification", style: TextStyle(fontSize: 15)),
//                 )),
//               ],
//             ),
//             Row(
//               children: [
//                 Expanded(
//                     child: ListTile(
//                   leading: Icon(Icons.settings, size: 25, color: Colors.black),
//                   title: Text("Settings", style: TextStyle(fontSize: 15)),
//                 )),
//               ],
//             ),
//             Row(
//               children: [
//                 Expanded(
//                     child: ListTile(
//                   leading:
//                       Icon(Icons.logout_sharp, size: 25, color: Colors.black),
//                   title: Text("Logout", style: TextStyle(fontSize: 15)),
//                 )),
//               ],
//             )
//           ],
//         )),
//       ),
//     );
//   }
// }
