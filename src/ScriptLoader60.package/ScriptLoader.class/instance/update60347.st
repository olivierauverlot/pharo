pharo - updates
update60347
	"self new update60347"
	self withUpdateLog: '19551 GLMPopper should accept cmd L shortcut to remote popup and cancel text changes
	https://pharo.fogbugz.com/f/cases/19551

19552 Cancelling changes by cmd L should not request user confirmation
	https://pharo.fogbugz.com/f/cases/19552'.
	self loadTogether: self script60347 merge: false.
	self flushCaches.