import 'package:flutter_test/flutter_test.dart';
import 'package:mykuliah/models/mata_kuliah.dart';
import 'package:mykuliah/data/jadwal_data.dart';

void main() {
  group('Jadwal Logic Tests', () {
    test('Filter schedule by active day returns correct data', () {
      final String activeDay = 'Senin';
      final filteredList = dummyJadwal.where((mk) => mk.hari == activeDay).toList();
      
      expect(filteredList.length, 3);
      for (var mk in filteredList) {
        expect(mk.hari, 'Senin');
      }
    });
    
    test('Filter schedule by day without classes returns empty list', () {
      final String activeDay = 'Sabtu';
      final filteredList = dummyJadwal.where((mk) => mk.hari == activeDay).toList();
      
      expect(filteredList.isEmpty, true);
    });

    test('MataKuliah model instantiates correctly', () {
      final mk = MataKuliah(
        id: 99,
        nama: 'Test Matkul',
        hari: 'Jumat',
        jamMulai: '08:00',
        jamSelesai: '10:00',
        ruangan: 'Room 1',
        dosen: 'Test Dosen',
      );

      expect(mk.id, 99);
      expect(mk.nama, 'Test Matkul');
      expect(mk.hari, 'Jumat');
    });
  });
}
