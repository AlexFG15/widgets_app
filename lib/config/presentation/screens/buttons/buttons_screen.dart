import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = 'buttons_screen';
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Buttons screen')),
      body: _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: () {
          context.pop();
        },
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: Text('Elevated ')),
            ElevatedButton(onPressed: null, child: Text('Elevated Disdabed')),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.access_alarm_rounded),
              label: Text('Elevated Icon'),
            ),

            FilledButton(onPressed: () {}, child: Text('Filled')),

            FilledButton.icon(
              onPressed: () {},
              icon: Icon(Icons.accessibility_new),
              label: Text('Filled Icon'),
            ),

            OutlinedButton(onPressed: () {}, child: Text('Outlined')),

            OutlinedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.terminal),
              label: Text('OutlinedIcon'),
            ),

            TextButton(onPressed: () {}, child: Text('TextButton')),
            TextButton.icon(
              onPressed: () {},
              icon: Icon(Icons.account_box_outlined),
              label: Text('TextButton Icon'),
            ),

            CustomButton(),

            IconButton(
              onPressed: () {},
              icon: Icon(Icons.app_registration_rounded),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.app_registration_outlined),
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(colors.primary),
                iconColor: MaterialStatePropertyAll(Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Hola Mundo', style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );
  }
}
