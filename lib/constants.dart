
class Constants{

  static const Map<String, int> fruitsMap={
    'Mango':70,
    'Orange':40,
    'Banana':45,
    'Papaya':95,
    'Apple':100,
    'PineApple':65,
    'Grapes':120,
    'Avocado': 83,
  };
  static const Map<String, int> vegetablesMap={
    'Tomato':25,
    'Potato':40,
    'Capsicum':45,
    'Carrot':50,
    'Onion':30,
    'Brinjal':40,
    'Green Peas':70,
    'Cabbage':40,
  };
}
// DataStore is a utility class responsible for managing selected things, retrieving an array of selected things,
// and getting the price of a specific object.
class DataStore {
  // List to store selected things
  static final List<String> _selectedThings = [];

  // Method to add a keyName to the list of selected things
  static void setMapValue(String keyName) {
    _selectedThings.add(keyName);
  }

  // Method to retrieve the array of selected things
  static List<String> getArray() {
    return _selectedThings;
  }

  // Method to get the price of a specific object
   static int getPrice(String objectName) {
    { final correspondingPrice = Constants.fruitsMap.containsKey(objectName)
            ?Constants.fruitsMap[objectName]
            :Constants.vegetablesMap.containsKey(objectName)
          ? Constants.vegetablesMap[objectName]
   : 'Error';

      // Parse the price to an integer and return it
      return int.parse(correspondingPrice.toString());
    }          
 

  }
}





