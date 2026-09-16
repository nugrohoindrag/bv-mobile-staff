// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sync.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SyncBundle {

 DateTime get serverTime; String get cursor; List<WorkItem> get tasks; List<WorkItem> get workOrders; List<WorkItem> get cleaningTasks; List<PatrolBundle> get patrolTasks; List<ChecklistRun> get checklistRuns; List<LocationLite> get locations; List<AssetLite> get assets; MasterData get master; List<ObjectRef> get removed; MeLite get me;
/// Create a copy of SyncBundle
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SyncBundleCopyWith<SyncBundle> get copyWith => _$SyncBundleCopyWithImpl<SyncBundle>(this as SyncBundle, _$identity);

  /// Serializes this SyncBundle to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as SyncBundle;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SyncBundle&&(identical(other.serverTime, _this.serverTime) || other.serverTime == _this.serverTime)&&(identical(other.cursor, _this.cursor) || other.cursor == _this.cursor)&&const DeepCollectionEquality().equals(other.tasks, _this.tasks)&&const DeepCollectionEquality().equals(other.workOrders, _this.workOrders)&&const DeepCollectionEquality().equals(other.cleaningTasks, _this.cleaningTasks)&&const DeepCollectionEquality().equals(other.patrolTasks, _this.patrolTasks)&&const DeepCollectionEquality().equals(other.checklistRuns, _this.checklistRuns)&&const DeepCollectionEquality().equals(other.locations, _this.locations)&&const DeepCollectionEquality().equals(other.assets, _this.assets)&&(identical(other.master, _this.master) || other.master == _this.master)&&const DeepCollectionEquality().equals(other.removed, _this.removed)&&(identical(other.me, _this.me) || other.me == _this.me));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as SyncBundle;
  return Object.hash(runtimeType,_this.serverTime,_this.cursor,const DeepCollectionEquality().hash(_this.tasks),const DeepCollectionEquality().hash(_this.workOrders),const DeepCollectionEquality().hash(_this.cleaningTasks),const DeepCollectionEquality().hash(_this.patrolTasks),const DeepCollectionEquality().hash(_this.checklistRuns),const DeepCollectionEquality().hash(_this.locations),const DeepCollectionEquality().hash(_this.assets),_this.master,const DeepCollectionEquality().hash(_this.removed),_this.me);
}

@override
String toString() {
  final _this = this as SyncBundle;
  return 'SyncBundle(serverTime: ${_this.serverTime}, cursor: ${_this.cursor}, tasks: ${_this.tasks}, workOrders: ${_this.workOrders}, cleaningTasks: ${_this.cleaningTasks}, patrolTasks: ${_this.patrolTasks}, checklistRuns: ${_this.checklistRuns}, locations: ${_this.locations}, assets: ${_this.assets}, master: ${_this.master}, removed: ${_this.removed}, me: ${_this.me})';
}


}

/// @nodoc
abstract mixin class $SyncBundleCopyWith<$Res>  {
  factory $SyncBundleCopyWith(SyncBundle value, $Res Function(SyncBundle) _then) = _$SyncBundleCopyWithImpl;
@useResult
$Res call({
 DateTime serverTime, String cursor, List<WorkItem> tasks, List<WorkItem> workOrders, List<WorkItem> cleaningTasks, List<PatrolBundle> patrolTasks, List<ChecklistRun> checklistRuns, List<LocationLite> locations, List<AssetLite> assets, MasterData master, List<ObjectRef> removed, MeLite me
});


$MasterDataCopyWith<$Res> get master;$MeLiteCopyWith<$Res> get me;

}
/// @nodoc
class _$SyncBundleCopyWithImpl<$Res>
    implements $SyncBundleCopyWith<$Res> {
  _$SyncBundleCopyWithImpl(this._self, this._then);

  final SyncBundle _self;
  final $Res Function(SyncBundle) _then;

/// Create a copy of SyncBundle
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? serverTime = null,Object? cursor = null,Object? tasks = null,Object? workOrders = null,Object? cleaningTasks = null,Object? patrolTasks = null,Object? checklistRuns = null,Object? locations = null,Object? assets = null,Object? master = null,Object? removed = null,Object? me = null,}) {
  return _then(SyncBundle(
serverTime: null == serverTime ? _self.serverTime : serverTime // ignore: cast_nullable_to_non_nullable
as DateTime,cursor: null == cursor ? _self.cursor : cursor // ignore: cast_nullable_to_non_nullable
as String,tasks: null == tasks ? _self.tasks : tasks // ignore: cast_nullable_to_non_nullable
as List<WorkItem>,workOrders: null == workOrders ? _self.workOrders : workOrders // ignore: cast_nullable_to_non_nullable
as List<WorkItem>,cleaningTasks: null == cleaningTasks ? _self.cleaningTasks : cleaningTasks // ignore: cast_nullable_to_non_nullable
as List<WorkItem>,patrolTasks: null == patrolTasks ? _self.patrolTasks : patrolTasks // ignore: cast_nullable_to_non_nullable
as List<PatrolBundle>,checklistRuns: null == checklistRuns ? _self.checklistRuns : checklistRuns // ignore: cast_nullable_to_non_nullable
as List<ChecklistRun>,locations: null == locations ? _self.locations : locations // ignore: cast_nullable_to_non_nullable
as List<LocationLite>,assets: null == assets ? _self.assets : assets // ignore: cast_nullable_to_non_nullable
as List<AssetLite>,master: null == master ? _self.master : master // ignore: cast_nullable_to_non_nullable
as MasterData,removed: null == removed ? _self.removed : removed // ignore: cast_nullable_to_non_nullable
as List<ObjectRef>,me: null == me ? _self.me : me // ignore: cast_nullable_to_non_nullable
as MeLite,
  ));
}
/// Create a copy of SyncBundle
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MasterDataCopyWith<$Res> get master {
  
  return $MasterDataCopyWith<$Res>(_self.master, (value) {
    return _then(_self.copyWith(master: value));
  });
}/// Create a copy of SyncBundle
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MeLiteCopyWith<$Res> get me {
  
  return $MeLiteCopyWith<$Res>(_self.me, (value) {
    return _then(_self.copyWith(me: value));
  });
}
}


