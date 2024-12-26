import 'package:flutter/material.dart';

class SearchAnchorExample extends StatelessWidget {
  const SearchAnchorExample({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> items = ['Apple', 'Banana', 'Cherry', 'Date', 'Fig', 'Grape'];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Anchor Example'),
      ),
      body: Center(
        child: SearchAnchor(
          builder: (context, controller) {
            return SearchBar(
              controller: controller,
              hintText: 'Search...',
              leading: const Icon(Icons.search),
              onTap: () {
                controller.openView();
              },
            );
          },
          suggestionsBuilder: (context, controller) {
            final query = controller.text.toLowerCase();
            final suggestions = items.where((item) {
              return item.toLowerCase().contains(query);
            }).toList();

            return suggestions.map((suggestion) {
              return ListTile(
                title: Text(suggestion),
                onTap: () {
                  controller.closeView(suggestion);
                },
              );
            });
          },
        ),
      ),
    );
  }
}
