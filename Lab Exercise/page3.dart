import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: "page 1",
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          margin: EdgeInsets.all(10),
          child: Row(
            children: [
              Icon(
                  Icons.arrow_back,
                color: Colors.black,
              ),
              SizedBox(width: 10),
              Text(
                  'Order Details',
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
              )
            ],
          ),
        ),
      ),
      body:SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.grey[400]
          ),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Container(
                      child:Container(
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            color: Colors.blue[100],
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                    child : Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30)
                                      ),
                                      child: Icon(
                                      Icons.check_circle,
                                      size: 40,
                                      color: Colors.green,
                                    ),
                                  ),
                                  ),

                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Completed',
                                        style: TextStyle(
                                            color: Colors.lightBlueAccent,
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                      Text(
                                        'Order Completed 24 july 2024',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Icon(
                              Icons.arrow_right,
                              size: 40,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Order ID',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey
                                ),
                              ),
                              Text(
                                '#524120',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold
                                ),
                              )
                            ],
                          ),
                          Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Order Date',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey
                                ),
                              ),
                              Text(
                                '#20 july 2024, 05:00 PM',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 15),
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Purchased Items',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18
                      ),
                    ),
                    SizedBox(height: 20),
                    Tshirt(type: 'blue T-Shirt'),
                    SizedBox(height: 20),
                    Tshirt(type: 'blue T-Shirt'),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Shipping Information',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18
                      ),),
                    SizedBox(height: 10),
                    Container(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Name',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey
                                ),
                              ),
                              Text(
                                'Jacob Jones',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Phone Number',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey
                                ),
                              ),
                              Text(
                                '(105) 555_3652',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Address',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey
                                ),
                              ),
                              Text(
                                '61480 Sunbrook Park, PC',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Shipment',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey
                                ),
                              ),
                              Text(
                                'Economy',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Shipping Information',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18
                      ),),
                    SizedBox(height: 10),
                    Container(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Name',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey
                                ),
                              ),
                              Text(
                                'Jacob Jones',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Phone Number',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey
                                ),
                              ),
                              Text(
                                '(105) 555_3652',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Address',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey
                                ),
                              ),
                              Text(
                                '61480 Sunbrook Park, PC',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Shipment',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey
                                ),
                              ),
                              Text(
                                'Economy',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )

    );
  }
}

class Tshirt extends StatelessWidget {
  final String type;
  const Tshirt({Key? key, required this.type}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12), // Border radius added
                  ),
                  child: Image.asset(
                    'assets/coffee.jpg',
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '$type', // Made bold
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 16
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'size : L',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "\$500", // Made bold
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 16
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                children: [
                  Text('color :'),
                  Text(' yellow',
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  )
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Text('Qty :'),
                  Text('1',
                    style: TextStyle(
                        fontWeight: FontWeight.bold
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