/// Adds pattern-matching-related methods to [SyncBundle].
extension SyncBundlePatterns on SyncBundle {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SyncBundle value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SyncBundle() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SyncBundle value)  $default,){
final _that = this;
switch (_that) {
case _SyncBundle():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SyncBundle value)?  $default,){
final _that = this;
switch (_that) {
case _SyncBundle() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime serverTime,  String cursor,  List<WorkItem> tasks,  List<WorkItem> workOrders,  List<WorkItem> cleaningTasks,  List<PatrolBundle> patrolTasks,  List<ChecklistRun> checklistRuns,  List<LocationLite> locations,  List<AssetLite> assets,  MasterData master,  List<ObjectRef> removed,  MeLite me)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SyncBundle() when $default != null:
return $default(_that.serverTime,_that.cursor,_that.tasks,_that.workOrders,_that.cleaningTasks,_that.patrolTasks,_that.checklistRuns,_that.locations,_that.assets,_that.master,_that.removed,_that.me);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime serverTime,  String cursor,  List<WorkItem> tasks,  List<WorkItem> workOrders,  List<WorkItem> cleaningTasks,  List<PatrolBundle> patrolTasks,  List<ChecklistRun> checklistRuns,  List<LocationLite> locations,  List<AssetLite> assets,  MasterData master,  List<ObjectRef> removed,  MeLite me)  $default,) {final _that = this;
switch (_that) {
case _SyncBundle():
return $default(_that.serverTime,_that.cursor,_that.tasks,_that.workOrders,_that.cleaningTasks,_that.patrolTasks,_that.checklistRuns,_that.locations,_that.assets,_that.master,_that.removed,_that.me);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime serverTime,  String cursor,  List<WorkItem> tasks,  List<WorkItem> workOrders,  List<WorkItem> cleaningTasks,  List<PatrolBundle> patrolTasks,  List<ChecklistRun> checklistRuns,  List<LocationLite> locations,  List<AssetLite> assets,  MasterData master,  List<ObjectRef> removed,  MeLite me)?  $default,) {final _that = this;
switch (_that) {
case _SyncBundle() when $default != null:
return $default(_that.serverTime,_that.cursor,_that.tasks,_that.workOrders,_that.cleaningTasks,_that.patrolTasks,_that.checklistRuns,_that.locations,_that.assets,_that.master,_that.removed,_that.me);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SyncBundle implements SyncBundle {
  const _SyncBundle({required this.serverTime, required this.cursor,  List<WorkItem> tasks = const <WorkItem>[],  List<WorkItem> workOrders = const <WorkItem>[],  List<WorkItem> cleaningTasks = const <WorkItem>[],  List<PatrolBundle> patrolTasks = const <PatrolBundle>[],  List<ChecklistRun> checklistRuns = const <ChecklistRun>[],  List<LocationLite> locations = const <LocationLite>[],  List<AssetLite> assets = const <AssetLite>[], this.master = const MasterData(),  List<ObjectRef> removed = const <ObjectRef>[], required this.me}): _tasks = tasks,_workOrders = workOrders,_cleaningTasks = cleaningTasks,_patrolTasks = patrolTasks,_checklistRuns = checklistRuns,_locations = locations,_assets = assets,_removed = removed;
  factory _SyncBundle.fromJson(Map<String, dynamic> json) => _$SyncBundleFromJson(json);

@override final  DateTime serverTime;
@override final  String cursor;
 final  List<WorkItem> _tasks;
@override@JsonKey() List<WorkItem> get tasks {
  if (_tasks is EqualUnmodifiableListView) return _tasks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tasks);
}

 final  List<WorkItem> _workOrders;
@override@JsonKey() List<WorkItem> get workOrders {
  if (_workOrders is EqualUnmodifiableListView) return _workOrders;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_workOrders);
}

 final  List<WorkItem> _cleaningTasks;
@override@JsonKey() List<WorkItem> get cleaningTasks {
  if (_cleaningTasks is EqualUnmodifiableListView) return _cleaningTasks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cleaningTasks);
}

 final  List<PatrolBundle> _patrolTasks;
@override@JsonKey() List<PatrolBundle> get patrolTasks {
  if (_patrolTasks is EqualUnmodifiableListView) return _patrolTasks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_patrolTasks);
}

 final  List<ChecklistRun> _checklistRuns;
@override@JsonKey() List<ChecklistRun> get checklistRuns {
  if (_checklistRuns is EqualUnmodifiableListView) return _checklistRuns;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_checklistRuns);
}

 final  List<LocationLite> _locations;
@override@JsonKey() List<LocationLite> get locations {
  if (_locations is EqualUnmodifiableListView) return _locations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_locations);
}

 final  List<AssetLite> _assets;
@override@JsonKey() List<AssetLite> get assets {
  if (_assets is EqualUnmodifiableListView) return _assets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_assets);
}

@override@JsonKey() final  MasterData master;
 final  List<ObjectRef> _removed;
@override@JsonKey() List<ObjectRef> get removed {
  if (_removed is EqualUnmodifiableListView) return _removed;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_removed);
}

@override final  MeLite me;

/// Create a copy of SyncBundle
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SyncBundleCopyWith<_SyncBundle> get copyWith => __$SyncBundleCopyWithImpl<_SyncBundle>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SyncBundleToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SyncBundle&&(identical(other.serverTime, serverTime) || other.serverTime == serverTime)&&(identical(other.cursor, cursor) || other.cursor == cursor)&&const DeepCollectionEquality().equals(other.tasks, _tasks)&&const DeepCollectionEquality().equals(other.workOrders, _workOrders)&&const DeepCollectionEquality().equals(other.cleaningTasks, _cleaningTasks)&&const DeepCollectionEquality().equals(other.patrolTasks, _patrolTasks)&&const DeepCollectionEquality().equals(other.checklistRuns, _checklistRuns)&&const DeepCollectionEquality().equals(other.locations, _locations)&&const DeepCollectionEquality().equals(other.assets, _assets)&&(identical(other.master, master) || other.master == master)&&const DeepCollectionEquality().equals(other.removed, _removed)&&(identical(other.me, me) || other.me == me));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,serverTime,cursor,const DeepCollectionEquality().hash(_tasks),const DeepCollectionEquality().hash(_workOrders),const DeepCollectionEquality().hash(_cleaningTasks),const DeepCollectionEquality().hash(_patrolTasks),const DeepCollectionEquality().hash(_checklistRuns),const DeepCollectionEquality().hash(_locations),const DeepCollectionEquality().hash(_assets),master,const DeepCollectionEquality().hash(_removed),me);
}

@override
String toString() {
    return 'SyncBundle(serverTime: $serverTime, cursor: $cursor, tasks: $tasks, workOrders: $workOrders, cleaningTasks: $cleaningTasks, patrolTasks: $patrolTasks, checklistRuns: $checklistRuns, locations: $locations, assets: $assets, master: $master, removed: $removed, me: $me)';
}


}

