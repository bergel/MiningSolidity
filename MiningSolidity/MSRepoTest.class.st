Class {
	#name : #MSRepoTest,
	#superclass : #TestCase,
	#category : #MiningSolidity
}

{ #category : #example }
MSRepoTest >> exampleShort [

	^ 'Nombre|| UR|| Description|| Year Created|| Stars|| Number of commits|| Number of contracts|| Days since last commi|| Lines of code												
azamrazman/Solidity_SmartContracts||https://github.com/azamrazman/Solidity_SmartContracts||None||2014||0||15||3||219||355												
AugurProject/augur-core||https://github.com/AugurProject/augur-core||Augur back-end (Ethereum contracts)||2014||520||30||30||31||1207												
etherex/pyepm||https://github.com/etherex/pyepm||Python-based EPM (Ethereum Package Manager) for Serpent 2 and Solidity contract deployment using YAML for package definitions.||2014||30||30||1||1181||380												
monax/compilers||https://github.com/monax/compilers||DEPRECATED. To be removed December 2018 (use ethereum/solidity)||2015||12||30||30||229||638												
drcode/ethereum-order-statistic-tree||https://github.com/drcode/ethereum-order-statistic-tree||An Order Statistic Tree in the Ethereum Solidity Language||2015||45||16||1||335||368												
rfikki/solidity-resources||https://github.com/rfikki/solidity-resources||Tutorials	 solidity contracts and javascript.||2015||0||12||6||1352||488											'
]

{ #category : #tests }
MSRepoTest >> testBasic [ 
	| model |
	model := MSModel new.
	self assert: model numberOfRepositories equals: 0
]

{ #category : #tests }
MSRepoTest >> testSimpleExample [
	| model aRepo |
	model := MSModel new.
	model importFromString: self exampleShort.
	self assert: model numberOfRepositories equals: 6.
	
	aRepo := model repositories third.
	self assert: aRepo repoName equals: 'etherex/pyepm'.
	self assert: aRepo url equals: 'https://github.com/etherex/pyepm'.
	self assert: aRepo description equals: 'Python-based EPM (Ethereum Package Manager) for Serpent 2 and Solidity contract deployment using YAML for package definitions.'.
	self assert: aRepo yearCreation equals: 2014.
	self assert: aRepo stars equals: 30.
	self assert: aRepo numberOfContracts equals: 1.
	self assert: aRepo daysSinceLastCommit equals: 1181.
	self assert: aRepo numberOfLinesOfCode equals: 380.
]
