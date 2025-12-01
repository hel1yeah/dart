import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileCard extends StatefulWidget {
  @override
  State<ProfileCard> createState() => _ProfileCardState();
}

class _ProfileCardState extends State<ProfileCard> {
  final TextEditingController _controller = TextEditingController();
  bool _isNotEmpty = false; // стан: чи є текст в полі
  bool _isLoading = false; // стан: чи йде завантаження

  // Асинхронна функція збереження
  Future<void> _saveData() async {
    setState(() => _isLoading = true);

    try {
      // Тут твій async код (API запит, збереження, тощо)
      await Future.delayed(Duration(seconds: 2)); // симуляція запиту
      print('Збережено: ${_controller.text}');
    } finally {
      setState(() => _isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Мій Профіль'),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(16),
              child: SvgPicture.asset(
                'assets/profile.svg',
                width: 100,
                height: 100,
              ),
            ),
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage('https://i.pravatar.cc/150'),
            ),
            Text(
              'Ім\'я Прізвище',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              'Посада',
              style: TextStyle(fontSize: 18, color: Colors.grey[700]),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 32),
              decoration: BoxDecoration(
                color: Colors.deepPurple[50],
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                controller: _controller,
                onChanged: (text) {
                  setState(() {
                    _isNotEmpty = text.isNotEmpty;
                  });
                },
                decoration: InputDecoration(
                  hintText: 'Напишіть щось...',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(20),
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(left: 16, right: 8),
                    child: Icon(Icons.message, color: Colors.deepPurple),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: ElevatedButton(
                onPressed: (_isNotEmpty && !_isLoading)
                    ? _saveData
                    : null, // null = disabled
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                ),
                child: _isLoading
                    ? SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(
                          color: Colors.white,
                          strokeWidth: 2,
                        ),
                      )
                    : Text('Зберегти', style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
