import UIKit

//#MARK :- Implementing Dynamic Member Lookup using Struct

@dynamicMemberLookup
struct Employee {
    subscript(dynamicMember member:String) ->  String{
        let details = [
            "name":"Sethuram",
            "empCode":"1001",
            "designation":"iOS Developer",
        ]
        return details[member,default: "Not Found"]
    }
}


let companyDets = Employee()
print("\(companyDets.name)")


//#Mark :- Implementation using protocols

@dynamicMemberLookup
protocol dynamicLookUp {
    subscript(dynamicMember member : String) -> String{ get}
}

class EmployeeLookup : dynamicLookUp{

    init(){}
    
  private  let json = [
        "name":"Sethuram",
        "empCode":"1001",
        "designation":"iOS Developer"
     ]
    
    subscript(dynamicMember member: String) -> String {
        return json[member,default:"Not Found"]
    }
}

let employeedetails = EmployeeLookup()
print(employeedetails.name)
