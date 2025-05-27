import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const name = 'ui_control_screen';
  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('UI Controls')),
      body: _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation { car, plane, boat, submarine }

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;
  Transportation selectedTransportatiton = Transportation.car;
  bool wantsBreakfast = false;
  bool wanstLunch = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: Text('Developer Mode'),
          subtitle: Text('Controles adicionales'),
          value: isDeveloper,
          onChanged:
              (value) => setState(() {
                isDeveloper = !isDeveloper;
              }),
        ),

        ExpansionTile(
          title: Text('Vehiculo de transporte'),
          subtitle: Text('$selectedTransportatiton'),
          children: [
            RadioListTile(
              title: Text('By car'),
              subtitle: Text('Viajar por carro'),
              value: Transportation.car,
              groupValue: selectedTransportatiton,
              onChanged:
                  (value) => setState(() {
                    selectedTransportatiton = Transportation.car;
                  }),
            ),

            RadioListTile(
              title: Text('By boat'),
              subtitle: Text('Viajar por barco'),
              value: Transportation.boat,
              groupValue: selectedTransportatiton,
              onChanged:
                  (value) => setState(() {
                    selectedTransportatiton = Transportation.boat;
                  }),
            ),
            RadioListTile(
              title: Text('By plane'),
              subtitle: Text('Viajar por avión'),
              value: Transportation.plane,
              groupValue: selectedTransportatiton,
              onChanged:
                  (value) => setState(() {
                    selectedTransportatiton = Transportation.plane;
                  }),
            ),
            RadioListTile(
              title: Text('By submarine'),
              subtitle: Text('Viajar por submarino'),
              value: Transportation.submarine,
              groupValue: selectedTransportatiton,
              onChanged:
                  (value) => setState(() {
                    selectedTransportatiton = Transportation.submarine;
                  }),
            ),
          ],
        ),

        CheckboxListTile(
          title: Text('¿Desayuno?'),
          value: wantsBreakfast,
          onChanged:
              (value) => setState(() {
                wantsBreakfast = !wantsBreakfast;
              }),
        ),
        CheckboxListTile(
          title: Text('¿Almuerzo?'),
          value: wanstLunch,
          onChanged:
              (value) => setState(() {
                wanstLunch = !wanstLunch;
              }),
        ),
        CheckboxListTile(
          title: Text('¿Cena?'),
          value: wantsDinner,
          onChanged:
              (value) => setState(() {
                wantsDinner = !wantsDinner;
              }),
        ),
      ],
    );
  }
}
