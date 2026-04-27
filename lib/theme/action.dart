import 'package:flutter/material.dart';
import 'package:flutter_application_1/animation.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class BasantAction {
  final String title;
  final String subtitle;
  final Color phoneColor;
  final IconData leadingIcon;

  BasantAction({
    required this.title,
    required this.subtitle,
    required this.phoneColor,
    required this.leadingIcon,
  });
}

class ReusableSlidableTile extends StatefulWidget {
  final BasantAction action;
  final VoidCallback onDelete;

  const ReusableSlidableTile({
    super.key,
    required this.action,
    required this.onDelete,
  });

  @override
  State<ReusableSlidableTile> createState() => _ReusableSlidableTileState();
}

class _ReusableSlidableTileState extends State<ReusableSlidableTile> {
  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Colors.blueGrey[300],
        title: const Text("Delete"),
        content: const Text("Are you sure you want to delete this item?"),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Cancel", style: TextStyle(color: Colors.black)),
          ),
          TextButton(
            onPressed: () {
              widget.onDelete();
              Navigator.pop(context);
            },
            child: const Text("Delete", style: TextStyle(color: Colors.black)),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Slidable(
        startActionPane: ActionPane(
          motion: const StretchMotion(),
          children: [
            SlidableAction(
              onPressed: (context) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AnimationPage(),
                  ),
                );
              },
              backgroundColor: widget.action.phoneColor,
              icon: PhosphorIcons.phone(),
            ),
          ],
        ),
        endActionPane: ActionPane(
          motion: const StretchMotion(),
          children: [
            SlidableAction(
              onPressed: (context) {
                _showDialog(context);
              },
              backgroundColor: Colors.red,
              icon: PhosphorIcons.trash(),
            ),
          ],
        ),
        child: ListTile(
          tileColor: Colors.blueGrey[100],
          title: Text(widget.action.title),
          subtitle: Text(widget.action.subtitle),
          leading: Icon(widget.action.leadingIcon),
        ),
      ),
    );
  }
}
