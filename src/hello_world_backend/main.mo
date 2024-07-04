/* actor {
  public query func greet(name : Text) : async Text {
    return "Hello, " # name # "!";
  };
};
 */

 actor {
  var name: Text = "";  

  // Método getName para mostrar nombre capturado a traves de una función de solo lectura (query):
  public query func getName() : async Text {
    return "Valor guardado en variable: " # name # ".";
  };
  
  // Método setName para recibir un parámetro Text a traves de una función de escritura (update):
  public func setName(newName: Text) : async Text {
    name := newName;
    return "El nombre asigando a la variable es: " # name # "!!";
  };
}