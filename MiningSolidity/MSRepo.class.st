Class {
	#name : #MSRepo,
	#superclass : #Object,
	#instVars : [
		'repoName',
		'url',
		'description',
		'yearCreation',
		'numberOfCommits',
		'numberOfContracts',
		'daysSinceLastCommit',
		'numberOfLinesOfCode',
		'stars'
	],
	#category : #MiningSolidity
}

{ #category : #accessing }
MSRepo >> daysSinceLastCommit [
	^ daysSinceLastCommit
]

{ #category : #accessing }
MSRepo >> daysSinceLastCommit: anObject [
	daysSinceLastCommit := anObject
]

{ #category : #accessing }
MSRepo >> description [
	^ description
]

{ #category : #accessing }
MSRepo >> description: anObject [
	description := anObject
]

{ #category : #accessing }
MSRepo >> numberOfCommits [
	^ numberOfCommits
]

{ #category : #accessing }
MSRepo >> numberOfCommits: anObject [
	numberOfCommits := anObject
]

{ #category : #accessing }
MSRepo >> numberOfContracts [
	^ numberOfContracts
]

{ #category : #accessing }
MSRepo >> numberOfContracts: anObject [
	numberOfContracts := anObject
]

{ #category : #accessing }
MSRepo >> numberOfLinesOfCode [
	^ numberOfLinesOfCode
]

{ #category : #accessing }
MSRepo >> numberOfLinesOfCode: anObject [
	numberOfLinesOfCode := anObject
]

{ #category : #printing }
MSRepo >> printOn: str [
	super printOn: str.
	str nextPut: $<.
	str nextPutAll: self repoName.
	str nextPut: $>.
]

{ #category : #accessing }
MSRepo >> repoName [
	^ repoName
]

{ #category : #accessing }
MSRepo >> repoName: anObject [
	repoName := anObject
]

{ #category : #accessing }
MSRepo >> stars [
	^ stars
]

{ #category : #accessing }
MSRepo >> stars: anObject [
	stars := anObject
]

{ #category : #accessing }
MSRepo >> url [
	^ url
]

{ #category : #accessing }
MSRepo >> url: anObject [
	url := anObject
]

{ #category : #accessing }
MSRepo >> yearCreation [
	^ yearCreation
]

{ #category : #accessing }
MSRepo >> yearCreation: anObject [
	yearCreation := anObject
]
