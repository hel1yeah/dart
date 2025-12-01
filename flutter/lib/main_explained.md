# Пояснення main.dart

## Загальна структура

```
main() → MyApp → MaterialApp → Scaffold → [AppBar, Body, FloatingActionButton]
```

---

## Розбір по рядках

### 1. Імпорт

```dart
import 'package:flutter/material.dart';
```

Підключає бібліотеку **Material Design** — базові віджети Flutter (кнопки, текст, AppBar тощо).

---

### 2. Точка входу

```dart
void main() => runApp(MyApp());
```

- `main()` — функція, з якої починається програма
- `runApp()` — запускає Flutter-додаток
- `MyApp()` — кореневий віджет (створюємо нижче)

---

### 3. Кореневий віджет MyApp

```dart
class MyApp extends StatelessWidget {
```

- `StatelessWidget` — віджет **без стану** (не змінюється після створення)
- Використовуй коли UI статичний і не потребує оновлення

---

### 4. Метод build()

```dart
@override
Widget build(BuildContext context) {
```

- Викликається Flutter для побудови UI
- `context` — інформація про місце віджета в дереві
- Повертає **Widget** — те, що буде відображено

---

### 5. MaterialApp

```dart
return MaterialApp(
  theme: ThemeData(
    primaryColor: Colors.deepPurple,
    primaryColorDark: Colors.deepOrange,
  ),
  home: Scaffold(...),
);
```

| Параметр | Опис |
|----------|------|
| `theme` | Глобальна тема додатку (кольори, шрифти) |
| `home` | Головний екран (перше, що бачить користувач) |

---

### 6. Scaffold — каркас сторінки

```dart
Scaffold(
  appBar: ...,
  body: ...,
  floatingActionButton: ...,
)
```

**Scaffold** — базова структура Material-екрану:

```
┌─────────────────────────┐
│        AppBar           │  ← Верхня панель
├─────────────────────────┤
│                         │
│         Body            │  ← Основний контент
│                         │
│                         │
│                    [+]  │  ← FloatingActionButton
└─────────────────────────┘
```

---

### 7. AppBar — верхня панель

```dart
appBar: AppBar(
  title: Text('Hello Flutter'),
  backgroundColor: Colors.deepPurple,
  centerTitle: true,
),
```

| Параметр | Опис |
|----------|------|
| `title` | Текст заголовка |
| `backgroundColor` | Колір фону |
| `centerTitle` | Центрувати заголовок (true/false) |

---

### 8. Body — основний контент

```dart
body: Center(
  child: Text(
    'Hello Flutter',
    style: TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
      fontFamily: 'Gothic',
    ),
  ),
),
```

- `Center` — центрує дочірній віджет
- `Text` — відображає текст
- `TextStyle` — стилізація тексту:
  - `fontSize: 30` — розмір шрифту
  - `fontWeight: FontWeight.bold` — жирний
  - `fontFamily: 'Gothic'` — кастомний шрифт (з pubspec.yaml)

---

### 9. FloatingActionButton — плаваюча кнопка

```dart
floatingActionButton: FloatingActionButton(
  onPressed: () {
    print('Floating Action Button Pressed');
  },
  backgroundColor: Colors.deepOrange,
  child: Icon(Icons.add),
),
```

| Параметр | Опис |
|----------|------|
| `onPressed` | Функція при натисканні |
| `backgroundColor` | Колір кнопки |
| `child` | Вміст (іконка "+") |

---

## Дерево віджетів (Widget Tree)

```
MyApp (StatelessWidget)
 └── MaterialApp
      └── Scaffold
           ├── AppBar
           │    └── Text ("Hello Flutter")
           ├── Center
           │    └── Text ("Hello Flutter")
           └── FloatingActionButton
                └── Icon (add)
```

---

## Ключові концепції

### StatelessWidget vs StatefulWidget

| Тип | Коли використовувати |
|-----|---------------------|
| `StatelessWidget` | UI не змінюється (статичний контент) |
| `StatefulWidget` | UI змінюється (лічильники, форми, анімації) |

### Вкладеність віджетів

Flutter = **композиція віджетів**. Кожен віджет — маленький блок, з яких будується UI:

```dart
Center(           // Позиціонування
  child: Text(    // Контент
    style: ...    // Стилізація
  )
)
```

---

## Що далі?

1. **StatefulWidget** — додати інтерактивність (лічильник кліків)
2. **Column/Row** — розмістити кілька елементів
3. **ListView** — прокручуваний список
4. **Navigator** — навігація між екранами