/// @nodoc
abstract mixin class _$SyncBundleCopyWith<$Res> implements $SyncBundleCopyWith<$Res> {
  factory _$SyncBundleCopyWith(_SyncBundle value, $Res Function(_SyncBundle) _then) = __$SyncBundleCopyWithImpl;
@override @useResult
$Res call({
 DateTime serverTime, String cursor, List<WorkItem> tasks, List<WorkItem> workOrders, List<WorkItem> cleaningTasks, List<PatrolBundle> patrolTasks, List<ChecklistRun> checklistRuns, List<LocationLite> locations, List<AssetLite> assets, MasterData master, List<ObjectRef> removed, MeLite me
});


@override $MasterDataCopyWith<$Res> get master;@override $MeLiteCopyWith<$Res> get me;

}
/// @nodoc
class __$SyncBundleCopyWithImpl<$Res>
    implements _$SyncBundleCopyWith<$Res> {
  __$SyncBundleCopyWithImpl(this._self, this._then);

  final _SyncBundle _self;
  final $Res Function(_SyncBundle) _then;

/// Create a copy of SyncBundle
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? serverTime = null,Object? cursor = null,Object? tasks = null,Object? workOrders = null,Object? cleaningTasks = null,Object? patrolTasks = null,Object? checklistRuns = null,Object? locations = null,Object? assets = null,Object? master = null,Object? removed = null,Object? me = null,}) {
  return _then(_SyncBundle(
serverTime: null == serverTime ? _self.serverTime : serverTime // ignore: cast_nullable_to_non_nullable
as DateTime,cursor: null == cursor ? _self.cursor : cursor // ignore: cast_nullable_to_non_nullable
as String,tasks: null == tasks ? _self._tasks : tasks // ignore: cast_nullable_to_non_nullable
as List<WorkItem>,workOrders: null == workOrders ? _self._workOrders : workOrders // ignore: cast_nullable_to_non_nullable
as List<WorkItem>,cleaningTasks: null == cleaningTasks ? _self._cleaningTasks : cleaningTasks // ignore: cast_nullable_to_non_nullable
as List<WorkItem>,patrolTasks: null == patrolTasks ? _self._patrolTasks : patrolTasks // ignore: cast_nullable_to_non_nullable
as List<PatrolBundle>,checklistRuns: null == checklistRuns ? _self._checklistRuns : checklistRuns // ignore: cast_nullable_to_non_nullable
as List<ChecklistRun>,locations: null == locations ? _self._locations : locations // ignore: cast_nullable_to_non_nullable
as List<LocationLite>,assets: null == assets ? _self._assets : assets // ignore: cast_nullable_to_non_nullable
as List<AssetLite>,master: null == master ? _self.master : master // ignore: cast_nullable_to_non_nullable
as MasterData,removed: null == removed ? _self._removed : removed // ignore: cast_nullable_to_non_nullable
as List<ObjectRef>,me: null == me ? _self.me : me // ignore: cast_nullable_to_non_nullable
as MeLite,
  ));
}

/// Create a copy of SyncBundle
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MasterDataCopyWith<$Res> get master {
  
  return $MasterDataCopyWith<$Res>(_self.master, (value) {
    return _then(_self.copyWith(master: value));
  });
}/// Create a copy of SyncBundle
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MeLiteCopyWith<$Res> get me {
  
  return $MeLiteCopyWith<$Res>(_self.me, (value) {
    return _then(_self.copyWith(me: value));
  });
}
}


/// @nodoc
mixin _$Mutation {

 String get clientMutationId; String get objectType; String get objectId; String get action; int get seq; DateTime? get clientTime; Map<String, dynamic> get payload;
/// Create a copy of Mutation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MutationCopyWith<Mutation> get copyWith => _$MutationCopyWithImpl<Mutation>(this as Mutation, _$identity);

  /// Serializes this Mutation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Mutation;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Mutation&&(identical(other.clientMutationId, _this.clientMutationId) || other.clientMutationId == _this.clientMutationId)&&(identical(other.objectType, _this.objectType) || other.objectType == _this.objectType)&&(identical(other.objectId, _this.objectId) || other.objectId == _this.objectId)&&(identical(other.action, _this.action) || other.action == _this.action)&&(identical(other.seq, _this.seq) || other.seq == _this.seq)&&(identical(other.clientTime, _this.clientTime) || other.clientTime == _this.clientTime)&&const DeepCollectionEquality().equals(other.payload, _this.payload));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Mutation;
  return Object.hash(runtimeType,_this.clientMutationId,_this.objectType,_this.objectId,_this.action,_this.seq,_this.clientTime,const DeepCollectionEquality().hash(_this.payload));
}

@override
String toString() {
  final _this = this as Mutation;
  return 'Mutation(clientMutationId: ${_this.clientMutationId}, objectType: ${_this.objectType}, objectId: ${_this.objectId}, action: ${_this.action}, seq: ${_this.seq}, clientTime: ${_this.clientTime}, payload: ${_this.payload})';
}


}

