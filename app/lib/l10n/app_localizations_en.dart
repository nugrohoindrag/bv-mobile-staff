// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class SEn extends S {
  SEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'BuildingVision';

  @override
  String get tabHome => 'Home';

  @override
  String get tabTasks => 'Tasks';

  @override
  String get tabHistory => 'History';

  @override
  String get tabPatrol => 'Patrol';

  @override
  String get tabScan => 'Scan';

  @override
  String get tabReport => 'Report';

  @override
  String get tabChecklist => 'Checklist';

  @override
  String get tabTeam => 'Team';

  @override
  String get tabInbox => 'Inbox';

  @override
  String get tabProfile => 'Akun';

  @override
  String get login => 'Sign in';

  @override
  String get logout => 'Sign out';

  @override
  String get identifier => 'Email or username';

  @override
  String get password => 'Password';

  @override
  String get loginFailed => 'Sign in failed. Check your email and password.';

  @override
  String get todayWork => 'Today\'s Work';

  @override
  String get startTask => 'Start Task';

  @override
  String get startPatrol => 'Start Patrol';

  @override
  String get startCleaning => 'Start Cleaning';

  @override
  String get hold => 'Hold';

  @override
  String get resume => 'Resume';

  @override
  String get complete => 'Complete';

  @override
  String get completeWork => 'Complete Work';

  @override
  String get verify => 'Verify';

  @override
  String get close => 'Close';

  @override
  String get assign => 'Assign';

  @override
  String get reassign => 'Reassign';

  @override
  String get createWorkOrder => 'Create Work Order';

  @override
  String get reportIncident => 'Report Incident';

  @override
  String get addFinding => 'Add Finding';

  @override
  String get addComment => 'Add Comment';

  @override
  String get save => 'Save';

  @override
  String get cancel => 'Cancel';

  @override
  String get retry => 'Retry';

  @override
  String get reason => 'Reason';

  @override
  String get noWorkToday => 'No work scheduled today.';

  @override
  String get syncNow => 'Sync now';

  @override
  String get pendingSync => 'Pending Sync';

  @override
  String get synced => 'Synced';

  @override
  String get syncFailed => 'Sync Failed';

  @override
  String get syncConflict => 'Sync Conflict';

  @override
  String get offline => 'Offline';

  @override
  String get updateRequired => 'Update required';

  @override
  String get updateRequiredBody =>
      'This app version is no longer supported. Update to the latest version to continue.';

  @override
  String get evidenceIncomplete => 'Required photos are missing';

  @override
  String get checklistIncomplete =>
      'Some required checklist items are unanswered';
}
