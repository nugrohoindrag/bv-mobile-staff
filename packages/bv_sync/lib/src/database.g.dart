// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $WorkItemsTable extends WorkItems
    with TableInfo<$WorkItemsTable, WorkItemRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $WorkItemsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _objectTypeMeta = const VerificationMeta(
    'objectType',
  );
  @override
  late final GeneratedColumn<String> objectType = GeneratedColumn<String>(
    'object_type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _kindMeta = const VerificationMeta('kind');
  @override
  late final GeneratedColumn<String> kind = GeneratedColumn<String>(
    'kind',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
    'status',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _priorityMeta = const VerificationMeta(
    'priority',
  );
  @override
  late final GeneratedColumn<String> priority = GeneratedColumn<String>(
    'priority',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _numberMeta = const VerificationMeta('number');
  @override
  late final GeneratedColumn<String> number = GeneratedColumn<String>(
    'number',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _dueAtMeta = const VerificationMeta('dueAt');
  @override
  late final GeneratedColumn<DateTime> dueAt = GeneratedColumn<DateTime>(
    'due_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _scheduledStartAtMeta = const VerificationMeta(
    'scheduledStartAt',
  );
  @override
  late final GeneratedColumn<DateTime> scheduledStartAt =
      GeneratedColumn<DateTime>(
        'scheduled_start_at',
        aliasedName,
        true,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _isOverdueMeta = const VerificationMeta(
    'isOverdue',
  );
  @override
  late final GeneratedColumn<bool> isOverdue = GeneratedColumn<bool>(
    'is_overdue',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_overdue" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _assigneeUserIdMeta = const VerificationMeta(
    'assigneeUserId',
  );
  @override
  late final GeneratedColumn<String> assigneeUserId = GeneratedColumn<String>(
    'assignee_user_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _assigneeTeamIdMeta = const VerificationMeta(
    'assigneeTeamId',
  );
  @override
  late final GeneratedColumn<String> assigneeTeamId = GeneratedColumn<String>(
    'assignee_team_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  late final GeneratedColumnWithTypeConverter<Map<String, dynamic>, String>
  json = GeneratedColumn<String>(
    'json',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  ).withConverter<Map<String, dynamic>>($WorkItemsTable.$converterjson);
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _syncStateMeta = const VerificationMeta(
    'syncState',
  );
  @override
  late final GeneratedColumn<String> syncState = GeneratedColumn<String>(
    'sync_state',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('synced'),
  );
  static const VerificationMeta _syncMessageMeta = const VerificationMeta(
    'syncMessage',
  );
  @override
  late final GeneratedColumn<String> syncMessage = GeneratedColumn<String>(
    'sync_message',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    objectType,
    kind,
    status,
    priority,
    title,
    number,
    dueAt,
    scheduledStartAt,
    isOverdue,
    assigneeUserId,
    assigneeTeamId,
    json,
    updatedAt,
    syncState,
    syncMessage,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'work_items';
  @override
  VerificationContext validateIntegrity(
    Insertable<WorkItemRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('object_type')) {
      context.handle(
        _objectTypeMeta,
        objectType.isAcceptableOrUnknown(data['object_type']!, _objectTypeMeta),
      );
    } else if (isInserting) {
      context.missing(_objectTypeMeta);
    }
    if (data.containsKey('kind')) {
      context.handle(
        _kindMeta,
        kind.isAcceptableOrUnknown(data['kind']!, _kindMeta),
      );
    } else if (isInserting) {
      context.missing(_kindMeta);
    }
    if (data.containsKey('status')) {
      context.handle(
        _statusMeta,
        status.isAcceptableOrUnknown(data['status']!, _statusMeta),
      );
    } else if (isInserting) {
      context.missing(_statusMeta);
    }
    if (data.containsKey('priority')) {
      context.handle(
        _priorityMeta,
        priority.isAcceptableOrUnknown(data['priority']!, _priorityMeta),
      );
    } else if (isInserting) {
      context.missing(_priorityMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('number')) {
      context.handle(
        _numberMeta,
        number.isAcceptableOrUnknown(data['number']!, _numberMeta),
      );
    } else if (isInserting) {
      context.missing(_numberMeta);
    }
    if (data.containsKey('due_at')) {
      context.handle(
        _dueAtMeta,
        dueAt.isAcceptableOrUnknown(data['due_at']!, _dueAtMeta),
      );
    }
    if (data.containsKey('scheduled_start_at')) {
      context.handle(
        _scheduledStartAtMeta,
        scheduledStartAt.isAcceptableOrUnknown(
          data['scheduled_start_at']!,
          _scheduledStartAtMeta,
        ),
      );
    }
    if (data.containsKey('is_overdue')) {
      context.handle(
        _isOverdueMeta,
        isOverdue.isAcceptableOrUnknown(data['is_overdue']!, _isOverdueMeta),
      );
    }
    if (data.containsKey('assignee_user_id')) {
      context.handle(
        _assigneeUserIdMeta,
        assigneeUserId.isAcceptableOrUnknown(
          data['assignee_user_id']!,
          _assigneeUserIdMeta,
        ),
      );
    }
    if (data.containsKey('assignee_team_id')) {
      context.handle(
        _assigneeTeamIdMeta,
        assigneeTeamId.isAcceptableOrUnknown(
          data['assignee_team_id']!,
          _assigneeTeamIdMeta,
        ),
      );
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (data.containsKey('sync_state')) {
      context.handle(
        _syncStateMeta,
        syncState.isAcceptableOrUnknown(data['sync_state']!, _syncStateMeta),
      );
    }
    if (data.containsKey('sync_message')) {
      context.handle(
        _syncMessageMeta,
        syncMessage.isAcceptableOrUnknown(
          data['sync_message']!,
          _syncMessageMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  WorkItemRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return WorkItemRow(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      objectType: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}object_type'],
      )!,
      kind: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}kind'],
      )!,
      status: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}status'],
      )!,
      priority: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}priority'],
      )!,
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      )!,
      number: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}number'],
      )!,
      dueAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}due_at'],
      ),
      scheduledStartAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}scheduled_start_at'],
      ),
      isOverdue: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_overdue'],
      )!,
      assigneeUserId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}assignee_user_id'],
      ),
      assigneeTeamId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}assignee_team_id'],
      ),
      json: $WorkItemsTable.$converterjson.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}json'],
        )!,
      ),
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
      syncState: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}sync_state'],
      )!,
      syncMessage: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}sync_message'],
      ),
    );
  }

  @override
  $WorkItemsTable createAlias(String alias) {
    return $WorkItemsTable(attachedDatabase, alias);
  }

  static TypeConverter<Map<String, dynamic>, String> $converterjson =
      const JsonMapConverter();
}

class WorkItemRow extends DataClass implements Insertable<WorkItemRow> {
  final String id;
  final String objectType;

  /// task | work_order | cleaning | patrol | inspection
  final String kind;
  final String status;
  final String priority;
  final String title;
  final String number;
  final DateTime? dueAt;
  final DateTime? scheduledStartAt;
  final bool isOverdue;
  final String? assigneeUserId;
  final String? assigneeTeamId;
  final Map<String, dynamic> json;
  final DateTime updatedAt;

