Printing
printOn: aStream

  ruleResults do: [ :result | self print: result ifNotEmptyOn: aStream  ]