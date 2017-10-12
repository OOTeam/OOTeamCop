baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec
				package: 'OOTeamCop';
				package: 'OOTeamCopFakePackage';
				package: 'OOTeamCopTests'
					with: [ spec requires: #('OOTeamCop' 'OOTeamCopFakePackage') ].
			self groupsFor: spec ]