
void main(){

  //create a  list
  List names = ['john', 'hjalti', 'sveppi krull', 'gunnar'];
  print(names);
  //change an item in a list

  names[0] = 'jón';
  print(names);
  //add to a list

  names.add('Einar');
  print(names);

  //add multiple
  names.addAll(['inga sæland', 'kristrún frostad.', 'Togga']);
  print(names);

  //insert at a specific location
  names.insert(0, 'Bjarni Ben');
  print(names);

  //insert many
  names.insertAll(2, [1,2,30]);
  print(names);
  //Það virkar líka að setja lista inní lista.
  names.add([1,2,3]);
  print(names);

  //remove
  names.remove('Bjarni ben');
  print(names);
  //remove at
  names.removeAt(0);
  print(names);

  int hjaltiIndex = names.indexOf('hjalti');
  print(hjaltiIndex);
  names.removeAt(hjaltiIndex);
  print(names);
  
  List nums = [5,4,3,2,1,9,8,7,6];
  List chars = ['a','b', 'd', 'g', 'f', 'e'];

  // sort the list
  print(chars);
  chars.sort();
  print(nums);
  nums.sort();
  print(nums);

  // remove between 2 indexes
  nums.removeRange(2,6);
  print(nums);

  // remove last item
  nums.removeLast();
  print(nums);
}