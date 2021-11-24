import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:restaurant_menu_app/models/Bill.dart';
import 'package:restaurant_menu_app/services/bill.services.dart';

class BillScreen extends StatelessWidget {
  const BillScreen({Key? key}) : super(key: key);

  createTableRows(List<BillItem> items) {
    List<TableRow> tableRows = [
      TableRow(
        children: const [Text("#"), Text("Item"), Text("Qty"), Text("Price")],
      )
    ];

    items.forEach((
      BillItem item,
    ) {
      final TableRow row = TableRow(children: [
        Text("1"),
        Text(item.item.name),
        Text(item.count.toString()),
        Text((item.item.price * item.count).toString())
      ]);
      tableRows.add(row);
    });

    tableRows.add(
        TableRow(children: [Text(""), Text(""), Text("TOTAL"), Text("1300")]));

    return tableRows;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: const Text(
              "PARADISE BIRIYANI",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 5, 0, 10),
            child: const Text(
              "#4/297, Royapettah HR, Chennai - 14",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: ValueListenableBuilder(
              valueListenable: billItemsNotifier,
              builder:
                  (BuildContext ctx, List<BillItem> billItems, Widget? child) {
                return Table(
                  // border: TableBorder.all(),
                  columnWidths: const <int, TableColumnWidth>{
                    0: FixedColumnWidth(30),
                    1: FlexColumnWidth(),
                    2: FixedColumnWidth(50),
                    3: FixedColumnWidth(64),
                  },
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  // children: <TableRow>[
                  //   TableRow(children: [
                  //     Text("#"),
                  //     Text("Item"),
                  //     Text("Qty"),
                  //     Text("Price")
                  //   ]),
                  // ],
                  children: createTableRows(billItems),
                );
              },
            ),
          ),
        ],
      )),
    );
  }
}

// TableRow(
//   children: <Widget>[
//     Container(
//       height: 32,
//       color: Colors.green,
//     ),
//     TableCell(
//       verticalAlignment: TableCellVerticalAlignment.top,
//       child: Container(
//         height: 32,
//         width: 32,
//         color: Colors.red,
//       ),
//     ),
//     Container(
//       height: 64,
//       color: Colors.blue,
//     ),
//   ],
// ),
// TableRow(
//   decoration: const BoxDecoration(
//     color: Colors.grey,
//   ),
//   children: <Widget>[
//     Container(
//       height: 64,
//       width: 128,
//       color: Colors.purple,
//     ),
//     Container(
//       height: 32,
//       color: Colors.yellow,
//     ),
//     Center(
//       child: Container(
//         height: 32,
//         width: 32,
//         color: Colors.orange,
//       ),
//     ),
//   ],
// ),