/// @nodoc
abstract mixin class $MutationCopyWith<$Res>  {
  factory $MutationCopyWith(Mutation value, $Res Function(Mutation) _then) = _$MutationCopyWithImpl;
@useResult
$Res call({
 String clientMutationId, String objectType, String objectId, String action, int seq, DateTime? clientTime, Map<String, dynamic> payload
});




}
/// @nodoc
class _$MutationCopyWithImpl<$Res>
    implements $MutationCopyWith<$Res> {
  _$MutationCopyWithImpl(this._self, this._then);

  final Mutation _self;
  final $Res Function(Mutation) _then;

/// Create a copy of Mutation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? clientMutationId = null,Object? objectType = null,Object? objectId = null,Object? action = null,Object? seq = null,Object? clientTime = freezed,Object? payload = null,}) {
  return _then(Mutation(
clientMutationId: null == clientMutationId ? _self.clientMutationId : clientMutationId // ignore: cast_nullable_to_non_nullable
as String,objectType: null == objectType ? _self.objectType : objectType // ignore: cast_nullable_to_non_nullable
as String,objectId: null == objectId ? _self.objectId : objectId // ignore: cast_nullable_to_non_nullable
as String,action: null == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as String,seq: null == seq ? _self.seq : seq // ignore: cast_nullable_to_non_nullable
as int,clientTime: freezed == clientTime ? _self.clientTime : clientTime // ignore: cast_nullable_to_non_nullable
as DateTime?,payload: null == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [Mutation].
extension MutationPatterns on Mutation {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Mutation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Mutation() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Mutation value)  $default,){
final _that = this;
switch (_that) {
case _Mutation():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Mutation value)?  $default,){
final _that = this;
switch (_that) {
case _Mutation() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String clientMutationId,  String objectType,  String objectId,  String action,  int seq,  DateTime? clientTime,  Map<String, dynamic> payload)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Mutation() when $default != null:
return $default(_that.clientMutationId,_that.objectType,_that.objectId,_that.action,_that.seq,_that.clientTime,_that.payload);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String clientMutationId,  String objectType,  String objectId,  String action,  int seq,  DateTime? clientTime,  Map<String, dynamic> payload)  $default,) {final _that = this;
switch (_that) {
case _Mutation():
return $default(_that.clientMutationId,_that.objectType,_that.objectId,_that.action,_that.seq,_that.clientTime,_that.payload);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String clientMutationId,  String objectType,  String objectId,  String action,  int seq,  DateTime? clientTime,  Map<String, dynamic> payload)?  $default,) {final _that = this;
switch (_that) {
case _Mutation() when $default != null:
return $default(_that.clientMutationId,_that.objectType,_that.objectId,_that.action,_that.seq,_that.clientTime,_that.payload);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Mutation implements Mutation {
  const _Mutation({required this.clientMutationId, required this.objectType, required this.objectId, required this.action, required this.seq, this.clientTime,  Map<String, dynamic> payload = const <String, dynamic>{}}): _payload = payload;
  factory _Mutation.fromJson(Map<String, dynamic> json) => _$MutationFromJson(json);

@override final  String clientMutationId;
@override final  String objectType;
@override final  String objectId;
@override final  String action;
@override final  int seq;
@override final  DateTime? clientTime;
 final  Map<String, dynamic> _payload;
@override@JsonKey() Map<String, dynamic> get payload {
  if (_payload is EqualUnmodifiableMapView) return _payload;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_payload);
}


/// Create a copy of Mutation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MutationCopyWith<_Mutation> get copyWith => __$MutationCopyWithImpl<_Mutation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MutationToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Mutation&&(identical(other.clientMutationId, clientMutationId) || other.clientMutationId == clientMutationId)&&(identical(other.objectType, objectType) || other.objectType == objectType)&&(identical(other.objectId, objectId) || other.objectId == objectId)&&(identical(other.action, action) || other.action == action)&&(identical(other.seq, seq) || other.seq == seq)&&(identical(other.clientTime, clientTime) || other.clientTime == clientTime)&&const DeepCollectionEquality().equals(other.payload, _payload));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,clientMutationId,objectType,objectId,action,seq,clientTime,const DeepCollectionEquality().hash(_payload));
}

@override
String toString() {
    return 'Mutation(clientMutationId: $clientMutationId, objectType: $objectType, objectId: $objectId, action: $action, seq: $seq, clientTime: $clientTime, payload: $payload)';
}


}

/// @nodoc
abstract mixin class _$MutationCopyWith<$Res> implements $MutationCopyWith<$Res> {
  factory _$MutationCopyWith(_Mutation value, $Res Function(_Mutation) _then) = __$MutationCopyWithImpl;
@override @useResult
$Res call({
 String clientMutationId, String objectType, String objectId, String action, int seq, DateTime? clientTime, Map<String, dynamic> payload
});




}
/// @nodoc
class __$MutationCopyWithImpl<$Res>
    implements _$MutationCopyWith<$Res> {
  __$MutationCopyWithImpl(this._self, this._then);

  final _Mutation _self;
  final $Res Function(_Mutation) _then;

/// Create a copy of Mutation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? clientMutationId = null,Object? objectType = null,Object? objectId = null,Object? action = null,Object? seq = null,Object? clientTime = freezed,Object? payload = null,}) {
  return _then(_Mutation(
clientMutationId: null == clientMutationId ? _self.clientMutationId : clientMutationId // ignore: cast_nullable_to_non_nullable
as String,objectType: null == objectType ? _self.objectType : objectType // ignore: cast_nullable_to_non_nullable
as String,objectId: null == objectId ? _self.objectId : objectId // ignore: cast_nullable_to_non_nullable
as String,action: null == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as String,seq: null == seq ? _self.seq : seq // ignore: cast_nullable_to_non_nullable
as int,clientTime: freezed == clientTime ? _self.clientTime : clientTime // ignore: cast_nullable_to_non_nullable
as DateTime?,payload: null == payload ? _self._payload : payload // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}


/// @nodoc
mixin _$MutationResult {

 String get clientMutationId; String get status; String? get reasonCode; String? get detail; int? get serverVersion; Map<String, dynamic>? get response;
/// Create a copy of MutationResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MutationResultCopyWith<MutationResult> get copyWith => _$MutationResultCopyWithImpl<MutationResult>(this as MutationResult, _$identity);

  /// Serializes this MutationResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as MutationResult;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MutationResult&&(identical(other.clientMutationId, _this.clientMutationId) || other.clientMutationId == _this.clientMutationId)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.reasonCode, _this.reasonCode) || other.reasonCode == _this.reasonCode)&&(identical(other.detail, _this.detail) || other.detail == _this.detail)&&(identical(other.serverVersion, _this.serverVersion) || other.serverVersion == _this.serverVersion)&&const DeepCollectionEquality().equals(other.response, _this.response));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as MutationResult;
  return Object.hash(runtimeType,_this.clientMutationId,_this.status,_this.reasonCode,_this.detail,_this.serverVersion,const DeepCollectionEquality().hash(_this.response));
}

@override
String toString() {
  final _this = this as MutationResult;
  return 'MutationResult(clientMutationId: ${_this.clientMutationId}, status: ${_this.status}, reasonCode: ${_this.reasonCode}, detail: ${_this.detail}, serverVersion: ${_this.serverVersion}, response: ${_this.response})';
}


}

/// @nodoc
abstract mixin class $MutationResultCopyWith<$Res>  {
  factory $MutationResultCopyWith(MutationResult value, $Res Function(MutationResult) _then) = _$MutationResultCopyWithImpl;
@useResult
$Res call({
 String clientMutationId, String status, String? reasonCode, String? detail, int? serverVersion, Map<String, dynamic>? response
});




}
/// @nodoc
class _$MutationResultCopyWithImpl<$Res>
    implements $MutationResultCopyWith<$Res> {
  _$MutationResultCopyWithImpl(this._self, this._then);

  final MutationResult _self;
  final $Res Function(MutationResult) _then;

/// Create a copy of MutationResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? clientMutationId = null,Object? status = null,Object? reasonCode = freezed,Object? detail = freezed,Object? serverVersion = freezed,Object? response = freezed,}) {
  return _then(MutationResult(
clientMutationId: null == clientMutationId ? _self.clientMutationId : clientMutationId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,reasonCode: freezed == reasonCode ? _self.reasonCode : reasonCode // ignore: cast_nullable_to_non_nullable
as String?,detail: freezed == detail ? _self.detail : detail // ignore: cast_nullable_to_non_nullable
as String?,serverVersion: freezed == serverVersion ? _self.serverVersion : serverVersion // ignore: cast_nullable_to_non_nullable
as int?,response: freezed == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [MutationResult].
extension MutationResultPatterns on MutationResult {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MutationResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MutationResult() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MutationResult value)  $default,){
final _that = this;
switch (_that) {
case _MutationResult():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MutationResult value)?  $default,){
final _that = this;
switch (_that) {
case _MutationResult() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String clientMutationId,  String status,  String? reasonCode,  String? detail,  int? serverVersion,  Map<String, dynamic>? response)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MutationResult() when $default != null:
return $default(_that.clientMutationId,_that.status,_that.reasonCode,_that.detail,_that.serverVersion,_that.response);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String clientMutationId,  String status,  String? reasonCode,  String? detail,  int? serverVersion,  Map<String, dynamic>? response)  $default,) {final _that = this;
switch (_that) {
case _MutationResult():
return $default(_that.clientMutationId,_that.status,_that.reasonCode,_that.detail,_that.serverVersion,_that.response);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String clientMutationId,  String status,  String? reasonCode,  String? detail,  int? serverVersion,  Map<String, dynamic>? response)?  $default,) {final _that = this;
switch (_that) {
case _MutationResult() when $default != null:
return $default(_that.clientMutationId,_that.status,_that.reasonCode,_that.detail,_that.serverVersion,_that.response);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MutationResult extends MutationResult {
  const _MutationResult({required this.clientMutationId, required this.status, this.reasonCode, this.detail, this.serverVersion,  Map<String, dynamic>? response}): _response = response,super._();
  factory _MutationResult.fromJson(Map<String, dynamic> json) => _$MutationResultFromJson(json);

@override final  String clientMutationId;
@override final  String status;
@override final  String? reasonCode;
@override final  String? detail;
@override final  int? serverVersion;
 final  Map<String, dynamic>? _response;
@override Map<String, dynamic>? get response {
  final value = _response;
  if (value == null) return null;
  if (_response is EqualUnmodifiableMapView) return _response;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of MutationResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MutationResultCopyWith<_MutationResult> get copyWith => __$MutationResultCopyWithImpl<_MutationResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MutationResultToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _MutationResult&&(identical(other.clientMutationId, clientMutationId) || other.clientMutationId == clientMutationId)&&(identical(other.status, status) || other.status == status)&&(identical(other.reasonCode, reasonCode) || other.reasonCode == reasonCode)&&(identical(other.detail, detail) || other.detail == detail)&&(identical(other.serverVersion, serverVersion) || other.serverVersion == serverVersion)&&const DeepCollectionEquality().equals(other.response, _response));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,clientMutationId,status,reasonCode,detail,serverVersion,const DeepCollectionEquality().hash(_response));
}

@override
String toString() {
    return 'MutationResult(clientMutationId: $clientMutationId, status: $status, reasonCode: $reasonCode, detail: $detail, serverVersion: $serverVersion, response: $response)';
}


}

/// @nodoc
abstract mixin class _$MutationResultCopyWith<$Res> implements $MutationResultCopyWith<$Res> {
  factory _$MutationResultCopyWith(_MutationResult value, $Res Function(_MutationResult) _then) = __$MutationResultCopyWithImpl;
@override @useResult
$Res call({
 String clientMutationId, String status, String? reasonCode, String? detail, int? serverVersion, Map<String, dynamic>? response
});




}
/// @nodoc
class __$MutationResultCopyWithImpl<$Res>
    implements _$MutationResultCopyWith<$Res> {
  __$MutationResultCopyWithImpl(this._self, this._then);

  final _MutationResult _self;
  final $Res Function(_MutationResult) _then;

/// Create a copy of MutationResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? clientMutationId = null,Object? status = null,Object? reasonCode = freezed,Object? detail = freezed,Object? serverVersion = freezed,Object? response = freezed,}) {
  return _then(_MutationResult(
clientMutationId: null == clientMutationId ? _self.clientMutationId : clientMutationId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,reasonCode: freezed == reasonCode ? _self.reasonCode : reasonCode // ignore: cast_nullable_to_non_nullable
as String?,detail: freezed == detail ? _self.detail : detail // ignore: cast_nullable_to_non_nullable
as String?,serverVersion: freezed == serverVersion ? _self.serverVersion : serverVersion // ignore: cast_nullable_to_non_nullable
as int?,response: freezed == response ? _self._response : response // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}


/// @nodoc
mixin _$SyncPushInput {

 String get deviceId; List<Mutation> get mutations;
/// Create a copy of SyncPushInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SyncPushInputCopyWith<SyncPushInput> get copyWith => _$SyncPushInputCopyWithImpl<SyncPushInput>(this as SyncPushInput, _$identity);

  /// Serializes this SyncPushInput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as SyncPushInput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SyncPushInput&&(identical(other.deviceId, _this.deviceId) || other.deviceId == _this.deviceId)&&const DeepCollectionEquality().equals(other.mutations, _this.mutations));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as SyncPushInput;
  return Object.hash(runtimeType,_this.deviceId,const DeepCollectionEquality().hash(_this.mutations));
}

@override
String toString() {
  final _this = this as SyncPushInput;
  return 'SyncPushInput(deviceId: ${_this.deviceId}, mutations: ${_this.mutations})';
}


}

/// @nodoc
abstract mixin class $SyncPushInputCopyWith<$Res>  {
  factory $SyncPushInputCopyWith(SyncPushInput value, $Res Function(SyncPushInput) _then) = _$SyncPushInputCopyWithImpl;
@useResult
$Res call({
 String deviceId, List<Mutation> mutations
});




}
/// @nodoc
class _$SyncPushInputCopyWithImpl<$Res>
    implements $SyncPushInputCopyWith<$Res> {
  _$SyncPushInputCopyWithImpl(this._self, this._then);

  final SyncPushInput _self;
  final $Res Function(SyncPushInput) _then;

/// Create a copy of SyncPushInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? deviceId = null,Object? mutations = null,}) {
  return _then(SyncPushInput(
deviceId: null == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String,mutations: null == mutations ? _self.mutations : mutations // ignore: cast_nullable_to_non_nullable
as List<Mutation>,
  ));
}

}


/// Adds pattern-matching-related methods to [SyncPushInput].
extension SyncPushInputPatterns on SyncPushInput {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SyncPushInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SyncPushInput() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SyncPushInput value)  $default,){
final _that = this;
switch (_that) {
case _SyncPushInput():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SyncPushInput value)?  $default,){
final _that = this;
switch (_that) {
case _SyncPushInput() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String deviceId,  List<Mutation> mutations)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SyncPushInput() when $default != null:
return $default(_that.deviceId,_that.mutations);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String deviceId,  List<Mutation> mutations)  $default,) {final _that = this;
switch (_that) {
case _SyncPushInput():
return $default(_that.deviceId,_that.mutations);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String deviceId,  List<Mutation> mutations)?  $default,) {final _that = this;
switch (_that) {
case _SyncPushInput() when $default != null:
return $default(_that.deviceId,_that.mutations);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SyncPushInput implements SyncPushInput {
  const _SyncPushInput({required this.deviceId,  List<Mutation> mutations = const <Mutation>[]}): _mutations = mutations;
  factory _SyncPushInput.fromJson(Map<String, dynamic> json) => _$SyncPushInputFromJson(json);

@override final  String deviceId;
 final  List<Mutation> _mutations;
@override@JsonKey() List<Mutation> get mutations {
  if (_mutations is EqualUnmodifiableListView) return _mutations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_mutations);
}


/// Create a copy of SyncPushInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SyncPushInputCopyWith<_SyncPushInput> get copyWith => __$SyncPushInputCopyWithImpl<_SyncPushInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SyncPushInputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SyncPushInput&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&const DeepCollectionEquality().equals(other.mutations, _mutations));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,deviceId,const DeepCollectionEquality().hash(_mutations));
}

@override
String toString() {
    return 'SyncPushInput(deviceId: $deviceId, mutations: $mutations)';
}


}

/// @nodoc
abstract mixin class _$SyncPushInputCopyWith<$Res> implements $SyncPushInputCopyWith<$Res> {
  factory _$SyncPushInputCopyWith(_SyncPushInput value, $Res Function(_SyncPushInput) _then) = __$SyncPushInputCopyWithImpl;
@override @useResult
$Res call({
 String deviceId, List<Mutation> mutations
});




}
/// @nodoc
class __$SyncPushInputCopyWithImpl<$Res>
    implements _$SyncPushInputCopyWith<$Res> {
  __$SyncPushInputCopyWithImpl(this._self, this._then);

  final _SyncPushInput _self;
  final $Res Function(_SyncPushInput) _then;

/// Create a copy of SyncPushInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? deviceId = null,Object? mutations = null,}) {
  return _then(_SyncPushInput(
deviceId: null == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String,mutations: null == mutations ? _self._mutations : mutations // ignore: cast_nullable_to_non_nullable
as List<Mutation>,
  ));
}


}


/// @nodoc
mixin _$SyncPushOutput {

 DateTime get serverTime; List<MutationResult> get results;
/// Create a copy of SyncPushOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SyncPushOutputCopyWith<SyncPushOutput> get copyWith => _$SyncPushOutputCopyWithImpl<SyncPushOutput>(this as SyncPushOutput, _$identity);

  /// Serializes this SyncPushOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as SyncPushOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SyncPushOutput&&(identical(other.serverTime, _this.serverTime) || other.serverTime == _this.serverTime)&&const DeepCollectionEquality().equals(other.results, _this.results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as SyncPushOutput;
  return Object.hash(runtimeType,_this.serverTime,const DeepCollectionEquality().hash(_this.results));
}

@override
String toString() {
  final _this = this as SyncPushOutput;
  return 'SyncPushOutput(serverTime: ${_this.serverTime}, results: ${_this.results})';
}


}

/// @nodoc
abstract mixin class $SyncPushOutputCopyWith<$Res>  {
  factory $SyncPushOutputCopyWith(SyncPushOutput value, $Res Function(SyncPushOutput) _then) = _$SyncPushOutputCopyWithImpl;
@useResult
$Res call({
 DateTime serverTime, List<MutationResult> results
});




}
/// @nodoc
class _$SyncPushOutputCopyWithImpl<$Res>
    implements $SyncPushOutputCopyWith<$Res> {
  _$SyncPushOutputCopyWithImpl(this._self, this._then);

  final SyncPushOutput _self;
  final $Res Function(SyncPushOutput) _then;

/// Create a copy of SyncPushOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? serverTime = null,Object? results = null,}) {
  return _then(SyncPushOutput(
serverTime: null == serverTime ? _self.serverTime : serverTime // ignore: cast_nullable_to_non_nullable
as DateTime,results: null == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as List<MutationResult>,
  ));
}

}


