Class {
	#name : #IOPublication,
	#superclass : #IORoot,
	#instVars : [
		'title',
		'authors',
		'year',
		'citations'
	],
	#category : #IO
}

{ #category : #accessing }
IOPublication >> authors [
	^ authors
]

{ #category : #accessing }
IOPublication >> authors: anObject [
	authors := anObject
]

{ #category : #accessing }
IOPublication >> citations [
	^ citations
]

{ #category : #accessing }
IOPublication >> citations: anObject [
	citations := anObject
]

{ #category : #accessing }
IOPublication >> title [
	^ title
]

{ #category : #accessing }
IOPublication >> title: anObject [
	title := anObject
]

{ #category : #accessing }
IOPublication >> year [
	^ year
]

{ #category : #accessing }
IOPublication >> year: anObject [
	year := anObject
]
