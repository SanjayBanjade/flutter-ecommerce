import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/products.dart';

class AppHome extends StatefulWidget {
  _AppHomeState createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  static const routeName = '/';

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero).then(
      (_) async {
        await Provider.of<Products>(context).getProducts();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Products"),
      ),
      body: Consumer<Products>(
        builder: (ctx, Products item, child) {
          return GridView.count(
            crossAxisCount: 2,
            children: item.items
                .map(
                  (it) => Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: InkWell(
                      child: Center(
                        child: Text(it.title),
                      ),
                      onTap: () {},
                    ),
                  ),
                )
                .toList(),
          );
        },
      ),
    );
  }
}