/// Adds pattern-matching-related methods to [SyncPushOutput].
extension SyncPushOutputPatterns on SyncPushOutput {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SyncPushOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SyncPushOutput() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SyncPushOutput value)  $default,){
final _that = this;
switch (_that) {
case _SyncPushOutput():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SyncPushOutput value)?  $default,){
final _that = this;
switch (_that) {
case _SyncPushOutput() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime serverTime,  List<MutationResult> results)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SyncPushOutput() when $default != null:
return $default(_that.serverTime,_that.results);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime serverTime,  List<MutationResult> results)  $default,) {final _that = this;
switch (_that) {
case _SyncPushOutput():
return $default(_that.serverTime,_that.results);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime serverTime,  List<MutationResult> results)?  $default,) {final _that = this;
switch (_that) {
case _SyncPushOutput() when $default != null:
return $default(_that.serverTime,_that.results);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SyncPushOutput implements SyncPushOutput {
  const _SyncPushOutput({required this.serverTime,  List<MutationResult> results = const <MutationResult>[]}): _results = results;
  factory _SyncPushOutput.fromJson(Map<String, dynamic> json) => _$SyncPushOutputFromJson(json);

@override final  DateTime serverTime;
 final  List<MutationResult> _results;
@override@JsonKey() List<MutationResult> get results {
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_results);
}


/// Create a copy of SyncPushOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SyncPushOutputCopyWith<_SyncPushOutput> get copyWith => __$SyncPushOutputCopyWithImpl<_SyncPushOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SyncPushOutputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SyncPushOutput&&(identical(other.serverTime, serverTime) || other.serverTime == serverTime)&&const DeepCollectionEquality().equals(other.results, _results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,serverTime,const DeepCollectionEquality().hash(_results));
}

@override
String toString() {
    return 'SyncPushOutput(serverTime: $serverTime, results: $results)';
}


}

