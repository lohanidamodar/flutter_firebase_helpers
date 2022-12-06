## 0.6.0
* Upgraded to cloud_firestore 4.x

## 0.5.0
* Upgrade to cloud_firestore 3.x

## 0.4.0
* Upgraded to cloud_firestore 2.x

## 0.3.1
* Bug fix

## 0.3.0
* Null safe version
* Removed depricated DatabaseItem
* Removed depricated QueryArgs
* Removed depricated CreateItem

## 0.2.3
* Updated dependencies

## 0.2.2
* Updated dependencies and firebase storage

## 0.2.1
* updated dart doc comments

## 0.2.0
* updated to work with latest flutter fire updates to cloud firestore plugin

## 0.1.11
* Fix query cursor errors

## 0.1.10
* Now supports query cursors

## 0.1.9
* Now supports create new item using map instead of model `create(Map<String,dynamic> data, {String id})`

## 0.1.8
* Now supports all kinds of query parameters check `QueryArgsV2` class for more details

## 0.1.7
* fixed collection getter

## 0.1.6
* `collection` path can be modified -> to make easier for sub collection queries
* **Breaking change** -> Update item is no longer available
* `DatabaseItem` class is depricated and it is no longer required for you to extend your model with it.

## 0.1.5
* `streamQueryList` now supports `limit` and `startAfter`

## 0.1.4
* Storage service upload method

## 0.1.3
* fix error when document not found on streamSingle

## 0.1.2
* `updateData(String id, Map<String,dynamic> data)` new function added

## 0.1.1
* Fix readme error

## 0.1.0
* Firestore helper `DatabaseService` generic class
