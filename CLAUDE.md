# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a **Flutter/Dart learning repository** following a structured 12-week learning plan (FLUTTER_LEARNING_PLAN.txt) to achieve Junior Flutter Developer level. The learner is progressing through daily exercises in Dart fundamentals before moving to Flutter UI development.

**Target**: Build HELL_YEAH Mobile App + POS Terminal Integration
**Timeline**: 12 weeks @ 2 hours/day = ~168 hours total
**Language**: Learning materials and code comments are primarily in Ukrainian

## Repository Structure

```
dart/
├── FLUTTER_LEARNING_PLAN.txt    # Complete 12-week curriculum
├── dart/                         # Dart fundamentals practice
│   ├── one/                      # Week 1: Variables, types, null safety
│   │   ├── day_one_practice.dart
│   │   └── day_one_exercises.dart
│   └── two/                      # Week 2: Operators, conditionals, loops
│       ├── day_two_practice.dart
│       └── day_two_exercises.dart
└── hello_flutter/                # First Flutter app (Week 3+)
    └── lib/main.dart
```

## Development Commands

### Dart Practice Files
Run individual practice files:
```bash
dart run dart/one/day_one_practice.dart
dart run dart/two/day_two_practice.dart
```

### Flutter App
```bash
cd hello_flutter

# Run the Flutter app
flutter run

# Run tests
flutter test

# Build for release (when ready)
flutter build apk --release
```

## Code Architecture & Patterns

### Dart Practice Files Structure
Each daily practice file follows this pattern:
- Header with day/topic information
- `main()` function that orchestrates all programs
- Individual functions for each exercise (e.g., `helloWorld()`, `variablesExample()`)
- Comprehensive comments in Ukrainian explaining concepts
- Visual separators (`═══`) for readability
- Reference documentation at the end of each file

**Example Pattern**:
```dart
void main() {
  print('═══════════════════════════════════════════');
  print('DART ПРАКТИКА - ДЕНЬ X');

  program1();
  program2();
  // ... more programs
}

void program1() {
  // Implementation with detailed Ukrainian comments
}
```

### Learning Progression
- **Weeks 1-2**: Dart fundamentals (variables, collections, OOP, async)
- **Weeks 3-4**: Flutter UI basics (widgets, layouts, styling)
- **Weeks 5-6**: Forms and navigation
- **Weeks 7-8**: HTTP (Dio) + State management (Riverpod)
- **Weeks 9-10**: QR codes + Charts
- **Weeks 11-12**: Final project (Wanda MVP) + POS integration

## Important Notes for Future Sessions

1. **Language Context**: Code comments and print statements are in Ukrainian. This is intentional for the learner's comprehension.

2. **Learning Style**: The learner follows a structured daily plan with:
   - Theory/video (30 min)
   - Practice/coding (60-90 min)
   - Review (remaining time)

3. **File Naming Convention**: Practice files are named `day_X_practice.dart` and `day_X_exercises.dart` corresponding to the FLUTTER_LEARNING_PLAN.txt schedule.

4. **Code Quality Focus**: While this is a learning repository, emphasize:
   - Null safety (`?`, `!`, `??`)
   - Type safety (explicit types for learning)
   - Clear function names
   - Comprehensive examples with real-world scenarios (currency exchange, wallet operations)

5. **Future Flutter Work**: When the learner progresses to Flutter (Week 3+), the focus shifts to:
   - Widget composition
   - StatefulWidget patterns
   - Material Design
   - Eventually: Dio for HTTP, Riverpod for state management

6. **Git Workflow**: The learner commits daily progress. Expect:
   - Modified files in `dart/` directories as they progress
   - New folders created for each new week/topic
