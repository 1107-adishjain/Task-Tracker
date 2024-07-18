class Task{
  late String name;
  late bool isDone;
  Task({required this.name,this.isDone=false});
  void toggledone()
  {
    isDone=!isDone; //any value ko change krdega!!
  }
}