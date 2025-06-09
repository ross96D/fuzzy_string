Fuzzy matching string algorithms

```dart
String s1;
String s2;

FuzzyStringMatcher matcher = SmithWaterman();

int score = matcher.similarity(s1, s2); 
// score is between 0 and 1
double score = matcher.normalSimilarity(s1, s2);
```