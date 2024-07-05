import Text "mo:base/Text";
import Nat "mo:base/Nat";
import HashMap "mo:base/HashMap";
import Bool "mo:base/Bool";
import Result "mo:base/Result";


/* actor {
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
    };

    public func setPerson(index: Text, name: Text, age: Nat) : async () {
      let newPerson: Person = {
        name = name;
        age = age;
      };
      _persons.put(index, newPerson);
    };
} */

actor {

  // Definimos el type para nuestro record student:
  type Student = {
    id: Text;
    firstName: Text;
    lastName: Text;
    age: Nat;
    active: Bool;
  };

  // Ejemplo de type
  let _rocket: Student = {
    id = "student12345";
    firstName = "Néstor";
    lastName = "Rocket";
    age = 27;
    active = true;
  };

  // Variant
  type Day = {
    #Monday;
    #Tuesday;
    #Wednesday;
    #Thursday;
    #Friday;
    #Saturday;
    #Sunday;
  };
  

  // Control de flujo:

  // if and else 
  public query func name(name:Text): async Result.Result<Text, Text> {
    if (not Text.equal(name, "")) {
      return #ok("Valor válido");
    } else {
      return #err("No se permiten cadenas vacías");
    }
  };

  // Switch
  /* let day: Day = #Monday;

  switch (day) {
    case(#Monday) { 
      return ("Today is Monday!") 
    };
    case(#Tuesday) {
      return ("Today is Thuesday!")
    };
    case(#Wednesday) {
      return ("Today is Wednesday!")
    };
    case(#Thursday) {
      return ("Today is Thursday!")
    };
    case(#Friday) {
      return ("Today is Friday!")
    };
    case(#Saturday) {
      return ("Today is Saturday!")
    };
    case(#Sunday) {
      return ("Today is Sunday!")
    };
  }; */

  // switch para evaluar opcionales
  
  /* let name: ?Text = null; //?"Néstor"

  switch(name) {
    case(null) {
      return ("hola")
    };
    case(?n) {
      return n;
    };
  }; */
}
