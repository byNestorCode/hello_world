import Nat "mo:base/Nat";
import Text "mo:base/Text";
import HashMap "mo:base/HashMap";


actor {
    let _name: Text = "Nombre"; // texto
    let _myNat: Nat = 1; // Numero natural
    let _myArray: [Nat] = [1, 2, 3]; // 0,1,2 array
    let _arrayElement = _myArray[0]; 
    let _tuple: (Nat, Text) = (1, "My text"); // tupla
    let _motokoTuple = _tuple.1;
    
    /* HASH MAP */
    let _map = HashMap.HashMap<Text, Nat>(5, Text.equal, Text.hash);
    let _mapSize = _map.size();
    _map.put("néstor", 35);

    let _nestor = _map.get("néstor");
}