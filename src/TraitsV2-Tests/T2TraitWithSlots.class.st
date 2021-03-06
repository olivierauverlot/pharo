Class {
	#name : #T2TraitWithSlots,
	#superclass : #T2AbstractTest,
	#category : #'TraitsV2-Tests'
}

{ #category : #tests }
T2TraitWithSlots >> createT1 [
	| t1 |
	t1 := self newTrait: #T1 with: 'a b c' asSlotCollection.
	t1
		compile:
			'setValues
		a := 1.
		b := 2.
		c := 3.
	'.
	t1
		compile:
			'getValues
		^ a + b + c
	'.
	^ t1
]

{ #category : #tests }
T2TraitWithSlots >> testDefiningClass [

	| t1 c1 |
	
	t1 := self createT1.
	c1 := self newClass: #C1 with: 'g h' asSlotCollection uses: t1.
	
	self assert: (t1 slotNamed: #a) definingClass equals: t1.
	self assert: (t1 slotNamed: #b) definingClass equals: t1.	
	self assert: (t1 slotNamed: #c) definingClass equals: t1.

	self assert: (c1 slotNamed: #a) definingClass equals: t1.
	self assert: (c1 slotNamed: #b) definingClass equals: t1.	
	self assert: (c1 slotNamed: #c) definingClass equals: t1.
	self assert: (c1 slotNamed: #g) definingClass equals: c1.
	self assert: (c1 slotNamed: #h) definingClass equals: c1.

]

{ #category : #tests }
T2TraitWithSlots >> testOwningClass [

	| t1 c1 |
	
	t1 := self createT1.
	c1 := self newClass: #C1 with: 'g h' asSlotCollection uses: t1.
	
	self assert: (t1 slotNamed: #a) owningClass equals: t1.
	self assert: (t1 slotNamed: #b) owningClass equals: t1.	
	self assert: (t1 slotNamed: #c) owningClass equals: t1.

	self assert: (c1 slotNamed: #a) owningClass equals: c1.
	self assert: (c1 slotNamed: #b) owningClass equals: c1.	
	self assert: (c1 slotNamed: #c) owningClass equals: c1.
	self assert: (c1 slotNamed: #g) owningClass equals: c1.
	self assert: (c1 slotNamed: #h) owningClass equals: c1.
	


]

{ #category : #tests }
T2TraitWithSlots >> testRedefiningTrait [

	| t1 |
	
	t1 := self newTrait: #T1 with: #().
	t1 := self newTrait: #T1 with: #(aSlot).

	self deny: t1 slots isEmpty.


]
