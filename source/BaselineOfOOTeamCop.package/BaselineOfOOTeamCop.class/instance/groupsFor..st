baselines
groupsFor: spec
	^ spec
		group: 'Deployment' with: #('OOTeamCop');
		group: 'Development'
			with: #('Deployment' 'OOTeamCopFakePackage' 'OOTeamCopTests');
		group: 'default' with: #('Deployment')