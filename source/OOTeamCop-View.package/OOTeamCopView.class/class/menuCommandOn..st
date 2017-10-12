Settings
menuCommandOn: aBuilder
	<worldMenu>

	(aBuilder item: #'OO TeamCop')
		order: 3;
		label: 'OO TeamCop';
		icon: ThemeIcons current copIcon;
		action: [ self open ]