/// @nodoc
abstract mixin class _$SyncPushOutputCopyWith<$Res> implements $SyncPushOutputCopyWith<$Res> {
  factory _$SyncPushOutputCopyWith(_SyncPushOutput value, $Res Function(_SyncPushOutput) _then) = __$SyncPushOutputCopyWithImpl;
@override @useResult
$Res call({
 DateTime serverTime, List<MutationResult> results
});




}
/// @nodoc
class __$SyncPushOutputCopyWithImpl<$Res>
    implements _$SyncPushOutputCopyWith<$Res> {
  __$SyncPushOutputCopyWithImpl(this._self, this._then);

  final _SyncPushOutput _self;
  final $Res Function(_SyncPushOutput) _then;

/// Create a copy of SyncPushOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? serverTime = null,Object? results = null,}) {
  return _then(_SyncPushOutput(
serverTime: null == serverTime ? _self.serverTime : serverTime // ignore: cast_nullable_to_non_nullable
as DateTime,results: null == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<MutationResult>,
  ));
}


}


/// @nodoc
mixin _$SyncConflict {

 String get clientMutationId; String get objectType; String get objectId; String get objectLabel; String get objectTitle; String get objectStatus; String get action; String get workerId; String get workerName; String get deviceId; DateTime get receivedAt; String get deepLink; String? get reasonCode; String? get detail; DateTime? get clientTime; DateTime? get acknowledgedAt; Map<String, dynamic>? get payload;
/// Create a copy of SyncConflict
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SyncConflictCopyWith<SyncConflict> get copyWith => _$SyncConflictCopyWithImpl<SyncConflict>(this as SyncConflict, _$identity);

  /// Serializes this SyncConflict to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as SyncConflict;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SyncConflict&&(identical(other.clientMutationId, _this.clientMutationId) || other.clientMutationId == _this.clientMutationId)&&(identical(other.objectType, _this.objectType) || other.objectType == _this.objectType)&&(identical(other.objectId, _this.objectId) || other.objectId == _this.objectId)&&(identical(other.objectLabel, _this.objectLabel) || other.objectLabel == _this.objectLabel)&&(identical(other.objectTitle, _this.objectTitle) || other.objectTitle == _this.objectTitle)&&(identical(other.objectStatus, _this.objectStatus) || other.objectStatus == _this.objectStatus)&&(identical(other.action, _this.action) || other.action == _this.action)&&(identical(other.workerId, _this.workerId) || other.workerId == _this.workerId)&&(identical(other.workerName, _this.workerName) || other.workerName == _this.workerName)&&(identical(other.deviceId, _this.deviceId) || other.deviceId == _this.deviceId)&&(identical(other.receivedAt, _this.receivedAt) || other.receivedAt == _this.receivedAt)&&(identical(other.deepLink, _this.deepLink) || other.deepLink == _this.deepLink)&&(identical(other.reasonCode, _this.reasonCode) || other.reasonCode == _this.reasonCode)&&(identical(other.detail, _this.detail) || other.detail == _this.detail)&&(identical(other.clientTime, _this.clientTime) || other.clientTime == _this.clientTime)&&(identical(other.acknowledgedAt, _this.acknowledgedAt) || other.acknowledgedAt == _this.acknowledgedAt)&&const DeepCollectionEquality().equals(other.payload, _this.payload));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as SyncConflict;
  return Object.hash(runtimeType,_this.clientMutationId,_this.objectType,_this.objectId,_this.objectLabel,_this.objectTitle,_this.objectStatus,_this.action,_this.workerId,_this.workerName,_this.deviceId,_this.receivedAt,_this.deepLink,_this.reasonCode,_this.detail,_this.clientTime,_this.acknowledgedAt,const DeepCollectionEquality().hash(_this.payload));
}

