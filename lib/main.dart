mkdir -p lib
cat << 'EOF' > lib/main.dart
import 'package:flutter/material.dart';
import 'core/routes.dart';

void main() {
  runApp(const PlanaltoApp());
}

class PlanaltoApp extends StatelessWidget {
  const PlanaltoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Planalto Automação',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: appRoutes,
    );
  }
}
EOF
