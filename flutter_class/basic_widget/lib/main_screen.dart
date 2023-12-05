import 'export.dart';
import 'screen/checkbox_class.dart';
import 'screen/notepad/notepad_class.dart';
import 'screen/toast_class.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('Flutter Class'),
        centerTitle: true,
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            BodyComponet(
              title: 'Text And TextField',
              iconData: Icons.text_decrease,
              pressWIdgetScreen: TextWidget(),
            ),
            BodyComponet(
              title: 'Card',
              iconData: Icons.card_giftcard,
              pressWIdgetScreen: CardClass(),
            ),
            BodyComponet(
              title: 'home',
              iconData: Icons.home,
              pressWIdgetScreen: TextWidget(),
            ),
            BodyComponet(
              title: 'Gesture',
              iconData: Icons.smart_button,
              pressWIdgetScreen: GestureClass(),
            ),
            BodyComponet(
              title: 'Container',
              iconData: Icons.confirmation_number,
              pressWIdgetScreen: BasicWidget(),
            ),
            BodyComponet(
              title: 'Row and Column',
              iconData: Icons.blur_linear_rounded,
              pressWIdgetScreen: RowAndColumn(),
            ),
            BodyComponet(
              title: 'Stack',
              iconData: Icons.stacked_bar_chart,
              pressWIdgetScreen: StackClass(),
            ),
            BodyComponet(
              title: 'Random',
              iconData: Icons.window,
              pressWIdgetScreen: RandomColorWidget(),
            ),
            BodyComponet(
              title: 'Tab',
              iconData: Icons.tab,
              pressWIdgetScreen: TabBarClass(),
            ),
            BodyComponet(
              title: 'Drawer',
              iconData: Icons.menu,
              pressWIdgetScreen: DrawerClass(),
            ),
            BodyComponet(
              title: 'ListView',
              iconData: Icons.list_alt_sharp,
              pressWIdgetScreen: FlutterListClass(),
            ),
            BodyComponet(
              title: 'GridView',
              iconData: Icons.grid_4x4_outlined,
              pressWIdgetScreen: GridViewClass(),
            ),
            BodyComponet(
              title: 'Toast',
              iconData: Icons.table_rows_outlined,
              pressWIdgetScreen: ToastClass(),
            ),
            BodyComponet(
              title: 'Check Box And Radio Button',
              iconData: Icons.check_box_outline_blank,
              pressWIdgetScreen: CheckBoxClass(),
            ),
            BodyComponet(
              title: 'NotedPad',
              iconData: Icons.note,
              pressWIdgetScreen: NotedPadApp(),
            ),
          ],
        ),
      ),
    );
  }
}

class BodyComponet extends StatelessWidget {
  final String title;
  final IconData iconData;
  final Widget pressWIdgetScreen;
  const BodyComponet({
    super.key,
    required this.title,
    required this.iconData,
    required this.pressWIdgetScreen,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        onTap: () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => pressWIdgetScreen)),
        leading: Icon(iconData),
        title: Text(title),
      ),
    );
  }
}
