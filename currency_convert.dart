import 'Package:flutter/material.dart';

class CurrecyConverter extends StatefulWidget {
  const CurrecyConverter({required Key key}) : super(key: key);

  @override
  State<CurrecyConverter> createState() => _CurrecyConverterState();
}

class _CurrecyConverterState extends State<CurrecyConverter> {
  late String valueschoose;
  late String valueschoose1;
  @override
  Widget build(BuildContext context) {
    final _amount = TextEditingController();
    final _tot = TextEditingController();
    int cal;
    int result;

    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Column(
            children: [
              const Text("Currency Converter",
                  style: TextStyle(fontSize: 30, color: Colors.black)),
              const SizedBox(
                height: 15,
              ),
              TextField(
                controller: _amount,
                decoration: InputDecoration(
                    labelText: "Amount",
                    labelStyle:
                        TextStyle(fontSize: 15, color: Colors.grey.shade400),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              const SizedBox(
                height: 15,
              ),
              DropdownButton<String>(
                  value: this.valueschoose,
                  items: <String>['Srilankan Rupees', 'Indian Rupees']
                      .map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (value) => setState(
                        () => valueschoose = value!,
                      )),
              const SizedBox(
                height: 15,
              ),
              DropdownButton<String>(
                  value: this.valueschoose1,
                  items: <String>['USD'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (value) => setState(
                        () => valueschoose1 = value!,
                      )),
              const SizedBox(
                height: 15,
              ),
              TextField(
                controller: _tot,
                decoration: InputDecoration(
                    labelText: "Total",
                    labelStyle:
                        TextStyle(fontSize: 15, color: Colors.grey.shade400),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  if (valueschoose == "Srilankan Rupees" &&
                      valueschoose1 == "USD") {
                    cal = int.parse(_amount.text) * 300;
                    result = cal;
                    _tot.text = result.toString();
                  } else if (valueschoose == "Indian Rupees" &&
                      valueschoose1 == "USD") {
                    cal = int.parse(_amount.text) * 78;
                    result = cal;
                    _tot.text = result.toString();
                  }
                },
                child: Container(
                  alignment: Alignment.center,
                  height: size.height / 14,
                  width: size.width,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(5)),
                  child: const Text(
                    "Convert",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
