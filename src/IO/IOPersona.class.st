Class {
	#name : #IOPersona,
	#superclass : #IORoot,
	#instVars : [
		'publications'
	],
	#category : #IO
}

{ #category : #accessing }
IOPersona >> initialize [
	super initialize.
	publications := OrderedCollection new.
]

{ #category : #accessing }
IOPersona >> publications [
	^ publications
]

{ #category : #accessing }
IOPersona >> publications: anObject [
	publications := anObject
]
