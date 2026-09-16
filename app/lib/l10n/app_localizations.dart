import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_id.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of S
/// returned by `S.of(context)`.
///
/// Applications need to include `S.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: S.localizationsDelegates,
///   supportedLocales: S.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the S.supportedLocales
/// property.
abstract class S {
  S(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S)!;
  }

  static const LocalizationsDelegate<S> delegate = _SDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('id'),
  ];

  /// No description provided for @appTitle.
  ///
  /// In id, this message translates to:
  /// **'BuildingVision'**
  String get appTitle;

  /// No description provided for @tabHome.
  ///
  /// In id, this message translates to:
  /// **'Home'**
  String get tabHome;

  /// No description provided for @tabTasks.
  ///
  /// In id, this message translates to:
  /// **'Tasks'**
  String get tabTasks;

  /// No description provided for @tabHistory.
  ///
  /// In id, this message translates to:
  /// **'History'**
  String get tabHistory;

  /// No description provided for @tabPatrol.
  ///
  /// In id, this message translates to:
  /// **'Patrol'**
  String get tabPatrol;

  /// No description provided for @tabScan.
  ///
  /// In id, this message translates to:
  /// **'Scan'**
  String get tabScan;

  /// No description provided for @tabReport.
  ///
  /// In id, this message translates to:
  /// **'Report'**
  String get tabReport;

  /// No description provided for @tabChecklist.
  ///
  /// In id, this message translates to:
  /// **'Checklist'**
  String get tabChecklist;

  /// No description provided for @tabTeam.
  ///
  /// In id, this message translates to:
  /// **'Team'**
  String get tabTeam;

  /// No description provided for @tabInbox.
  ///
  /// In id, this message translates to:
  /// **'Inbox'**
  String get tabInbox;

  /// No description provided for @tabProfile.
  ///
  /// In id, this message translates to:
  /// **'Akun'**
  String get tabProfile;

  /// No description provided for @login.
  ///
  /// In id, this message translates to:
  /// **'Masuk'**
  String get login;

  /// No description provided for @logout.
  ///
  /// In id, this message translates to:
  /// **'Keluar'**
  String get logout;

  /// No description provided for @identifier.
  ///
  /// In id, this message translates to:
  /// **'Email atau username'**
  String get identifier;

  /// No description provided for @password.
  ///
  /// In id, this message translates to:
  /// **'Kata sandi'**
  String get password;

  /// No description provided for @loginFailed.
  ///
  /// In id, this message translates to:
  /// **'Login gagal. Periksa email dan kata sandi.'**
  String get loginFailed;

  /// No description provided for @todayWork.
  ///
  /// In id, this message translates to:
  /// **'Pekerjaan Hari Ini'**
  String get todayWork;

  /// No description provided for @startTask.
  ///
  /// In id, this message translates to:
  /// **'Mulai Task'**
  String get startTask;

  /// No description provided for @startPatrol.
  ///
  /// In id, this message translates to:
  /// **'Mulai Patrol'**
  String get startPatrol;

  /// No description provided for @startCleaning.
  ///
  /// In id, this message translates to:
  /// **'Mulai Cleaning'**
  String get startCleaning;

  /// No description provided for @hold.
  ///
  /// In id, this message translates to:
  /// **'Tunda'**
  String get hold;

  /// No description provided for @resume.
  ///
  /// In id, this message translates to:
  /// **'Lanjutkan'**
  String get resume;

  /// No description provided for @complete.
  ///
  /// In id, this message translates to:
  /// **'Selesaikan'**
  String get complete;

  /// No description provided for @completeWork.
  ///
  /// In id, this message translates to:
  /// **'Pekerjaan Selesai'**
  String get completeWork;

  /// No description provided for @verify.
  ///
  /// In id, this message translates to:
  /// **'Verifikasi'**
  String get verify;

  /// No description provided for @close.
  ///
  /// In id, this message translates to:
  /// **'Tutup'**
  String get close;

  /// No description provided for @assign.
  ///
  /// In id, this message translates to:
  /// **'Tugaskan'**
  String get assign;

  /// No description provided for @reassign.
  ///
  /// In id, this message translates to:
  /// **'Alihkan'**
  String get reassign;

  /// No description provided for @createWorkOrder.
  ///
  /// In id, this message translates to:
  /// **'Buat Work Order'**
  String get createWorkOrder;

  /// No description provided for @reportIncident.
  ///
  /// In id, this message translates to:
  /// **'Laporkan Insiden'**
  String get reportIncident;

  /// No description provided for @addFinding.
  ///
  /// In id, this message translates to:
  /// **'Tambah Temuan'**
  String get addFinding;

  /// No description provided for @addComment.
  ///
  /// In id, this message translates to:
  /// **'Tambah Komentar'**
  String get addComment;

  /// No description provided for @save.
  ///
  /// In id, this message translates to:
  /// **'Simpan'**
  String get save;

  /// No description provided for @cancel.
  ///
  /// In id, this message translates to:
  /// **'Batal'**
  String get cancel;

  /// No description provided for @retry.
  ///
  /// In id, this message translates to:
  /// **'Coba lagi'**
  String get retry;

  /// No description provided for @reason.
  ///
  /// In id, this message translates to:
  /// **'Alasan'**
  String get reason;

  /// No description provided for @noWorkToday.
  ///
  /// In id, this message translates to:
  /// **'Belum ada pekerjaan hari ini.'**
  String get noWorkToday;

  /// No description provided for @syncNow.
  ///
  /// In id, this message translates to:
  /// **'Sinkronkan sekarang'**
  String get syncNow;

  /// No description provided for @pendingSync.
  ///
  /// In id, this message translates to:
  /// **'Pending Sync'**
  String get pendingSync;

  /// No description provided for @synced.
  ///
  /// In id, this message translates to:
  /// **'Synced'**
  String get synced;

  /// No description provided for @syncFailed.
  ///
  /// In id, this message translates to:
  /// **'Sync Failed'**
  String get syncFailed;

  /// No description provided for @syncConflict.
  ///
  /// In id, this message translates to:
  /// **'Sync Conflict'**
  String get syncConflict;

  /// No description provided for @offline.
  ///
  /// In id, this message translates to:
  /// **'Offline'**
  String get offline;

  /// No description provided for @updateRequired.
  ///
  /// In id, this message translates to:
  /// **'Perbarui aplikasi'**
  String get updateRequired;

  /// No description provided for @updateRequiredBody.
  ///
  /// In id, this message translates to:
  /// **'Versi aplikasi ini sudah tidak didukung. Perbarui ke versi terbaru untuk melanjutkan.'**
  String get updateRequiredBody;

  /// No description provided for @evidenceIncomplete.
  ///
  /// In id, this message translates to:
  /// **'Foto wajib belum lengkap'**
  String get evidenceIncomplete;

  /// No description provided for @checklistIncomplete.
  ///
  /// In id, this message translates to:
  /// **'Masih ada item checklist wajib yang belum dijawab'**
  String get checklistIncomplete;
}

class _SDelegate extends LocalizationsDelegate<S> {
  const _SDelegate();

  @override
  Future<S> load(Locale locale) {
    return SynchronousFuture<S>(lookupS(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'id'].contains(locale.languageCode);

  @override
  bool shouldReload(_SDelegate old) => false;
}

S lookupS(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return SEn();
    case 'id':
      return SId();
  }

  throw FlutterError(
    'S.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
