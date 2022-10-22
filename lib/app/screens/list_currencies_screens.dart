import 'package:flutter/material.dart';

import '../components/menu_component.dart';

class ListCurrencies extends StatefulWidget {
  const ListCurrencies({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<ListCurrencies> createState() => _MyListCurrenciesState();
}


class _MyListCurrenciesState extends State<ListCurrencies> {

  @override
  Widget build(BuildContext context) {

    List<String> imagens = ["assets/imagens-moedas/AUD.png", "assets/imagens-moedas/BRL.png", "assets/imagens-moedas/CAD.png", "assets/imagens-moedas/CHF.png", "assets/imagens-moedas/CNY.png"];

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),

      drawer:
      MenuComponent(context),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Expanded(
              child: ListView.builder(
                  itemCount: imagens.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(imagens[index]),
                      ),
                      title: Text(imagens[index]),
                      trailing: IconButton(
                        icon: const Icon(Icons.delete, color: Colors.red),
                        onPressed: () {
                          setState(() {
                            //_resultList.remove(_resultList[index]);
                          });
                        },
                      ),
                    );
                  }
              ),
            ),



          ],
        ),
      ),
    );
  }
}