//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


/*class CurrencyConverterPage extends StatefulWidget{
  const CurrencyConverterPage({super.key});
  @override
  State<CurrencyConverterPage> createState() {
    return _CurrencyConverterPageState();
  }
}
class _CurrencyConverterPageState extends State<CurrencyConverterPage>{
  @override
  Widget build(BuildContext context){
   return const Scaffold();
  }
}*/

class CurrencyConverterPage extends StatelessWidget{
   const CurrencyConverterPage({super.key});

   @override
    Widget build(BuildContext context){
      //print('rebuild');
      double result=0;
      TextEditingController texteditingcontroller=TextEditingController();
      return  Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent,
          elevation: 0,
          title:  const Text('Currency Converter',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            fontFamily: 'Times New Roman',
            color: Colors.black,
            //decoration: TextDecoration.underline,
            
          ),
          ),
           
          centerTitle: true,
        ),
        
            body:  Center(
            
            child:            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                   
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.network('https://media.licdn.com/dms/image/v2/D5612AQG2I3YThmMrXw/article-cover_image-shrink_600_2000/article-cover_image-shrink_600_2000/0/1666286641659?e=2147483647&v=beta&t=QyyBj2h4Oo3O6OeUD_LJUXEdfRGlKGv2jdnuxlr8aPM'),
                    ),
                   
                   Text(
                  result.toString(),
                 style:  const TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                ),
                Padding(
                  padding:  const EdgeInsets.all(8.0),
                  child:  TextField(
                    controller: texteditingcontroller,
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                    decoration: const InputDecoration(
                      hintText: 'Please enter the amount in USD',
                      hintStyle: TextStyle(
                        color: Colors.black,
                      ),
                      prefixIcon: Icon(Icons.monetization_on_sharp),
                      prefixIconColor: Colors.black, 
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 5.0,
                          style: BorderStyle.solid,
                          strokeAlign: BorderSide.strokeAlignOutside,
                  
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(60)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 5.0,
                          style: BorderStyle.solid,
                          strokeAlign: BorderSide.strokeAlignOutside,
                  
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(60)),
                      )
                      ),
                      keyboardType: const TextInputType.numberWithOptions(
                        decimal: true,
                        signed: true,
                      ),
                      ),
                      
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton(
                    onPressed: () {
                     result=double.parse(texteditingcontroller.text)*81;
                    },
                    
                     style:  ElevatedButton.styleFrom(
                      backgroundColor: (Colors.black),
                      foregroundColor: (Colors.white),
                      minimumSize: const Size(double.infinity, 50),
                      elevation: (15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                     ),),
                    child: const Text('Convert'),)
                    ),
                
                  
                ]
                  ),
                  
            ),
                  
                
        );
            
      
  }
}
