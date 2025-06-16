import 'package:fuzzy_string/fuzzy_string.dart';
import 'package:test/test.dart' as tst;

void main() {
  tst.group('A group of tests', () {
    final damerauLevenshtein = DamerauLevenshtein();
    final smithWaterman = SmithWaterman();

    tst.test('Case sensitive', () {
      tst.expect(damerauLevenshtein.similarity('casa', 'Casa'), 1);
    });

    tst.test('Case insensitive', () {
      tst.expect(damerauLevenshtein.similarityIgnoreCase('casa', 'Casa'), 0);
    });

    tst.test("team case", () {
      tst.expect(smithWaterman.normalSimilarityIgnoreCase('Steam', 'teams'), tst.greaterThan(0.5));
      tst.expect(smithWaterman.normalSimilarityIgnoreCase('Microsoft Teams for Linux', 'teams'), tst.equals(1));
    });
  });
}
