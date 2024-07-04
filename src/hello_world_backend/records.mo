import Text "mo:base/Text";
import Nat "mo:base/Nat";
import HashMap "mo:base/HashMap";


actor {
    // Tipos de records
    type Person = {
        name: Text;
        age: Nat;
    };

    type Student = {

    };

    let _persons = HashMap.HashMap<Text, Person>(5, Text.equal, Text.hash);

    // Record
    let _nestor: Person = {
        name = "Néstor";
        age = 27;
    };

    let _rocket: Person = {
        name = "Rocket";
        age = 27;
    };

    _persons.put("néstor", _nestor);
    _persons.put("rocket", _rocket);

    public query func getPerson(name: Text): async ?Person {
        return _persons.get(name);
    }
}