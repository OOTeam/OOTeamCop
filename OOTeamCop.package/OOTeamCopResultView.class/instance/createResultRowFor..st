initialization
createResultRowFor: aResult

	^ aResult ruleResults 
		collect: [ :ruleResult | 
			(builder newRow: {(builder newLabelFor: self label: ruleResult value getEnabled: nil)})
				fillStyle: (SolidFillStyle color: ruleResult colorToShow);
				layoutInset: 5 ]