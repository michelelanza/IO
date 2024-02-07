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
IOCSVImporter >> importCSVFile [
	| data publications |
	data := CSVParser parseFileWithHeader: self csvFile.
	publications := OrderedCollection new.
	data do: [ :eachEntry | | newPublication |
		newPublication := IOPublication new.
		newPublication title: (eachEntry at: #Title). 
		newPublication year: (eachEntry at: #Year).
		publications add: newPublication].
	self halt.
]

{ #category : #accessing }
IOCSVImporter >> initialize [
	super initialize.
]
