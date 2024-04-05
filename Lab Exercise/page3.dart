import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: "page 1",
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          margin: EdgeInsets.all(10),
         child: Row(
           children: [
             Icon(Icons.arrow_circle_left),
             SizedBox(width: 10),
             Text('Order Details')
           ],
         ),
        )
      ),

      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              children: [
                Container(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.blue,
                        width: 10,
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Icon(Icons.ramp_right_sharp),
                  )
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Completed',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.lightBlue,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      child: Row(
                        children : [
                          Container(
                            child: Text(
                              'Order completed july',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 110),
                Icon(
                    Icons.arrow_right,
                  size: 50,
                )
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.fromLTRB(20, 20, 20, 5),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        'Order Id',
                        style: TextStyle(
                          fontWeight: FontWeight.w200
                        ),
                    ),
                    Text(
                        '#524563',
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Order Date',
                      style: TextStyle(
                          fontWeight: FontWeight.w200
                      ),
                    ),
                    Text(
                      '20 , july 2024, 05:23',
                      style: TextStyle(
                          fontWeight: FontWeight.bold
                      ),
                    )
                  ],
                ),
                SizedBox(height: 30),
                Text('purchased items',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                )),
                Tshirt(),
                SizedBox(height: 5),
                Tshirt(),
              SizedBox(height: 20),
                Text('shipping information',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                    )),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Order Date',
                      style: TextStyle(
                          fontWeight: FontWeight.w200
                      ),
                    ),
                    Text(
                      '20 , july 2024, 05:23',
                      style: TextStyle(
                          fontWeight: FontWeight.bold
                      ),
                    )

                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Order Date',
                      style: TextStyle(
                          fontWeight: FontWeight.w200
                      ),
                    ),
                    Text(
                      '20 , july 2024, 05:23',
                      style: TextStyle(
                          fontWeight: FontWeight.bold
                      ),
                    )

                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Order Date',
                      style: TextStyle(
                          fontWeight: FontWeight.w200
                      ),
                    ),
                    Text(
                      '20 , july 2024, 05:23',
                      style: TextStyle(
                          fontWeight: FontWeight.bold
                      ),
                    )

                  ],
                ),

                SizedBox(height: 20),
                Text('payment info',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                    )),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Payment Method',
                      style: TextStyle(
                          fontWeight: FontWeight.w200
                      ),
                    ),
                    Text(
                      'Cash on delivery',
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
    );
  }
}


class Tshirt extends StatelessWidget {
  const Tshirt({super.key});

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
                Image.asset(
                  'assets/coffee.jpg',
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
                SizedBox(width: 20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        'T-shirt',
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                        'size : L',
                      style: TextStyle(
                        fontWeight: FontWeight.w200
                      ),
                    ),
                    SizedBox(height: 5),
                    Text("&500")
                  ],
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('color : yellow'),
              SizedBox(height: 15),
              Text('Qty 1')
            ],
          )
        ],
      ),
    );
  }
}
