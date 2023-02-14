import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: <String, WidgetBuilder>{
          "/inicio": (BuildContext context) => const Inicio(),
          "/empresa": (BuildContext context) => const Empresa(),
          "/productos": (BuildContext context) => const Productos(),
          "/contacto": (BuildContext context) => const Contacto(),
        },
        home: const Inicio());
  }
}

class Empresa extends StatelessWidget {
  const Empresa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("EMPRESA"),
      ),
      body: const Center(
        child: Text("SECCIÓN EMPRESA"),
      ),
    );
  }
}

class Productos extends StatelessWidget {
  const Productos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PRODUCTOS"),
      ),
      body: const Center(
        child: Text("SECCIÓN PRODUCTOS"),
      ),
    );
  }
}

class Contacto extends StatelessWidget {
  const Contacto({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CONTACTO"),
      ),
      body: const Center(
        child: Text("SECCIÓN CONTACTO"),
      ),
    );
  }
}

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding:
            const EdgeInsets.only(top: 130, bottom: 10, right: 10, left: 10),
        decoration: const BoxDecoration(
            color: Colors.indigo,
            image: DecorationImage(
                image: NetworkImage(
                    "https://cdn.passporthealthglobal.com/wp-content/uploads/2018/08/vacunas-consejos-peru.jpg"),
                alignment: Alignment.topCenter)),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: ElevatedButton(
                        //color: Colors.white,
                        //shape: RoundedRectangleBorder(
                        //  borderRadius: BorderRadius.circular(10.0)),
                        onPressed: () {
                          Navigator.pushNamed(context, "/inicio");
                        },
                        child: const SizedBox(
                          width: 100,
                          height: 100,
                          child: Center(
                            child: Text(
                              "INICIO",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.indigo,
                                  fontWeight: FontWeight.w900),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: ElevatedButton(
                        //color: Colors.white,
                        //shape: RoundedRectangleBorder(
                        //    borderRadius: BorderRadius.circular(10.0)),
                        onPressed: () {
                          Navigator.pushNamed(context, "/empresa");
                        },
                        child: const SizedBox(
                          width: 100,
                          height: 100,
                          child: Center(
                            child: Text("EMPRESA", textAlign: TextAlign.center),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: ElevatedButton(
                        // color: Colors.white,
                        //shape: RoundedRectangleBorder(
                        //  borderRadius: BorderRadius.circular(10.0)),
                        onPressed: () {
                          Navigator.pushNamed(context, "/productos");
                        },
                        child: const SizedBox(
                          width: 100,
                          height: 100,
                          child: Center(
                            child:
                                Text("PRODUCTOS", textAlign: TextAlign.center),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: ElevatedButton(
                        // color: Colors.white,
                        //shape: RoundedRectangleBorder(
                        //  borderRadius: BorderRadius.circular(10.0)),
                        onPressed: () {
                          Navigator.pushNamed(context, "/contacto");
                        },
                        child: const SizedBox(
                          width: 100,
                          height: 100,
                          child: Center(
                            child:
                                Text("CONTACTO", textAlign: TextAlign.center),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
