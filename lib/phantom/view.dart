part of 'phantom.dart';

@JS()
external JSObject get jsObj;

class PhantomView extends StatefulWidget {
  const PhantomView({super.key});

  @override
  State<StatefulWidget> createState() => _PhantomViewState();
}

class _PhantomViewState extends State<PhantomView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              final name = jsObj.getProperty('name'.toJS);
              final age = jsObj.getProperty('age'.toJS);
              final happy = jsObj.getProperty('happy'.toJS);

              print('name: $name, type: ${name.runtimeType}');
              print('age: $name, type: ${age.runtimeType}');
              print('happy: $name, type: ${happy.runtimeType}');
            },
            icon: const Icon(Icons.trip_origin),
          ),
          IconButton(
            onPressed: () {
              print(jsObj.runtimeType);

              final jsObjDartify = jsObj.dartify();
              print(jsObjDartify.runtimeType);
              print(jsObjDartify);
            },
            icon: const Icon(Icons.trip_origin),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          BadSnapshot(
            controller: phantomViewController.bsc,
            child: BadPanel(
              title: const Padding(
                padding: EdgeInsets.only(bottom: 8),
                child: Text('Profile'),
              ),
              items: const [
                BadPanelItem(
                  label: Text('Avatar'),
                  suffix: CircleAvatar(
                    radius: 18,
                    backgroundImage: NetworkImage('https://picsum.photos/200'),
                  ),
                ),
                BadPanelItem(
                  label: Text('Nickname'),
                  body: Text('nickname', textAlign: TextAlign.end),
                  suffix: Icon(Icons.edit_note),
                ),
                BadPanelItem(
                  label: Text('HomePage'),
                  body: Text('https://example.com', textAlign: TextAlign.end),
                ),
                BadPanelItem(
                  label: Text('About'),
                  body: Text(
                    'lorem ipsum dolor sit amet, consectetur adipiscing elit',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
