import 'dart:developer';
import 'package:supabase/supabase.dart';
import 'model.dart';

const supabaseUrl = '';
const supabaseKey = '';

class Conecta {
  final client = SupabaseClient(supabaseUrl, supabaseKey);

  Future<List<ClassPaciente>> getAll() async {
    final response = await client
        .from('pacientes')
        .select()
        .order('pacNome', ascending: true)
        .execute();
    if (response.error == null) {
      final dataList = response.data as List;
      return (dataList.map((map) => ClassPaciente.fromJson(map)).toList());
    }
    log('Error fetching notes: ${response.error!.message}');
    return [];
  }
}
