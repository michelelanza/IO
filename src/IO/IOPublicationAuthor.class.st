Class {
	#name : #IOPublicationAuthor,
	#superclass : #IORoot,
	#instVars : [
		'firstName',
		'lastName'
	],
	#category : #IO
}

{ #category : #accessing }
IOPublicationAuthor >> firstName [
	^ firstName
]

{ #category : #accessing }
IOPublicationAuthor >> firstName: anObject [
	firstName := anObject
]

{ #category : #accessing }
IOPublicationAuthor >> fullName [
	^self firstName, ' ', self lastName
]

{ #category : #accessing }
IOPublicationAuthor >> lastName [
	^ lastName
]

{ #category : #accessing }
IOPublicationAuthor >> lastName: anObject [
	lastName := anObject
]
