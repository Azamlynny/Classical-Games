class KeypressTracker{
  List<Character> keyArray = new ArrayList<Character>();
  
  void addChar(Character character){
    if(!this.keyArray.contains(character)){
      this.keyArray.add(character);
    }
  }
  
  void removeChar(Character character){
    this.keyArray.remove(character);
  }
  
} 