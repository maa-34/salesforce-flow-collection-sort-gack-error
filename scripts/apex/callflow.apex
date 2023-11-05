String FLOW_NAME = 'SortCommittedValueAndUncommittedValue';
String VARIABLE_NAME = 'UncommitedValueWithCommitedValues';
Flow.Interview callFlow = Flow.Interview.createInterview(FLOW_NAME, new Map<String, Object>());
callFlow.start();
System.debug(callFlow.getVariableValue(VARIABLE_NAME));