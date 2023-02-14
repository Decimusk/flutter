import 'package:flutter/material.dart';

//Esta función le dice a Dart dónde comienza el programa,
//y ​​debe estar en el archivo que se considera el "punto de entrada" para su programa.
void main() {
  runApp(const MyApp());
}

//Los widgets cuyo estado no se puede modificar una vez creados se
//denominan widgets sin estado. Estos widgets son inmutables una vez que se
//construyen, es decir, cualquier cantidad de cambio en las variables, íconos,
//botones o la recuperación de datos no puede cambiar el estado de la aplicación.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

//Es par declarar explícitamente la anulación del método. Es una
//anotación de Java (no específica de Android). Lo usa para indicar
//que este método anula un método.
  @override
  //Es un localizador que se usa para rastrear cada widget en un árbol
  //y localizarlos y su posición en el árbol . El BuildContext de cada
  //widget se pasa a su método de compilación. Recuerde que el método de
  //compilación devuelve el árbol de widgets que representa un widget.
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Arrays en Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const MainView(),
    );
  }
}

//Un widget con estado activa un método de compilación para crear sus widgets
//secundarios y la subclase del estado contiene los datos relacionados.
//A menudo se usa en los casos en que se necesita volver a dibujar un widget.
class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  List<Map> categories = [
    {"name": "Nadar", "isChecked": false},
    {"name": "Ciclismo", "isChecked": false},
    {"name": "Tenis", "isChecked": false},
    {"name": "Boxeo", "isChecked": false},
    {"name": "Vóleibol", "isChecked": false},
    {"name": "Bolos", "isChecked": false},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: const [
            Text('Casillas de Verificación Dinámicas'),
            Text(
              '@perezg74',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 13,
                  fontWeight: FontWeight.w300),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text(
              "Elija su categoría favorita:",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            const Divider(),
            const SizedBox(height: 10),
            Column(
                children: categories.map((favorite) {
              return CheckboxListTile(
                  activeColor: Colors.deepPurpleAccent,
                  checkboxShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  value: favorite["isChecked"],
                  title: Text(favorite["name"]),
                  onChanged: (val) {
                    setState(() {
                      favorite["isChecked"] = val;
                    });
                  });
            }).toList()),
            const SizedBox(height: 10),
            const Divider(),
            const SizedBox(height: 10),
            Wrap(
              children: categories.map((favorite) {
                if (favorite["isChecked"] == true) {
                  return Card(
                    elevation: 3,
                    color: Colors.deepPurpleAccent,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            favorite["name"],
                            style: const TextStyle(color: Colors.white),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                favorite["isChecked"] = !favorite["isChecked"];
                              });
                            },
                            child: const Icon(
                              Icons.delete_forever_rounded,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }
                return Container();
              }).toList(),
            )
          ]),
        ),
      ),
    );
  }
}
