Class {
	#name : #MSModel,
	#superclass : #Object,
	#instVars : [
		'repositories'
	],
	#category : #MiningSolidity
}

{ #category : #'public - visualizations' }
MSModel >> gtInspectorStarsIn: composite [
	<gtInspectorPresentationOrder: -10>
	composite roassal2
		title: 'Stars';
		initializeView: [ self viewStars ]
]

{ #category : #'public - visualizations' }
MSModel >> gtInspectorViewIn: composite [
	<gtInspectorPresentationOrder: -10>
	composite roassal2
		title: 'WordCloud';
		initializeView: [ self wordCloud ]
]

{ #category : #'public - importing' }
MSModel >> importFromString: aString [
	| d |
	aString lines allButFirst do: [ :aLine |
		| repo |
		d := aLine findTokens: '||'.
		repo := MSRepo new.
		repo repoName: d first.
		repo url: d second.
		repo description: d third.
		repo yearCreation: d fourth asInteger.
	
		d fifth = 'None' 
			ifTrue: [ repo stars: 0 ]
			ifFalse: [ repo stars: d fifth asInteger ].

		
		repo numberOfCommits: d sixth asInteger.
		repo numberOfContracts: d seventh asInteger.
		d eighth = 'None' 
			ifTrue: [ repo daysSinceLastCommit: 0 ]
			ifFalse: [ repo daysSinceLastCommit: d eighth asInteger ].
		repo numberOfLinesOfCode: d ninth asInteger.
		repositories add: repo.
	]
]

{ #category : #initialization }
MSModel >> initialize [
	super initialize.
	repositories := OrderedCollection new
]

{ #category : #'public - metrics' }
MSModel >> numberOfRepositories [
	^ repositories size
]

{ #category : #accessing }
MSModel >> repositories [ 
	^ repositories 
]

{ #category : #accessing }
MSModel >> repositories: someRepositories [
	repositories := someRepositories
]

{ #category : #'public - visualizations' }
MSModel >> viewStars [
	| g d |
	g := RTGrapher new.
	d := RTData new.
	d connectColor: Color blue.
	d points: (repositories reverseSortedAs: #stars).
	d yLog.
	d y: #stars.
	g add: d.
	g axisX title: 'repository'.
	g axisY title: 'Number of stars'.
	^ g
]

{ #category : #'public - visualizations' }
MSModel >> wordCloud [
	| b |
	b := RTNameCloud new.
	b dictionary: RTSourceCodeSolidityDictionary new.
	repositories do: [ :repo |
		b addString: (' ' join: (repo description substrings collect: #asLowercase)) object: repo ].
	^ b
]
