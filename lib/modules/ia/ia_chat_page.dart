import 'package:flutter/material.dart';

class IaChatPage extends StatefulWidget {
  const IaChatPage({super.key});

  @override
  State<IaChatPage> createState() => _IaChatPageState();
}

class _IaChatPageState extends State<IaChatPage> {
  final TextEditingController _controller = TextEditingController();
  final List<String> _messages = [];

  void _sendMessage() {
    if (_controller.text.isEmpty) return;

    setState(() {
      _messages.add("👷 Você: ${_controller.text}");
      _messages.add("🤖 IA: Resposta técnica simulada (API em breve)");
      _controller.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('IA Técnica')),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(_messages[index]),
                );
              },
            ),
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _controller,
                  decoration: const InputDecoration(
                    hintText: 'Pergunte sobre automação, elétrica, PLC...',
                  ),
                ),
              ),
              IconButton(
                icon: const Icon(Icons.send),
                onPressed: _sendMessage,
              )
            ],
          )
        ],
      ),
    );
  }
}
