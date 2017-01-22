Evaluating
applyRuleToPackage: aPackage

"Apply rule to classes in aPackage and save result"
 aPackage classes do:[:aClass | ruleResults add:(rule applyTo: aClass)  ].
	