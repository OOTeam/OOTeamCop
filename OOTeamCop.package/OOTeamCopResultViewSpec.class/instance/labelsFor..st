as yet unclassified
labelsFor: anOOCompositeRuleResult
	^ anOOCompositeRuleResult ruleResults
		collect: [ :each | 
			self newLabel
				label: each value;
				color: each colorToShow;
				yourself ]