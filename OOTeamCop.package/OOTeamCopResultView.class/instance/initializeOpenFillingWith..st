initialization
initializeOpenFillingWith: aReport
	results := aReport results.
	builder := UITheme builder.
	(self createMainWindow openInWindowLabeled: 'Results') extent: 900@600