@override
String toString() {
  final _this = this as SyncConflict;
  return 'SyncConflict(clientMutationId: ${_this.clientMutationId}, objectType: ${_this.objectType}, objectId: ${_this.objectId}, objectLabel: ${_this.objectLabel}, objectTitle: ${_this.objectTitle}, objectStatus: ${_this.objectStatus}, action: ${_this.action}, workerId: ${_this.workerId}, workerName: ${_this.workerName}, deviceId: ${_this.deviceId}, receivedAt: ${_this.receivedAt}, deepLink: ${_this.deepLink}, reasonCode: ${_this.reasonCode}, detail: ${_this.detail}, clientTime: ${_this.clientTime}, acknowledgedAt: ${_this.acknowledgedAt}, payload: ${_this.payload})';
}


}

/// @nodoc
abstract mixin class $SyncConflictCopyWith<$Res>  {
  factory $SyncConflictCopyWith(SyncConflict value, $Res Function(SyncConflict) _then) = _$SyncConflictCopyWithImpl;
@useResult
$Res call({
 String clientMutationId, String objectType, String objectId, String objectLabel, String objectTitle, String objectStatus, String action, String workerId, String workerName, String deviceId, DateTime receivedAt, String deepLink, String? reasonCode, String? detail, DateTime? clientTime, DateTime? acknowledgedAt, Map<String, dynamic>? payload
});




}
/// @nodoc
class _$SyncConflictCopyWithImpl<$Res>
    implements $SyncConflictCopyWith<$Res> {
  _$SyncConflictCopyWithImpl(this._self, this._then);

  final SyncConflict _self;
  final $Res Function(SyncConflict) _then;

/// Create a copy of SyncConflict
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? clientMutationId = null,Object? objectType = null,Object? objectId = null,Object? objectLabel = null,Object? objectTitle = null,Object? objectStatus = null,Object? action = null,Object? workerId = null,Object? workerName = null,Object? deviceId = null,Object? receivedAt = null,Object? deepLink = null,Object? reasonCode = freezed,Object? detail = freezed,Object? clientTime = freezed,Object? acknowledgedAt = freezed,Object? payload = freezed,}) {
  return _then(SyncConflict(
clientMutationId: null == clientMutationId ? _self.clientMutationId : clientMutationId // ignore: cast_nullable_to_non_nullable
as String,objectType: null == objectType ? _self.objectType : objectType // ignore: cast_nullable_to_non_nullable
as String,objectId: null == objectId ? _self.objectId : objectId // ignore: cast_nullable_to_non_nullable
as String,objectLabel: null == objectLabel ? _self.objectLabel : objectLabel // ignore: cast_nullable_to_non_nullable
as String,objectTitle: null == objectTitle ? _self.objectTitle : objectTitle // ignore: cast_nullable_to_non_nullable
as String,objectStatus: null == objectStatus ? _self.objectStatus : objectStatus // ignore: cast_nullable_to_non_nullable
as String,action: null == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as String,workerId: null == workerId ? _self.workerId : workerId // ignore: cast_nullable_to_non_nullable
as String,workerName: null == workerName ? _self.workerName : workerName // ignore: cast_nullable_to_non_nullable
as String,deviceId: null == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String,receivedAt: null == receivedAt ? _self.receivedAt : receivedAt // ignore: cast_nullable_to_non_nullable
as DateTime,deepLink: null == deepLink ? _self.deepLink : deepLink // ignore: cast_nullable_to_non_nullable
as String,reasonCode: freezed == reasonCode ? _self.reasonCode : reasonCode // ignore: cast_nullable_to_non_nullable
as String?,detail: freezed == detail ? _self.detail : detail // ignore: cast_nullable_to_non_nullable
as String?,clientTime: freezed == clientTime ? _self.clientTime : clientTime // ignore: cast_nullable_to_non_nullable
as DateTime?,acknowledgedAt: freezed == acknowledgedAt ? _self.acknowledgedAt : acknowledgedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,payload: freezed == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [SyncConflict].
extension SyncConflictPatterns on SyncConflict {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SyncConflict value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SyncConflict() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SyncConflict value)  $default,){
final _that = this;
switch (_that) {
case _SyncConflict():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SyncConflict value)?  $default,){
final _that = this;
switch (_that) {
case _SyncConflict() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String clientMutationId,  String objectType,  String objectId,  String objectLabel,  String objectTitle,  String objectStatus,  String action,  String workerId,  String workerName,  String deviceId,  DateTime receivedAt,  String deepLink,  String? reasonCode,  String? detail,  DateTime? clientTime,  DateTime? acknowledgedAt,  Map<String, dynamic>? payload)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SyncConflict() when $default != null:
return $default(_that.clientMutationId,_that.objectType,_that.objectId,_that.objectLabel,_that.objectTitle,_that.objectStatus,_that.action,_that.workerId,_that.workerName,_that.deviceId,_that.receivedAt,_that.deepLink,_that.reasonCode,_that.detail,_that.clientTime,_that.acknowledgedAt,_that.payload);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String clientMutationId,  String objectType,  String objectId,  String objectLabel,  String objectTitle,  String objectStatus,  String action,  String workerId,  String workerName,  String deviceId,  DateTime receivedAt,  String deepLink,  String? reasonCode,  String? detail,  DateTime? clientTime,  DateTime? acknowledgedAt,  Map<String, dynamic>? payload)  $default,) {final _that = this;
switch (_that) {
case _SyncConflict():
return $default(_that.clientMutationId,_that.objectType,_that.objectId,_that.objectLabel,_that.objectTitle,_that.objectStatus,_that.action,_that.workerId,_that.workerName,_that.deviceId,_that.receivedAt,_that.deepLink,_that.reasonCode,_that.detail,_that.clientTime,_that.acknowledgedAt,_that.payload);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String clientMutationId,  String objectType,  String objectId,  String objectLabel,  String objectTitle,  String objectStatus,  String action,  String workerId,  String workerName,  String deviceId,  DateTime receivedAt,  String deepLink,  String? reasonCode,  String? detail,  DateTime? clientTime,  DateTime? acknowledgedAt,  Map<String, dynamic>? payload)?  $default,) {final _that = this;
switch (_that) {
case _SyncConflict() when $default != null:
return $default(_that.clientMutationId,_that.objectType,_that.objectId,_that.objectLabel,_that.objectTitle,_that.objectStatus,_that.action,_that.workerId,_that.workerName,_that.deviceId,_that.receivedAt,_that.deepLink,_that.reasonCode,_that.detail,_that.clientTime,_that.acknowledgedAt,_that.payload);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SyncConflict implements SyncConflict {
  const _SyncConflict({required this.clientMutationId, required this.objectType, required this.objectId, this.objectLabel = '', this.objectTitle = '', this.objectStatus = '', required this.action, this.workerId = '', this.workerName = '', this.deviceId = '', required this.receivedAt, this.deepLink = '', this.reasonCode, this.detail, this.clientTime, this.acknowledgedAt,  Map<String, dynamic>? payload}): _payload = payload;
  factory _SyncConflict.fromJson(Map<String, dynamic> json) => _$SyncConflictFromJson(json);

@override final  String clientMutationId;
@override final  String objectType;
@override final  String objectId;
@override@JsonKey() final  String objectLabel;
@override@JsonKey() final  String objectTitle;
@override@JsonKey() final  String objectStatus;
@override final  String action;
@override@JsonKey() final  String workerId;
@override@JsonKey() final  String workerName;
@override@JsonKey() final  String deviceId;
@override final  DateTime receivedAt;
@override@JsonKey() final  String deepLink;
@override final  String? reasonCode;
@override final  String? detail;
@override final  DateTime? clientTime;
@override final  DateTime? acknowledgedAt;
 final  Map<String, dynamic>? _payload;
@override Map<String, dynamic>? get payload {
  final value = _payload;
  if (value == null) return null;
  if (_payload is EqualUnmodifiableMapView) return _payload;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of SyncConflict
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SyncConflictCopyWith<_SyncConflict> get copyWith => __$SyncConflictCopyWithImpl<_SyncConflict>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SyncConflictToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SyncConflict&&(identical(other.clientMutationId, clientMutationId) || other.clientMutationId == clientMutationId)&&(identical(other.objectType, objectType) || other.objectType == objectType)&&(identical(other.objectId, objectId) || other.objectId == objectId)&&(identical(other.objectLabel, objectLabel) || other.objectLabel == objectLabel)&&(identical(other.objectTitle, objectTitle) || other.objectTitle == objectTitle)&&(identical(other.objectStatus, objectStatus) || other.objectStatus == objectStatus)&&(identical(other.action, action) || other.action == action)&&(identical(other.workerId, workerId) || other.workerId == workerId)&&(identical(other.workerName, workerName) || other.workerName == workerName)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.receivedAt, receivedAt) || other.receivedAt == receivedAt)&&(identical(other.deepLink, deepLink) || other.deepLink == deepLink)&&(identical(other.reasonCode, reasonCode) || other.reasonCode == reasonCode)&&(identical(other.detail, detail) || other.detail == detail)&&(identical(other.clientTime, clientTime) || other.clientTime == clientTime)&&(identical(other.acknowledgedAt, acknowledgedAt) || other.acknowledgedAt == acknowledgedAt)&&const DeepCollectionEquality().equals(other.payload, _payload));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,clientMutationId,objectType,objectId,objectLabel,objectTitle,objectStatus,action,workerId,workerName,deviceId,receivedAt,deepLink,reasonCode,detail,clientTime,acknowledgedAt,const DeepCollectionEquality().hash(_payload));
}

