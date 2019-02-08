# Release History

### 0.25.0 / 2019-02-01

* Switch Firestore to use the V1 API:
  * Add V1 service to the low level API.
* Add numeric transform methods
  * Add the following methods to Client:
    * Client#field_increment
    * Client#field_maximum
    * Client#field_minimum
  * Add the following methods to FieldValue:
    * FieldValue.increment
    * FieldValue.maximum
    * FieldValue.minimum
* Add field_mask argument to get_all method:
  * Allows specific portions of the document data to be returned.
* Add list_collections alias.
* Make use of Credentials#project_id
  * Use Credentials#project_id
    If a project_id is not provided, use the value on the Credentials object.
    This value was added in googleauth 0.7.0.
  * Loosen googleauth dependency
    Allow for new releases up to 0.10.
    The googleauth devs have committed to maintaining the current API
    and will not make backwards compatible changes before 0.10.
* Add Firestore emulator support.

### 0.24.2 / 2018-09-20

* Add fix for comparing NaN values
  * NaN values should not be compared, as this may raise with Active Support.
* Update documentation.
  * Change documentation URL to googleapis GitHub org.
* Fix circular require warning.

### 0.24.1 / 2018-09-12

* Add missing documentation files to package.

### 0.24.0 / 2018-09-10

* Add array_union and array_delete FieldValue configuration.
* Add array-contains as an operator to the Query#where method.
* Update documentation.

### 0.23.0 / 2018-08-17

* Add Firestore Watch
  * A document reference or a collection reference/query can now be
    listened to for changes.
  * The following methods were added:
    * DocumentReference#listen
    * Query#listen
  * The following classes were added:
    * DocumentSnapshot
    * DocumentChange
    * DocumentListener
    * QuerySnapshot
    * QueryListener
* Support DocumentSnapshot objects as cursors.
* Fix mapping of geo Hash to GeoPoint resource.
* Query#select is no longer additive, it now replaces any previously
  selected fields.
* Documentation updates.

### 0.22.0 / 2018-07-05

* Remove Base64 encoding for BYTES values, as it is unnecessary for gRPC endpoints.
* Add documentation for enabling gRPC logging.

### 0.21.1 / 2018-05-24

* Fix bug where some DocumentReference/DocumentSnapshot actions
  were failing due to a bad object configuration.
* Updates to documentation and code examples.

### 0.21.0 / 2018-02-27

* Add Shared Configuration.

### 0.20.0 / 2018-01-10

* First release
