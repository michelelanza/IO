Class {
	#name : #IOCSVImporter,
	#superclass : #IORoot,
	#instVars : [
		'csvFile'
	],
	#category : #IO
}

{ #category : #accessing }
IOCSVImporter >> csvFile [
	^ csvFile
]

{ #category : #accessing }
IOCSVImporter >> csvFile: anObject [
	csvFile := anObject
]

{ #category : #accessing }
IOCSVImporter >> initialize [
	super initialize.
]
