class TestUtil {
  static void run() {
    group('Util', () {
      test('getHashcode', _testGetHashCode);
    });

  }

  static void _testGetHashCode() {
    _hashCodeFun([], 0);
    _hashCodeFun([null], 0);
    _hashCodeFun([null, null], 0);
    _hashCodeFun([1], 307143837);
    _hashCodeFun([1,2], 93096440);
    _hashCodeFun([2,1], 405401106);
    _hashCodeFun(['foo'], 20484136);
    _hashCodeFun([''], 307143837);
    _hashCodeFun(['', ''], 313418812);
    _hashCodeFun(['foo', 'bar'], 282245687);
    _hashCodeFun(['bar', 'foo'], 247371737);

    _hashCodeFun([null, 1], 307143837);
    _hashCodeFun([null, null, 1], 307143837);
    _hashCodeFun([1, null], 15319219);
  }

  static void _hashCodeFun(Iterable<Hashable> items, int expectedValue) {
    int hashCode = Util.getHashCode(items);
    expect(hashCode, equals(expectedValue));
  }
}
