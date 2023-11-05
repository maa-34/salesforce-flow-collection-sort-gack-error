// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents

List<FirstParentObj__c> firstObjList = new List<FirstParentObj__c>{
    new FirstParentObj__c(Name='Record1'),
    new FirstParentObj__c(Name='Record2')
};

List<SecondParentObject__c> secondObjList = new List<SecondParentObject__c>{
    new SecondParentObject__c(),
    new SecondParentObject__c()
};

insert firstObjList;
insert secondObjList;

List<JunctionObject__c> juncObjList = new List<JunctionObject__c>();

for (Integer i = 0; i < 2; i++) {
    juncObjList.add(new JunctionObject__c(
        FirstParentObject__c=firstObjList[i].Id,
        SecondParentObject__c=secondObjList[i].Id,
        Order__c=i
    ));
}
insert juncObjList;