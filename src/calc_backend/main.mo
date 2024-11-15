// actor {
//   public query func greet(name : Text) : async Text {
//     return "Hello, " # name # "!";
//   };
// };

actor  Calculator{
  var cell:Nat = 0;

  public query func getCell(): async Nat {
    cell;
  };

  public func add(num:Nat): async Nat{
    cell += num;
    cell;
  };

  public func subtract(num:Nat): async Nat{
    cell -= num;
    cell;
  };

  public func multiply(num:Nat): async Nat{
    cell *= num;
    cell;
  };

  public func division(num:Nat): async ?Nat{

    if(num == 0){
      return null;
    };
    cell /= num;
    ?cell;
  };

  public func reset (): async Nat{
    cell := 0;
    cell;
  };
};

// // let's try a CGPA calculator

// actor GPACalculator {

//   var cell : Nat = 0;

//   public query func getCell() : async Nat {
//     cell;
//   };

//   public func course1(num : Nat) : async Nat {

//     cell += num;
//     cell;
//   };

//   public func course2(num : Nat) : async Nat {

//     cell += num;
//     cell;
//   };

//   public func course3(num : Nat) : async Nat {

//     cell += num;
//     cell;
//   };

//   public func course4(num : Nat) : async Nat {

//     cell += num;
//     cell;
//   };

//   public func course5(num : Nat) : async Nat {

//     cell += num;
//     cell;
//   };

//   public func course6(num : Nat) : async Nat {

//     cell += num;
//     cell;
//   };

//   public func course7(num : Nat) : async Nat {

//     cell += num;
//     cell;
//   };

//   public func course8(num : Nat) : async Nat {

//     cell += num;
//     cell;
//   };

//   public func course9(num : Nat) : async Nat {

//     cell += num;
//     cell;
//   };

//   public func course10(num : Nat) : async Nat {

//     cell += num;
//     cell;
//   };

//   public func course11(num : Nat) : async Nat {

//     cell += num;
//     cell;
//   };

// };

// actor GPACalculator {
//     var totalPoints: Nat = 0;
//     var totalUnits: Nat = 0;

//     // Add a course's unit and score
//     public func addCourse(unit: Nat, score: Nat): async Bool {
//         if (score > 100 or unit == 0) {
//             return false; // Invalid input
//         };

//         let gradePoint = scoreToGradePoint(score);
//         totalPoints += gradePoint * unit;
//         totalUnits += unit;
//         return true;
//     };

//     // Calculate the GPA
//     public query func calculateGPA(): async ?Float {
//         if (totalUnits == 0) {
//             return null; // No courses added
//         };

//         let gpa = (totalPoints.toFloat() / totalUnits.toFloat());
//         return ?gpa;
//     };

//     // Reset all calculations
//     public func reset(): async Text {
//         totalPoints := 0;
//         totalUnits := 0;
//         return "Calculator reset successfully.";
//     };

//     // Helper function: Map scores to grade points
//     private func scoreToGradePoint(score: Nat): Nat {
//         if (score >= 70) return 5;
//         if (score >= 60) return 4;
//         if (score >= 50) return 3;
//         if (score >= 45) return 2;
//         return 0;
//     };
// };


// 