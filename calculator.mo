//canister -> smart contract

actor calculator {
  var cell: Int = 0;

  public func addition (s: Int) : async Int {
    cell += s;
    cell
  };

  public func subtraction (s: Int) : async Int {
    cell -= s;
    cell
  };

  public func multiplication (s: Int) : async Int {
    cell *= s;
    cell
  };

  public func division (s: Int) : async ?Int {
    if (s == 0) {
      null
    } else {
      cell /= s;
      ?cell
    };
  };

  //clear
  public func clear(): async () {
    cell := 0;
  };
  
};