  /// synced | pending | failed | conflict (ringkasan dari mutasi objek ini)
  final String syncState;
  final String? syncMessage;
  const WorkItemRow({
    required this.id,
    required this.objectType,
    required this.kind,
    required this.status,
    required this.priority,
    required this.title,
    required this.number,
    this.dueAt,
    this.scheduledStartAt,
    required this.isOverdue,
    this.assigneeUserId,
    this.assigneeTeamId,
    required this.json,
    required this.updatedAt,
    required this.syncState,
    this.syncMessage,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['object_type'] = Variable<String>(objectType);
    map['kind'] = Variable<String>(kind);
    map['status'] = Variable<String>(status);
    map['priority'] = Variable<String>(priority);
    map['title'] = Variable<String>(title);
    map['number'] = Variable<String>(number);
    if (!nullToAbsent || dueAt != null) {
      map['due_at'] = Variable<DateTime>(dueAt);
    }
    if (!nullToAbsent || scheduledStartAt != null) {
      map['scheduled_start_at'] = Variable<DateTime>(scheduledStartAt);
    }
    map['is_overdue'] = Variable<bool>(isOverdue);
    if (!nullToAbsent || assigneeUserId != null) {
      map['assignee_user_id'] = Variable<String>(assigneeUserId);
    }
    if (!nullToAbsent || assigneeTeamId != null) {
      map['assignee_team_id'] = Variable<String>(assigneeTeamId);
    }
    {
      map['json'] = Variable<String>(
        $WorkItemsTable.$converterjson.toSql(json),
      );
    }
    map['updated_at'] = Variable<DateTime>(updatedAt);
    map['sync_state'] = Variable<String>(syncState);
    if (!nullToAbsent || syncMessage != null) {
      map['sync_message'] = Variable<String>(syncMessage);
    }
    return map;
  }

  WorkItemsCompanion toCompanion(bool nullToAbsent) {
    return WorkItemsCompanion(
      id: Value(id),
      objectType: Value(objectType),
      kind: Value(kind),
      status: Value(status),
      priority: Value(priority),
      title: Value(title),
      number: Value(number),
      dueAt: dueAt == null && nullToAbsent
          ? const Value.absent()
          : Value(dueAt),
      scheduledStartAt: scheduledStartAt == null && nullToAbsent
          ? const Value.absent()
          : Value(scheduledStartAt),
      isOverdue: Value(isOverdue),
      assigneeUserId: assigneeUserId == null && nullToAbsent
          ? const Value.absent()
          : Value(assigneeUserId),
      assigneeTeamId: assigneeTeamId == null && nullToAbsent
          ? const Value.absent()
          : Value(assigneeTeamId),
      json: Value(json),
      updatedAt: Value(updatedAt),
      syncState: Value(syncState),
      syncMessage: syncMessage == null && nullToAbsent
          ? const Value.absent()
          : Value(syncMessage),
    );
  }

  factory WorkItemRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return WorkItemRow(
      id: serializer.fromJson<String>(json['id']),
      objectType: serializer.fromJson<String>(json['objectType']),
      kind: serializer.fromJson<String>(json['kind']),
      status: serializer.fromJson<String>(json['status']),
      priority: serializer.fromJson<String>(json['priority']),
      title: serializer.fromJson<String>(json['title']),
      number: serializer.fromJson<String>(json['number']),
      dueAt: serializer.fromJson<DateTime?>(json['dueAt']),
      scheduledStartAt: serializer.fromJson<DateTime?>(
        json['scheduledStartAt'],
      ),
      isOverdue: serializer.fromJson<bool>(json['isOverdue']),
      assigneeUserId: serializer.fromJson<String?>(json['assigneeUserId']),
      assigneeTeamId: serializer.fromJson<String?>(json['assigneeTeamId']),
      json: serializer.fromJson<Map<String, dynamic>>(json['json']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      syncState: serializer.fromJson<String>(json['syncState']),
      syncMessage: serializer.fromJson<String?>(json['syncMessage']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'objectType': serializer.toJson<String>(objectType),
      'kind': serializer.toJson<String>(kind),
      'status': serializer.toJson<String>(status),
      'priority': serializer.toJson<String>(priority),
      'title': serializer.toJson<String>(title),
      'number': serializer.toJson<String>(number),
      'dueAt': serializer.toJson<DateTime?>(dueAt),
      'scheduledStartAt': serializer.toJson<DateTime?>(scheduledStartAt),
      'isOverdue': serializer.toJson<bool>(isOverdue),
      'assigneeUserId': serializer.toJson<String?>(assigneeUserId),
      'assigneeTeamId': serializer.toJson<String?>(assigneeTeamId),
      'json': serializer.toJson<Map<String, dynamic>>(json),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'syncState': serializer.toJson<String>(syncState),
      'syncMessage': serializer.toJson<String?>(syncMessage),
    };
  }

  WorkItemRow copyWith({
    String? id,
    String? objectType,
    String? kind,
    String? status,
    String? priority,
    String? title,
    String? number,
    Value<DateTime?> dueAt = const Value.absent(),
    Value<DateTime?> scheduledStartAt = const Value.absent(),
    bool? isOverdue,
    Value<String?> assigneeUserId = const Value.absent(),
    Value<String?> assigneeTeamId = const Value.absent(),
    Map<String, dynamic>? json,
    DateTime? updatedAt,
    String? syncState,
    Value<String?> syncMessage = const Value.absent(),
  }) => WorkItemRow(
    id: id ?? this.id,
    objectType: objectType ?? this.objectType,
    kind: kind ?? this.kind,
    status: status ?? this.status,
    priority: priority ?? this.priority,
    title: title ?? this.title,
    number: number ?? this.number,
    dueAt: dueAt.present ? dueAt.value : this.dueAt,
    scheduledStartAt: scheduledStartAt.present
        ? scheduledStartAt.value
        : this.scheduledStartAt,
    isOverdue: isOverdue ?? this.isOverdue,
    assigneeUserId: assigneeUserId.present
        ? assigneeUserId.value
        : this.assigneeUserId,
    assigneeTeamId: assigneeTeamId.present
        ? assigneeTeamId.value
        : this.assigneeTeamId,
    json: json ?? this.json,
    updatedAt: updatedAt ?? this.updatedAt,
    syncState: syncState ?? this.syncState,
    syncMessage: syncMessage.present ? syncMessage.value : this.syncMessage,
  );
  WorkItemRow copyWithCompanion(WorkItemsCompanion data) {
    return WorkItemRow(
      id: data.id.present ? data.id.value : this.id,
      objectType: data.objectType.present
          ? data.objectType.value
          : this.objectType,
      kind: data.kind.present ? data.kind.value : this.kind,
      status: data.status.present ? data.status.value : this.status,
      priority: data.priority.present ? data.priority.value : this.priority,
      title: data.title.present ? data.title.value : this.title,
      number: data.number.present ? data.number.value : this.number,
      dueAt: data.dueAt.present ? data.dueAt.value : this.dueAt,
      scheduledStartAt: data.scheduledStartAt.present
          ? data.scheduledStartAt.value
          : this.scheduledStartAt,
      isOverdue: data.isOverdue.present ? data.isOverdue.value : this.isOverdue,
      assigneeUserId: data.assigneeUserId.present
          ? data.assigneeUserId.value
          : this.assigneeUserId,
      assigneeTeamId: data.assigneeTeamId.present
          ? data.assigneeTeamId.value
          : this.assigneeTeamId,
      json: data.json.present ? data.json.value : this.json,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      syncState: data.syncState.present ? data.syncState.value : this.syncState,
      syncMessage: data.syncMessage.present
          ? data.syncMessage.value
          : this.syncMessage,
    );
  }

  @override
  String toString() {
    return (StringBuffer('WorkItemRow(')
          ..write('id: $id, ')
          ..write('objectType: $objectType, ')
          ..write('kind: $kind, ')
          ..write('status: $status, ')
          ..write('priority: $priority, ')
          ..write('title: $title, ')
          ..write('number: $number, ')
          ..write('dueAt: $dueAt, ')
          ..write('scheduledStartAt: $scheduledStartAt, ')
          ..write('isOverdue: $isOverdue, ')
          ..write('assigneeUserId: $assigneeUserId, ')
          ..write('assigneeTeamId: $assigneeTeamId, ')
          ..write('json: $json, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('syncState: $syncState, ')
          ..write('syncMessage: $syncMessage')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    objectType,
    kind,
    status,
    priority,
    title,
    number,
    dueAt,
    scheduledStartAt,
    isOverdue,
    assigneeUserId,
    assigneeTeamId,
    json,
    updatedAt,
    syncState,
    syncMessage,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is WorkItemRow &&
          other.id == this.id &&
          other.objectType == this.objectType &&
          other.kind == this.kind &&
          other.status == this.status &&
          other.priority == this.priority &&
          other.title == this.title &&
          other.number == this.number &&
          other.dueAt == this.dueAt &&
          other.scheduledStartAt == this.scheduledStartAt &&
          other.isOverdue == this.isOverdue &&
          other.assigneeUserId == this.assigneeUserId &&
          other.assigneeTeamId == this.assigneeTeamId &&
          other.json == this.json &&
          other.updatedAt == this.updatedAt &&
          other.syncState == this.syncState &&
          other.syncMessage == this.syncMessage);
}

class WorkItemsCompanion extends UpdateCompanion<WorkItemRow> {
  final Value<String> id;
  final Value<String> objectType;
  final Value<String> kind;
  final Value<String> status;
  final Value<String> priority;
  final Value<String> title;
  final Value<String> number;
  final Value<DateTime?> dueAt;
  final Value<DateTime?> scheduledStartAt;
  final Value<bool> isOverdue;
  final Value<String?> assigneeUserId;
  final Value<String?> assigneeTeamId;
  final Value<Map<String, dynamic>> json;
  final Value<DateTime> updatedAt;
  final Value<String> syncState;
  final Value<String?> syncMessage;
  final Value<int> rowid;
  const WorkItemsCompanion({
    this.id = const Value.absent(),
    this.objectType = const Value.absent(),
    this.kind = const Value.absent(),
    this.status = const Value.absent(),
    this.priority = const Value.absent(),
    this.title = const Value.absent(),
    this.number = const Value.absent(),
    this.dueAt = const Value.absent(),
    this.scheduledStartAt = const Value.absent(),
    this.isOverdue = const Value.absent(),
    this.assigneeUserId = const Value.absent(),
    this.assigneeTeamId = const Value.absent(),
    this.json = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.syncState = const Value.absent(),
    this.syncMessage = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  WorkItemsCompanion.insert({
    required String id,
    required String objectType,
    required String kind,
    required String status,
    required String priority,
    required String title,
    required String number,
    this.dueAt = const Value.absent(),
    this.scheduledStartAt = const Value.absent(),
    this.isOverdue = const Value.absent(),
    this.assigneeUserId = const Value.absent(),
    this.assigneeTeamId = const Value.absent(),
    required Map<String, dynamic> json,
    required DateTime updatedAt,
    this.syncState = const Value.absent(),
    this.syncMessage = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       objectType = Value(objectType),
       kind = Value(kind),
       status = Value(status),
       priority = Value(priority),
       title = Value(title),
       number = Value(number),
       json = Value(json),
       updatedAt = Value(updatedAt);
  static Insertable<WorkItemRow> custom({
    Expression<String>? id,
    Expression<String>? objectType,
    Expression<String>? kind,
    Expression<String>? status,
    Expression<String>? priority,
    Expression<String>? title,
    Expression<String>? number,
    Expression<DateTime>? dueAt,
    Expression<DateTime>? scheduledStartAt,
    Expression<bool>? isOverdue,
    Expression<String>? assigneeUserId,
    Expression<String>? assigneeTeamId,
    Expression<String>? json,
    Expression<DateTime>? updatedAt,
    Expression<String>? syncState,
    Expression<String>? syncMessage,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (objectType != null) 'object_type': objectType,
      if (kind != null) 'kind': kind,
      if (status != null) 'status': status,
      if (priority != null) 'priority': priority,
      if (title != null) 'title': title,
      if (number != null) 'number': number,
      if (dueAt != null) 'due_at': dueAt,
      if (scheduledStartAt != null) 'scheduled_start_at': scheduledStartAt,
      if (isOverdue != null) 'is_overdue': isOverdue,
      if (assigneeUserId != null) 'assignee_user_id': assigneeUserId,
      if (assigneeTeamId != null) 'assignee_team_id': assigneeTeamId,
      if (json != null) 'json': json,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (syncState != null) 'sync_state': syncState,
      if (syncMessage != null) 'sync_message': syncMessage,
      if (rowid != null) 'rowid': rowid,
    });
  }

  WorkItemsCompanion copyWith({
    Value<String>? id,
    Value<String>? objectType,
    Value<String>? kind,
    Value<String>? status,
    Value<String>? priority,
    Value<String>? title,
    Value<String>? number,
    Value<DateTime?>? dueAt,
    Value<DateTime?>? scheduledStartAt,
    Value<bool>? isOverdue,
    Value<String?>? assigneeUserId,
    Value<String?>? assigneeTeamId,
    Value<Map<String, dynamic>>? json,
    Value<DateTime>? updatedAt,
    Value<String>? syncState,
    Value<String?>? syncMessage,
    Value<int>? rowid,
  }) {
    return WorkItemsCompanion(
      id: id ?? this.id,
      objectType: objectType ?? this.objectType,
      kind: kind ?? this.kind,
      status: status ?? this.status,
      priority: priority ?? this.priority,
      title: title ?? this.title,
      number: number ?? this.number,
      dueAt: dueAt ?? this.dueAt,
      scheduledStartAt: scheduledStartAt ?? this.scheduledStartAt,
      isOverdue: isOverdue ?? this.isOverdue,
      assigneeUserId: assigneeUserId ?? this.assigneeUserId,
      assigneeTeamId: assigneeTeamId ?? this.assigneeTeamId,
      json: json ?? this.json,
      updatedAt: updatedAt ?? this.updatedAt,
      syncState: syncState ?? this.syncState,
      syncMessage: syncMessage ?? this.syncMessage,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (objectType.present) {
      map['object_type'] = Variable<String>(objectType.value);
    }
    if (kind.present) {
      map['kind'] = Variable<String>(kind.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (priority.present) {
      map['priority'] = Variable<String>(priority.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (number.present) {
      map['number'] = Variable<String>(number.value);
    }
    if (dueAt.present) {
      map['due_at'] = Variable<DateTime>(dueAt.value);
    }
    if (scheduledStartAt.present) {
      map['scheduled_start_at'] = Variable<DateTime>(scheduledStartAt.value);
    }
    if (isOverdue.present) {
      map['is_overdue'] = Variable<bool>(isOverdue.value);
    }
    if (assigneeUserId.present) {
      map['assignee_user_id'] = Variable<String>(assigneeUserId.value);
    }
    if (assigneeTeamId.present) {
      map['assignee_team_id'] = Variable<String>(assigneeTeamId.value);
    }
    if (json.present) {
      map['json'] = Variable<String>(
        $WorkItemsTable.$converterjson.toSql(json.value),
      );
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (syncState.present) {
      map['sync_state'] = Variable<String>(syncState.value);
    }
    if (syncMessage.present) {
      map['sync_message'] = Variable<String>(syncMessage.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('WorkItemsCompanion(')
          ..write('id: $id, ')
          ..write('objectType: $objectType, ')
          ..write('kind: $kind, ')
          ..write('status: $status, ')
          ..write('priority: $priority, ')
          ..write('title: $title, ')
          ..write('number: $number, ')
          ..write('dueAt: $dueAt, ')
          ..write('scheduledStartAt: $scheduledStartAt, ')
          ..write('isOverdue: $isOverdue, ')
          ..write('assigneeUserId: $assigneeUserId, ')
          ..write('assigneeTeamId: $assigneeTeamId, ')
          ..write('json: $json, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('syncState: $syncState, ')
          ..write('syncMessage: $syncMessage, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ChecklistRunsTable extends ChecklistRuns
    with TableInfo<$ChecklistRunsTable, ChecklistRunRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ChecklistRunsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _objectTypeMeta = const VerificationMeta(
    'objectType',
  );
  @override
  late final GeneratedColumn<String> objectType = GeneratedColumn<String>(
    'object_type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _objectIdMeta = const VerificationMeta(
    'objectId',
  );
  @override
  late final GeneratedColumn<String> objectId = GeneratedColumn<String>(
    'object_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  late final GeneratedColumnWithTypeConverter<Map<String, dynamic>, String>
  json = GeneratedColumn<String>(
    'json',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  ).withConverter<Map<String, dynamic>>($ChecklistRunsTable.$converterjson);
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    objectType,
    objectId,
    json,
    updatedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'checklist_runs';
  @override
  VerificationContext validateIntegrity(
    Insertable<ChecklistRunRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('object_type')) {
      context.handle(
        _objectTypeMeta,
        objectType.isAcceptableOrUnknown(data['object_type']!, _objectTypeMeta),
      );
    } else if (isInserting) {
      context.missing(_objectTypeMeta);
    }
    if (data.containsKey('object_id')) {
      context.handle(
        _objectIdMeta,
        objectId.isAcceptableOrUnknown(data['object_id']!, _objectIdMeta),
      );
    } else if (isInserting) {
      context.missing(_objectIdMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ChecklistRunRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ChecklistRunRow(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      objectType: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}object_type'],
      )!,
      objectId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}object_id'],
      )!,
      json: $ChecklistRunsTable.$converterjson.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}json'],
        )!,
      ),
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
    );
  }

  @override
  $ChecklistRunsTable createAlias(String alias) {
    return $ChecklistRunsTable(attachedDatabase, alias);
  }

  static TypeConverter<Map<String, dynamic>, String> $converterjson =
      const JsonMapConverter();
}

class ChecklistRunRow extends DataClass implements Insertable<ChecklistRunRow> {
  final String id;
  final String objectType;
  final String objectId;
  final Map<String, dynamic> json;
  final DateTime updatedAt;
  const ChecklistRunRow({
    required this.id,
    required this.objectType,
    required this.objectId,
    required this.json,
    required this.updatedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['object_type'] = Variable<String>(objectType);
    map['object_id'] = Variable<String>(objectId);
    {
      map['json'] = Variable<String>(
        $ChecklistRunsTable.$converterjson.toSql(json),
      );
    }
    map['updated_at'] = Variable<DateTime>(updatedAt);
    return map;
  }

  ChecklistRunsCompanion toCompanion(bool nullToAbsent) {
    return ChecklistRunsCompanion(
      id: Value(id),
      objectType: Value(objectType),
      objectId: Value(objectId),
      json: Value(json),
      updatedAt: Value(updatedAt),
    );
  }

  factory ChecklistRunRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ChecklistRunRow(
      id: serializer.fromJson<String>(json['id']),
      objectType: serializer.fromJson<String>(json['objectType']),
      objectId: serializer.fromJson<String>(json['objectId']),
      json: serializer.fromJson<Map<String, dynamic>>(json['json']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'objectType': serializer.toJson<String>(objectType),
      'objectId': serializer.toJson<String>(objectId),
      'json': serializer.toJson<Map<String, dynamic>>(json),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  ChecklistRunRow copyWith({
    String? id,
    String? objectType,
    String? objectId,
    Map<String, dynamic>? json,
    DateTime? updatedAt,
  }) => ChecklistRunRow(
    id: id ?? this.id,
    objectType: objectType ?? this.objectType,
    objectId: objectId ?? this.objectId,
    json: json ?? this.json,
    updatedAt: updatedAt ?? this.updatedAt,
  );
  ChecklistRunRow copyWithCompanion(ChecklistRunsCompanion data) {
    return ChecklistRunRow(
      id: data.id.present ? data.id.value : this.id,
      objectType: data.objectType.present
          ? data.objectType.value
          : this.objectType,
      objectId: data.objectId.present ? data.objectId.value : this.objectId,
      json: data.json.present ? data.json.value : this.json,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ChecklistRunRow(')
          ..write('id: $id, ')
          ..write('objectType: $objectType, ')
          ..write('objectId: $objectId, ')
          ..write('json: $json, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, objectType, objectId, json, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ChecklistRunRow &&
          other.id == this.id &&
          other.objectType == this.objectType &&
          other.objectId == this.objectId &&
          other.json == this.json &&
          other.updatedAt == this.updatedAt);
}

class ChecklistRunsCompanion extends UpdateCompanion<ChecklistRunRow> {
  final Value<String> id;
  final Value<String> objectType;
  final Value<String> objectId;
  final Value<Map<String, dynamic>> json;
  final Value<DateTime> updatedAt;
  final Value<int> rowid;
  const ChecklistRunsCompanion({
    this.id = const Value.absent(),
    this.objectType = const Value.absent(),
    this.objectId = const Value.absent(),
    this.json = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ChecklistRunsCompanion.insert({
    required String id,
    required String objectType,
    required String objectId,
    required Map<String, dynamic> json,
    required DateTime updatedAt,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       objectType = Value(objectType),
       objectId = Value(objectId),
       json = Value(json),
       updatedAt = Value(updatedAt);
  static Insertable<ChecklistRunRow> custom({
    Expression<String>? id,
    Expression<String>? objectType,
    Expression<String>? objectId,
    Expression<String>? json,
    Expression<DateTime>? updatedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (objectType != null) 'object_type': objectType,
      if (objectId != null) 'object_id': objectId,
      if (json != null) 'json': json,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ChecklistRunsCompanion copyWith({
    Value<String>? id,
    Value<String>? objectType,
    Value<String>? objectId,
    Value<Map<String, dynamic>>? json,
    Value<DateTime>? updatedAt,
    Value<int>? rowid,
  }) {
    return ChecklistRunsCompanion(
      id: id ?? this.id,
      objectType: objectType ?? this.objectType,
      objectId: objectId ?? this.objectId,
      json: json ?? this.json,
      updatedAt: updatedAt ?? this.updatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (objectType.present) {
      map['object_type'] = Variable<String>(objectType.value);
    }
    if (objectId.present) {
      map['object_id'] = Variable<String>(objectId.value);
    }
    if (json.present) {
      map['json'] = Variable<String>(
        $ChecklistRunsTable.$converterjson.toSql(json.value),
      );
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ChecklistRunsCompanion(')
          ..write('id: $id, ')
          ..write('objectType: $objectType, ')
          ..write('objectId: $objectId, ')
          ..write('json: $json, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $PatrolCheckpointsTable extends PatrolCheckpoints
    with TableInfo<$PatrolCheckpointsTable, PatrolCheckpointRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PatrolCheckpointsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _taskIdMeta = const VerificationMeta('taskId');
  @override
  late final GeneratedColumn<String> taskId = GeneratedColumn<String>(
    'task_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _checkpointIdMeta = const VerificationMeta(
    'checkpointId',
  );
  @override
  late final GeneratedColumn<String> checkpointId = GeneratedColumn<String>(
    'checkpoint_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _qrCodeMeta = const VerificationMeta('qrCode');
  @override
  late final GeneratedColumn<String> qrCode = GeneratedColumn<String>(
    'qr_code',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _sortOrderMeta = const VerificationMeta(
    'sortOrder',
  );
  @override
  late final GeneratedColumn<int> sortOrder = GeneratedColumn<int>(
    'sort_order',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
    'status',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('pending'),
  );
  @override
  late final GeneratedColumnWithTypeConverter<Map<String, dynamic>, String>
  json = GeneratedColumn<String>(
    'json',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  ).withConverter<Map<String, dynamic>>($PatrolCheckpointsTable.$converterjson);
  @override
  List<GeneratedColumn> get $columns => [
    id,
    taskId,
    checkpointId,
    qrCode,
    sortOrder,
    status,
    json,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'patrol_checkpoints';
  @override
  VerificationContext validateIntegrity(
    Insertable<PatrolCheckpointRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('task_id')) {
      context.handle(
        _taskIdMeta,
        taskId.isAcceptableOrUnknown(data['task_id']!, _taskIdMeta),
      );
    } else if (isInserting) {
      context.missing(_taskIdMeta);
    }
    if (data.containsKey('checkpoint_id')) {
      context.handle(
        _checkpointIdMeta,
        checkpointId.isAcceptableOrUnknown(
          data['checkpoint_id']!,
          _checkpointIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_checkpointIdMeta);
    }
    if (data.containsKey('qr_code')) {
      context.handle(
        _qrCodeMeta,
        qrCode.isAcceptableOrUnknown(data['qr_code']!, _qrCodeMeta),
      );
    }
    if (data.containsKey('sort_order')) {
      context.handle(
        _sortOrderMeta,
        sortOrder.isAcceptableOrUnknown(data['sort_order']!, _sortOrderMeta),
      );
    }
    if (data.containsKey('status')) {
      context.handle(
        _statusMeta,
        status.isAcceptableOrUnknown(data['status']!, _statusMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PatrolCheckpointRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PatrolCheckpointRow(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      taskId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}task_id'],
      )!,
      checkpointId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}checkpoint_id'],
      )!,
      qrCode: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}qr_code'],
      ),
      sortOrder: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}sort_order'],
      )!,
      status: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}status'],
      )!,
      json: $PatrolCheckpointsTable.$converterjson.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}json'],
        )!,
      ),
    );
  }

  @override
  $PatrolCheckpointsTable createAlias(String alias) {
    return $PatrolCheckpointsTable(attachedDatabase, alias);
  }

  static TypeConverter<Map<String, dynamic>, String> $converterjson =
      const JsonMapConverter();
}

class PatrolCheckpointRow extends DataClass
    implements Insertable<PatrolCheckpointRow> {
  final String id;
  final String taskId;
  final String checkpointId;
  final String? qrCode;
  final int sortOrder;
  final String status;
  final Map<String, dynamic> json;
  const PatrolCheckpointRow({
    required this.id,
    required this.taskId,
    required this.checkpointId,
    this.qrCode,
    required this.sortOrder,
    required this.status,
    required this.json,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['task_id'] = Variable<String>(taskId);
    map['checkpoint_id'] = Variable<String>(checkpointId);
    if (!nullToAbsent || qrCode != null) {
      map['qr_code'] = Variable<String>(qrCode);
    }
    map['sort_order'] = Variable<int>(sortOrder);
    map['status'] = Variable<String>(status);
    {
      map['json'] = Variable<String>(
        $PatrolCheckpointsTable.$converterjson.toSql(json),
      );
    }
    return map;
  }

  PatrolCheckpointsCompanion toCompanion(bool nullToAbsent) {
    return PatrolCheckpointsCompanion(
      id: Value(id),
      taskId: Value(taskId),
      checkpointId: Value(checkpointId),
      qrCode: qrCode == null && nullToAbsent
          ? const Value.absent()
          : Value(qrCode),
      sortOrder: Value(sortOrder),
      status: Value(status),
      json: Value(json),
    );
  }

  factory PatrolCheckpointRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PatrolCheckpointRow(
      id: serializer.fromJson<String>(json['id']),
      taskId: serializer.fromJson<String>(json['taskId']),
      checkpointId: serializer.fromJson<String>(json['checkpointId']),
      qrCode: serializer.fromJson<String?>(json['qrCode']),
      sortOrder: serializer.fromJson<int>(json['sortOrder']),
      status: serializer.fromJson<String>(json['status']),
      json: serializer.fromJson<Map<String, dynamic>>(json['json']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'taskId': serializer.toJson<String>(taskId),
      'checkpointId': serializer.toJson<String>(checkpointId),
      'qrCode': serializer.toJson<String?>(qrCode),
      'sortOrder': serializer.toJson<int>(sortOrder),
      'status': serializer.toJson<String>(status),
      'json': serializer.toJson<Map<String, dynamic>>(json),
    };
  }

  PatrolCheckpointRow copyWith({
    String? id,
    String? taskId,
    String? checkpointId,
    Value<String?> qrCode = const Value.absent(),
    int? sortOrder,
    String? status,
    Map<String, dynamic>? json,
  }) => PatrolCheckpointRow(
    id: id ?? this.id,
    taskId: taskId ?? this.taskId,
    checkpointId: checkpointId ?? this.checkpointId,
    qrCode: qrCode.present ? qrCode.value : this.qrCode,
    sortOrder: sortOrder ?? this.sortOrder,
    status: status ?? this.status,
    json: json ?? this.json,
  );
  PatrolCheckpointRow copyWithCompanion(PatrolCheckpointsCompanion data) {
    return PatrolCheckpointRow(
      id: data.id.present ? data.id.value : this.id,
      taskId: data.taskId.present ? data.taskId.value : this.taskId,
      checkpointId: data.checkpointId.present
          ? data.checkpointId.value
          : this.checkpointId,
      qrCode: data.qrCode.present ? data.qrCode.value : this.qrCode,
      sortOrder: data.sortOrder.present ? data.sortOrder.value : this.sortOrder,
      status: data.status.present ? data.status.value : this.status,
      json: data.json.present ? data.json.value : this.json,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PatrolCheckpointRow(')
          ..write('id: $id, ')
          ..write('taskId: $taskId, ')
          ..write('checkpointId: $checkpointId, ')
          ..write('qrCode: $qrCode, ')
          ..write('sortOrder: $sortOrder, ')
          ..write('status: $status, ')
          ..write('json: $json')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, taskId, checkpointId, qrCode, sortOrder, status, json);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PatrolCheckpointRow &&
          other.id == this.id &&
          other.taskId == this.taskId &&
          other.checkpointId == this.checkpointId &&
          other.qrCode == this.qrCode &&
          other.sortOrder == this.sortOrder &&
          other.status == this.status &&
          other.json == this.json);
}

class PatrolCheckpointsCompanion extends UpdateCompanion<PatrolCheckpointRow> {
  final Value<String> id;
  final Value<String> taskId;
  final Value<String> checkpointId;
  final Value<String?> qrCode;
  final Value<int> sortOrder;
  final Value<String> status;
  final Value<Map<String, dynamic>> json;
  final Value<int> rowid;
  const PatrolCheckpointsCompanion({
    this.id = const Value.absent(),
    this.taskId = const Value.absent(),
    this.checkpointId = const Value.absent(),
    this.qrCode = const Value.absent(),
    this.sortOrder = const Value.absent(),
    this.status = const Value.absent(),
    this.json = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  PatrolCheckpointsCompanion.insert({
    required String id,
    required String taskId,
    required String checkpointId,
    this.qrCode = const Value.absent(),
    this.sortOrder = const Value.absent(),
    this.status = const Value.absent(),
    required Map<String, dynamic> json,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       taskId = Value(taskId),
       checkpointId = Value(checkpointId),
       json = Value(json);
  static Insertable<PatrolCheckpointRow> custom({
    Expression<String>? id,
    Expression<String>? taskId,
    Expression<String>? checkpointId,
    Expression<String>? qrCode,
    Expression<int>? sortOrder,
    Expression<String>? status,
    Expression<String>? json,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (taskId != null) 'task_id': taskId,
      if (checkpointId != null) 'checkpoint_id': checkpointId,
      if (qrCode != null) 'qr_code': qrCode,
      if (sortOrder != null) 'sort_order': sortOrder,
      if (status != null) 'status': status,
      if (json != null) 'json': json,
      if (rowid != null) 'rowid': rowid,
    });
  }

  PatrolCheckpointsCompanion copyWith({
    Value<String>? id,
    Value<String>? taskId,
    Value<String>? checkpointId,
    Value<String?>? qrCode,
    Value<int>? sortOrder,
    Value<String>? status,
    Value<Map<String, dynamic>>? json,
    Value<int>? rowid,
  }) {
    return PatrolCheckpointsCompanion(
      id: id ?? this.id,
      taskId: taskId ?? this.taskId,
      checkpointId: checkpointId ?? this.checkpointId,
      qrCode: qrCode ?? this.qrCode,
      sortOrder: sortOrder ?? this.sortOrder,
      status: status ?? this.status,
      json: json ?? this.json,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (taskId.present) {
      map['task_id'] = Variable<String>(taskId.value);
    }
    if (checkpointId.present) {
      map['checkpoint_id'] = Variable<String>(checkpointId.value);
    }
    if (qrCode.present) {
      map['qr_code'] = Variable<String>(qrCode.value);
    }
    if (sortOrder.present) {
      map['sort_order'] = Variable<int>(sortOrder.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (json.present) {
      map['json'] = Variable<String>(
        $PatrolCheckpointsTable.$converterjson.toSql(json.value),
      );
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PatrolCheckpointsCompanion(')
          ..write('id: $id, ')
          ..write('taskId: $taskId, ')
          ..write('checkpointId: $checkpointId, ')
          ..write('qrCode: $qrCode, ')
          ..write('sortOrder: $sortOrder, ')
          ..write('status: $status, ')
          ..write('json: $json, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $LocationsTable extends Locations
    with TableInfo<$LocationsTable, LocationRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LocationsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _locationTypeMeta = const VerificationMeta(
    'locationType',
  );
  @override
  late final GeneratedColumn<String> locationType = GeneratedColumn<String>(
    'location_type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant(''),
  );
  static const VerificationMeta _pathTextMeta = const VerificationMeta(
    'pathText',
  );
  @override
  late final GeneratedColumn<String> pathText = GeneratedColumn<String>(
    'path_text',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant(''),
  );
  static const VerificationMeta _qrCodeMeta = const VerificationMeta('qrCode');
  @override
  late final GeneratedColumn<String> qrCode = GeneratedColumn<String>(
    'qr_code',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    name,
    locationType,
    pathText,
    qrCode,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'locations';
  @override
  VerificationContext validateIntegrity(
    Insertable<LocationRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('location_type')) {
      context.handle(
        _locationTypeMeta,
        locationType.isAcceptableOrUnknown(
          data['location_type']!,
          _locationTypeMeta,
        ),
      );
    }
    if (data.containsKey('path_text')) {
      context.handle(
        _pathTextMeta,
        pathText.isAcceptableOrUnknown(data['path_text']!, _pathTextMeta),
      );
    }
    if (data.containsKey('qr_code')) {
      context.handle(
        _qrCodeMeta,
        qrCode.isAcceptableOrUnknown(data['qr_code']!, _qrCodeMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  LocationRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LocationRow(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      locationType: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}location_type'],
      )!,
      pathText: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}path_text'],
      )!,
      qrCode: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}qr_code'],
      ),
    );
  }

  @override
  $LocationsTable createAlias(String alias) {
    return $LocationsTable(attachedDatabase, alias);
  }
}

class LocationRow extends DataClass implements Insertable<LocationRow> {
  final String id;
  final String name;
  final String locationType;
  final String pathText;
  final String? qrCode;
  const LocationRow({
    required this.id,
    required this.name,
    required this.locationType,
    required this.pathText,
    this.qrCode,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    map['location_type'] = Variable<String>(locationType);
    map['path_text'] = Variable<String>(pathText);
    if (!nullToAbsent || qrCode != null) {
      map['qr_code'] = Variable<String>(qrCode);
    }
    return map;
  }

  LocationsCompanion toCompanion(bool nullToAbsent) {
    return LocationsCompanion(
      id: Value(id),
      name: Value(name),
      locationType: Value(locationType),
      pathText: Value(pathText),
      qrCode: qrCode == null && nullToAbsent
          ? const Value.absent()
          : Value(qrCode),
    );
  }

  factory LocationRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LocationRow(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      locationType: serializer.fromJson<String>(json['locationType']),
      pathText: serializer.fromJson<String>(json['pathText']),
      qrCode: serializer.fromJson<String?>(json['qrCode']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'locationType': serializer.toJson<String>(locationType),
      'pathText': serializer.toJson<String>(pathText),
      'qrCode': serializer.toJson<String?>(qrCode),
    };
  }

  LocationRow copyWith({
    String? id,
    String? name,
    String? locationType,
    String? pathText,
    Value<String?> qrCode = const Value.absent(),
  }) => LocationRow(
    id: id ?? this.id,
    name: name ?? this.name,
    locationType: locationType ?? this.locationType,
    pathText: pathText ?? this.pathText,
    qrCode: qrCode.present ? qrCode.value : this.qrCode,
  );
  LocationRow copyWithCompanion(LocationsCompanion data) {
    return LocationRow(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      locationType: data.locationType.present
          ? data.locationType.value
          : this.locationType,
      pathText: data.pathText.present ? data.pathText.value : this.pathText,
      qrCode: data.qrCode.present ? data.qrCode.value : this.qrCode,
    );
  }

  @override
  String toString() {
    return (StringBuffer('LocationRow(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('locationType: $locationType, ')
          ..write('pathText: $pathText, ')
          ..write('qrCode: $qrCode')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, locationType, pathText, qrCode);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LocationRow &&
          other.id == this.id &&
          other.name == this.name &&
          other.locationType == this.locationType &&
          other.pathText == this.pathText &&
          other.qrCode == this.qrCode);
}

class LocationsCompanion extends UpdateCompanion<LocationRow> {
  final Value<String> id;
  final Value<String> name;
  final Value<String> locationType;
  final Value<String> pathText;
  final Value<String?> qrCode;
  final Value<int> rowid;
  const LocationsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.locationType = const Value.absent(),
    this.pathText = const Value.absent(),
    this.qrCode = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  LocationsCompanion.insert({
    required String id,
    required String name,
    this.locationType = const Value.absent(),
    this.pathText = const Value.absent(),
    this.qrCode = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       name = Value(name);
  static Insertable<LocationRow> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<String>? locationType,
    Expression<String>? pathText,
    Expression<String>? qrCode,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (locationType != null) 'location_type': locationType,
      if (pathText != null) 'path_text': pathText,
      if (qrCode != null) 'qr_code': qrCode,
      if (rowid != null) 'rowid': rowid,
    });
  }

  LocationsCompanion copyWith({
    Value<String>? id,
    Value<String>? name,
    Value<String>? locationType,
    Value<String>? pathText,
    Value<String?>? qrCode,
    Value<int>? rowid,
  }) {
    return LocationsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      locationType: locationType ?? this.locationType,
      pathText: pathText ?? this.pathText,
      qrCode: qrCode ?? this.qrCode,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (locationType.present) {
      map['location_type'] = Variable<String>(locationType.value);
    }
    if (pathText.present) {
      map['path_text'] = Variable<String>(pathText.value);
    }
    if (qrCode.present) {
      map['qr_code'] = Variable<String>(qrCode.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LocationsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('locationType: $locationType, ')
          ..write('pathText: $pathText, ')
          ..write('qrCode: $qrCode, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $AssetsTable extends Assets with TableInfo<$AssetsTable, AssetRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AssetsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _assetCodeMeta = const VerificationMeta(
    'assetCode',
  );
  @override
  late final GeneratedColumn<String> assetCode = GeneratedColumn<String>(
    'asset_code',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
    'status',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('active'),
  );
  static const VerificationMeta _locationIdMeta = const VerificationMeta(
    'locationId',
  );
  @override
  late final GeneratedColumn<String> locationId = GeneratedColumn<String>(
    'location_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant(''),
  );
  static const VerificationMeta _qrCodeMeta = const VerificationMeta('qrCode');
  @override
  late final GeneratedColumn<String> qrCode = GeneratedColumn<String>(
    'qr_code',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    assetCode,
    name,
    status,
    locationId,
    qrCode,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'assets';
  @override
  VerificationContext validateIntegrity(
    Insertable<AssetRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('asset_code')) {
      context.handle(
        _assetCodeMeta,
        assetCode.isAcceptableOrUnknown(data['asset_code']!, _assetCodeMeta),
      );
    } else if (isInserting) {
      context.missing(_assetCodeMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('status')) {
      context.handle(
        _statusMeta,
        status.isAcceptableOrUnknown(data['status']!, _statusMeta),
      );
    }
    if (data.containsKey('location_id')) {
      context.handle(
        _locationIdMeta,
        locationId.isAcceptableOrUnknown(data['location_id']!, _locationIdMeta),
      );
    }
    if (data.containsKey('qr_code')) {
      context.handle(
        _qrCodeMeta,
        qrCode.isAcceptableOrUnknown(data['qr_code']!, _qrCodeMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  AssetRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AssetRow(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      assetCode: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}asset_code'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      status: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}status'],
      )!,
      locationId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}location_id'],
      )!,
      qrCode: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}qr_code'],
      ),
    );
  }

  @override
  $AssetsTable createAlias(String alias) {
    return $AssetsTable(attachedDatabase, alias);
  }
}

class AssetRow extends DataClass implements Insertable<AssetRow> {
  final String id;
  final String assetCode;
  final String name;
  final String status;
  final String locationId;
  final String? qrCode;
  const AssetRow({
    required this.id,
    required this.assetCode,
    required this.name,
    required this.status,
    required this.locationId,
    this.qrCode,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['asset_code'] = Variable<String>(assetCode);
    map['name'] = Variable<String>(name);
    map['status'] = Variable<String>(status);
    map['location_id'] = Variable<String>(locationId);
    if (!nullToAbsent || qrCode != null) {
      map['qr_code'] = Variable<String>(qrCode);
    }
    return map;
  }

  AssetsCompanion toCompanion(bool nullToAbsent) {
    return AssetsCompanion(
      id: Value(id),
      assetCode: Value(assetCode),
      name: Value(name),
      status: Value(status),
      locationId: Value(locationId),
      qrCode: qrCode == null && nullToAbsent
          ? const Value.absent()
          : Value(qrCode),
    );
  }

  factory AssetRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AssetRow(
      id: serializer.fromJson<String>(json['id']),
      assetCode: serializer.fromJson<String>(json['assetCode']),
      name: serializer.fromJson<String>(json['name']),
      status: serializer.fromJson<String>(json['status']),
      locationId: serializer.fromJson<String>(json['locationId']),
      qrCode: serializer.fromJson<String?>(json['qrCode']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'assetCode': serializer.toJson<String>(assetCode),
      'name': serializer.toJson<String>(name),
      'status': serializer.toJson<String>(status),
      'locationId': serializer.toJson<String>(locationId),
      'qrCode': serializer.toJson<String?>(qrCode),
    };
  }

  AssetRow copyWith({
    String? id,
    String? assetCode,
    String? name,
    String? status,
    String? locationId,
    Value<String?> qrCode = const Value.absent(),
  }) => AssetRow(
    id: id ?? this.id,
    assetCode: assetCode ?? this.assetCode,
    name: name ?? this.name,
    status: status ?? this.status,
    locationId: locationId ?? this.locationId,
    qrCode: qrCode.present ? qrCode.value : this.qrCode,
  );
  AssetRow copyWithCompanion(AssetsCompanion data) {
    return AssetRow(
      id: data.id.present ? data.id.value : this.id,
      assetCode: data.assetCode.present ? data.assetCode.value : this.assetCode,
      name: data.name.present ? data.name.value : this.name,
      status: data.status.present ? data.status.value : this.status,
      locationId: data.locationId.present
          ? data.locationId.value
          : this.locationId,
      qrCode: data.qrCode.present ? data.qrCode.value : this.qrCode,
    );
  }

  @override
  String toString() {
    return (StringBuffer('AssetRow(')
          ..write('id: $id, ')
          ..write('assetCode: $assetCode, ')
          ..write('name: $name, ')
          ..write('status: $status, ')
          ..write('locationId: $locationId, ')
          ..write('qrCode: $qrCode')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, assetCode, name, status, locationId, qrCode);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AssetRow &&
          other.id == this.id &&
          other.assetCode == this.assetCode &&
          other.name == this.name &&
          other.status == this.status &&
          other.locationId == this.locationId &&
          other.qrCode == this.qrCode);
}

class AssetsCompanion extends UpdateCompanion<AssetRow> {
  final Value<String> id;
  final Value<String> assetCode;
  final Value<String> name;
  final Value<String> status;
  final Value<String> locationId;
  final Value<String?> qrCode;
  final Value<int> rowid;
  const AssetsCompanion({
    this.id = const Value.absent(),
    this.assetCode = const Value.absent(),
    this.name = const Value.absent(),
    this.status = const Value.absent(),
    this.locationId = const Value.absent(),
    this.qrCode = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  AssetsCompanion.insert({
    required String id,
    required String assetCode,
    required String name,
    this.status = const Value.absent(),
    this.locationId = const Value.absent(),
    this.qrCode = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       assetCode = Value(assetCode),
       name = Value(name);
  static Insertable<AssetRow> custom({
    Expression<String>? id,
    Expression<String>? assetCode,
    Expression<String>? name,
    Expression<String>? status,
    Expression<String>? locationId,
    Expression<String>? qrCode,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (assetCode != null) 'asset_code': assetCode,
      if (name != null) 'name': name,
      if (status != null) 'status': status,
      if (locationId != null) 'location_id': locationId,
      if (qrCode != null) 'qr_code': qrCode,
      if (rowid != null) 'rowid': rowid,
    });
  }

  AssetsCompanion copyWith({
    Value<String>? id,
    Value<String>? assetCode,
    Value<String>? name,
    Value<String>? status,
    Value<String>? locationId,
    Value<String?>? qrCode,
    Value<int>? rowid,
  }) {
    return AssetsCompanion(
      id: id ?? this.id,
      assetCode: assetCode ?? this.assetCode,
      name: name ?? this.name,
      status: status ?? this.status,
      locationId: locationId ?? this.locationId,
      qrCode: qrCode ?? this.qrCode,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (assetCode.present) {
      map['asset_code'] = Variable<String>(assetCode.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (locationId.present) {
      map['location_id'] = Variable<String>(locationId.value);
    }
    if (qrCode.present) {
      map['qr_code'] = Variable<String>(qrCode.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AssetsCompanion(')
          ..write('id: $id, ')
          ..write('assetCode: $assetCode, ')
          ..write('name: $name, ')
          ..write('status: $status, ')
          ..write('locationId: $locationId, ')
          ..write('qrCode: $qrCode, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $MutationsTable extends Mutations
    with TableInfo<$MutationsTable, MutationRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MutationsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _clientMutationIdMeta = const VerificationMeta(
    'clientMutationId',
  );
  @override
  late final GeneratedColumn<String> clientMutationId = GeneratedColumn<String>(
    'client_mutation_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _objectTypeMeta = const VerificationMeta(
    'objectType',
  );
  @override
  late final GeneratedColumn<String> objectType = GeneratedColumn<String>(
    'object_type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _objectIdMeta = const VerificationMeta(
    'objectId',
  );
  @override
  late final GeneratedColumn<String> objectId = GeneratedColumn<String>(
    'object_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _actionMeta = const VerificationMeta('action');
  @override
  late final GeneratedColumn<String> action = GeneratedColumn<String>(
    'action',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _seqMeta = const VerificationMeta('seq');
  @override
  late final GeneratedColumn<int> seq = GeneratedColumn<int>(
    'seq',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  late final GeneratedColumnWithTypeConverter<Map<String, dynamic>, String>
  payload = GeneratedColumn<String>(
    'payload',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  ).withConverter<Map<String, dynamic>>($MutationsTable.$converterpayload);
  static const VerificationMeta _clientTimeMeta = const VerificationMeta(
    'clientTime',
  );
  @override
  late final GeneratedColumn<DateTime> clientTime = GeneratedColumn<DateTime>(
    'client_time',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
    'status',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('pending'),
  );
  static const VerificationMeta _attemptsMeta = const VerificationMeta(
    'attempts',
  );
  @override
  late final GeneratedColumn<int> attempts = GeneratedColumn<int>(
    'attempts',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _nextAttemptAtMeta = const VerificationMeta(
    'nextAttemptAt',
  );
  @override
  late final GeneratedColumn<DateTime> nextAttemptAt =
      GeneratedColumn<DateTime>(
        'next_attempt_at',
        aliasedName,
        true,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _reasonCodeMeta = const VerificationMeta(
    'reasonCode',
  );
  @override
  late final GeneratedColumn<String> reasonCode = GeneratedColumn<String>(
    'reason_code',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _lastErrorMeta = const VerificationMeta(
    'lastError',
  );
  @override
  late final GeneratedColumn<String> lastError = GeneratedColumn<String>(
    'last_error',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  late final GeneratedColumnWithTypeConverter<Map<String, dynamic>?, String>
  response = GeneratedColumn<String>(
    'response',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  ).withConverter<Map<String, dynamic>?>($MutationsTable.$converterresponsen);
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _syncedAtMeta = const VerificationMeta(
    'syncedAt',
  );
  @override
  late final GeneratedColumn<DateTime> syncedAt = GeneratedColumn<DateTime>(
    'synced_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    clientMutationId,
    objectType,
    objectId,
    action,
    seq,
    payload,
    clientTime,
    status,
    attempts,
    nextAttemptAt,
    reasonCode,
    lastError,
    response,
    createdAt,
    syncedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'mutations';
  @override
  VerificationContext validateIntegrity(
    Insertable<MutationRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('client_mutation_id')) {
      context.handle(
        _clientMutationIdMeta,
        clientMutationId.isAcceptableOrUnknown(
          data['client_mutation_id']!,
          _clientMutationIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_clientMutationIdMeta);
    }
    if (data.containsKey('object_type')) {
      context.handle(
        _objectTypeMeta,
        objectType.isAcceptableOrUnknown(data['object_type']!, _objectTypeMeta),
      );
    } else if (isInserting) {
      context.missing(_objectTypeMeta);
    }
    if (data.containsKey('object_id')) {
      context.handle(
        _objectIdMeta,
        objectId.isAcceptableOrUnknown(data['object_id']!, _objectIdMeta),
      );
    } else if (isInserting) {
      context.missing(_objectIdMeta);
    }
    if (data.containsKey('action')) {
      context.handle(
        _actionMeta,
        action.isAcceptableOrUnknown(data['action']!, _actionMeta),
      );
    } else if (isInserting) {
      context.missing(_actionMeta);
    }
    if (data.containsKey('seq')) {
      context.handle(
        _seqMeta,
        seq.isAcceptableOrUnknown(data['seq']!, _seqMeta),
      );
    } else if (isInserting) {
      context.missing(_seqMeta);
    }
    if (data.containsKey('client_time')) {
      context.handle(
        _clientTimeMeta,
        clientTime.isAcceptableOrUnknown(data['client_time']!, _clientTimeMeta),
      );
    } else if (isInserting) {
      context.missing(_clientTimeMeta);
    }
    if (data.containsKey('status')) {
      context.handle(
        _statusMeta,
        status.isAcceptableOrUnknown(data['status']!, _statusMeta),
      );
    }
    if (data.containsKey('attempts')) {
      context.handle(
        _attemptsMeta,
        attempts.isAcceptableOrUnknown(data['attempts']!, _attemptsMeta),
      );
    }
    if (data.containsKey('next_attempt_at')) {
      context.handle(
        _nextAttemptAtMeta,
        nextAttemptAt.isAcceptableOrUnknown(
          data['next_attempt_at']!,
          _nextAttemptAtMeta,
        ),
      );
    }
    if (data.containsKey('reason_code')) {
      context.handle(
        _reasonCodeMeta,
        reasonCode.isAcceptableOrUnknown(data['reason_code']!, _reasonCodeMeta),
      );
    }
    if (data.containsKey('last_error')) {
      context.handle(
        _lastErrorMeta,
        lastError.isAcceptableOrUnknown(data['last_error']!, _lastErrorMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('synced_at')) {
      context.handle(
        _syncedAtMeta,
        syncedAt.isAcceptableOrUnknown(data['synced_at']!, _syncedAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {clientMutationId};
  @override
  MutationRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MutationRow(
      clientMutationId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}client_mutation_id'],
      )!,
      objectType: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}object_type'],
      )!,
      objectId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}object_id'],
      )!,
      action: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}action'],
      )!,
      seq: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}seq'],
      )!,
      payload: $MutationsTable.$converterpayload.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}payload'],
        )!,
      ),
      clientTime: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}client_time'],
      )!,
      status: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}status'],
      )!,
      attempts: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}attempts'],
      )!,
      nextAttemptAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}next_attempt_at'],
      ),
      reasonCode: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}reason_code'],
      ),
      lastError: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}last_error'],
      ),
      response: $MutationsTable.$converterresponsen.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}response'],
        ),
      ),
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      syncedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}synced_at'],
      ),
    );
  }

  @override
  $MutationsTable createAlias(String alias) {
    return $MutationsTable(attachedDatabase, alias);
  }

  static TypeConverter<Map<String, dynamic>, String> $converterpayload =
      const JsonMapConverter();
  static TypeConverter<Map<String, dynamic>, String> $converterresponse =
      const JsonMapConverter();
  static TypeConverter<Map<String, dynamic>?, String?> $converterresponsen =
      NullAwareTypeConverter.wrap($converterresponse);
}

class MutationRow extends DataClass implements Insertable<MutationRow> {
  final String clientMutationId;
  final String objectType;
  final String objectId;
  final String action;
  final int seq;
  final Map<String, dynamic> payload;
  final DateTime clientTime;
  final String status;
  final int attempts;
  final DateTime? nextAttemptAt;
  final String? reasonCode;
  final String? lastError;
  final Map<String, dynamic>? response;
  final DateTime createdAt;
  final DateTime? syncedAt;
  const MutationRow({
    required this.clientMutationId,
    required this.objectType,
    required this.objectId,
    required this.action,
    required this.seq,
    required this.payload,
    required this.clientTime,
    required this.status,
    required this.attempts,
    this.nextAttemptAt,
    this.reasonCode,
    this.lastError,
    this.response,
    required this.createdAt,
    this.syncedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['client_mutation_id'] = Variable<String>(clientMutationId);
    map['object_type'] = Variable<String>(objectType);
    map['object_id'] = Variable<String>(objectId);
    map['action'] = Variable<String>(action);
    map['seq'] = Variable<int>(seq);
    {
      map['payload'] = Variable<String>(
        $MutationsTable.$converterpayload.toSql(payload),
      );
    }
    map['client_time'] = Variable<DateTime>(clientTime);
    map['status'] = Variable<String>(status);
    map['attempts'] = Variable<int>(attempts);
    if (!nullToAbsent || nextAttemptAt != null) {
      map['next_attempt_at'] = Variable<DateTime>(nextAttemptAt);
    }
    if (!nullToAbsent || reasonCode != null) {
      map['reason_code'] = Variable<String>(reasonCode);
    }
    if (!nullToAbsent || lastError != null) {
      map['last_error'] = Variable<String>(lastError);
    }
    if (!nullToAbsent || response != null) {
      map['response'] = Variable<String>(
        $MutationsTable.$converterresponsen.toSql(response),
      );
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    if (!nullToAbsent || syncedAt != null) {
      map['synced_at'] = Variable<DateTime>(syncedAt);
    }
    return map;
  }

  MutationsCompanion toCompanion(bool nullToAbsent) {
    return MutationsCompanion(
      clientMutationId: Value(clientMutationId),
      objectType: Value(objectType),
      objectId: Value(objectId),
      action: Value(action),
      seq: Value(seq),
      payload: Value(payload),
      clientTime: Value(clientTime),
      status: Value(status),
      attempts: Value(attempts),
      nextAttemptAt: nextAttemptAt == null && nullToAbsent
          ? const Value.absent()
          : Value(nextAttemptAt),
      reasonCode: reasonCode == null && nullToAbsent
          ? const Value.absent()
          : Value(reasonCode),
      lastError: lastError == null && nullToAbsent
          ? const Value.absent()
          : Value(lastError),
      response: response == null && nullToAbsent
          ? const Value.absent()
          : Value(response),
      createdAt: Value(createdAt),
      syncedAt: syncedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(syncedAt),
    );
  }

  factory MutationRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MutationRow(
      clientMutationId: serializer.fromJson<String>(json['clientMutationId']),
      objectType: serializer.fromJson<String>(json['objectType']),
      objectId: serializer.fromJson<String>(json['objectId']),
      action: serializer.fromJson<String>(json['action']),
      seq: serializer.fromJson<int>(json['seq']),
      payload: serializer.fromJson<Map<String, dynamic>>(json['payload']),
      clientTime: serializer.fromJson<DateTime>(json['clientTime']),
      status: serializer.fromJson<String>(json['status']),
      attempts: serializer.fromJson<int>(json['attempts']),
      nextAttemptAt: serializer.fromJson<DateTime?>(json['nextAttemptAt']),
      reasonCode: serializer.fromJson<String?>(json['reasonCode']),
      lastError: serializer.fromJson<String?>(json['lastError']),
      response: serializer.fromJson<Map<String, dynamic>?>(json['response']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      syncedAt: serializer.fromJson<DateTime?>(json['syncedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'clientMutationId': serializer.toJson<String>(clientMutationId),
      'objectType': serializer.toJson<String>(objectType),
      'objectId': serializer.toJson<String>(objectId),
      'action': serializer.toJson<String>(action),
      'seq': serializer.toJson<int>(seq),
      'payload': serializer.toJson<Map<String, dynamic>>(payload),
      'clientTime': serializer.toJson<DateTime>(clientTime),
      'status': serializer.toJson<String>(status),
      'attempts': serializer.toJson<int>(attempts),
      'nextAttemptAt': serializer.toJson<DateTime?>(nextAttemptAt),
      'reasonCode': serializer.toJson<String?>(reasonCode),
      'lastError': serializer.toJson<String?>(lastError),
      'response': serializer.toJson<Map<String, dynamic>?>(response),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'syncedAt': serializer.toJson<DateTime?>(syncedAt),
    };
  }

  MutationRow copyWith({
    String? clientMutationId,
    String? objectType,
    String? objectId,
    String? action,
    int? seq,
    Map<String, dynamic>? payload,
    DateTime? clientTime,
    String? status,
    int? attempts,
    Value<DateTime?> nextAttemptAt = const Value.absent(),
    Value<String?> reasonCode = const Value.absent(),
    Value<String?> lastError = const Value.absent(),
    Value<Map<String, dynamic>?> response = const Value.absent(),
    DateTime? createdAt,
    Value<DateTime?> syncedAt = const Value.absent(),
  }) => MutationRow(
    clientMutationId: clientMutationId ?? this.clientMutationId,
    objectType: objectType ?? this.objectType,
    objectId: objectId ?? this.objectId,
    action: action ?? this.action,
    seq: seq ?? this.seq,
    payload: payload ?? this.payload,
    clientTime: clientTime ?? this.clientTime,
    status: status ?? this.status,
    attempts: attempts ?? this.attempts,
    nextAttemptAt: nextAttemptAt.present
        ? nextAttemptAt.value
        : this.nextAttemptAt,
    reasonCode: reasonCode.present ? reasonCode.value : this.reasonCode,
    lastError: lastError.present ? lastError.value : this.lastError,
    response: response.present ? response.value : this.response,
    createdAt: createdAt ?? this.createdAt,
    syncedAt: syncedAt.present ? syncedAt.value : this.syncedAt,
  );
  MutationRow copyWithCompanion(MutationsCompanion data) {
    return MutationRow(
      clientMutationId: data.clientMutationId.present
          ? data.clientMutationId.value
          : this.clientMutationId,
      objectType: data.objectType.present
          ? data.objectType.value
          : this.objectType,
      objectId: data.objectId.present ? data.objectId.value : this.objectId,
      action: data.action.present ? data.action.value : this.action,
      seq: data.seq.present ? data.seq.value : this.seq,
      payload: data.payload.present ? data.payload.value : this.payload,
      clientTime: data.clientTime.present
          ? data.clientTime.value
          : this.clientTime,
      status: data.status.present ? data.status.value : this.status,
      attempts: data.attempts.present ? data.attempts.value : this.attempts,
      nextAttemptAt: data.nextAttemptAt.present
          ? data.nextAttemptAt.value
          : this.nextAttemptAt,
      reasonCode: data.reasonCode.present
          ? data.reasonCode.value
          : this.reasonCode,
      lastError: data.lastError.present ? data.lastError.value : this.lastError,
      response: data.response.present ? data.response.value : this.response,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      syncedAt: data.syncedAt.present ? data.syncedAt.value : this.syncedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('MutationRow(')
          ..write('clientMutationId: $clientMutationId, ')
          ..write('objectType: $objectType, ')
          ..write('objectId: $objectId, ')
          ..write('action: $action, ')
          ..write('seq: $seq, ')
          ..write('payload: $payload, ')
          ..write('clientTime: $clientTime, ')
          ..write('status: $status, ')
          ..write('attempts: $attempts, ')
          ..write('nextAttemptAt: $nextAttemptAt, ')
          ..write('reasonCode: $reasonCode, ')
          ..write('lastError: $lastError, ')
          ..write('response: $response, ')
          ..write('createdAt: $createdAt, ')
          ..write('syncedAt: $syncedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    clientMutationId,
    objectType,
    objectId,
    action,
    seq,
    payload,
    clientTime,
    status,
    attempts,
    nextAttemptAt,
    reasonCode,
    lastError,
    response,
    createdAt,
    syncedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MutationRow &&
          other.clientMutationId == this.clientMutationId &&
          other.objectType == this.objectType &&
          other.objectId == this.objectId &&
          other.action == this.action &&
          other.seq == this.seq &&
          other.payload == this.payload &&
          other.clientTime == this.clientTime &&
          other.status == this.status &&
          other.attempts == this.attempts &&
          other.nextAttemptAt == this.nextAttemptAt &&
          other.reasonCode == this.reasonCode &&
          other.lastError == this.lastError &&
          other.response == this.response &&
          other.createdAt == this.createdAt &&
          other.syncedAt == this.syncedAt);
}

class MutationsCompanion extends UpdateCompanion<MutationRow> {
  final Value<String> clientMutationId;
  final Value<String> objectType;
  final Value<String> objectId;
  final Value<String> action;
  final Value<int> seq;
  final Value<Map<String, dynamic>> payload;
  final Value<DateTime> clientTime;
  final Value<String> status;
  final Value<int> attempts;
  final Value<DateTime?> nextAttemptAt;
  final Value<String?> reasonCode;
  final Value<String?> lastError;
  final Value<Map<String, dynamic>?> response;
  final Value<DateTime> createdAt;
  final Value<DateTime?> syncedAt;
  final Value<int> rowid;
  const MutationsCompanion({
    this.clientMutationId = const Value.absent(),
    this.objectType = const Value.absent(),
    this.objectId = const Value.absent(),
    this.action = const Value.absent(),
    this.seq = const Value.absent(),
    this.payload = const Value.absent(),
    this.clientTime = const Value.absent(),
    this.status = const Value.absent(),
    this.attempts = const Value.absent(),
    this.nextAttemptAt = const Value.absent(),
    this.reasonCode = const Value.absent(),
    this.lastError = const Value.absent(),
    this.response = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.syncedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  MutationsCompanion.insert({
    required String clientMutationId,
    required String objectType,
    required String objectId,
    required String action,
    required int seq,
    required Map<String, dynamic> payload,
    required DateTime clientTime,
    this.status = const Value.absent(),
    this.attempts = const Value.absent(),
    this.nextAttemptAt = const Value.absent(),
    this.reasonCode = const Value.absent(),
    this.lastError = const Value.absent(),
    this.response = const Value.absent(),
    required DateTime createdAt,
    this.syncedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : clientMutationId = Value(clientMutationId),
       objectType = Value(objectType),
       objectId = Value(objectId),
       action = Value(action),
       seq = Value(seq),
       payload = Value(payload),
       clientTime = Value(clientTime),
       createdAt = Value(createdAt);
  static Insertable<MutationRow> custom({
    Expression<String>? clientMutationId,
    Expression<String>? objectType,
    Expression<String>? objectId,
    Expression<String>? action,
    Expression<int>? seq,
    Expression<String>? payload,
    Expression<DateTime>? clientTime,
    Expression<String>? status,
    Expression<int>? attempts,
    Expression<DateTime>? nextAttemptAt,
    Expression<String>? reasonCode,
    Expression<String>? lastError,
    Expression<String>? response,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? syncedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (clientMutationId != null) 'client_mutation_id': clientMutationId,
      if (objectType != null) 'object_type': objectType,
      if (objectId != null) 'object_id': objectId,
      if (action != null) 'action': action,
      if (seq != null) 'seq': seq,
      if (payload != null) 'payload': payload,
      if (clientTime != null) 'client_time': clientTime,
      if (status != null) 'status': status,
      if (attempts != null) 'attempts': attempts,
      if (nextAttemptAt != null) 'next_attempt_at': nextAttemptAt,
      if (reasonCode != null) 'reason_code': reasonCode,
      if (lastError != null) 'last_error': lastError,
      if (response != null) 'response': response,
      if (createdAt != null) 'created_at': createdAt,
      if (syncedAt != null) 'synced_at': syncedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  MutationsCompanion copyWith({
    Value<String>? clientMutationId,
    Value<String>? objectType,
    Value<String>? objectId,
    Value<String>? action,
    Value<int>? seq,
    Value<Map<String, dynamic>>? payload,
    Value<DateTime>? clientTime,
    Value<String>? status,
    Value<int>? attempts,
    Value<DateTime?>? nextAttemptAt,
    Value<String?>? reasonCode,
    Value<String?>? lastError,
    Value<Map<String, dynamic>?>? response,
    Value<DateTime>? createdAt,
    Value<DateTime?>? syncedAt,
    Value<int>? rowid,
  }) {
    return MutationsCompanion(
      clientMutationId: clientMutationId ?? this.clientMutationId,
      objectType: objectType ?? this.objectType,
      objectId: objectId ?? this.objectId,
      action: action ?? this.action,
      seq: seq ?? this.seq,
      payload: payload ?? this.payload,
      clientTime: clientTime ?? this.clientTime,
      status: status ?? this.status,
      attempts: attempts ?? this.attempts,
      nextAttemptAt: nextAttemptAt ?? this.nextAttemptAt,
      reasonCode: reasonCode ?? this.reasonCode,
      lastError: lastError ?? this.lastError,
      response: response ?? this.response,
      createdAt: createdAt ?? this.createdAt,
      syncedAt: syncedAt ?? this.syncedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (clientMutationId.present) {
      map['client_mutation_id'] = Variable<String>(clientMutationId.value);
    }
    if (objectType.present) {
      map['object_type'] = Variable<String>(objectType.value);
    }
    if (objectId.present) {
      map['object_id'] = Variable<String>(objectId.value);
    }
    if (action.present) {
      map['action'] = Variable<String>(action.value);
    }
    if (seq.present) {
      map['seq'] = Variable<int>(seq.value);
    }
    if (payload.present) {
      map['payload'] = Variable<String>(
        $MutationsTable.$converterpayload.toSql(payload.value),
      );
    }
    if (clientTime.present) {
      map['client_time'] = Variable<DateTime>(clientTime.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (attempts.present) {
      map['attempts'] = Variable<int>(attempts.value);
    }
    if (nextAttemptAt.present) {
      map['next_attempt_at'] = Variable<DateTime>(nextAttemptAt.value);
    }
    if (reasonCode.present) {
      map['reason_code'] = Variable<String>(reasonCode.value);
    }
    if (lastError.present) {
      map['last_error'] = Variable<String>(lastError.value);
    }
    if (response.present) {
      map['response'] = Variable<String>(
        $MutationsTable.$converterresponsen.toSql(response.value),
      );
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (syncedAt.present) {
      map['synced_at'] = Variable<DateTime>(syncedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MutationsCompanion(')
          ..write('clientMutationId: $clientMutationId, ')
          ..write('objectType: $objectType, ')
          ..write('objectId: $objectId, ')
          ..write('action: $action, ')
          ..write('seq: $seq, ')
          ..write('payload: $payload, ')
          ..write('clientTime: $clientTime, ')
          ..write('status: $status, ')
          ..write('attempts: $attempts, ')
          ..write('nextAttemptAt: $nextAttemptAt, ')
          ..write('reasonCode: $reasonCode, ')
          ..write('lastError: $lastError, ')
          ..write('response: $response, ')
          ..write('createdAt: $createdAt, ')
          ..write('syncedAt: $syncedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ObjectSeqsTable extends ObjectSeqs
    with TableInfo<$ObjectSeqsTable, ObjectSeqRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ObjectSeqsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _objectIdMeta = const VerificationMeta(
    'objectId',
  );
  @override
  late final GeneratedColumn<String> objectId = GeneratedColumn<String>(
    'object_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _lastSeqMeta = const VerificationMeta(
    'lastSeq',
  );
  @override
  late final GeneratedColumn<int> lastSeq = GeneratedColumn<int>(
    'last_seq',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  @override
  List<GeneratedColumn> get $columns => [objectId, lastSeq];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'object_seqs';
  @override
  VerificationContext validateIntegrity(
    Insertable<ObjectSeqRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('object_id')) {
      context.handle(
        _objectIdMeta,
        objectId.isAcceptableOrUnknown(data['object_id']!, _objectIdMeta),
      );
    } else if (isInserting) {
      context.missing(_objectIdMeta);
    }
    if (data.containsKey('last_seq')) {
      context.handle(
        _lastSeqMeta,
        lastSeq.isAcceptableOrUnknown(data['last_seq']!, _lastSeqMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {objectId};
  @override
  ObjectSeqRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ObjectSeqRow(
      objectId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}object_id'],
      )!,
      lastSeq: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}last_seq'],
      )!,
    );
  }

  @override
  $ObjectSeqsTable createAlias(String alias) {
    return $ObjectSeqsTable(attachedDatabase, alias);
  }
}

class ObjectSeqRow extends DataClass implements Insertable<ObjectSeqRow> {
  final String objectId;
  final int lastSeq;
  const ObjectSeqRow({required this.objectId, required this.lastSeq});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['object_id'] = Variable<String>(objectId);
    map['last_seq'] = Variable<int>(lastSeq);
    return map;
  }

  ObjectSeqsCompanion toCompanion(bool nullToAbsent) {
    return ObjectSeqsCompanion(
      objectId: Value(objectId),
      lastSeq: Value(lastSeq),
    );
  }

  factory ObjectSeqRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ObjectSeqRow(
      objectId: serializer.fromJson<String>(json['objectId']),
      lastSeq: serializer.fromJson<int>(json['lastSeq']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'objectId': serializer.toJson<String>(objectId),
      'lastSeq': serializer.toJson<int>(lastSeq),
    };
  }

  ObjectSeqRow copyWith({String? objectId, int? lastSeq}) => ObjectSeqRow(
    objectId: objectId ?? this.objectId,
    lastSeq: lastSeq ?? this.lastSeq,
  );
  ObjectSeqRow copyWithCompanion(ObjectSeqsCompanion data) {
    return ObjectSeqRow(
      objectId: data.objectId.present ? data.objectId.value : this.objectId,
      lastSeq: data.lastSeq.present ? data.lastSeq.value : this.lastSeq,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ObjectSeqRow(')
          ..write('objectId: $objectId, ')
          ..write('lastSeq: $lastSeq')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(objectId, lastSeq);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ObjectSeqRow &&
          other.objectId == this.objectId &&
          other.lastSeq == this.lastSeq);
}

class ObjectSeqsCompanion extends UpdateCompanion<ObjectSeqRow> {
  final Value<String> objectId;
  final Value<int> lastSeq;
  final Value<int> rowid;
  const ObjectSeqsCompanion({
    this.objectId = const Value.absent(),
    this.lastSeq = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ObjectSeqsCompanion.insert({
    required String objectId,
    this.lastSeq = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : objectId = Value(objectId);
  static Insertable<ObjectSeqRow> custom({
    Expression<String>? objectId,
    Expression<int>? lastSeq,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (objectId != null) 'object_id': objectId,
      if (lastSeq != null) 'last_seq': lastSeq,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ObjectSeqsCompanion copyWith({
    Value<String>? objectId,
    Value<int>? lastSeq,
    Value<int>? rowid,
  }) {
    return ObjectSeqsCompanion(
      objectId: objectId ?? this.objectId,
      lastSeq: lastSeq ?? this.lastSeq,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (objectId.present) {
      map['object_id'] = Variable<String>(objectId.value);
    }
    if (lastSeq.present) {
      map['last_seq'] = Variable<int>(lastSeq.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ObjectSeqsCompanion(')
          ..write('objectId: $objectId, ')
          ..write('lastSeq: $lastSeq, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $PendingFilesTable extends PendingFiles
    with TableInfo<$PendingFilesTable, PendingFileRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PendingFilesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _clientAttachmentIdMeta =
      const VerificationMeta('clientAttachmentId');
  @override
  late final GeneratedColumn<String> clientAttachmentId =
      GeneratedColumn<String>(
        'client_attachment_id',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _objectTypeMeta = const VerificationMeta(
    'objectType',
  );
  @override
  late final GeneratedColumn<String> objectType = GeneratedColumn<String>(
    'object_type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _objectIdMeta = const VerificationMeta(
    'objectId',
  );
  @override
  late final GeneratedColumn<String> objectId = GeneratedColumn<String>(
    'object_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _attachmentTypeMeta = const VerificationMeta(
    'attachmentType',
  );
  @override
  late final GeneratedColumn<String> attachmentType = GeneratedColumn<String>(
    'attachment_type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _localPathMeta = const VerificationMeta(
    'localPath',
  );
  @override
  late final GeneratedColumn<String> localPath = GeneratedColumn<String>(
    'local_path',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _contentTypeMeta = const VerificationMeta(
    'contentType',
  );
  @override
  late final GeneratedColumn<String> contentType = GeneratedColumn<String>(
    'content_type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('image/jpeg'),
  );
  static const VerificationMeta _sizeBytesMeta = const VerificationMeta(
    'sizeBytes',
  );
  @override
  late final GeneratedColumn<int> sizeBytes = GeneratedColumn<int>(
    'size_bytes',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _sha256Meta = const VerificationMeta('sha256');
  @override
  late final GeneratedColumn<String> sha256 = GeneratedColumn<String>(
    'sha256',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _widthMeta = const VerificationMeta('width');
  @override
  late final GeneratedColumn<int> width = GeneratedColumn<int>(
    'width',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _heightMeta = const VerificationMeta('height');
  @override
  late final GeneratedColumn<int> height = GeneratedColumn<int>(
    'height',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _capturedAtMeta = const VerificationMeta(
    'capturedAt',
  );
  @override
  late final GeneratedColumn<DateTime> capturedAt = GeneratedColumn<DateTime>(
    'captured_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _gpsLatMeta = const VerificationMeta('gpsLat');
  @override
  late final GeneratedColumn<double> gpsLat = GeneratedColumn<double>(
    'gps_lat',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _gpsLngMeta = const VerificationMeta('gpsLng');
  @override
  late final GeneratedColumn<double> gpsLng = GeneratedColumn<double>(
    'gps_lng',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _gpsStatusMeta = const VerificationMeta(
    'gpsStatus',
  );
  @override
  late final GeneratedColumn<String> gpsStatus = GeneratedColumn<String>(
    'gps_status',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('unavailable'),
  );
  static const VerificationMeta _captionMeta = const VerificationMeta(
    'caption',
  );
  @override
  late final GeneratedColumn<String> caption = GeneratedColumn<String>(
    'caption',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _checklistItemIdMeta = const VerificationMeta(
    'checklistItemId',
  );
  @override
  late final GeneratedColumn<String> checklistItemId = GeneratedColumn<String>(
    'checklist_item_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _mutationIdMeta = const VerificationMeta(
    'mutationId',
  );
  @override
  late final GeneratedColumn<String> mutationId = GeneratedColumn<String>(
    'mutation_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _attachmentIdMeta = const VerificationMeta(
    'attachmentId',
  );
  @override
  late final GeneratedColumn<String> attachmentId = GeneratedColumn<String>(
    'attachment_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _uploadUrlMeta = const VerificationMeta(
    'uploadUrl',
  );
  @override
  late final GeneratedColumn<String> uploadUrl = GeneratedColumn<String>(
    'upload_url',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _uploadStateMeta = const VerificationMeta(
    'uploadState',
  );
  @override
  late final GeneratedColumn<String> uploadState = GeneratedColumn<String>(
    'upload_state',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('queued'),
  );
  static const VerificationMeta _attemptsMeta = const VerificationMeta(
    'attempts',
  );
  @override
  late final GeneratedColumn<int> attempts = GeneratedColumn<int>(
    'attempts',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _nextAttemptAtMeta = const VerificationMeta(
    'nextAttemptAt',
  );
  @override
  late final GeneratedColumn<DateTime> nextAttemptAt =
      GeneratedColumn<DateTime>(
        'next_attempt_at',
        aliasedName,
        true,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _lastErrorMeta = const VerificationMeta(
    'lastError',
  );
  @override
  late final GeneratedColumn<String> lastError = GeneratedColumn<String>(
    'last_error',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    clientAttachmentId,
    objectType,
    objectId,
    attachmentType,
    localPath,
    contentType,
    sizeBytes,
    sha256,
    width,
    height,
    capturedAt,
    gpsLat,
    gpsLng,
    gpsStatus,
    caption,
    checklistItemId,
    mutationId,
    attachmentId,
    uploadUrl,
    uploadState,
    attempts,
    nextAttemptAt,
    lastError,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'pending_files';
  @override
  VerificationContext validateIntegrity(
    Insertable<PendingFileRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('client_attachment_id')) {
      context.handle(
        _clientAttachmentIdMeta,
        clientAttachmentId.isAcceptableOrUnknown(
          data['client_attachment_id']!,
          _clientAttachmentIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_clientAttachmentIdMeta);
    }
    if (data.containsKey('object_type')) {
      context.handle(
        _objectTypeMeta,
        objectType.isAcceptableOrUnknown(data['object_type']!, _objectTypeMeta),
      );
    } else if (isInserting) {
      context.missing(_objectTypeMeta);
    }
    if (data.containsKey('object_id')) {
      context.handle(
        _objectIdMeta,
        objectId.isAcceptableOrUnknown(data['object_id']!, _objectIdMeta),
      );
    } else if (isInserting) {
      context.missing(_objectIdMeta);
    }
    if (data.containsKey('attachment_type')) {
      context.handle(
        _attachmentTypeMeta,
        attachmentType.isAcceptableOrUnknown(
          data['attachment_type']!,
          _attachmentTypeMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_attachmentTypeMeta);
    }
    if (data.containsKey('local_path')) {
      context.handle(
        _localPathMeta,
        localPath.isAcceptableOrUnknown(data['local_path']!, _localPathMeta),
      );
    } else if (isInserting) {
      context.missing(_localPathMeta);
    }
    if (data.containsKey('content_type')) {
      context.handle(
        _contentTypeMeta,
        contentType.isAcceptableOrUnknown(
          data['content_type']!,
          _contentTypeMeta,
        ),
      );
    }
    if (data.containsKey('size_bytes')) {
      context.handle(
        _sizeBytesMeta,
        sizeBytes.isAcceptableOrUnknown(data['size_bytes']!, _sizeBytesMeta),
      );
    } else if (isInserting) {
      context.missing(_sizeBytesMeta);
    }
    if (data.containsKey('sha256')) {
      context.handle(
        _sha256Meta,
        sha256.isAcceptableOrUnknown(data['sha256']!, _sha256Meta),
      );
    } else if (isInserting) {
      context.missing(_sha256Meta);
    }
    if (data.containsKey('width')) {
      context.handle(
        _widthMeta,
        width.isAcceptableOrUnknown(data['width']!, _widthMeta),
      );
    }
    if (data.containsKey('height')) {
      context.handle(
        _heightMeta,
        height.isAcceptableOrUnknown(data['height']!, _heightMeta),
      );
    }
    if (data.containsKey('captured_at')) {
      context.handle(
        _capturedAtMeta,
        capturedAt.isAcceptableOrUnknown(data['captured_at']!, _capturedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_capturedAtMeta);
    }
    if (data.containsKey('gps_lat')) {
      context.handle(
        _gpsLatMeta,
        gpsLat.isAcceptableOrUnknown(data['gps_lat']!, _gpsLatMeta),
      );
    }
    if (data.containsKey('gps_lng')) {
      context.handle(
        _gpsLngMeta,
        gpsLng.isAcceptableOrUnknown(data['gps_lng']!, _gpsLngMeta),
      );
    }
    if (data.containsKey('gps_status')) {
      context.handle(
        _gpsStatusMeta,
        gpsStatus.isAcceptableOrUnknown(data['gps_status']!, _gpsStatusMeta),
      );
    }
    if (data.containsKey('caption')) {
      context.handle(
        _captionMeta,
        caption.isAcceptableOrUnknown(data['caption']!, _captionMeta),
      );
    }
    if (data.containsKey('checklist_item_id')) {
      context.handle(
        _checklistItemIdMeta,
        checklistItemId.isAcceptableOrUnknown(
          data['checklist_item_id']!,
          _checklistItemIdMeta,
        ),
      );
    }
    if (data.containsKey('mutation_id')) {
      context.handle(
        _mutationIdMeta,
        mutationId.isAcceptableOrUnknown(data['mutation_id']!, _mutationIdMeta),
      );
    }
    if (data.containsKey('attachment_id')) {
      context.handle(
        _attachmentIdMeta,
        attachmentId.isAcceptableOrUnknown(
          data['attachment_id']!,
          _attachmentIdMeta,
        ),
      );
    }
    if (data.containsKey('upload_url')) {
      context.handle(
        _uploadUrlMeta,
        uploadUrl.isAcceptableOrUnknown(data['upload_url']!, _uploadUrlMeta),
      );
    }
    if (data.containsKey('upload_state')) {
      context.handle(
        _uploadStateMeta,
        uploadState.isAcceptableOrUnknown(
          data['upload_state']!,
          _uploadStateMeta,
        ),
      );
    }
    if (data.containsKey('attempts')) {
      context.handle(
        _attemptsMeta,
        attempts.isAcceptableOrUnknown(data['attempts']!, _attemptsMeta),
      );
    }
    if (data.containsKey('next_attempt_at')) {
      context.handle(
        _nextAttemptAtMeta,
        nextAttemptAt.isAcceptableOrUnknown(
          data['next_attempt_at']!,
          _nextAttemptAtMeta,
        ),
      );
    }
    if (data.containsKey('last_error')) {
      context.handle(
        _lastErrorMeta,
        lastError.isAcceptableOrUnknown(data['last_error']!, _lastErrorMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {clientAttachmentId};
  @override
  PendingFileRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PendingFileRow(
      clientAttachmentId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}client_attachment_id'],
      )!,
      objectType: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}object_type'],
      )!,
      objectId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}object_id'],
      )!,
      attachmentType: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}attachment_type'],
      )!,
      localPath: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}local_path'],
      )!,
      contentType: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}content_type'],
      )!,
      sizeBytes: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}size_bytes'],
      )!,
      sha256: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}sha256'],
      )!,
      width: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}width'],
      ),
      height: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}height'],
      ),
      capturedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}captured_at'],
      )!,
      gpsLat: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}gps_lat'],
      ),
      gpsLng: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}gps_lng'],
      ),
      gpsStatus: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}gps_status'],
      )!,
      caption: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}caption'],
      ),
      checklistItemId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}checklist_item_id'],
      ),
      mutationId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}mutation_id'],
      ),
      attachmentId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}attachment_id'],
      ),
      uploadUrl: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}upload_url'],
      ),
      uploadState: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}upload_state'],
      )!,
      attempts: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}attempts'],
      )!,
      nextAttemptAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}next_attempt_at'],
      ),
      lastError: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}last_error'],
      ),
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  $PendingFilesTable createAlias(String alias) {
    return $PendingFilesTable(attachedDatabase, alias);
  }
}

class PendingFileRow extends DataClass implements Insertable<PendingFileRow> {
  final String clientAttachmentId;
  final String objectType;
  final String objectId;
  final String attachmentType;
  final String localPath;
  final String contentType;
  final int sizeBytes;
  final String sha256;
  final int? width;
  final int? height;
  final DateTime capturedAt;
  final double? gpsLat;
  final double? gpsLng;
  final String gpsStatus;
  final String? caption;
  final String? checklistItemId;
  final String? mutationId;
  final String? attachmentId;
  final String? uploadUrl;
  final String uploadState;
  final int attempts;
  final DateTime? nextAttemptAt;
  final String? lastError;
  final DateTime createdAt;
  const PendingFileRow({
    required this.clientAttachmentId,
    required this.objectType,
    required this.objectId,
    required this.attachmentType,
    required this.localPath,
    required this.contentType,
    required this.sizeBytes,
    required this.sha256,
    this.width,
    this.height,
    required this.capturedAt,
    this.gpsLat,
    this.gpsLng,
    required this.gpsStatus,
    this.caption,
    this.checklistItemId,
    this.mutationId,
    this.attachmentId,
    this.uploadUrl,
    required this.uploadState,
    required this.attempts,
    this.nextAttemptAt,
    this.lastError,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['client_attachment_id'] = Variable<String>(clientAttachmentId);
    map['object_type'] = Variable<String>(objectType);
    map['object_id'] = Variable<String>(objectId);
    map['attachment_type'] = Variable<String>(attachmentType);
    map['local_path'] = Variable<String>(localPath);
    map['content_type'] = Variable<String>(contentType);
    map['size_bytes'] = Variable<int>(sizeBytes);
    map['sha256'] = Variable<String>(sha256);
    if (!nullToAbsent || width != null) {
      map['width'] = Variable<int>(width);
    }
    if (!nullToAbsent || height != null) {
      map['height'] = Variable<int>(height);
    }
    map['captured_at'] = Variable<DateTime>(capturedAt);
    if (!nullToAbsent || gpsLat != null) {
      map['gps_lat'] = Variable<double>(gpsLat);
    }
    if (!nullToAbsent || gpsLng != null) {
      map['gps_lng'] = Variable<double>(gpsLng);
    }
    map['gps_status'] = Variable<String>(gpsStatus);
    if (!nullToAbsent || caption != null) {
      map['caption'] = Variable<String>(caption);
    }
    if (!nullToAbsent || checklistItemId != null) {
      map['checklist_item_id'] = Variable<String>(checklistItemId);
    }
    if (!nullToAbsent || mutationId != null) {
      map['mutation_id'] = Variable<String>(mutationId);
    }
    if (!nullToAbsent || attachmentId != null) {
      map['attachment_id'] = Variable<String>(attachmentId);
    }
    if (!nullToAbsent || uploadUrl != null) {
      map['upload_url'] = Variable<String>(uploadUrl);
    }
    map['upload_state'] = Variable<String>(uploadState);
    map['attempts'] = Variable<int>(attempts);
    if (!nullToAbsent || nextAttemptAt != null) {
      map['next_attempt_at'] = Variable<DateTime>(nextAttemptAt);
    }
    if (!nullToAbsent || lastError != null) {
      map['last_error'] = Variable<String>(lastError);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  PendingFilesCompanion toCompanion(bool nullToAbsent) {
    return PendingFilesCompanion(
      clientAttachmentId: Value(clientAttachmentId),
      objectType: Value(objectType),
      objectId: Value(objectId),
      attachmentType: Value(attachmentType),
      localPath: Value(localPath),
      contentType: Value(contentType),
      sizeBytes: Value(sizeBytes),
      sha256: Value(sha256),
      width: width == null && nullToAbsent
          ? const Value.absent()
          : Value(width),
      height: height == null && nullToAbsent
          ? const Value.absent()
          : Value(height),
      capturedAt: Value(capturedAt),
      gpsLat: gpsLat == null && nullToAbsent
          ? const Value.absent()
          : Value(gpsLat),
      gpsLng: gpsLng == null && nullToAbsent
          ? const Value.absent()
          : Value(gpsLng),
      gpsStatus: Value(gpsStatus),
      caption: caption == null && nullToAbsent
          ? const Value.absent()
          : Value(caption),
      checklistItemId: checklistItemId == null && nullToAbsent
          ? const Value.absent()
          : Value(checklistItemId),
      mutationId: mutationId == null && nullToAbsent
          ? const Value.absent()
          : Value(mutationId),
      attachmentId: attachmentId == null && nullToAbsent
          ? const Value.absent()
          : Value(attachmentId),
      uploadUrl: uploadUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(uploadUrl),
      uploadState: Value(uploadState),
      attempts: Value(attempts),
      nextAttemptAt: nextAttemptAt == null && nullToAbsent
          ? const Value.absent()
          : Value(nextAttemptAt),
      lastError: lastError == null && nullToAbsent
          ? const Value.absent()
          : Value(lastError),
      createdAt: Value(createdAt),
    );
  }

  factory PendingFileRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PendingFileRow(
      clientAttachmentId: serializer.fromJson<String>(
        json['clientAttachmentId'],
      ),
      objectType: serializer.fromJson<String>(json['objectType']),
      objectId: serializer.fromJson<String>(json['objectId']),
      attachmentType: serializer.fromJson<String>(json['attachmentType']),
      localPath: serializer.fromJson<String>(json['localPath']),
      contentType: serializer.fromJson<String>(json['contentType']),
      sizeBytes: serializer.fromJson<int>(json['sizeBytes']),
      sha256: serializer.fromJson<String>(json['sha256']),
      width: serializer.fromJson<int?>(json['width']),
      height: serializer.fromJson<int?>(json['height']),
      capturedAt: serializer.fromJson<DateTime>(json['capturedAt']),
      gpsLat: serializer.fromJson<double?>(json['gpsLat']),
      gpsLng: serializer.fromJson<double?>(json['gpsLng']),
      gpsStatus: serializer.fromJson<String>(json['gpsStatus']),
      caption: serializer.fromJson<String?>(json['caption']),
      checklistItemId: serializer.fromJson<String?>(json['checklistItemId']),
      mutationId: serializer.fromJson<String?>(json['mutationId']),
      attachmentId: serializer.fromJson<String?>(json['attachmentId']),
      uploadUrl: serializer.fromJson<String?>(json['uploadUrl']),
      uploadState: serializer.fromJson<String>(json['uploadState']),
      attempts: serializer.fromJson<int>(json['attempts']),
      nextAttemptAt: serializer.fromJson<DateTime?>(json['nextAttemptAt']),
      lastError: serializer.fromJson<String?>(json['lastError']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'clientAttachmentId': serializer.toJson<String>(clientAttachmentId),
      'objectType': serializer.toJson<String>(objectType),
      'objectId': serializer.toJson<String>(objectId),
      'attachmentType': serializer.toJson<String>(attachmentType),
      'localPath': serializer.toJson<String>(localPath),
      'contentType': serializer.toJson<String>(contentType),
      'sizeBytes': serializer.toJson<int>(sizeBytes),
      'sha256': serializer.toJson<String>(sha256),
      'width': serializer.toJson<int?>(width),
      'height': serializer.toJson<int?>(height),
      'capturedAt': serializer.toJson<DateTime>(capturedAt),
      'gpsLat': serializer.toJson<double?>(gpsLat),
      'gpsLng': serializer.toJson<double?>(gpsLng),
      'gpsStatus': serializer.toJson<String>(gpsStatus),
      'caption': serializer.toJson<String?>(caption),
      'checklistItemId': serializer.toJson<String?>(checklistItemId),
      'mutationId': serializer.toJson<String?>(mutationId),
      'attachmentId': serializer.toJson<String?>(attachmentId),
      'uploadUrl': serializer.toJson<String?>(uploadUrl),
      'uploadState': serializer.toJson<String>(uploadState),
      'attempts': serializer.toJson<int>(attempts),
      'nextAttemptAt': serializer.toJson<DateTime?>(nextAttemptAt),
      'lastError': serializer.toJson<String?>(lastError),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  PendingFileRow copyWith({
    String? clientAttachmentId,
    String? objectType,
    String? objectId,
    String? attachmentType,
    String? localPath,
    String? contentType,
    int? sizeBytes,
    String? sha256,
    Value<int?> width = const Value.absent(),
    Value<int?> height = const Value.absent(),
    DateTime? capturedAt,
    Value<double?> gpsLat = const Value.absent(),
    Value<double?> gpsLng = const Value.absent(),
    String? gpsStatus,
    Value<String?> caption = const Value.absent(),
    Value<String?> checklistItemId = const Value.absent(),
    Value<String?> mutationId = const Value.absent(),
    Value<String?> attachmentId = const Value.absent(),
    Value<String?> uploadUrl = const Value.absent(),
    String? uploadState,
    int? attempts,
    Value<DateTime?> nextAttemptAt = const Value.absent(),
    Value<String?> lastError = const Value.absent(),
    DateTime? createdAt,
  }) => PendingFileRow(
    clientAttachmentId: clientAttachmentId ?? this.clientAttachmentId,
    objectType: objectType ?? this.objectType,
    objectId: objectId ?? this.objectId,
    attachmentType: attachmentType ?? this.attachmentType,
    localPath: localPath ?? this.localPath,
    contentType: contentType ?? this.contentType,
    sizeBytes: sizeBytes ?? this.sizeBytes,
    sha256: sha256 ?? this.sha256,
    width: width.present ? width.value : this.width,
    height: height.present ? height.value : this.height,
    capturedAt: capturedAt ?? this.capturedAt,
    gpsLat: gpsLat.present ? gpsLat.value : this.gpsLat,
    gpsLng: gpsLng.present ? gpsLng.value : this.gpsLng,
    gpsStatus: gpsStatus ?? this.gpsStatus,
    caption: caption.present ? caption.value : this.caption,
    checklistItemId: checklistItemId.present
        ? checklistItemId.value
        : this.checklistItemId,
    mutationId: mutationId.present ? mutationId.value : this.mutationId,
    attachmentId: attachmentId.present ? attachmentId.value : this.attachmentId,
    uploadUrl: uploadUrl.present ? uploadUrl.value : this.uploadUrl,
    uploadState: uploadState ?? this.uploadState,
    attempts: attempts ?? this.attempts,
    nextAttemptAt: nextAttemptAt.present
        ? nextAttemptAt.value
        : this.nextAttemptAt,
    lastError: lastError.present ? lastError.value : this.lastError,
    createdAt: createdAt ?? this.createdAt,
  );
  PendingFileRow copyWithCompanion(PendingFilesCompanion data) {
    return PendingFileRow(
      clientAttachmentId: data.clientAttachmentId.present
          ? data.clientAttachmentId.value
          : this.clientAttachmentId,
      objectType: data.objectType.present
          ? data.objectType.value
          : this.objectType,
      objectId: data.objectId.present ? data.objectId.value : this.objectId,
      attachmentType: data.attachmentType.present
          ? data.attachmentType.value
          : this.attachmentType,
      localPath: data.localPath.present ? data.localPath.value : this.localPath,
      contentType: data.contentType.present
          ? data.contentType.value
          : this.contentType,
      sizeBytes: data.sizeBytes.present ? data.sizeBytes.value : this.sizeBytes,
      sha256: data.sha256.present ? data.sha256.value : this.sha256,
      width: data.width.present ? data.width.value : this.width,
      height: data.height.present ? data.height.value : this.height,
      capturedAt: data.capturedAt.present
          ? data.capturedAt.value
          : this.capturedAt,
      gpsLat: data.gpsLat.present ? data.gpsLat.value : this.gpsLat,
      gpsLng: data.gpsLng.present ? data.gpsLng.value : this.gpsLng,
      gpsStatus: data.gpsStatus.present ? data.gpsStatus.value : this.gpsStatus,
      caption: data.caption.present ? data.caption.value : this.caption,
      checklistItemId: data.checklistItemId.present
          ? data.checklistItemId.value
          : this.checklistItemId,
      mutationId: data.mutationId.present
          ? data.mutationId.value
          : this.mutationId,
      attachmentId: data.attachmentId.present
          ? data.attachmentId.value
          : this.attachmentId,
      uploadUrl: data.uploadUrl.present ? data.uploadUrl.value : this.uploadUrl,
      uploadState: data.uploadState.present
          ? data.uploadState.value
          : this.uploadState,
      attempts: data.attempts.present ? data.attempts.value : this.attempts,
      nextAttemptAt: data.nextAttemptAt.present
          ? data.nextAttemptAt.value
          : this.nextAttemptAt,
      lastError: data.lastError.present ? data.lastError.value : this.lastError,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PendingFileRow(')
          ..write('clientAttachmentId: $clientAttachmentId, ')
          ..write('objectType: $objectType, ')
          ..write('objectId: $objectId, ')
          ..write('attachmentType: $attachmentType, ')
          ..write('localPath: $localPath, ')
          ..write('contentType: $contentType, ')
          ..write('sizeBytes: $sizeBytes, ')
          ..write('sha256: $sha256, ')
          ..write('width: $width, ')
          ..write('height: $height, ')
          ..write('capturedAt: $capturedAt, ')
          ..write('gpsLat: $gpsLat, ')
          ..write('gpsLng: $gpsLng, ')
          ..write('gpsStatus: $gpsStatus, ')
          ..write('caption: $caption, ')
          ..write('checklistItemId: $checklistItemId, ')
          ..write('mutationId: $mutationId, ')
          ..write('attachmentId: $attachmentId, ')
          ..write('uploadUrl: $uploadUrl, ')
          ..write('uploadState: $uploadState, ')
          ..write('attempts: $attempts, ')
          ..write('nextAttemptAt: $nextAttemptAt, ')
          ..write('lastError: $lastError, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
    clientAttachmentId,
    objectType,
    objectId,
    attachmentType,
    localPath,
    contentType,
    sizeBytes,
    sha256,
    width,
    height,
    capturedAt,
    gpsLat,
    gpsLng,
    gpsStatus,
    caption,
    checklistItemId,
    mutationId,
    attachmentId,
    uploadUrl,
    uploadState,
    attempts,
    nextAttemptAt,
    lastError,
    createdAt,
  ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PendingFileRow &&
          other.clientAttachmentId == this.clientAttachmentId &&
          other.objectType == this.objectType &&
          other.objectId == this.objectId &&
          other.attachmentType == this.attachmentType &&
          other.localPath == this.localPath &&
          other.contentType == this.contentType &&
          other.sizeBytes == this.sizeBytes &&
          other.sha256 == this.sha256 &&
          other.width == this.width &&
          other.height == this.height &&
          other.capturedAt == this.capturedAt &&
          other.gpsLat == this.gpsLat &&
          other.gpsLng == this.gpsLng &&
          other.gpsStatus == this.gpsStatus &&
          other.caption == this.caption &&
          other.checklistItemId == this.checklistItemId &&
          other.mutationId == this.mutationId &&
          other.attachmentId == this.attachmentId &&
          other.uploadUrl == this.uploadUrl &&
          other.uploadState == this.uploadState &&
          other.attempts == this.attempts &&
          other.nextAttemptAt == this.nextAttemptAt &&
          other.lastError == this.lastError &&
          other.createdAt == this.createdAt);
}

class PendingFilesCompanion extends UpdateCompanion<PendingFileRow> {
  final Value<String> clientAttachmentId;
  final Value<String> objectType;
  final Value<String> objectId;
  final Value<String> attachmentType;
  final Value<String> localPath;
  final Value<String> contentType;
  final Value<int> sizeBytes;
  final Value<String> sha256;
  final Value<int?> width;
  final Value<int?> height;
  final Value<DateTime> capturedAt;
  final Value<double?> gpsLat;
  final Value<double?> gpsLng;
  final Value<String> gpsStatus;
  final Value<String?> caption;
  final Value<String?> checklistItemId;
  final Value<String?> mutationId;
  final Value<String?> attachmentId;
  final Value<String?> uploadUrl;
  final Value<String> uploadState;
  final Value<int> attempts;
  final Value<DateTime?> nextAttemptAt;
  final Value<String?> lastError;
  final Value<DateTime> createdAt;
  final Value<int> rowid;
  const PendingFilesCompanion({
    this.clientAttachmentId = const Value.absent(),
    this.objectType = const Value.absent(),
    this.objectId = const Value.absent(),
    this.attachmentType = const Value.absent(),
    this.localPath = const Value.absent(),
    this.contentType = const Value.absent(),
    this.sizeBytes = const Value.absent(),
    this.sha256 = const Value.absent(),
    this.width = const Value.absent(),
    this.height = const Value.absent(),
    this.capturedAt = const Value.absent(),
    this.gpsLat = const Value.absent(),
    this.gpsLng = const Value.absent(),
    this.gpsStatus = const Value.absent(),
    this.caption = const Value.absent(),
    this.checklistItemId = const Value.absent(),
    this.mutationId = const Value.absent(),
    this.attachmentId = const Value.absent(),
    this.uploadUrl = const Value.absent(),
    this.uploadState = const Value.absent(),
    this.attempts = const Value.absent(),
    this.nextAttemptAt = const Value.absent(),
    this.lastError = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  PendingFilesCompanion.insert({
    required String clientAttachmentId,
    required String objectType,
    required String objectId,
    required String attachmentType,
    required String localPath,
    this.contentType = const Value.absent(),
    required int sizeBytes,
    required String sha256,
    this.width = const Value.absent(),
    this.height = const Value.absent(),
    required DateTime capturedAt,
    this.gpsLat = const Value.absent(),
    this.gpsLng = const Value.absent(),
    this.gpsStatus = const Value.absent(),
    this.caption = const Value.absent(),
    this.checklistItemId = const Value.absent(),
    this.mutationId = const Value.absent(),
    this.attachmentId = const Value.absent(),
    this.uploadUrl = const Value.absent(),
    this.uploadState = const Value.absent(),
    this.attempts = const Value.absent(),
    this.nextAttemptAt = const Value.absent(),
    this.lastError = const Value.absent(),
    required DateTime createdAt,
    this.rowid = const Value.absent(),
  }) : clientAttachmentId = Value(clientAttachmentId),
       objectType = Value(objectType),
       objectId = Value(objectId),
       attachmentType = Value(attachmentType),
       localPath = Value(localPath),
       sizeBytes = Value(sizeBytes),
       sha256 = Value(sha256),
       capturedAt = Value(capturedAt),
       createdAt = Value(createdAt);
  static Insertable<PendingFileRow> custom({
    Expression<String>? clientAttachmentId,
    Expression<String>? objectType,
    Expression<String>? objectId,
    Expression<String>? attachmentType,
    Expression<String>? localPath,
    Expression<String>? contentType,
    Expression<int>? sizeBytes,
    Expression<String>? sha256,
    Expression<int>? width,
    Expression<int>? height,
    Expression<DateTime>? capturedAt,
    Expression<double>? gpsLat,
    Expression<double>? gpsLng,
    Expression<String>? gpsStatus,
    Expression<String>? caption,
    Expression<String>? checklistItemId,
    Expression<String>? mutationId,
    Expression<String>? attachmentId,
    Expression<String>? uploadUrl,
    Expression<String>? uploadState,
    Expression<int>? attempts,
    Expression<DateTime>? nextAttemptAt,
    Expression<String>? lastError,
    Expression<DateTime>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (clientAttachmentId != null)
        'client_attachment_id': clientAttachmentId,
      if (objectType != null) 'object_type': objectType,
      if (objectId != null) 'object_id': objectId,
      if (attachmentType != null) 'attachment_type': attachmentType,
      if (localPath != null) 'local_path': localPath,
      if (contentType != null) 'content_type': contentType,
      if (sizeBytes != null) 'size_bytes': sizeBytes,
      if (sha256 != null) 'sha256': sha256,
      if (width != null) 'width': width,
      if (height != null) 'height': height,
      if (capturedAt != null) 'captured_at': capturedAt,
      if (gpsLat != null) 'gps_lat': gpsLat,
      if (gpsLng != null) 'gps_lng': gpsLng,
      if (gpsStatus != null) 'gps_status': gpsStatus,
      if (caption != null) 'caption': caption,
      if (checklistItemId != null) 'checklist_item_id': checklistItemId,
      if (mutationId != null) 'mutation_id': mutationId,
      if (attachmentId != null) 'attachment_id': attachmentId,
      if (uploadUrl != null) 'upload_url': uploadUrl,
      if (uploadState != null) 'upload_state': uploadState,
      if (attempts != null) 'attempts': attempts,
      if (nextAttemptAt != null) 'next_attempt_at': nextAttemptAt,
      if (lastError != null) 'last_error': lastError,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  PendingFilesCompanion copyWith({
    Value<String>? clientAttachmentId,
    Value<String>? objectType,
    Value<String>? objectId,
    Value<String>? attachmentType,
    Value<String>? localPath,
    Value<String>? contentType,
    Value<int>? sizeBytes,
    Value<String>? sha256,
    Value<int?>? width,
    Value<int?>? height,
    Value<DateTime>? capturedAt,
    Value<double?>? gpsLat,
    Value<double?>? gpsLng,
    Value<String>? gpsStatus,
    Value<String?>? caption,
    Value<String?>? checklistItemId,
    Value<String?>? mutationId,
    Value<String?>? attachmentId,
    Value<String?>? uploadUrl,
    Value<String>? uploadState,
    Value<int>? attempts,
    Value<DateTime?>? nextAttemptAt,
    Value<String?>? lastError,
    Value<DateTime>? createdAt,
    Value<int>? rowid,
  }) {
    return PendingFilesCompanion(
      clientAttachmentId: clientAttachmentId ?? this.clientAttachmentId,
      objectType: objectType ?? this.objectType,
      objectId: objectId ?? this.objectId,
      attachmentType: attachmentType ?? this.attachmentType,
      localPath: localPath ?? this.localPath,
      contentType: contentType ?? this.contentType,
      sizeBytes: sizeBytes ?? this.sizeBytes,
      sha256: sha256 ?? this.sha256,
      width: width ?? this.width,
      height: height ?? this.height,
      capturedAt: capturedAt ?? this.capturedAt,
      gpsLat: gpsLat ?? this.gpsLat,
      gpsLng: gpsLng ?? this.gpsLng,
      gpsStatus: gpsStatus ?? this.gpsStatus,
      caption: caption ?? this.caption,
      checklistItemId: checklistItemId ?? this.checklistItemId,
      mutationId: mutationId ?? this.mutationId,
      attachmentId: attachmentId ?? this.attachmentId,
      uploadUrl: uploadUrl ?? this.uploadUrl,
      uploadState: uploadState ?? this.uploadState,
      attempts: attempts ?? this.attempts,
      nextAttemptAt: nextAttemptAt ?? this.nextAttemptAt,
      lastError: lastError ?? this.lastError,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (clientAttachmentId.present) {
      map['client_attachment_id'] = Variable<String>(clientAttachmentId.value);
    }
    if (objectType.present) {
      map['object_type'] = Variable<String>(objectType.value);
    }
    if (objectId.present) {
      map['object_id'] = Variable<String>(objectId.value);
    }
    if (attachmentType.present) {
      map['attachment_type'] = Variable<String>(attachmentType.value);
    }
    if (localPath.present) {
      map['local_path'] = Variable<String>(localPath.value);
    }
    if (contentType.present) {
      map['content_type'] = Variable<String>(contentType.value);
    }
    if (sizeBytes.present) {
      map['size_bytes'] = Variable<int>(sizeBytes.value);
    }
    if (sha256.present) {
      map['sha256'] = Variable<String>(sha256.value);
    }
    if (width.present) {
      map['width'] = Variable<int>(width.value);
    }
    if (height.present) {
      map['height'] = Variable<int>(height.value);
    }
    if (capturedAt.present) {
      map['captured_at'] = Variable<DateTime>(capturedAt.value);
    }
    if (gpsLat.present) {
      map['gps_lat'] = Variable<double>(gpsLat.value);
    }
    if (gpsLng.present) {
      map['gps_lng'] = Variable<double>(gpsLng.value);
    }
    if (gpsStatus.present) {
      map['gps_status'] = Variable<String>(gpsStatus.value);
    }
    if (caption.present) {
      map['caption'] = Variable<String>(caption.value);
    }
    if (checklistItemId.present) {
      map['checklist_item_id'] = Variable<String>(checklistItemId.value);
    }
    if (mutationId.present) {
      map['mutation_id'] = Variable<String>(mutationId.value);
    }
    if (attachmentId.present) {
      map['attachment_id'] = Variable<String>(attachmentId.value);
    }
    if (uploadUrl.present) {
      map['upload_url'] = Variable<String>(uploadUrl.value);
    }
    if (uploadState.present) {
      map['upload_state'] = Variable<String>(uploadState.value);
    }
    if (attempts.present) {
      map['attempts'] = Variable<int>(attempts.value);
    }
    if (nextAttemptAt.present) {
      map['next_attempt_at'] = Variable<DateTime>(nextAttemptAt.value);
    }
    if (lastError.present) {
      map['last_error'] = Variable<String>(lastError.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PendingFilesCompanion(')
          ..write('clientAttachmentId: $clientAttachmentId, ')
          ..write('objectType: $objectType, ')
          ..write('objectId: $objectId, ')
          ..write('attachmentType: $attachmentType, ')
          ..write('localPath: $localPath, ')
          ..write('contentType: $contentType, ')
          ..write('sizeBytes: $sizeBytes, ')
          ..write('sha256: $sha256, ')
          ..write('width: $width, ')
          ..write('height: $height, ')
          ..write('capturedAt: $capturedAt, ')
          ..write('gpsLat: $gpsLat, ')
          ..write('gpsLng: $gpsLng, ')
          ..write('gpsStatus: $gpsStatus, ')
          ..write('caption: $caption, ')
          ..write('checklistItemId: $checklistItemId, ')
          ..write('mutationId: $mutationId, ')
          ..write('attachmentId: $attachmentId, ')
          ..write('uploadUrl: $uploadUrl, ')
          ..write('uploadState: $uploadState, ')
          ..write('attempts: $attempts, ')
          ..write('nextAttemptAt: $nextAttemptAt, ')
          ..write('lastError: $lastError, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SyncMetaTable extends SyncMeta
    with TableInfo<$SyncMetaTable, SyncMetaRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SyncMetaTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _keyMeta = const VerificationMeta('key');
  @override
  late final GeneratedColumn<String> key = GeneratedColumn<String>(
    'key',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<String> value = GeneratedColumn<String>(
    'value',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [key, value];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'sync_meta';
  @override
  VerificationContext validateIntegrity(
    Insertable<SyncMetaRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('key')) {
      context.handle(
        _keyMeta,
        key.isAcceptableOrUnknown(data['key']!, _keyMeta),
      );
    } else if (isInserting) {
      context.missing(_keyMeta);
    }
    if (data.containsKey('value')) {
      context.handle(
        _valueMeta,
        value.isAcceptableOrUnknown(data['value']!, _valueMeta),
      );
    } else if (isInserting) {
      context.missing(_valueMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {key};
  @override
  SyncMetaRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SyncMetaRow(
      key: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}key'],
      )!,
      value: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}value'],
      )!,
    );
  }

  @override
  $SyncMetaTable createAlias(String alias) {
    return $SyncMetaTable(attachedDatabase, alias);
  }
}

class SyncMetaRow extends DataClass implements Insertable<SyncMetaRow> {
  final String key;
  final String value;
  const SyncMetaRow({required this.key, required this.value});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['key'] = Variable<String>(key);
    map['value'] = Variable<String>(value);
    return map;
  }

  SyncMetaCompanion toCompanion(bool nullToAbsent) {
    return SyncMetaCompanion(key: Value(key), value: Value(value));
  }

  factory SyncMetaRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SyncMetaRow(
      key: serializer.fromJson<String>(json['key']),
      value: serializer.fromJson<String>(json['value']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'key': serializer.toJson<String>(key),
      'value': serializer.toJson<String>(value),
    };
  }

  SyncMetaRow copyWith({String? key, String? value}) =>
      SyncMetaRow(key: key ?? this.key, value: value ?? this.value);
  SyncMetaRow copyWithCompanion(SyncMetaCompanion data) {
    return SyncMetaRow(
      key: data.key.present ? data.key.value : this.key,
      value: data.value.present ? data.value.value : this.value,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SyncMetaRow(')
          ..write('key: $key, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(key, value);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SyncMetaRow &&
          other.key == this.key &&
          other.value == this.value);
}

class SyncMetaCompanion extends UpdateCompanion<SyncMetaRow> {
  final Value<String> key;
  final Value<String> value;
  final Value<int> rowid;
  const SyncMetaCompanion({
    this.key = const Value.absent(),
    this.value = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SyncMetaCompanion.insert({
    required String key,
    required String value,
    this.rowid = const Value.absent(),
  }) : key = Value(key),
       value = Value(value);
  static Insertable<SyncMetaRow> custom({
    Expression<String>? key,
    Expression<String>? value,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (key != null) 'key': key,
      if (value != null) 'value': value,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SyncMetaCompanion copyWith({
    Value<String>? key,
    Value<String>? value,
    Value<int>? rowid,
  }) {
    return SyncMetaCompanion(
      key: key ?? this.key,
      value: value ?? this.value,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (key.present) {
      map['key'] = Variable<String>(key.value);
    }
    if (value.present) {
      map['value'] = Variable<String>(value.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SyncMetaCompanion(')
          ..write('key: $key, ')
          ..write('value: $value, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$BvDatabase extends GeneratedDatabase {
  _$BvDatabase(QueryExecutor e) : super(e);
  $BvDatabaseManager get managers => $BvDatabaseManager(this);
  late final $WorkItemsTable workItems = $WorkItemsTable(this);
  late final $ChecklistRunsTable checklistRuns = $ChecklistRunsTable(this);
  late final $PatrolCheckpointsTable patrolCheckpoints =
      $PatrolCheckpointsTable(this);
  late final $LocationsTable locations = $LocationsTable(this);
  late final $AssetsTable assets = $AssetsTable(this);
  late final $MutationsTable mutations = $MutationsTable(this);
  late final $ObjectSeqsTable objectSeqs = $ObjectSeqsTable(this);
  late final $PendingFilesTable pendingFiles = $PendingFilesTable(this);
  late final $SyncMetaTable syncMeta = $SyncMetaTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    workItems,
    checklistRuns,
    patrolCheckpoints,
    locations,
    assets,
    mutations,
    objectSeqs,
    pendingFiles,
    syncMeta,
  ];
  @override
  DriftDatabaseOptions get options =>
      const DriftDatabaseOptions(storeDateTimeAsText: true);
}

typedef $$WorkItemsTableCreateCompanionBuilder = WorkItemsCompanion Function({
  required String id,
  required String objectType,
  required String kind,
  required String status,
  required String priority,
  required String title,
  required String number,
  Value<DateTime?> dueAt,
  Value<DateTime?> scheduledStartAt,
  Value<bool> isOverdue,
  Value<String?> assigneeUserId,
  Value<String?> assigneeTeamId,
  required Map<String, dynamic> json,
  required DateTime updatedAt,
  Value<String> syncState,
  Value<String?> syncMessage,
  Value<int> rowid,
});
typedef $$WorkItemsTableUpdateCompanionBuilder = WorkItemsCompanion Function({
  Value<String> id,
  Value<String> objectType,
  Value<String> kind,
  Value<String> status,
  Value<String> priority,
  Value<String> title,
  Value<String> number,
  Value<DateTime?> dueAt,
  Value<DateTime?> scheduledStartAt,
  Value<bool> isOverdue,
  Value<String?> assigneeUserId,
  Value<String?> assigneeTeamId,
  Value<Map<String, dynamic>> json,
  Value<DateTime> updatedAt,
  Value<String> syncState,
  Value<String?> syncMessage,
  Value<int> rowid,
});

class $$WorkItemsTableFilterComposer
    extends Composer<_$BvDatabase, $WorkItemsTable> {
  $$WorkItemsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get objectType => $composableBuilder(
    column: $table.objectType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get kind => $composableBuilder(
    column: $table.kind,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get priority => $composableBuilder(
    column: $table.priority,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get number => $composableBuilder(
    column: $table.number,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get dueAt => $composableBuilder(
    column: $table.dueAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get scheduledStartAt => $composableBuilder(
    column: $table.scheduledStartAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isOverdue => $composableBuilder(
    column: $table.isOverdue,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get assigneeUserId => $composableBuilder(
    column: $table.assigneeUserId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get assigneeTeamId => $composableBuilder(
    column: $table.assigneeTeamId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnWithTypeConverterFilters<
    Map<String, dynamic>,
    Map<String, dynamic>,
    String
  >
  get json => $composableBuilder(
    column: $table.json,
    builder: (column) => ColumnWithTypeConverterFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get syncState => $composableBuilder(
    column: $table.syncState,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get syncMessage => $composableBuilder(
    column: $table.syncMessage,
    builder: (column) => ColumnFilters(column),
  );
}

class $$WorkItemsTableOrderingComposer
    extends Composer<_$BvDatabase, $WorkItemsTable> {
  $$WorkItemsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get objectType => $composableBuilder(
    column: $table.objectType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get kind => $composableBuilder(
    column: $table.kind,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get priority => $composableBuilder(
    column: $table.priority,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get number => $composableBuilder(
    column: $table.number,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get dueAt => $composableBuilder(
    column: $table.dueAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get scheduledStartAt => $composableBuilder(
    column: $table.scheduledStartAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isOverdue => $composableBuilder(
    column: $table.isOverdue,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get assigneeUserId => $composableBuilder(
    column: $table.assigneeUserId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get assigneeTeamId => $composableBuilder(
    column: $table.assigneeTeamId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get json => $composableBuilder(
    column: $table.json,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get syncState => $composableBuilder(
    column: $table.syncState,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get syncMessage => $composableBuilder(
    column: $table.syncMessage,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$WorkItemsTableAnnotationComposer
    extends Composer<_$BvDatabase, $WorkItemsTable> {
  $$WorkItemsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get objectType => $composableBuilder(
    column: $table.objectType,
    builder: (column) => column,
  );

  GeneratedColumn<String> get kind =>
      $composableBuilder(column: $table.kind, builder: (column) => column);

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<String> get priority =>
      $composableBuilder(column: $table.priority, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get number =>
      $composableBuilder(column: $table.number, builder: (column) => column);

  GeneratedColumn<DateTime> get dueAt =>
      $composableBuilder(column: $table.dueAt, builder: (column) => column);

  GeneratedColumn<DateTime> get scheduledStartAt => $composableBuilder(
    column: $table.scheduledStartAt,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isOverdue =>
      $composableBuilder(column: $table.isOverdue, builder: (column) => column);

  GeneratedColumn<String> get assigneeUserId => $composableBuilder(
    column: $table.assigneeUserId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get assigneeTeamId => $composableBuilder(
    column: $table.assigneeTeamId,
    builder: (column) => column,
  );

  GeneratedColumnWithTypeConverter<Map<String, dynamic>, String> get json =>
      $composableBuilder(column: $table.json, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<String> get syncState =>
      $composableBuilder(column: $table.syncState, builder: (column) => column);

  GeneratedColumn<String> get syncMessage => $composableBuilder(
    column: $table.syncMessage,
    builder: (column) => column,
  );
}

class $$WorkItemsTableTableManager
    extends
        RootTableManager<
          _$BvDatabase,
          $WorkItemsTable,
          WorkItemRow,
          $$WorkItemsTableFilterComposer,
          $$WorkItemsTableOrderingComposer,
          $$WorkItemsTableAnnotationComposer,
          $$WorkItemsTableCreateCompanionBuilder,
          $$WorkItemsTableUpdateCompanionBuilder,
          (
            WorkItemRow,
            BaseReferences<_$BvDatabase, $WorkItemsTable, WorkItemRow>,
          ),
          WorkItemRow,
          PrefetchHooks Function()
        > {
  $$WorkItemsTableTableManager(_$BvDatabase db, $WorkItemsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$WorkItemsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$WorkItemsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$WorkItemsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> objectType = const Value.absent(),
                Value<String> kind = const Value.absent(),
                Value<String> status = const Value.absent(),
                Value<String> priority = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<String> number = const Value.absent(),
                Value<DateTime?> dueAt = const Value.absent(),
                Value<DateTime?> scheduledStartAt = const Value.absent(),
                Value<bool> isOverdue = const Value.absent(),
                Value<String?> assigneeUserId = const Value.absent(),
                Value<String?> assigneeTeamId = const Value.absent(),
                Value<Map<String, dynamic>> json = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<String> syncState = const Value.absent(),
                Value<String?> syncMessage = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => WorkItemsCompanion(
                id: id,
                objectType: objectType,
                kind: kind,
                status: status,
                priority: priority,
                title: title,
                number: number,
                dueAt: dueAt,
                scheduledStartAt: scheduledStartAt,
                isOverdue: isOverdue,
                assigneeUserId: assigneeUserId,
                assigneeTeamId: assigneeTeamId,
                json: json,
                updatedAt: updatedAt,
                syncState: syncState,
                syncMessage: syncMessage,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String objectType,
                required String kind,
                required String status,
                required String priority,
                required String title,
                required String number,
                Value<DateTime?> dueAt = const Value.absent(),
                Value<DateTime?> scheduledStartAt = const Value.absent(),
                Value<bool> isOverdue = const Value.absent(),
                Value<String?> assigneeUserId = const Value.absent(),
                Value<String?> assigneeTeamId = const Value.absent(),
                required Map<String, dynamic> json,
                required DateTime updatedAt,
                Value<String> syncState = const Value.absent(),
                Value<String?> syncMessage = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => WorkItemsCompanion.insert(
                id: id,
                objectType: objectType,
                kind: kind,
                status: status,
                priority: priority,
                title: title,
                number: number,
                dueAt: dueAt,
                scheduledStartAt: scheduledStartAt,
                isOverdue: isOverdue,
                assigneeUserId: assigneeUserId,
                assigneeTeamId: assigneeTeamId,
                json: json,
                updatedAt: updatedAt,
                syncState: syncState,
                syncMessage: syncMessage,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$WorkItemsTable, WorkItemRow>(table),
                  BaseReferences<_$BvDatabase, $WorkItemsTable, WorkItemRow>(
                    db,
                    table,
                    e,
                  ),
                ),
              )
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$WorkItemsTableProcessedTableManager =
    ProcessedTableManager<
      _$BvDatabase,
      $WorkItemsTable,
      WorkItemRow,
      $$WorkItemsTableFilterComposer,
      $$WorkItemsTableOrderingComposer,
      $$WorkItemsTableAnnotationComposer,
      $$WorkItemsTableCreateCompanionBuilder,
      $$WorkItemsTableUpdateCompanionBuilder,
      (WorkItemRow, BaseReferences<_$BvDatabase, $WorkItemsTable, WorkItemRow>),
      WorkItemRow,
      PrefetchHooks Function()
    >;
typedef $$ChecklistRunsTableCreateCompanionBuilder =
    ChecklistRunsCompanion Function({
      required String id,
      required String objectType,
      required String objectId,
      required Map<String, dynamic> json,
      required DateTime updatedAt,
      Value<int> rowid,
    });
typedef $$ChecklistRunsTableUpdateCompanionBuilder =
    ChecklistRunsCompanion Function({
      Value<String> id,
      Value<String> objectType,
      Value<String> objectId,
      Value<Map<String, dynamic>> json,
      Value<DateTime> updatedAt,
      Value<int> rowid,
    });

class $$ChecklistRunsTableFilterComposer
    extends Composer<_$BvDatabase, $ChecklistRunsTable> {
  $$ChecklistRunsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get objectType => $composableBuilder(
    column: $table.objectType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get objectId => $composableBuilder(
    column: $table.objectId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnWithTypeConverterFilters<
    Map<String, dynamic>,
    Map<String, dynamic>,
    String
  >
  get json => $composableBuilder(
    column: $table.json,
    builder: (column) => ColumnWithTypeConverterFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$ChecklistRunsTableOrderingComposer
    extends Composer<_$BvDatabase, $ChecklistRunsTable> {
  $$ChecklistRunsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get objectType => $composableBuilder(
    column: $table.objectType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get objectId => $composableBuilder(
    column: $table.objectId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get json => $composableBuilder(
    column: $table.json,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ChecklistRunsTableAnnotationComposer
    extends Composer<_$BvDatabase, $ChecklistRunsTable> {
  $$ChecklistRunsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get objectType => $composableBuilder(
    column: $table.objectType,
    builder: (column) => column,
  );

  GeneratedColumn<String> get objectId =>
      $composableBuilder(column: $table.objectId, builder: (column) => column);

  GeneratedColumnWithTypeConverter<Map<String, dynamic>, String> get json =>
      $composableBuilder(column: $table.json, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);
}

class $$ChecklistRunsTableTableManager
    extends
        RootTableManager<
          _$BvDatabase,
          $ChecklistRunsTable,
          ChecklistRunRow,
          $$ChecklistRunsTableFilterComposer,
          $$ChecklistRunsTableOrderingComposer,
          $$ChecklistRunsTableAnnotationComposer,
          $$ChecklistRunsTableCreateCompanionBuilder,
          $$ChecklistRunsTableUpdateCompanionBuilder,
          (
            ChecklistRunRow,
            BaseReferences<_$BvDatabase, $ChecklistRunsTable, ChecklistRunRow>,
          ),
          ChecklistRunRow,
          PrefetchHooks Function()
        > {
  $$ChecklistRunsTableTableManager(_$BvDatabase db, $ChecklistRunsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ChecklistRunsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ChecklistRunsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ChecklistRunsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> objectType = const Value.absent(),
                Value<String> objectId = const Value.absent(),
                Value<Map<String, dynamic>> json = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ChecklistRunsCompanion(
                id: id,
                objectType: objectType,
                objectId: objectId,
                json: json,
                updatedAt: updatedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String objectType,
                required String objectId,
                required Map<String, dynamic> json,
                required DateTime updatedAt,
                Value<int> rowid = const Value.absent(),
              }) => ChecklistRunsCompanion.insert(
                id: id,
                objectType: objectType,
                objectId: objectId,
                json: json,
                updatedAt: updatedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$ChecklistRunsTable, ChecklistRunRow>(table),
                  BaseReferences<
                    _$BvDatabase,
                    $ChecklistRunsTable,
                    ChecklistRunRow
                  >(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$ChecklistRunsTableProcessedTableManager =
    ProcessedTableManager<
      _$BvDatabase,
      $ChecklistRunsTable,
      ChecklistRunRow,
      $$ChecklistRunsTableFilterComposer,
      $$ChecklistRunsTableOrderingComposer,
      $$ChecklistRunsTableAnnotationComposer,
      $$ChecklistRunsTableCreateCompanionBuilder,
      $$ChecklistRunsTableUpdateCompanionBuilder,
      (
        ChecklistRunRow,
        BaseReferences<_$BvDatabase, $ChecklistRunsTable, ChecklistRunRow>,
      ),
      ChecklistRunRow,
      PrefetchHooks Function()
    >;
typedef $$PatrolCheckpointsTableCreateCompanionBuilder =
    PatrolCheckpointsCompanion Function({
      required String id,
      required String taskId,
      required String checkpointId,
      Value<String?> qrCode,
      Value<int> sortOrder,
      Value<String> status,
      required Map<String, dynamic> json,
      Value<int> rowid,
    });
typedef $$PatrolCheckpointsTableUpdateCompanionBuilder =
    PatrolCheckpointsCompanion Function({
      Value<String> id,
      Value<String> taskId,
      Value<String> checkpointId,
      Value<String?> qrCode,
      Value<int> sortOrder,
      Value<String> status,
      Value<Map<String, dynamic>> json,
      Value<int> rowid,
    });

class $$PatrolCheckpointsTableFilterComposer
    extends Composer<_$BvDatabase, $PatrolCheckpointsTable> {
  $$PatrolCheckpointsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get taskId => $composableBuilder(
    column: $table.taskId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get checkpointId => $composableBuilder(
    column: $table.checkpointId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get qrCode => $composableBuilder(
    column: $table.qrCode,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get sortOrder => $composableBuilder(
    column: $table.sortOrder,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnFilters(column),
  );

  ColumnWithTypeConverterFilters<
    Map<String, dynamic>,
    Map<String, dynamic>,
    String
  >
  get json => $composableBuilder(
    column: $table.json,
    builder: (column) => ColumnWithTypeConverterFilters(column),
  );
}

class $$PatrolCheckpointsTableOrderingComposer
    extends Composer<_$BvDatabase, $PatrolCheckpointsTable> {
  $$PatrolCheckpointsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get taskId => $composableBuilder(
    column: $table.taskId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get checkpointId => $composableBuilder(
    column: $table.checkpointId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get qrCode => $composableBuilder(
    column: $table.qrCode,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get sortOrder => $composableBuilder(
    column: $table.sortOrder,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get json => $composableBuilder(
    column: $table.json,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$PatrolCheckpointsTableAnnotationComposer
    extends Composer<_$BvDatabase, $PatrolCheckpointsTable> {
  $$PatrolCheckpointsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get taskId =>
      $composableBuilder(column: $table.taskId, builder: (column) => column);

  GeneratedColumn<String> get checkpointId => $composableBuilder(
    column: $table.checkpointId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get qrCode =>
      $composableBuilder(column: $table.qrCode, builder: (column) => column);

  GeneratedColumn<int> get sortOrder =>
      $composableBuilder(column: $table.sortOrder, builder: (column) => column);

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumnWithTypeConverter<Map<String, dynamic>, String> get json =>
      $composableBuilder(column: $table.json, builder: (column) => column);
}

class $$PatrolCheckpointsTableTableManager
    extends
        RootTableManager<
          _$BvDatabase,
          $PatrolCheckpointsTable,
          PatrolCheckpointRow,
          $$PatrolCheckpointsTableFilterComposer,
          $$PatrolCheckpointsTableOrderingComposer,
          $$PatrolCheckpointsTableAnnotationComposer,
          $$PatrolCheckpointsTableCreateCompanionBuilder,
          $$PatrolCheckpointsTableUpdateCompanionBuilder,
          (
            PatrolCheckpointRow,
            BaseReferences<
              _$BvDatabase,
              $PatrolCheckpointsTable,
              PatrolCheckpointRow
            >,
          ),
          PatrolCheckpointRow,
          PrefetchHooks Function()
        > {
  $$PatrolCheckpointsTableTableManager(
    _$BvDatabase db,
    $PatrolCheckpointsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PatrolCheckpointsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PatrolCheckpointsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PatrolCheckpointsTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> taskId = const Value.absent(),
                Value<String> checkpointId = const Value.absent(),
                Value<String?> qrCode = const Value.absent(),
                Value<int> sortOrder = const Value.absent(),
                Value<String> status = const Value.absent(),
                Value<Map<String, dynamic>> json = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => PatrolCheckpointsCompanion(
                id: id,
                taskId: taskId,
                checkpointId: checkpointId,
                qrCode: qrCode,
                sortOrder: sortOrder,
                status: status,
                json: json,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String taskId,
                required String checkpointId,
                Value<String?> qrCode = const Value.absent(),
                Value<int> sortOrder = const Value.absent(),
                Value<String> status = const Value.absent(),
                required Map<String, dynamic> json,
                Value<int> rowid = const Value.absent(),
              }) => PatrolCheckpointsCompanion.insert(
                id: id,
                taskId: taskId,
                checkpointId: checkpointId,
                qrCode: qrCode,
                sortOrder: sortOrder,
                status: status,
                json: json,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$PatrolCheckpointsTable, PatrolCheckpointRow>(
                    table,
                  ),
                  BaseReferences<
                    _$BvDatabase,
                    $PatrolCheckpointsTable,
                    PatrolCheckpointRow
                  >(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$PatrolCheckpointsTableProcessedTableManager =
    ProcessedTableManager<
      _$BvDatabase,
      $PatrolCheckpointsTable,
      PatrolCheckpointRow,
      $$PatrolCheckpointsTableFilterComposer,
      $$PatrolCheckpointsTableOrderingComposer,
      $$PatrolCheckpointsTableAnnotationComposer,
      $$PatrolCheckpointsTableCreateCompanionBuilder,
      $$PatrolCheckpointsTableUpdateCompanionBuilder,
      (
        PatrolCheckpointRow,
        BaseReferences<
          _$BvDatabase,
          $PatrolCheckpointsTable,
          PatrolCheckpointRow
        >,
      ),
      PatrolCheckpointRow,
      PrefetchHooks Function()
    >;
typedef $$LocationsTableCreateCompanionBuilder = LocationsCompanion Function({
  required String id,
  required String name,
  Value<String> locationType,
  Value<String> pathText,
  Value<String?> qrCode,
  Value<int> rowid,
});
typedef $$LocationsTableUpdateCompanionBuilder = LocationsCompanion Function({
  Value<String> id,
  Value<String> name,
  Value<String> locationType,
  Value<String> pathText,
  Value<String?> qrCode,
  Value<int> rowid,
});

class $$LocationsTableFilterComposer
    extends Composer<_$BvDatabase, $LocationsTable> {
  $$LocationsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get locationType => $composableBuilder(
    column: $table.locationType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get pathText => $composableBuilder(
    column: $table.pathText,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get qrCode => $composableBuilder(
    column: $table.qrCode,
    builder: (column) => ColumnFilters(column),
  );
}

class $$LocationsTableOrderingComposer
    extends Composer<_$BvDatabase, $LocationsTable> {
  $$LocationsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get locationType => $composableBuilder(
    column: $table.locationType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get pathText => $composableBuilder(
    column: $table.pathText,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get qrCode => $composableBuilder(
    column: $table.qrCode,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$LocationsTableAnnotationComposer
    extends Composer<_$BvDatabase, $LocationsTable> {
  $$LocationsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get locationType => $composableBuilder(
    column: $table.locationType,
    builder: (column) => column,
  );

  GeneratedColumn<String> get pathText =>
      $composableBuilder(column: $table.pathText, builder: (column) => column);

  GeneratedColumn<String> get qrCode =>
      $composableBuilder(column: $table.qrCode, builder: (column) => column);
}

class $$LocationsTableTableManager
    extends
        RootTableManager<
          _$BvDatabase,
          $LocationsTable,
          LocationRow,
          $$LocationsTableFilterComposer,
          $$LocationsTableOrderingComposer,
          $$LocationsTableAnnotationComposer,
          $$LocationsTableCreateCompanionBuilder,
          $$LocationsTableUpdateCompanionBuilder,
          (
            LocationRow,
            BaseReferences<_$BvDatabase, $LocationsTable, LocationRow>,
          ),
          LocationRow,
          PrefetchHooks Function()
        > {
  $$LocationsTableTableManager(_$BvDatabase db, $LocationsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$LocationsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$LocationsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$LocationsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String> locationType = const Value.absent(),
                Value<String> pathText = const Value.absent(),
                Value<String?> qrCode = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => LocationsCompanion(
                id: id,
                name: name,
                locationType: locationType,
                pathText: pathText,
                qrCode: qrCode,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String name,
                Value<String> locationType = const Value.absent(),
                Value<String> pathText = const Value.absent(),
                Value<String?> qrCode = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => LocationsCompanion.insert(
                id: id,
                name: name,
                locationType: locationType,
                pathText: pathText,
                qrCode: qrCode,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$LocationsTable, LocationRow>(table),
                  BaseReferences<_$BvDatabase, $LocationsTable, LocationRow>(
                    db,
                    table,
                    e,
                  ),
                ),
              )
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$LocationsTableProcessedTableManager =
    ProcessedTableManager<
      _$BvDatabase,
      $LocationsTable,
      LocationRow,
      $$LocationsTableFilterComposer,
      $$LocationsTableOrderingComposer,
      $$LocationsTableAnnotationComposer,
      $$LocationsTableCreateCompanionBuilder,
      $$LocationsTableUpdateCompanionBuilder,
      (LocationRow, BaseReferences<_$BvDatabase, $LocationsTable, LocationRow>),
      LocationRow,
      PrefetchHooks Function()
    >;
typedef $$AssetsTableCreateCompanionBuilder = AssetsCompanion Function({
  required String id,
  required String assetCode,
  required String name,
  Value<String> status,
  Value<String> locationId,
  Value<String?> qrCode,
  Value<int> rowid,
});
typedef $$AssetsTableUpdateCompanionBuilder = AssetsCompanion Function({
  Value<String> id,
  Value<String> assetCode,
  Value<String> name,
  Value<String> status,
  Value<String> locationId,
  Value<String?> qrCode,
  Value<int> rowid,
});

class $$AssetsTableFilterComposer extends Composer<_$BvDatabase, $AssetsTable> {
  $$AssetsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get assetCode => $composableBuilder(
    column: $table.assetCode,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get locationId => $composableBuilder(
    column: $table.locationId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get qrCode => $composableBuilder(
    column: $table.qrCode,
    builder: (column) => ColumnFilters(column),
  );
}

class $$AssetsTableOrderingComposer
    extends Composer<_$BvDatabase, $AssetsTable> {
  $$AssetsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get assetCode => $composableBuilder(
    column: $table.assetCode,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get locationId => $composableBuilder(
    column: $table.locationId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get qrCode => $composableBuilder(
    column: $table.qrCode,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$AssetsTableAnnotationComposer
    extends Composer<_$BvDatabase, $AssetsTable> {
  $$AssetsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get assetCode =>
      $composableBuilder(column: $table.assetCode, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<String> get locationId => $composableBuilder(
    column: $table.locationId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get qrCode =>
      $composableBuilder(column: $table.qrCode, builder: (column) => column);
}

class $$AssetsTableTableManager
    extends
        RootTableManager<
          _$BvDatabase,
          $AssetsTable,
          AssetRow,
          $$AssetsTableFilterComposer,
          $$AssetsTableOrderingComposer,
          $$AssetsTableAnnotationComposer,
          $$AssetsTableCreateCompanionBuilder,
          $$AssetsTableUpdateCompanionBuilder,
          (AssetRow, BaseReferences<_$BvDatabase, $AssetsTable, AssetRow>),
          AssetRow,
          PrefetchHooks Function()
        > {
  $$AssetsTableTableManager(_$BvDatabase db, $AssetsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$AssetsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$AssetsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$AssetsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> assetCode = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String> status = const Value.absent(),
                Value<String> locationId = const Value.absent(),
                Value<String?> qrCode = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => AssetsCompanion(
                id: id,
                assetCode: assetCode,
                name: name,
                status: status,
                locationId: locationId,
                qrCode: qrCode,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String assetCode,
                required String name,
                Value<String> status = const Value.absent(),
                Value<String> locationId = const Value.absent(),
                Value<String?> qrCode = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => AssetsCompanion.insert(
                id: id,
                assetCode: assetCode,
                name: name,
                status: status,
                locationId: locationId,
                qrCode: qrCode,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$AssetsTable, AssetRow>(table),
                  BaseReferences<_$BvDatabase, $AssetsTable, AssetRow>(
                    db,
                    table,
                    e,
                  ),
                ),
              )
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$AssetsTableProcessedTableManager =
    ProcessedTableManager<
      _$BvDatabase,
      $AssetsTable,
      AssetRow,
      $$AssetsTableFilterComposer,
      $$AssetsTableOrderingComposer,
      $$AssetsTableAnnotationComposer,
      $$AssetsTableCreateCompanionBuilder,
      $$AssetsTableUpdateCompanionBuilder,
      (AssetRow, BaseReferences<_$BvDatabase, $AssetsTable, AssetRow>),
      AssetRow,
      PrefetchHooks Function()
    >;
typedef $$MutationsTableCreateCompanionBuilder = MutationsCompanion Function({
  required String clientMutationId,
  required String objectType,
  required String objectId,
  required String action,
  required int seq,
  required Map<String, dynamic> payload,
  required DateTime clientTime,
  Value<String> status,
  Value<int> attempts,
  Value<DateTime?> nextAttemptAt,
  Value<String?> reasonCode,
  Value<String?> lastError,
  Value<Map<String, dynamic>?> response,
  required DateTime createdAt,
  Value<DateTime?> syncedAt,
  Value<int> rowid,
});
typedef $$MutationsTableUpdateCompanionBuilder = MutationsCompanion Function({
  Value<String> clientMutationId,
  Value<String> objectType,
  Value<String> objectId,
  Value<String> action,
  Value<int> seq,
  Value<Map<String, dynamic>> payload,
  Value<DateTime> clientTime,
  Value<String> status,
  Value<int> attempts,
  Value<DateTime?> nextAttemptAt,
  Value<String?> reasonCode,
  Value<String?> lastError,
  Value<Map<String, dynamic>?> response,
  Value<DateTime> createdAt,
  Value<DateTime?> syncedAt,
  Value<int> rowid,
});

class $$MutationsTableFilterComposer
    extends Composer<_$BvDatabase, $MutationsTable> {
  $$MutationsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get clientMutationId => $composableBuilder(
    column: $table.clientMutationId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get objectType => $composableBuilder(
    column: $table.objectType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get objectId => $composableBuilder(
    column: $table.objectId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get action => $composableBuilder(
    column: $table.action,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get seq => $composableBuilder(
    column: $table.seq,
    builder: (column) => ColumnFilters(column),
  );

  ColumnWithTypeConverterFilters<
    Map<String, dynamic>,
    Map<String, dynamic>,
    String
  >
  get payload => $composableBuilder(
    column: $table.payload,
    builder: (column) => ColumnWithTypeConverterFilters(column),
  );

  ColumnFilters<DateTime> get clientTime => $composableBuilder(
    column: $table.clientTime,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get attempts => $composableBuilder(
    column: $table.attempts,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get nextAttemptAt => $composableBuilder(
    column: $table.nextAttemptAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get reasonCode => $composableBuilder(
    column: $table.reasonCode,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get lastError => $composableBuilder(
    column: $table.lastError,
    builder: (column) => ColumnFilters(column),
  );

  ColumnWithTypeConverterFilters<
    Map<String, dynamic>?,
    Map<String, dynamic>,
    String
  >
  get response => $composableBuilder(
    column: $table.response,
    builder: (column) => ColumnWithTypeConverterFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get syncedAt => $composableBuilder(
    column: $table.syncedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$MutationsTableOrderingComposer
    extends Composer<_$BvDatabase, $MutationsTable> {
  $$MutationsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get clientMutationId => $composableBuilder(
    column: $table.clientMutationId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get objectType => $composableBuilder(
    column: $table.objectType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get objectId => $composableBuilder(
    column: $table.objectId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get action => $composableBuilder(
    column: $table.action,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get seq => $composableBuilder(
    column: $table.seq,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get payload => $composableBuilder(
    column: $table.payload,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get clientTime => $composableBuilder(
    column: $table.clientTime,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get attempts => $composableBuilder(
    column: $table.attempts,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get nextAttemptAt => $composableBuilder(
    column: $table.nextAttemptAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get reasonCode => $composableBuilder(
    column: $table.reasonCode,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get lastError => $composableBuilder(
    column: $table.lastError,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get response => $composableBuilder(
    column: $table.response,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get syncedAt => $composableBuilder(
    column: $table.syncedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$MutationsTableAnnotationComposer
    extends Composer<_$BvDatabase, $MutationsTable> {
  $$MutationsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get clientMutationId => $composableBuilder(
    column: $table.clientMutationId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get objectType => $composableBuilder(
    column: $table.objectType,
    builder: (column) => column,
  );

  GeneratedColumn<String> get objectId =>
      $composableBuilder(column: $table.objectId, builder: (column) => column);

  GeneratedColumn<String> get action =>
      $composableBuilder(column: $table.action, builder: (column) => column);

  GeneratedColumn<int> get seq =>
      $composableBuilder(column: $table.seq, builder: (column) => column);

  GeneratedColumnWithTypeConverter<Map<String, dynamic>, String> get payload =>
      $composableBuilder(column: $table.payload, builder: (column) => column);

  GeneratedColumn<DateTime> get clientTime => $composableBuilder(
    column: $table.clientTime,
    builder: (column) => column,
  );

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<int> get attempts =>
      $composableBuilder(column: $table.attempts, builder: (column) => column);

  GeneratedColumn<DateTime> get nextAttemptAt => $composableBuilder(
    column: $table.nextAttemptAt,
    builder: (column) => column,
  );

  GeneratedColumn<String> get reasonCode => $composableBuilder(
    column: $table.reasonCode,
    builder: (column) => column,
  );

  GeneratedColumn<String> get lastError =>
      $composableBuilder(column: $table.lastError, builder: (column) => column);

  GeneratedColumnWithTypeConverter<Map<String, dynamic>?, String>
  get response =>
      $composableBuilder(column: $table.response, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get syncedAt =>
      $composableBuilder(column: $table.syncedAt, builder: (column) => column);
}

class $$MutationsTableTableManager
    extends
        RootTableManager<
          _$BvDatabase,
          $MutationsTable,
          MutationRow,
          $$MutationsTableFilterComposer,
          $$MutationsTableOrderingComposer,
          $$MutationsTableAnnotationComposer,
          $$MutationsTableCreateCompanionBuilder,
          $$MutationsTableUpdateCompanionBuilder,
          (
            MutationRow,
            BaseReferences<_$BvDatabase, $MutationsTable, MutationRow>,
          ),
          MutationRow,
          PrefetchHooks Function()
        > {
  $$MutationsTableTableManager(_$BvDatabase db, $MutationsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$MutationsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$MutationsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$MutationsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> clientMutationId = const Value.absent(),
                Value<String> objectType = const Value.absent(),
                Value<String> objectId = const Value.absent(),
                Value<String> action = const Value.absent(),
                Value<int> seq = const Value.absent(),
                Value<Map<String, dynamic>> payload = const Value.absent(),
                Value<DateTime> clientTime = const Value.absent(),
                Value<String> status = const Value.absent(),
                Value<int> attempts = const Value.absent(),
                Value<DateTime?> nextAttemptAt = const Value.absent(),
                Value<String?> reasonCode = const Value.absent(),
                Value<String?> lastError = const Value.absent(),
                Value<Map<String, dynamic>?> response = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime?> syncedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => MutationsCompanion(
                clientMutationId: clientMutationId,
                objectType: objectType,
                objectId: objectId,
                action: action,
                seq: seq,
                payload: payload,
                clientTime: clientTime,
                status: status,
                attempts: attempts,
                nextAttemptAt: nextAttemptAt,
                reasonCode: reasonCode,
                lastError: lastError,
                response: response,
                createdAt: createdAt,
                syncedAt: syncedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String clientMutationId,
                required String objectType,
                required String objectId,
                required String action,
                required int seq,
                required Map<String, dynamic> payload,
                required DateTime clientTime,
                Value<String> status = const Value.absent(),
                Value<int> attempts = const Value.absent(),
                Value<DateTime?> nextAttemptAt = const Value.absent(),
                Value<String?> reasonCode = const Value.absent(),
                Value<String?> lastError = const Value.absent(),
                Value<Map<String, dynamic>?> response = const Value.absent(),
                required DateTime createdAt,
                Value<DateTime?> syncedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => MutationsCompanion.insert(
                clientMutationId: clientMutationId,
                objectType: objectType,
                objectId: objectId,
                action: action,
                seq: seq,
                payload: payload,
                clientTime: clientTime,
                status: status,
                attempts: attempts,
                nextAttemptAt: nextAttemptAt,
                reasonCode: reasonCode,
                lastError: lastError,
                response: response,
                createdAt: createdAt,
                syncedAt: syncedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$MutationsTable, MutationRow>(table),
                  BaseReferences<_$BvDatabase, $MutationsTable, MutationRow>(
                    db,
                    table,
                    e,
                  ),
                ),
              )
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$MutationsTableProcessedTableManager =
    ProcessedTableManager<
      _$BvDatabase,
      $MutationsTable,
      MutationRow,
      $$MutationsTableFilterComposer,
      $$MutationsTableOrderingComposer,
      $$MutationsTableAnnotationComposer,
      $$MutationsTableCreateCompanionBuilder,
      $$MutationsTableUpdateCompanionBuilder,
      (MutationRow, BaseReferences<_$BvDatabase, $MutationsTable, MutationRow>),
      MutationRow,
      PrefetchHooks Function()
    >;
typedef $$ObjectSeqsTableCreateCompanionBuilder = ObjectSeqsCompanion Function({
  required String objectId,
  Value<int> lastSeq,
  Value<int> rowid,
});
typedef $$ObjectSeqsTableUpdateCompanionBuilder = ObjectSeqsCompanion Function({
  Value<String> objectId,
  Value<int> lastSeq,
  Value<int> rowid,
});

class $$ObjectSeqsTableFilterComposer
    extends Composer<_$BvDatabase, $ObjectSeqsTable> {
  $$ObjectSeqsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get objectId => $composableBuilder(
    column: $table.objectId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get lastSeq => $composableBuilder(
    column: $table.lastSeq,
    builder: (column) => ColumnFilters(column),
  );
}

class $$ObjectSeqsTableOrderingComposer
    extends Composer<_$BvDatabase, $ObjectSeqsTable> {
  $$ObjectSeqsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get objectId => $composableBuilder(
    column: $table.objectId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get lastSeq => $composableBuilder(
    column: $table.lastSeq,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ObjectSeqsTableAnnotationComposer
    extends Composer<_$BvDatabase, $ObjectSeqsTable> {
  $$ObjectSeqsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get objectId =>
      $composableBuilder(column: $table.objectId, builder: (column) => column);

  GeneratedColumn<int> get lastSeq =>
      $composableBuilder(column: $table.lastSeq, builder: (column) => column);
}

class $$ObjectSeqsTableTableManager
    extends
        RootTableManager<
          _$BvDatabase,
          $ObjectSeqsTable,
          ObjectSeqRow,
          $$ObjectSeqsTableFilterComposer,
          $$ObjectSeqsTableOrderingComposer,
          $$ObjectSeqsTableAnnotationComposer,
          $$ObjectSeqsTableCreateCompanionBuilder,
          $$ObjectSeqsTableUpdateCompanionBuilder,
          (
            ObjectSeqRow,
            BaseReferences<_$BvDatabase, $ObjectSeqsTable, ObjectSeqRow>,
          ),
          ObjectSeqRow,
          PrefetchHooks Function()
        > {
  $$ObjectSeqsTableTableManager(_$BvDatabase db, $ObjectSeqsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ObjectSeqsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ObjectSeqsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ObjectSeqsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> objectId = const Value.absent(),
                Value<int> lastSeq = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ObjectSeqsCompanion(
                objectId: objectId,
                lastSeq: lastSeq,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String objectId,
                Value<int> lastSeq = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ObjectSeqsCompanion.insert(
                objectId: objectId,
                lastSeq: lastSeq,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$ObjectSeqsTable, ObjectSeqRow>(table),
                  BaseReferences<_$BvDatabase, $ObjectSeqsTable, ObjectSeqRow>(
                    db,
                    table,
                    e,
                  ),
                ),
              )
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$ObjectSeqsTableProcessedTableManager =
    ProcessedTableManager<
      _$BvDatabase,
      $ObjectSeqsTable,
      ObjectSeqRow,
      $$ObjectSeqsTableFilterComposer,
      $$ObjectSeqsTableOrderingComposer,
      $$ObjectSeqsTableAnnotationComposer,
      $$ObjectSeqsTableCreateCompanionBuilder,
      $$ObjectSeqsTableUpdateCompanionBuilder,
      (
        ObjectSeqRow,
        BaseReferences<_$BvDatabase, $ObjectSeqsTable, ObjectSeqRow>,
      ),
      ObjectSeqRow,
      PrefetchHooks Function()
    >;
typedef $$PendingFilesTableCreateCompanionBuilder =
    PendingFilesCompanion Function({
      required String clientAttachmentId,
      required String objectType,
      required String objectId,
      required String attachmentType,
      required String localPath,
      Value<String> contentType,
      required int sizeBytes,
      required String sha256,
      Value<int?> width,
      Value<int?> height,
      required DateTime capturedAt,
      Value<double?> gpsLat,
      Value<double?> gpsLng,
      Value<String> gpsStatus,
      Value<String?> caption,
      Value<String?> checklistItemId,
      Value<String?> mutationId,
      Value<String?> attachmentId,
      Value<String?> uploadUrl,
      Value<String> uploadState,
      Value<int> attempts,
      Value<DateTime?> nextAttemptAt,
      Value<String?> lastError,
      required DateTime createdAt,
      Value<int> rowid,
    });
typedef $$PendingFilesTableUpdateCompanionBuilder =
    PendingFilesCompanion Function({
      Value<String> clientAttachmentId,
      Value<String> objectType,
      Value<String> objectId,
      Value<String> attachmentType,
      Value<String> localPath,
      Value<String> contentType,
      Value<int> sizeBytes,
      Value<String> sha256,
      Value<int?> width,
      Value<int?> height,
      Value<DateTime> capturedAt,
      Value<double?> gpsLat,
      Value<double?> gpsLng,
      Value<String> gpsStatus,
      Value<String?> caption,
      Value<String?> checklistItemId,
      Value<String?> mutationId,
      Value<String?> attachmentId,
      Value<String?> uploadUrl,
      Value<String> uploadState,
      Value<int> attempts,
      Value<DateTime?> nextAttemptAt,
      Value<String?> lastError,
      Value<DateTime> createdAt,
      Value<int> rowid,
    });

class $$PendingFilesTableFilterComposer
    extends Composer<_$BvDatabase, $PendingFilesTable> {
  $$PendingFilesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get clientAttachmentId => $composableBuilder(
    column: $table.clientAttachmentId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get objectType => $composableBuilder(
    column: $table.objectType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get objectId => $composableBuilder(
    column: $table.objectId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get attachmentType => $composableBuilder(
    column: $table.attachmentType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get localPath => $composableBuilder(
    column: $table.localPath,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get contentType => $composableBuilder(
    column: $table.contentType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get sizeBytes => $composableBuilder(
    column: $table.sizeBytes,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get sha256 => $composableBuilder(
    column: $table.sha256,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get width => $composableBuilder(
    column: $table.width,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get height => $composableBuilder(
    column: $table.height,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get capturedAt => $composableBuilder(
    column: $table.capturedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get gpsLat => $composableBuilder(
    column: $table.gpsLat,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get gpsLng => $composableBuilder(
    column: $table.gpsLng,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get gpsStatus => $composableBuilder(
    column: $table.gpsStatus,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get caption => $composableBuilder(
    column: $table.caption,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get checklistItemId => $composableBuilder(
    column: $table.checklistItemId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get mutationId => $composableBuilder(
    column: $table.mutationId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get attachmentId => $composableBuilder(
    column: $table.attachmentId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get uploadUrl => $composableBuilder(
    column: $table.uploadUrl,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get uploadState => $composableBuilder(
    column: $table.uploadState,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get attempts => $composableBuilder(
    column: $table.attempts,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get nextAttemptAt => $composableBuilder(
    column: $table.nextAttemptAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get lastError => $composableBuilder(
    column: $table.lastError,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$PendingFilesTableOrderingComposer
    extends Composer<_$BvDatabase, $PendingFilesTable> {
  $$PendingFilesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get clientAttachmentId => $composableBuilder(
    column: $table.clientAttachmentId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get objectType => $composableBuilder(
    column: $table.objectType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get objectId => $composableBuilder(
    column: $table.objectId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get attachmentType => $composableBuilder(
    column: $table.attachmentType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get localPath => $composableBuilder(
    column: $table.localPath,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get contentType => $composableBuilder(
    column: $table.contentType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get sizeBytes => $composableBuilder(
    column: $table.sizeBytes,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get sha256 => $composableBuilder(
    column: $table.sha256,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get width => $composableBuilder(
    column: $table.width,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get height => $composableBuilder(
    column: $table.height,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get capturedAt => $composableBuilder(
    column: $table.capturedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get gpsLat => $composableBuilder(
    column: $table.gpsLat,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get gpsLng => $composableBuilder(
    column: $table.gpsLng,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get gpsStatus => $composableBuilder(
    column: $table.gpsStatus,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get caption => $composableBuilder(
    column: $table.caption,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get checklistItemId => $composableBuilder(
    column: $table.checklistItemId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get mutationId => $composableBuilder(
    column: $table.mutationId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get attachmentId => $composableBuilder(
    column: $table.attachmentId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get uploadUrl => $composableBuilder(
    column: $table.uploadUrl,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get uploadState => $composableBuilder(
    column: $table.uploadState,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get attempts => $composableBuilder(
    column: $table.attempts,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get nextAttemptAt => $composableBuilder(
    column: $table.nextAttemptAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get lastError => $composableBuilder(
    column: $table.lastError,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$PendingFilesTableAnnotationComposer
    extends Composer<_$BvDatabase, $PendingFilesTable> {
  $$PendingFilesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get clientAttachmentId => $composableBuilder(
    column: $table.clientAttachmentId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get objectType => $composableBuilder(
    column: $table.objectType,
    builder: (column) => column,
  );

  GeneratedColumn<String> get objectId =>
      $composableBuilder(column: $table.objectId, builder: (column) => column);

  GeneratedColumn<String> get attachmentType => $composableBuilder(
    column: $table.attachmentType,
    builder: (column) => column,
  );

  GeneratedColumn<String> get localPath =>
      $composableBuilder(column: $table.localPath, builder: (column) => column);

  GeneratedColumn<String> get contentType => $composableBuilder(
    column: $table.contentType,
    builder: (column) => column,
  );

  GeneratedColumn<int> get sizeBytes =>
      $composableBuilder(column: $table.sizeBytes, builder: (column) => column);

  GeneratedColumn<String> get sha256 =>
      $composableBuilder(column: $table.sha256, builder: (column) => column);

  GeneratedColumn<int> get width =>
      $composableBuilder(column: $table.width, builder: (column) => column);

  GeneratedColumn<int> get height =>
      $composableBuilder(column: $table.height, builder: (column) => column);

  GeneratedColumn<DateTime> get capturedAt => $composableBuilder(
    column: $table.capturedAt,
    builder: (column) => column,
  );

  GeneratedColumn<double> get gpsLat =>
      $composableBuilder(column: $table.gpsLat, builder: (column) => column);

  GeneratedColumn<double> get gpsLng =>
      $composableBuilder(column: $table.gpsLng, builder: (column) => column);

  GeneratedColumn<String> get gpsStatus =>
      $composableBuilder(column: $table.gpsStatus, builder: (column) => column);

  GeneratedColumn<String> get caption =>
      $composableBuilder(column: $table.caption, builder: (column) => column);

  GeneratedColumn<String> get checklistItemId => $composableBuilder(
    column: $table.checklistItemId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get mutationId => $composableBuilder(
    column: $table.mutationId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get attachmentId => $composableBuilder(
    column: $table.attachmentId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get uploadUrl =>
      $composableBuilder(column: $table.uploadUrl, builder: (column) => column);

  GeneratedColumn<String> get uploadState => $composableBuilder(
    column: $table.uploadState,
    builder: (column) => column,
  );

  GeneratedColumn<int> get attempts =>
      $composableBuilder(column: $table.attempts, builder: (column) => column);

  GeneratedColumn<DateTime> get nextAttemptAt => $composableBuilder(
    column: $table.nextAttemptAt,
    builder: (column) => column,
  );

  GeneratedColumn<String> get lastError =>
      $composableBuilder(column: $table.lastError, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);
}

class $$PendingFilesTableTableManager
    extends
        RootTableManager<
          _$BvDatabase,
          $PendingFilesTable,
          PendingFileRow,
          $$PendingFilesTableFilterComposer,
          $$PendingFilesTableOrderingComposer,
          $$PendingFilesTableAnnotationComposer,
          $$PendingFilesTableCreateCompanionBuilder,
          $$PendingFilesTableUpdateCompanionBuilder,
          (
            PendingFileRow,
            BaseReferences<_$BvDatabase, $PendingFilesTable, PendingFileRow>,
          ),
          PendingFileRow,
          PrefetchHooks Function()
        > {
  $$PendingFilesTableTableManager(_$BvDatabase db, $PendingFilesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PendingFilesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PendingFilesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PendingFilesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> clientAttachmentId = const Value.absent(),
                Value<String> objectType = const Value.absent(),
                Value<String> objectId = const Value.absent(),
                Value<String> attachmentType = const Value.absent(),
                Value<String> localPath = const Value.absent(),
                Value<String> contentType = const Value.absent(),
                Value<int> sizeBytes = const Value.absent(),
                Value<String> sha256 = const Value.absent(),
                Value<int?> width = const Value.absent(),
                Value<int?> height = const Value.absent(),
                Value<DateTime> capturedAt = const Value.absent(),
                Value<double?> gpsLat = const Value.absent(),
                Value<double?> gpsLng = const Value.absent(),
                Value<String> gpsStatus = const Value.absent(),
                Value<String?> caption = const Value.absent(),
                Value<String?> checklistItemId = const Value.absent(),
                Value<String?> mutationId = const Value.absent(),
                Value<String?> attachmentId = const Value.absent(),
                Value<String?> uploadUrl = const Value.absent(),
                Value<String> uploadState = const Value.absent(),
                Value<int> attempts = const Value.absent(),
                Value<DateTime?> nextAttemptAt = const Value.absent(),
                Value<String?> lastError = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => PendingFilesCompanion(
                clientAttachmentId: clientAttachmentId,
                objectType: objectType,
                objectId: objectId,
                attachmentType: attachmentType,
                localPath: localPath,
                contentType: contentType,
                sizeBytes: sizeBytes,
                sha256: sha256,
                width: width,
                height: height,
                capturedAt: capturedAt,
                gpsLat: gpsLat,
                gpsLng: gpsLng,
                gpsStatus: gpsStatus,
                caption: caption,
                checklistItemId: checklistItemId,
                mutationId: mutationId,
                attachmentId: attachmentId,
                uploadUrl: uploadUrl,
                uploadState: uploadState,
                attempts: attempts,
                nextAttemptAt: nextAttemptAt,
                lastError: lastError,
                createdAt: createdAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String clientAttachmentId,
                required String objectType,
                required String objectId,
                required String attachmentType,
                required String localPath,
                Value<String> contentType = const Value.absent(),
                required int sizeBytes,
                required String sha256,
                Value<int?> width = const Value.absent(),
                Value<int?> height = const Value.absent(),
                required DateTime capturedAt,
                Value<double?> gpsLat = const Value.absent(),
                Value<double?> gpsLng = const Value.absent(),
                Value<String> gpsStatus = const Value.absent(),
                Value<String?> caption = const Value.absent(),
                Value<String?> checklistItemId = const Value.absent(),
                Value<String?> mutationId = const Value.absent(),
                Value<String?> attachmentId = const Value.absent(),
                Value<String?> uploadUrl = const Value.absent(),
                Value<String> uploadState = const Value.absent(),
                Value<int> attempts = const Value.absent(),
                Value<DateTime?> nextAttemptAt = const Value.absent(),
                Value<String?> lastError = const Value.absent(),
                required DateTime createdAt,
                Value<int> rowid = const Value.absent(),
              }) => PendingFilesCompanion.insert(
                clientAttachmentId: clientAttachmentId,
                objectType: objectType,
                objectId: objectId,
                attachmentType: attachmentType,
                localPath: localPath,
                contentType: contentType,
                sizeBytes: sizeBytes,
                sha256: sha256,
                width: width,
                height: height,
                capturedAt: capturedAt,
                gpsLat: gpsLat,
                gpsLng: gpsLng,
                gpsStatus: gpsStatus,
                caption: caption,
                checklistItemId: checklistItemId,
                mutationId: mutationId,
                attachmentId: attachmentId,
                uploadUrl: uploadUrl,
                uploadState: uploadState,
                attempts: attempts,
                nextAttemptAt: nextAttemptAt,
                lastError: lastError,
                createdAt: createdAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$PendingFilesTable, PendingFileRow>(table),
                  BaseReferences<
                    _$BvDatabase,
                    $PendingFilesTable,
                    PendingFileRow
                  >(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$PendingFilesTableProcessedTableManager =
    ProcessedTableManager<
      _$BvDatabase,
      $PendingFilesTable,
      PendingFileRow,
      $$PendingFilesTableFilterComposer,
      $$PendingFilesTableOrderingComposer,
      $$PendingFilesTableAnnotationComposer,
      $$PendingFilesTableCreateCompanionBuilder,
      $$PendingFilesTableUpdateCompanionBuilder,
      (
        PendingFileRow,
        BaseReferences<_$BvDatabase, $PendingFilesTable, PendingFileRow>,
      ),
      PendingFileRow,
      PrefetchHooks Function()
    >;
typedef $$SyncMetaTableCreateCompanionBuilder = SyncMetaCompanion Function({
  required String key,
  required String value,
  Value<int> rowid,
});
typedef $$SyncMetaTableUpdateCompanionBuilder = SyncMetaCompanion Function({
  Value<String> key,
  Value<String> value,
  Value<int> rowid,
});

class $$SyncMetaTableFilterComposer
    extends Composer<_$BvDatabase, $SyncMetaTable> {
  $$SyncMetaTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get key => $composableBuilder(
    column: $table.key,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get value => $composableBuilder(
    column: $table.value,
    builder: (column) => ColumnFilters(column),
  );
}

class $$SyncMetaTableOrderingComposer
    extends Composer<_$BvDatabase, $SyncMetaTable> {
  $$SyncMetaTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get key => $composableBuilder(
    column: $table.key,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get value => $composableBuilder(
    column: $table.value,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$SyncMetaTableAnnotationComposer
    extends Composer<_$BvDatabase, $SyncMetaTable> {
  $$SyncMetaTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get key =>
      $composableBuilder(column: $table.key, builder: (column) => column);

  GeneratedColumn<String> get value =>
      $composableBuilder(column: $table.value, builder: (column) => column);
}

class $$SyncMetaTableTableManager
    extends
        RootTableManager<
          _$BvDatabase,
          $SyncMetaTable,
          SyncMetaRow,
          $$SyncMetaTableFilterComposer,
          $$SyncMetaTableOrderingComposer,
          $$SyncMetaTableAnnotationComposer,
          $$SyncMetaTableCreateCompanionBuilder,
          $$SyncMetaTableUpdateCompanionBuilder,
          (
            SyncMetaRow,
            BaseReferences<_$BvDatabase, $SyncMetaTable, SyncMetaRow>,
          ),
          SyncMetaRow,
          PrefetchHooks Function()
        > {
  $$SyncMetaTableTableManager(_$BvDatabase db, $SyncMetaTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SyncMetaTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SyncMetaTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SyncMetaTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> key = const Value.absent(),
            Value<String> value = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) => SyncMetaCompanion(key: key, value: value, rowid: rowid),
          createCompanionCallback: ({
            required String key,
            required String value,
            Value<int> rowid = const Value.absent(),
          }) => SyncMetaCompanion.insert(key: key, value: value, rowid: rowid),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$SyncMetaTable, SyncMetaRow>(table),
                  BaseReferences<_$BvDatabase, $SyncMetaTable, SyncMetaRow>(
                    db,
                    table,
                    e,
                  ),
                ),
              )
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$SyncMetaTableProcessedTableManager =
    ProcessedTableManager<
      _$BvDatabase,
      $SyncMetaTable,
      SyncMetaRow,
      $$SyncMetaTableFilterComposer,
      $$SyncMetaTableOrderingComposer,
      $$SyncMetaTableAnnotationComposer,
      $$SyncMetaTableCreateCompanionBuilder,
      $$SyncMetaTableUpdateCompanionBuilder,
      (SyncMetaRow, BaseReferences<_$BvDatabase, $SyncMetaTable, SyncMetaRow>),
      SyncMetaRow,
      PrefetchHooks Function()
    >;

class $BvDatabaseManager {
  final _$BvDatabase _db;
  $BvDatabaseManager(this._db);
  $$WorkItemsTableTableManager get workItems =>
      $$WorkItemsTableTableManager(_db, _db.workItems);
  $$ChecklistRunsTableTableManager get checklistRuns =>
      $$ChecklistRunsTableTableManager(_db, _db.checklistRuns);
  $$PatrolCheckpointsTableTableManager get patrolCheckpoints =>
      $$PatrolCheckpointsTableTableManager(_db, _db.patrolCheckpoints);
  $$LocationsTableTableManager get locations =>
      $$LocationsTableTableManager(_db, _db.locations);
  $$AssetsTableTableManager get assets =>
      $$AssetsTableTableManager(_db, _db.assets);
  $$MutationsTableTableManager get mutations =>
      $$MutationsTableTableManager(_db, _db.mutations);
  $$ObjectSeqsTableTableManager get objectSeqs =>
      $$ObjectSeqsTableTableManager(_db, _db.objectSeqs);
  $$PendingFilesTableTableManager get pendingFiles =>
      $$PendingFilesTableTableManager(_db, _db.pendingFiles);
  $$SyncMetaTableTableManager get syncMeta =>
      $$SyncMetaTableTableManager(_db, _db.syncMeta);
}
