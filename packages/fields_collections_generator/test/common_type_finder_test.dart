import 'package:fields_collections/src/common_type_finder.dart';
import 'package:test/test.dart';

void main() {
  group('CommonTypeFinder non-nullables tests', () {
    test('Return first type for the same inputs', () {
      const first = {'String', 'Patern', 'Object'};

      final commonType = CommonTypeFinder.findTopCommonType([first, first]);

      expect(commonType, 'String');
    });
    test('Finds good for two inputs', () {
      const first = {
        'FullUser',
        'User',
        'UserBase',
        'Object',
      };
      const second = {
        'User',
        'UserBase',
        'Object',
      };

      final commonType = CommonTypeFinder.findTopCommonType([first, second]);

      expect(commonType, 'User');
    });
    test('Finds good for two inputs (inputs order insensitive)', () {
      const first = {
        'User',
        'UserBase',
        'Object',
      };
      const second = {
        'FullUser',
        'User',
        'UserBase',
        'Object',
      };

      final commonType = CommonTypeFinder.findTopCommonType([first, second]);

      expect(commonType, 'User');
    });
    test('Returns "Object" when no match found', () {
      const first = {
        'String',
        'Pattern',
        'Object',
      };
      const second = {
        'FullUser',
        'User',
        'UserBase',
        'Object',
      };

      final commonType = CommonTypeFinder.findTopCommonType([first, second]);

      expect(commonType, 'Object');
    });
    test('Returns "Object" when match found, but not for all inputs', () {
      const first = {
        'String',
        'Pattern',
        'Object',
      };
      const second = {
        'String',
        'Pattern',
        'Object',
      };
      const third = {
        'FullUser',
        'User',
        'UserBase',
        'Object',
      };

      final commonType = CommonTypeFinder.findTopCommonType([first, second, third]);

      expect(commonType, 'Object');
    });
  });
  group('CommonTypeFinder nullables tests', () {
    test('Finds good for two inputs', () {
      const first = {
        'FullUser?',
        'User',
        'UserBase',
        'Object',
      };
      const second = {
        'User',
        'UserBase',
        'Object',
      };

      final commonType = CommonTypeFinder.findTopCommonType([first, second]);

      expect(commonType, 'User?');
    });
    test('Finds good for two inputs (inputs order insensitive)', () {
      const first = {
        'User',
        'UserBase',
        'Object',
      };
      const second = {
        'FullUser?',
        'User',
        'UserBase',
        'Object',
      };

      final commonType = CommonTypeFinder.findTopCommonType([first, second]);

      expect(commonType, 'User?');
    });
    test('Returns "Object" when no match found', () {
      const first = {
        'String',
        'Pattern',
        'Object',
      };
      const second = {
        'FullUser?',
        'User',
        'UserBase',
        'Object',
      };

      final commonType = CommonTypeFinder.findTopCommonType([first, second]);

      expect(commonType, 'Object?');
    });
    test('Returns "Object" when match found, but not for all inputs', () {
      const first = {
        'String?',
        'Pattern',
        'Object',
      };
      const second = {
        'String?',
        'Pattern',
        'Object',
      };
      const third = {
        'FullUser',
        'User',
        'UserBase',
        'Object',
      };

      final commonType = CommonTypeFinder.findTopCommonType([first, second, third]);

      expect(commonType, 'Object?');
    });
    test('Returns nullable when match found, but no nullability match', () {
      const first = {
        'User?',
        'UserBase',
        'Object',
      };
      const second = {
        'User',
        'UserBase',
        'Object',
      };

      final commonType = CommonTypeFinder.findTopCommonType([first, second]);

      expect(commonType, 'User?');
    });
    test('Returns nullable when match found, but no nullability match', () {
      const first = {
        'User',
        'UserBase',
        'Object',
      };
      const second = {
        'UserBase?',
        'Object',
      };

      final commonType = CommonTypeFinder.findTopCommonType([first, second]);

      expect(commonType, 'UserBase?');
    });
  });
}
