class ItemTaskModel{
  late String title;
  late String description;
  ItemTaskModel({required this.title,required this.description});
}
List<ItemTaskModel> listTaskItem=[
  ItemTaskModel(title: 'What is a Reorderable GridView?', description: 'A user interface that allows users to rearrange items in a grid layout. User kisi item ko long press kare, fir uska kisi aur position par move kar sake → ListView ya GridView dono me, like Flutter ka ReorderableListView aur ek custom Grid reorder logic ka use karna padega.'),
  ItemTaskModel(title: 'Key Widgets Used', description: 'Allows dragging an item after a long press. Receives the dragged item and performs reordering logic.'),
  ItemTaskModel(title: 'Logic Behind Reordering', description: 'On long press, the item starts dragging. Every other item becomes a potential drop target.'),
  ItemTaskModel(title: 'Tips', description: 'Keep key values unique if using more complex widgets.'),
  ItemTaskModel(title: 'Bonus Enhancements', description: 'AnimatedContainer to show a blue border when hovering over a target.'),
  ItemTaskModel(title: 'Full Lifecycle of a Reorder Operation', description: 'LongPressDraggable listens to long press. OnDragTarget can trigger HapticFeedback.'),
  ItemTaskModel(title: 'Best Practices', description: 'Use meaningful keys in widgets if animations or state preservation is needed.'),
  ItemTaskModel(title: 'Key Widgets Used', description: 'Allows dragging an item after a long press.Receives the dragged item and performs reordering logic.'),
  ItemTaskModel(title: 'What is a Reorderable GridView?', description: 'A user interface that allows users to rearrange items in a grid layout.User kisi item ko long press kare, fir uska kisi aur position par move kar sake → ListView ya GridView dono me, like Flutter ka ReorderableListView aur ek custom Grid reorder logic ka use karna padega.'),
  ItemTaskModel(title: 'Logic Behind Reordering', description: 'On long press, the item starts dragging.Every other item becomes a potential drop target.'),
  ItemTaskModel(title: 'Bonus Enhancements', description: 'AnimatedContainer to show a blue border when hovering over a target.'),
];