@override
String toString() {
    return 'SyncConflict(clientMutationId: $clientMutationId, objectType: $objectType, objectId: $objectId, objectLabel: $objectLabel, objectTitle: $objectTitle, objectStatus: $objectStatus, action: $action, workerId: $workerId, workerName: $workerName, deviceId: $deviceId, receivedAt: $receivedAt, deepLink: $deepLink, reasonCode: $reasonCode, detail: $detail, clientTime: $clientTime, acknowledgedAt: $acknowledgedAt, payload: $payload)';
}


}

/// @nodoc
abstract mixin class _$SyncConflictCopyWith<$Res> implements $SyncConflictCopyWith<$Res> {
  factory _$SyncConflictCopyWith(_SyncConflict value, $Res Function(_SyncConflict) _then) = __$SyncConflictCopyWithImpl;
@override @useResult
$Res call({
 String clientMutationId, String objectType, String objectId, String objectLabel, String objectTitle, String objectStatus, String action, String workerId, String workerName, String deviceId, DateTime receivedAt, String deepLink, String? reasonCode, String? detail, DateTime? clientTime, DateTime? acknowledgedAt, Map<String, dynamic>? payload
});




}
/// @nodoc
class __$SyncConflictCopyWithImpl<$Res>
    implements _$SyncConflictCopyWith<$Res> {
  __$SyncConflictCopyWithImpl(this._self, this._then);

  final _SyncConflict _self;
  final $Res Function(_SyncConflict) _then;

/// Create a copy of SyncConflict
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? clientMutationId = null,Object? objectType = null,Object? objectId = null,Object? objectLabel = null,Object? objectTitle = null,Object? objectStatus = null,Object? action = null,Object? workerId = null,Object? workerName = null,Object? deviceId = null,Object? receivedAt = null,Object? deepLink = null,Object? reasonCode = freezed,Object? detail = freezed,Object? clientTime = freezed,Object? acknowledgedAt = freezed,Object? payload = freezed,}) {
  return _then(_SyncConflict(
clientMutationId: null == clientMutationId ? _self.clientMutationId : clientMutationId // ignore: cast_nullable_to_non_nullable
as String,objectType: null == objectType ? _self.objectType : objectType // ignore: cast_nullable_to_non_nullable
as String,objectId: null == objectId ? _self.objectId : objectId // ignore: cast_nullable_to_non_nullable
as String,objectLabel: null == objectLabel ? _self.objectLabel : objectLabel // ignore: cast_nullable_to_non_nullable
as String,objectTitle: null == objectTitle ? _self.objectTitle : objectTitle // ignore: cast_nullable_to_non_nullable
as String,objectStatus: null == objectStatus ? _self.objectStatus : objectStatus // ignore: cast_nullable_to_non_nullable
as String,action: null == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as String,workerId: null == workerId ? _self.workerId : workerId // ignore: cast_nullable_to_non_nullable
as String,workerName: null == workerName ? _self.workerName : workerName // ignore: cast_nullable_to_non_nullable
as String,deviceId: null == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String,receivedAt: null == receivedAt ? _self.receivedAt : receivedAt // ignore: cast_nullable_to_non_nullable
as DateTime,deepLink: null == deepLink ? _self.deepLink : deepLink // ignore: cast_nullable_to_non_nullable
as String,reasonCode: freezed == reasonCode ? _self.reasonCode : reasonCode // ignore: cast_nullable_to_non_nullable
as String?,detail: freezed == detail ? _self.detail : detail // ignore: cast_nullable_to_non_nullable
as String?,clientTime: freezed == clientTime ? _self.clientTime : clientTime // ignore: cast_nullable_to_non_nullable
as DateTime?,acknowledgedAt: freezed == acknowledgedAt ? _self.acknowledgedAt : acknowledgedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,payload: freezed == payload ? _self._payload : payload // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}

// dart format on
