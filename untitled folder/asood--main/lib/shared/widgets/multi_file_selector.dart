import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class MultiFileSelector extends StatefulWidget {
  const MultiFileSelector({super.key});

  @override
  State<MultiFileSelector> createState() => _MultiFileSelectorState();
}

class _MultiFileSelectorState extends State<MultiFileSelector> {
  List<PlatformFile>? _files;

  Future<void> _pickFiles() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      allowMultiple: true,
      type: FileType.custom,
      allowedExtensions: ['jpg', 'pdf', 'doc', 'docx'], // specify file types
    );

    if (result != null) {
      setState(() {
        _files = [...?_files, ...result.files];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          ElevatedButton(
            onPressed: _pickFiles,
            child: const Text('Select Files'),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: _files?.length ?? 0,
              itemBuilder: (context, index) {
                final file = _files![index];

                return ListTile(
                  title: Text(file.name),
                  // Use other properties of file like file.size, file.extension, etc.
                  trailing: IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () {
                      setState(() {
                        _files!.removeAt(index);
                      });
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
