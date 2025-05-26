import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snack_screen';
  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    final snackback = SnackBar(
      content: Text('Hola Mundo'),
      action: SnackBarAction(label: 'Ok!', onPressed: () {}),
      duration: Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackback);
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder:
          (context) => AlertDialog(
            title: Text('¿Esta seguro?'),
            content: Text(
              'Labore officia sunt reprehenderit sint commodo ad fugiat minim aute commodo. Incididunt excepteur quis deserunt et ea. Dolor eu ad excepteur dolore tempor consectetur. Consequat Lorem pariatur ea officia labore.',
            ),
            actions: [
              TextButton(
                onPressed: () => context.pop(),
                child: Text('Cancelar'),
              ),
              FilledButton(
                onPressed: () => context.pop(),
                child: Text('Aceptar'),
              ),
            ],
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sanckbars y Diálogos')),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
              onPressed: () {
                showAboutDialog(
                  context: context,
                  children: [
                    Text(
                      'Cupidatat cupidatat non amet non irure laborum elit deserunt sit Lorem tempor id incididunt aliqua. Magna eu fugiat mollit occaecat sunt consequat dolore sunt consequat Lorem in minim. Elit deserunt adipisicing consequat dolore non veniam magna adipisicing. Anim occaecat duis aute Lorem aliqua do. Ex aliquip quis amet dolor minim nisi minim sit eiusmod in. Sint quis ullamco consequat consequat consectetur commodo id.',
                    ),
                  ],
                );
              },
              child: Text('Licencias usasadas'),
            ),
            FilledButton(
              onPressed: () => openDialog(context),
              child: Text('Mostrar diálogo'),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton.extended(
        label: Text('Mostrar Snackbar'),
        icon: Icon(Icons.remove_red_eye_outlined),
        onPressed: () => showCustomSnackbar(context),
      ),
    );
  }
}
