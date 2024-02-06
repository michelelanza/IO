Class {
	#name : #BaselineOfIO,
	#superclass : #BaselineOf,
	#category : #BaselineOfIO
}

{ #category : #loading }
BaselineOfIO class >> loadLepiter [
	IceRepository registry  
		detect: [ :aRepository |
			aRepository name = 'IO' ]
		ifFound: [ :aRepository | 
			| defaultDatabase currentProperties |
			defaultDatabase := LeDatabasesRegistry defaultLogicalDatabase.
			currentProperties := defaultDatabase properties.
			currentProperties addRegisteredDirectory: aRepository repositoryDirectory / 'lepiter'.
			defaultDatabase reload ]
		ifNone: [
			self inform: 'Repository not found.' ]
]

{ #category : #baseline }
BaselineOfIO >> baseline: spec [
	<baseline>
		^ spec for: #common do: [
			spec package: 'IO'
		]
]
