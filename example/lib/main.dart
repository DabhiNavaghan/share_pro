import 'package:flutter/material.dart';
import 'package:share_pro/share_pro.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _sharePro = SharePro();
  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Share Pro Example'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                controller: _textController,
                decoration: const InputDecoration(
                  labelText: 'Enter text to share',
                  border: OutlineInputBorder(),
                ),
                maxLines: 3,
              ),
              const SizedBox(height: 20),
              
              // Share Text Button
              ElevatedButton(
                onPressed: () async {
                  try {
                    await _sharePro.share(  'Shared from Share Pro',
                    );
                  } catch (e) {
                    _showError('Error sharing text: $e');
                  }
                },
                child: const Text('Share Text'),
              ),
              
              const SizedBox(height: 12),
              
              // Share URL Button
              ElevatedButton(
                onPressed: () async {
                  try {
                    await _sharePro.share( 'Check out Flutter!',
                    );
                  } catch (e) {
                    _showError('Error sharing URL: $e');
                  }
                },
                child: const Text('Share URL'),
              ),
              
              const SizedBox(height: 12),
              
              // Share Files Button (Simulated)
              ElevatedButton(
                onPressed: () async {
                  try {
                    // Note: In a real app, you'd get actual file paths
                    List<String> filePaths = [
                      '/path/to/image.jpg',
                      '/path/to/document.pdf'
                    ];
                     //WORKING ON IT
                  } catch (e) {
                    _showError('Error sharing files: $e');
                  }
                },
                child: const Text('Share Files'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showError(String message) {
    // Show error message using a snackbar
    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(message),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }
}
