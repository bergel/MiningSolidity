Class {
	#name : #MSDataset,
	#superclass : #Object,
	#category : #MiningSolidity
}

{ #category : #private }
MSDataset >> github [ 
	<script: 'self new github inspect'> 
	| filename model |
	filename := '/Users/alexandrebergel/Desktop/githubSolidity.data.csv'.
	model := MSModel new.
	model importFromString: filename asFileReference contents.
	^ model
	
]
