import 'package:flutter/material.dart';
import 'calculadora.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 29, 4, 72)),
        useMaterial3: true,
      ),
      home: const HomePage(title: 'CALCULADORA'),
      debugShowCheckedModeBanner: false, // Adicione esta linha
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(),
            ),
            Expanded(
              flex: 8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Container(),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration( 
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all( 
                          color: const Color.fromARGB(193, 27, 7, 76),
                          width: 1,
                        ),
                        boxShadow: const [
                        BoxShadow(
                            color: Colors.black45,
                            blurRadius: 10,
                            offset: Offset(5,5),
                          ),
                        ]
                      ),
                      child:const Calculadora(),
                    ),
                  ),
                  Expanded(
                    child: Container(),
                 ),
                ],
              ),
            ),  
              Expanded(      
                flex: 2,
                child: Container(),
              ),
            ],  
         ),
       ),
       floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Incrementar',
        child: const Icon(Icons.add),
      ),
    );
  }
}
