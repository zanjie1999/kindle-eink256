.class public abstract Lcom/amazon/kcp/reader/ReaderActivity;
.super Lcom/amazon/kcp/redding/DocumentActivity;
.source "ReaderActivity.java"

# interfaces
.implements Lcom/amazon/kindle/fragment/ReaderFragmentDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/ReaderActivity$BookOperationRequestResult;,
        Lcom/amazon/kcp/reader/ReaderActivity$ReaderOrientationChangeListener;,
        Lcom/amazon/kcp/reader/ReaderActivity$ReaderOverlayProvider;,
        Lcom/amazon/kcp/reader/ReaderActivity$ReaderPluginOverlay;
    }
.end annotation


# static fields
.field private static final ACTIVITY_RECREATION_DELAY:I = 0x1f4

.field public static final ALLOW_SNAPSHOT_PREVIEW_EXTRA:Ljava/lang/String; = "AllowSnapshotPreview"

.field public static final BOOK_CLOSE_ANIMATION_ID_EXTRA:Ljava/lang/String; = "BookCloseAnimationId"

.field private static final BOOK_COVERS_ON_RESUME_TAG:Ljava/lang/String; = "BookCoverOnResumeFragment"

.field private static final BOOK_EXIT_METRIC_TIMER:Ljava/lang/String; = "BookExit"

.field public static final BOOK_TOC_ACTIVITY_REQUEST:I = 0x4

.field public static final BROCHURE_ACTIVITY_REQUEST:I = 0x6

.field public static final BROCHURE_RESULT:I = 0x64

.field public static final CHROME_STATE_BUNDLE:Ljava/lang/String; = "ChromeStateBundle"

.field public static final CLEAR_TOP_ACTIVITY:Ljava/lang/String; = "ClearTopActivity"

.field public static final DIALOG_CONFIRM_DELETE_NOTE:I = 0x7

.field public static final DIALOG_DONT_KEEP_ISSUE:I = 0x9

.field public static final DIALOG_KEEP_ISSUE:I = 0x8

.field public static final DIALOG_SHOW_ALREADY_AT_FPR:I = 0x5

.field public static final DIALOG_SHOW_ALREADY_AT_MRPR:I = 0xc

.field public static final DIALOG_SHOW_BOOK_CLOSE:I = 0xd

.field public static final DIALOG_SHOW_FPR:I = 0x4

.field public static final DIALOG_SHOW_MRPR:I = 0xb

.field public static final DIALOG_SHOW_NEW_FONT:I = 0xe

.field public static final DIALOG_SHOW_NOTE:I = 0x6

.field public static final FRAGMENT_STATE_BUNDLE:Ljava/lang/String; = "FragmentStateBundle"

.field public static final KEY_ANNOTATION_INDEX:Ljava/lang/String; = "ANNOTATION_INDEX"

.field public static final LOCATION_DIALOG_ID:I = 0x0

.field public static final LPR_SYNC_TYPE:Ljava/lang/String; = "LprSyncType"

.field private static MESSAGEQUEUE:Lcom/amazon/kindle/krx/events/IMessageQueue; = null

.field private static final MRPR_BOTTOM_SHEET_TAG:Ljava/lang/String; = "MrprBottomSheetFragment"

.field public static final NOTECARD_EDIT_ACTIVITY_REQUEST:I = 0x1

.field public static final NOTES_ACTIVITY_REQUEST:I = 0x0

.field private static final ORIENTATION_DEGREE_TOLERANCE:I = 0x14

.field public static final ORIGIN_ACTIVITY_EXTRA:Ljava/lang/String; = "OriginActivity"

.field public static final PAGE_DIALOG_ID:I = 0x2

.field public static final PAGE_OR_LOCATION_DIALOG_ID:I = 0x3

.field public static final READER_PANEL_STATE:Ljava/lang/String; = "reader"

.field private static final SCREEN_SIZE_THRESHOLD_FOR_WEBVIEW_LARGE_TILES:I = 0x76c

.field public static final SEARCH_ACTIVITY_REQUEST:I = 0x5

.field private static final SEARCH_CACHE_KEY:Ljava/lang/String; = "book"

.field private static final SERVER_READING_POSITION_FILE_CORRUPTED_METRIC:Ljava/lang/String; = "FprMrprFileCorrupted"

.field private static final SERVER_READING_POSITION_NOT_FOUND_METRIC:Ljava/lang/String; = "ServerReadingPositionNotFound"

.field public static final SHARING_EXTRAS_ACTIVITY_REQUEST:I = 0x3

.field private static final TABLE_OF_CONTENTS_TAG:Ljava/lang/String; = "TableOfContentsFragment"

.field private static final TAG:Ljava/lang/String;

.field private static final WEBVIEW_USE_LARGE_BASETILE:Ljava/lang/String; = "webview.useLargeBaseTiles"

.field private static final WEBVIEW_USE_LARGE_LAYERTILE:Ljava/lang/String; = "webview.useLargeLayerTiles"

.field private static final overlayProviderName:Ljava/lang/String; = "READER_PLUGIN_OVERLAY_STUB"


# instance fields
.field private activitiesNeedToBeClosed:Z

.field private bookCoverCreated:Z

.field private bottomSheetMetricRecorder:Lcom/amazon/kcp/reader/MRPRBottomSheetMetricRecorder;

.field private boundPanelContent:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private colorModeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private commandBar:Lcom/amazon/android/widget/CommandBar;

.field protected commandBarItemController:Lcom/amazon/android/widget/CommandBarItemController;

.field private configOrientation:I

.field private configScreenHeight:I

.field private configScreenWidth:I

.field private contentContainer:Landroid/view/ViewGroup;

.field protected contentMetadata:Lcom/amazon/kindle/content/ContentMetadata;

.field private contentMissingViewController:Lcom/amazon/kindle/yj/ui/ContentMissingViewController;

.field private currentBook:Lcom/amazon/kindle/krx/content/IBook;

.field private currentMenu:Landroid/view/Menu;

.field protected customMenuController:Lcom/amazon/android/menu/AndroidCustomMenuController;

.field private deviceOrientation:I

.field private drawerListener:Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;

.field private enabled:Z

.field private externalScreenStatus:Lcom/amazon/kcp/reader/ui/ExternalScreenStatus;

.field private firstChromeOpen:Z

.field private firstResume:Z

.field private fragmentStateManager:Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;

.field protected gestureHandlerFactory:Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;

.field private gestureHandlerProvider:Lcom/amazon/kcp/reader/gestures/IGestureHandlerProvider;

.field private hasFocus:Z

.field private infoCardController:Lcom/amazon/kcp/reader/InfoCardController;

.field protected isActionBarVisible:Z

.field private isActivityRestarting:Z

.field private volatile isAfterSavedInstanceState:Z

.field private isChromeVisible:Z

.field private isCurrentlySearching:Z

.field private isCurrentlyVisible:Z

.field private volatile isDialogBeingShown:Z

.field private isOriginActivityReaderActivity:Z

.field private isOriginActivityRecapsActivity:Z

.field private isOriginActivityStoreActivity:Z

.field protected isRestartingForSettingChange:Z

.field private isTableOfContentsInitalized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private lastSearchQuery:Ljava/lang/String;

.field private mOrientationChangeEvent:Lcom/amazon/foundation/internal/IntEventProvider;

.field private mrprBottomSheetFragment:Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;

.field private orientationListener:Lcom/amazon/kcp/reader/ReaderActivity$ReaderOrientationChangeListener;

.field private orientationLockCheckChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private orientationLockClickListener:Landroid/view/View$OnClickListener;

.field private orientationLockSettingManager:Lcom/amazon/kcp/reader/ui/OrientationLockSettingManager;

.field private overlayController:Lcom/amazon/android/util/IOsOverlayController;

.field private panelController:Lcom/amazon/kindle/panels/IPanelController;

.field protected panelHelper:Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;

.field private panelLocation:Lcom/amazon/kindle/panels/PanelLocation;

.field private readerActivityFeatures:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;",
            ">;"
        }
    .end annotation
.end field

.field protected readerGestureListener:Lcom/amazon/kcp/reader/gestures/GestureListener;

.field protected readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

.field private readingPresetsObserver:Lcom/amazon/ksdk/presets/ReadingPresetsObserver;

.field private resumeAllowAnimation:Ljava/lang/Boolean;

.field private resumeMode:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

.field private returnToImmersiveReadingModeFromSearch:Z

.field private rotateWithChromeUp:Z

.field private rotationHandler:Lcom/amazon/kcp/reader/IRotationHandler;

.field private final screenModeChangeListener:Lcom/amazon/kindle/displaymask/ScreenModeChangeListener;

.field protected selectionWidgetItemController:Lcom/amazon/android/widget/SelectionWidgetItemController;

.field private final settingsChangedListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private shouldCloseBook:Z

.field protected shouldFlashOverlays:Z

.field protected startActionsHelper:Lcom/amazon/kcp/reader/StartActionsHelper;

.field private surfaceView:Lcom/amazon/kcp/reader/BlankGLSurfaceView;

.field private volatile timeUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private final timeUpdateReceiverLock:Ljava/lang/Object;

.field private tocDataModel:Lcom/amazon/android/tableofcontents/TOCDataModel;

.field public tocFragment:Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment;

.field private toolbarContainer:Landroid/widget/LinearLayout;

.field private unboundFromBook:Z

.field private wasBrochureShown:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 271
    const-class v0, Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/ReaderActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 270
    invoke-direct {p0}, Lcom/amazon/kcp/redding/DocumentActivity;-><init>()V

    const/4 v0, 0x0

    .line 310
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->isOriginActivityReaderActivity:Z

    .line 311
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->isOriginActivityStoreActivity:Z

    .line 312
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->isOriginActivityRecapsActivity:Z

    .line 314
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->isTableOfContentsInitalized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 316
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->shouldCloseBook:Z

    .line 322
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->bookCoverCreated:Z

    .line 324
    new-instance v1, Lcom/amazon/kcp/reader/MRPRBottomSheetMetricRecorder;

    invoke-direct {v1}, Lcom/amazon/kcp/reader/MRPRBottomSheetMetricRecorder;-><init>()V

    iput-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->bottomSheetMetricRecorder:Lcom/amazon/kcp/reader/MRPRBottomSheetMetricRecorder;

    const/4 v1, 0x0

    .line 328
    iput-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->mrprBottomSheetFragment:Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;

    .line 331
    sget-object v2, Lcom/amazon/kcp/reader/ui/ExternalScreenStatus;->CLOSED:Lcom/amazon/kcp/reader/ui/ExternalScreenStatus;

    iput-object v2, p0, Lcom/amazon/kcp/reader/ReaderActivity;->externalScreenStatus:Lcom/amazon/kcp/reader/ui/ExternalScreenStatus;

    .line 470
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->isCurrentlySearching:Z

    .line 474
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->isCurrentlyVisible:Z

    .line 475
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->returnToImmersiveReadingModeFromSearch:Z

    .line 482
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->isDialogBeingShown:Z

    const/4 v2, -0x1

    .line 487
    iput v2, p0, Lcom/amazon/kcp/reader/ReaderActivity;->deviceOrientation:I

    .line 488
    iput v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->configOrientation:I

    .line 492
    new-instance v2, Lcom/amazon/foundation/internal/IntEventProvider;

    invoke-direct {v2}, Lcom/amazon/foundation/internal/IntEventProvider;-><init>()V

    iput-object v2, p0, Lcom/amazon/kcp/reader/ReaderActivity;->mOrientationChangeEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    .line 497
    new-instance v2, Lcom/amazon/kcp/reader/StartActionsHelper;

    invoke-direct {v2}, Lcom/amazon/kcp/reader/StartActionsHelper;-><init>()V

    iput-object v2, p0, Lcom/amazon/kcp/reader/ReaderActivity;->startActionsHelper:Lcom/amazon/kcp/reader/StartActionsHelper;

    .line 506
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->isRestartingForSettingChange:Z

    const/4 v2, 0x1

    .line 511
    iput-boolean v2, p0, Lcom/amazon/kcp/reader/ReaderActivity;->shouldFlashOverlays:Z

    .line 516
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->rotateWithChromeUp:Z

    .line 518
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->unboundFromBook:Z

    .line 522
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Lcom/amazon/kcp/reader/ReaderActivity;->boundPanelContent:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 526
    const-class v3, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    invoke-static {v3}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v3

    iput-object v3, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerActivityFeatures:Ljava/util/Set;

    .line 531
    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v3, p0, Lcom/amazon/kcp/reader/ReaderActivity;->colorModeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 541
    iput-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->surfaceView:Lcom/amazon/kcp/reader/BlankGLSurfaceView;

    .line 545
    iput-boolean v2, p0, Lcom/amazon/kcp/reader/ReaderActivity;->firstResume:Z

    .line 552
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->isActivityRestarting:Z

    .line 564
    iput-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->timeUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 565
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/amazon/kcp/reader/ReaderActivity;->timeUpdateReceiverLock:Ljava/lang/Object;

    .line 570
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->wasBrochureShown:Z

    .line 572
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->activitiesNeedToBeClosed:Z

    .line 574
    iput-boolean v2, p0, Lcom/amazon/kcp/reader/ReaderActivity;->enabled:Z

    .line 576
    sget-object v3, Lcom/amazon/kindle/panels/PanelLocation;->LEFT:Lcom/amazon/kindle/panels/PanelLocation;

    iput-object v3, p0, Lcom/amazon/kcp/reader/ReaderActivity;->panelLocation:Lcom/amazon/kindle/panels/PanelLocation;

    .line 596
    new-instance v3, Lcom/amazon/kcp/reader/ReaderActivity$1;

    invoke-direct {v3, p0}, Lcom/amazon/kcp/reader/ReaderActivity$1;-><init>(Lcom/amazon/kcp/reader/ReaderActivity;)V

    iput-object v3, p0, Lcom/amazon/kcp/reader/ReaderActivity;->settingsChangedListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 607
    iput-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readingPresetsObserver:Lcom/amazon/ksdk/presets/ReadingPresetsObserver;

    .line 610
    new-instance v3, Lcom/amazon/kcp/reader/ReaderActivity$2;

    invoke-direct {v3, p0}, Lcom/amazon/kcp/reader/ReaderActivity$2;-><init>(Lcom/amazon/kcp/reader/ReaderActivity;)V

    iput-object v3, p0, Lcom/amazon/kcp/reader/ReaderActivity;->drawerListener:Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;

    .line 633
    new-instance v3, Lcom/amazon/kcp/reader/ReaderActivity$3;

    invoke-direct {v3, p0}, Lcom/amazon/kcp/reader/ReaderActivity$3;-><init>(Lcom/amazon/kcp/reader/ReaderActivity;)V

    iput-object v3, p0, Lcom/amazon/kcp/reader/ReaderActivity;->screenModeChangeListener:Lcom/amazon/kindle/displaymask/ScreenModeChangeListener;

    .line 646
    iput-boolean v2, p0, Lcom/amazon/kcp/reader/ReaderActivity;->firstChromeOpen:Z

    .line 656
    iput-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->fragmentStateManager:Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;

    .line 659
    new-instance v2, Lcom/amazon/android/widget/SelectionWidgetItemController;

    invoke-direct {v2}, Lcom/amazon/android/widget/SelectionWidgetItemController;-><init>()V

    iput-object v2, p0, Lcom/amazon/kcp/reader/ReaderActivity;->selectionWidgetItemController:Lcom/amazon/android/widget/SelectionWidgetItemController;

    .line 662
    new-instance v2, Lcom/amazon/android/widget/CommandBarItemController;

    invoke-direct {v2}, Lcom/amazon/android/widget/CommandBarItemController;-><init>()V

    iput-object v2, p0, Lcom/amazon/kcp/reader/ReaderActivity;->commandBarItemController:Lcom/amazon/android/widget/CommandBarItemController;

    .line 665
    iput-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->commandBar:Lcom/amazon/android/widget/CommandBar;

    .line 675
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->isAfterSavedInstanceState:Z

    .line 680
    new-instance v0, Lcom/amazon/kcp/reader/ReaderActivity$4;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ReaderActivity$4;-><init>(Lcom/amazon/kcp/reader/ReaderActivity;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->orientationLockClickListener:Landroid/view/View$OnClickListener;

    .line 687
    new-instance v0, Lcom/amazon/kcp/reader/ui/OrientationLockSettingManagerImpl;

    .line 688
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v1

    .line 689
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v2

    const-class v3, Lcom/amazon/kcp/reader/ui/OrientationLockSettingManagerImpl;

    invoke-interface {v2, v3}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amazon/kcp/reader/ui/OrientationLockSettingManagerImpl;-><init>(Lcom/amazon/kcp/application/UserSettingsController;Lcom/amazon/kindle/krx/events/IMessageQueue;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->orientationLockSettingManager:Lcom/amazon/kcp/reader/ui/OrientationLockSettingManager;

    .line 691
    new-instance v0, Lcom/amazon/kcp/reader/ReaderActivity$5;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ReaderActivity$5;-><init>(Lcom/amazon/kcp/reader/ReaderActivity;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->orientationLockCheckChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method private _onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    .line 2914
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2919
    iget v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->configScreenWidth:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget v3, p0, Lcom/amazon/kcp/reader/ReaderActivity;->configScreenHeight:I

    if-eqz v3, :cond_1

    iget v4, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-ne v0, v4, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v3, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2926
    :goto_0
    iget v3, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v3, p0, Lcom/amazon/kcp/reader/ReaderActivity;->configScreenWidth:I

    .line 2927
    iget v3, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v3, p0, Lcom/amazon/kcp/reader/ReaderActivity;->configScreenHeight:I

    .line 2929
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->cleanupGLSurfaceView()V

    .line 2931
    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Lcom/amazon/kcp/reader/ReaderActivity;->configOrientation:I

    .line 2933
    iget-object v3, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v3, :cond_2

    .line 2935
    invoke-interface {v3, p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2936
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->updateViewContext()V

    .line 2939
    :cond_2
    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    if-nez v4, :cond_3

    return-void

    :cond_3
    if-eqz v3, :cond_a

    .line 2942
    invoke-interface {v3}, Lcom/amazon/android/docviewer/KindleDocViewer;->getOrientation()I

    move-result v4

    iget v5, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v4, v5, :cond_9

    .line 2943
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configuration changed, orientation="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v2, :cond_4

    const-string v4, "portrait"

    goto :goto_1

    :cond_4
    const-string v4, "landscape"

    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2949
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->supportsSubPixelRendering()Z

    move-result v0

    if-eqz v0, :cond_6

    instance-of v0, v3, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    if-eqz v0, :cond_6

    .line 2951
    iget v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->deviceOrientation:I

    const/16 v4, 0x8

    if-ne v0, v4, :cond_5

    const/4 v1, 0x1

    .line 2952
    :cond_5
    check-cast v3, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    .line 2953
    iget v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->configOrientation:I

    .line 2955
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v4

    .line 2956
    invoke-virtual {v4, p0}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->isSubpixelRenderingRotated(Landroid/content/Context;)Z

    move-result v4

    .line 2954
    invoke-static {v0, v1, v4}, Lcom/amazon/kcp/reader/SubPixelRenderingOrientations;->getSubPixelOrientationValue(IZZ)Lcom/amazon/kcp/reader/SubPixelRenderingOrientations;

    move-result-object v0

    .line 2957
    invoke-virtual {v3}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getOrientation()Lcom/amazon/kindle/model/content/BookOrientation;

    move-result-object v1

    sget-object v4, Lcom/amazon/kindle/model/content/BookOrientation;->UNDEFINED:Lcom/amazon/kindle/model/content/BookOrientation;

    if-ne v1, v4, :cond_7

    .line 2958
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/SubPixelRenderingOrientations;->getValue()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->setOrientation(II)V

    goto :goto_2

    .line 2961
    :cond_6
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-interface {v3, v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->setOrientation(I)V

    .line 2964
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->mOrientationChangeEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Lcom/amazon/foundation/internal/IntEventProvider;->notifyListeners(I)V

    .line 2966
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->infoCardController:Lcom/amazon/kcp/reader/InfoCardController;

    if-eqz v0, :cond_8

    .line 2967
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/InfoCardController;->onOrientationChanged()V

    :cond_8
    const/4 v1, 0x1

    goto :goto_3

    :cond_9
    if-eqz v0, :cond_b

    .line 2970
    invoke-interface {v3}, Lcom/amazon/android/docviewer/KindleDocViewer;->windowSizeChanged()V

    goto :goto_3

    .line 2972
    :cond_a
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->rotationHandler:Lcom/amazon/kcp/reader/IRotationHandler;

    if-eqz v0, :cond_b

    invoke-interface {v0, p1}, Lcom/amazon/kcp/reader/IRotationHandler;->hasFlipped180(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2973
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->updateSubpixelRenderingValue()V

    .line 2976
    :cond_b
    :goto_3
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->rotationHandler:Lcom/amazon/kcp/reader/IRotationHandler;

    if-eqz v0, :cond_c

    .line 2977
    invoke-interface {v0, p1}, Lcom/amazon/kcp/reader/IRotationHandler;->setRotation(Landroid/content/res/Configuration;)V

    .line 2982
    :cond_c
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderMenuContainer()Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 2983
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderMenuContainer()Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->onConfigChange(Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 2987
    :cond_d
    sget-object p1, Lcom/amazon/kcp/application/UserSettingsController$Setting;->COLUMN_COUNT:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ReaderActivity;->setPreferenceFromSettingsController(Ljava/lang/String;)V

    .line 2992
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/application/UserSettingsController;->getOrientation()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_e

    .line 2993
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    if-eqz p1, :cond_e

    .line 2994
    invoke-virtual {p1, v2, v2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setOrientationLockTemporarilyVisible(ZZ)V

    :cond_e
    if-eqz v1, :cond_11

    .line 3001
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getObjectSelectionModel()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 3003
    sget-object v0, Lcom/amazon/kcp/reader/ReaderActivity$37;->$SwitchMap$com$amazon$android$docviewer$selection$IObjectSelectionModel$SelectionState:[I

    invoke-interface {p1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectionState()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v0, v0, v3

    if-eq v0, v2, :cond_10

    const/4 v2, 0x2

    if-eq v0, v2, :cond_f

    goto :goto_4

    .line 3009
    :cond_f
    invoke-interface {p1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->selectNone()V

    goto :goto_4

    .line 3005
    :cond_10
    invoke-interface {p1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->selectNone()V

    :cond_11
    :goto_4
    if-eqz v1, :cond_13

    .line 3019
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isScreenReaderEnabled()Z

    move-result p1

    if-nez p1, :cond_12

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 3020
    :cond_12
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->reportAccessibilityMetrics()V

    :cond_13
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/reader/ReaderActivity;I)V
    .locals 0

    .line 270
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ReaderActivity;->handleDeviceOrientationChange(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kcp/reader/ReaderActivity;Ljava/lang/String;)V
    .locals 0

    .line 270
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ReaderActivity;->setPreferenceFromSettingsController(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/amazon/kcp/reader/ReaderActivity;)Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/amazon/kcp/reader/ReaderActivity;)Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/amazon/kcp/reader/ReaderActivity;)Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/amazon/kcp/reader/ReaderActivity;)Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/amazon/kcp/reader/ReaderActivity;)Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/amazon/kcp/reader/ReaderActivity;)Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/amazon/kcp/reader/ReaderActivity;Z)Z
    .locals 0

    .line 270
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->isDialogBeingShown:Z

    return p1
.end method

.method static synthetic access$1702(Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kcp/reader/ui/ExternalScreenStatus;)Lcom/amazon/kcp/reader/ui/ExternalScreenStatus;
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->externalScreenStatus:Lcom/amazon/kcp/reader/ui/ExternalScreenStatus;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kindle/krx/sync/LPRSyncType;)Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;
    .locals 0

    .line 270
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ReaderActivity;->getFprMrprServerReadingPosition(Lcom/amazon/kindle/krx/sync/LPRSyncType;)Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/kcp/reader/ReaderActivity;)V
    .locals 0

    .line 270
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->handleOrientationLockClick()V

    return-void
.end method

.method static synthetic access$2000(Lcom/amazon/kcp/reader/ReaderActivity;)Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/amazon/kcp/reader/ReaderActivity;)Z
    .locals 0

    .line 270
    iget-boolean p0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->isCurrentlyVisible:Z

    return p0
.end method

.method static synthetic access$2200(Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;)V
    .locals 0

    .line 270
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ReaderActivity;->createMrprBottomSheetFragment(Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/amazon/kcp/reader/ReaderActivity;)Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/amazon/kcp/reader/ReaderActivity;)Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/amazon/kcp/reader/ReaderActivity;)Lcom/amazon/kcp/reader/ReaderController;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->readerController:Lcom/amazon/kcp/reader/ReaderController;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/amazon/kcp/reader/ReaderActivity;Z)V
    .locals 0

    .line 270
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ReaderActivity;->setOverlayVisibility(Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/amazon/kcp/reader/ReaderActivity;)Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/amazon/kcp/reader/ReaderActivity;)Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/amazon/kcp/reader/ReaderActivity;)Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-object p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 270
    sget-object v0, Lcom/amazon/kcp/reader/ReaderActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/amazon/kcp/reader/ReaderActivity;Z)Z
    .locals 0

    .line 270
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->returnToImmersiveReadingModeFromSearch:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/amazon/kcp/reader/ReaderActivity;)Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/amazon/kcp/reader/ReaderActivity;)Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/amazon/kcp/reader/ReaderActivity;)Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/amazon/kcp/reader/ReaderActivity;)Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/amazon/kcp/reader/ReaderActivity;)Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/amazon/kcp/reader/ReaderActivity;)Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/amazon/kcp/reader/ReaderActivity;)Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/kcp/reader/ReaderActivity;)I
    .locals 0

    .line 270
    iget p0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->deviceOrientation:I

    return p0
.end method

.method static synthetic access$500(Lcom/amazon/kcp/reader/ReaderActivity;)Lcom/amazon/kcp/reader/ui/OrientationLockSettingManager;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->orientationLockSettingManager:Lcom/amazon/kcp/reader/ui/OrientationLockSettingManager;

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/kcp/reader/ReaderActivity;I)V
    .locals 0

    .line 270
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ReaderActivity;->handleTOCEvent(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/amazon/kcp/reader/ReaderActivity;)Lcom/amazon/android/tableofcontents/TOCDataModel;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->tocDataModel:Lcom/amazon/android/tableofcontents/TOCDataModel;

    return-object p0
.end method

.method static synthetic access$800(Lcom/amazon/kcp/reader/ReaderActivity;)V
    .locals 0

    .line 270
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->setupNewPageFlipFragment()V

    return-void
.end method

.method static synthetic access$900(Lcom/amazon/kcp/reader/ReaderActivity;)Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-object p0
.end method

.method private attemptToShowBookCover()V
    .locals 2

    .line 5234
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "BookCoverOnResumeFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ui/BookCoverOnResumeFragment;

    if-eqz v0, :cond_0

    .line 5237
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/BookCoverOnResumeFragment;->startAnimator()V

    .line 5239
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 5240
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 5241
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    return-void
.end method

.method private cleanupGLSurfaceView()V
    .locals 2

    .line 1211
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->surfaceView:Lcom/amazon/kcp/reader/BlankGLSurfaceView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->contentContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 1212
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 1213
    iput-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->surfaceView:Lcom/amazon/kcp/reader/BlankGLSurfaceView;

    :cond_0
    return-void
.end method

.method private closeBook()V
    .locals 4

    .line 1600
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->shouldCloseBook:Z

    if-eqz v0, :cond_1

    .line 1601
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->readerController:Lcom/amazon/kcp/reader/ReaderController;

    invoke-virtual {p0}, Landroid/app/Activity;->getChangingConfigurations()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, p0, v1}, Lcom/amazon/kcp/reader/ReaderController;->unbindFromCurrentBook(Landroid/app/Activity;Z)V

    .line 1602
    iput-boolean v2, p0, Lcom/amazon/kcp/reader/ReaderActivity;->unboundFromBook:Z

    .line 1603
    iput-boolean v3, p0, Lcom/amazon/kcp/reader/ReaderActivity;->shouldCloseBook:Z

    :cond_1
    return-void
.end method

.method private createBookCoverFragment()V
    .locals 4

    .line 5249
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "BookCoverOnResumeFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5251
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getLastReadBook()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5253
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/BookCoverOnResumeFragment;->newInstance(Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kcp/reader/ui/BookCoverOnResumeFragment;

    move-result-object v0

    .line 5254
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/krl/R$id;->reader_drawer_layout:I

    .line 5255
    invoke-virtual {v2, v3, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 5256
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    const/4 v0, 0x1

    .line 5257
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->bookCoverCreated:Z

    :cond_0
    return-void
.end method

.method private createClosingBookOnDeletionDialog(Ljava/lang/String;Ljava/lang/String;)Landroidx/appcompat/app/AlertDialog;
    .locals 2

    .line 3998
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 4000
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setIcon(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 4001
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 4002
    invoke-virtual {v0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 4003
    sget p1, Lcom/amazon/kindle/krl/R$string;->close:I

    new-instance p2, Lcom/amazon/kcp/reader/ReaderActivity$28;

    invoke-direct {p2, p0}, Lcom/amazon/kcp/reader/ReaderActivity$28;-><init>(Lcom/amazon/kcp/reader/ReaderActivity;)V

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 4009
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 4010
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    return-object p1
.end method

.method private createMrprBottomSheetFragment(Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;)V
    .locals 10

    .line 5353
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "BottomSheetPresenter"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 5355
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->mrprBottomSheetFragment:Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 5356
    :cond_1
    :goto_0
    new-instance v0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;

    invoke-direct {v0}, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->mrprBottomSheetFragment:Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;

    const/4 v0, 0x1

    .line 5360
    :goto_1
    iget-object v1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/KindleDocColorMode;->hasDarkBackground()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getColorModeFromAppTheme()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/KindleDocColorMode;->hasDarkBackground()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 5361
    :cond_3
    :goto_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 5362
    iget v3, p1, Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;->position:I

    const-string v4, "FprMrprPosition"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "isDarkTheme"

    .line 5363
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5364
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v3

    sget-object v4, Lcom/amazon/kindle/services/authentication/TokenKey;->DEVICE_NAME:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-interface {v3, v4}, Lcom/amazon/kcp/application/IAuthenticationManager;->fetchToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "MrprCurrDeviceName"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5365
    iget-object v3, p1, Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;->sourceDeviceName:Ljava/lang/String;

    const-string v4, "MrprSrcDeviceName"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5366
    iget-wide v3, p1, Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;->lprSetTime:J

    const-string v5, "MrprSetTime"

    invoke-virtual {v1, v5, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 5367
    iget p1, p1, Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;->localTimeOffset:I

    const-string v3, "MrprLocalTimeOffset"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5368
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->mrprBottomSheetFragment:Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;

    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    if-eqz v0, :cond_6

    if-eqz v2, :cond_4

    .line 5371
    sget-object p1, Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;->DARK:Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;

    goto :goto_3

    :cond_4
    sget-object p1, Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;->LIGHT:Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;

    :goto_3
    move-object v7, p1

    .line 5372
    new-instance p1, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderActivity;->mrprBottomSheetFragment:Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-string v1, "MrprBottomSheetFragment"

    move-object v0, p1

    invoke-direct/range {v0 .. v9}, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;IZZZLcom/amazon/kindle/bottomsheet/BottomSheetTheme;ZZ)V

    .line 5375
    const-class v0, Lcom/amazon/kindle/bottomsheet/BottomSheetPresenter;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/bottomsheet/BottomSheetPresenter;

    if-eqz v0, :cond_5

    .line 5378
    new-instance v1, Lcom/amazon/kindle/fragment/MrprBottomSheetEventHandler;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderActivity;->mrprBottomSheetFragment:Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;

    invoke-direct {v1, v2}, Lcom/amazon/kindle/fragment/MrprBottomSheetEventHandler;-><init>(Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;)V

    .line 5379
    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderActivity;->mrprBottomSheetFragment:Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;

    invoke-virtual {v2, v1}, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->setEventHandler(Lcom/amazon/kindle/fragment/MrprBottomSheetEventHandler;)V

    .line 5380
    invoke-interface {v0, p1}, Lcom/amazon/kindle/bottomsheet/BottomSheetPresenter;->present(Lcom/amazon/kindle/bottomsheet/BaseBottomSheetViewConfig;)Lcom/amazon/kindle/bottomsheet/BottomSheetViewActions;

    .line 5382
    :cond_5
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->bottomSheetMetricRecorder:Lcom/amazon/kcp/reader/MRPRBottomSheetMetricRecorder;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/MRPRBottomSheetMetricRecorder;->recordBottomSheetShownMetric()V

    goto :goto_4

    .line 5384
    :cond_6
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->mrprBottomSheetFragment:Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;

    invoke-virtual {p1}, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->updateMrprAndRefresh()V

    .line 5385
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->bottomSheetMetricRecorder:Lcom/amazon/kcp/reader/MRPRBottomSheetMetricRecorder;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/MRPRBottomSheetMetricRecorder;->recordTextChangeMetric()V

    :goto_4
    return-void
.end method

.method private finishAllActivities()V
    .locals 1

    .line 3491
    invoke-static {}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->clearCache()V

    .line 3492
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->readerController:Lcom/amazon/kcp/reader/ReaderController;

    if-eqz v0, :cond_0

    .line 3493
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderController;->finishAllActivities()V

    :cond_0
    return-void
.end method

.method private flashOrientationLockIfNeeded()V
    .locals 2

    .line 3348
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getOrientation()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3352
    iget v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->deviceOrientation:I

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 3355
    invoke-virtual {v0, v1, v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setOrientationLockTemporarilyVisible(ZZ)V

    :cond_0
    return-void
.end method

.method private getFprMrprServerReadingPosition(Lcom/amazon/kindle/krx/sync/LPRSyncType;)Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;
    .locals 3

    const/4 v0, 0x0

    .line 3955
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 3956
    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object v1

    check-cast v1, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    if-eqz v1, :cond_0

    .line 3958
    invoke-virtual {v1}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->getBookAnnotationsManager()Lcom/amazon/kindle/annotation/IBookAnnotationsManager;

    move-result-object v1

    .line 3959
    invoke-interface {v1, p1}, Lcom/amazon/kindle/annotation/IBookAnnotationsManager;->getServerReadingPosition(Lcom/amazon/kindle/krx/sync/LPRSyncType;)Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    .line 3962
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " server reading position file was not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v1, "ServerReadingPositionNotFound"

    .line 3963
    invoke-direct {p0, p1, v1}, Lcom/amazon/kcp/reader/ReaderActivity;->reportSyncEventMetric(Lcom/amazon/kindle/krx/sync/LPRSyncType;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3966
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " server reading position file was corrupted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v1, "FprMrprFileCorrupted"

    .line 3967
    invoke-direct {p0, p1, v1}, Lcom/amazon/kcp/reader/ReaderActivity;->reportSyncEventMetric(Lcom/amazon/kindle/krx/sync/LPRSyncType;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method private getOverlayController()Lcom/amazon/android/util/IOsOverlayController;
    .locals 2

    .line 4867
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->overlayController:Lcom/amazon/android/util/IOsOverlayController;

    if-nez v0, :cond_0

    .line 4868
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->createOverlayController(Landroid/view/Window;)Lcom/amazon/android/util/IOsOverlayController;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->overlayController:Lcom/amazon/android/util/IOsOverlayController;

    .line 4871
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->overlayController:Lcom/amazon/android/util/IOsOverlayController;

    return-object v0
.end method

.method private getReadingPresetsObserver()Lcom/amazon/ksdk/presets/ReadingPresetsObserver;
    .locals 1

    .line 5263
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readingPresetsObserver:Lcom/amazon/ksdk/presets/ReadingPresetsObserver;

    if-nez v0, :cond_0

    .line 5264
    new-instance v0, Lcom/amazon/kcp/reader/ReaderActivity$35;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ReaderActivity$35;-><init>(Lcom/amazon/kcp/reader/ReaderActivity;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readingPresetsObserver:Lcom/amazon/ksdk/presets/ReadingPresetsObserver;

    .line 5341
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readingPresetsObserver:Lcom/amazon/ksdk/presets/ReadingPresetsObserver;

    return-object v0
.end method

.method private getTimeUpdateReceiver()Landroid/content/BroadcastReceiver;
    .locals 2

    .line 4823
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->timeUpdateReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1

    .line 4824
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->timeUpdateReceiverLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4825
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->timeUpdateReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 4826
    new-instance v1, Lcom/amazon/kcp/reader/ReaderActivity$31;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/reader/ReaderActivity$31;-><init>(Lcom/amazon/kcp/reader/ReaderActivity;)V

    iput-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->timeUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 4835
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 4837
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->timeUpdateReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method private handleActionBarVisibilityChanged(Z)V
    .locals 0

    .line 4326
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->isActionBarVisible:Z

    return-void
.end method

.method private handleDeviceOrientationChange(I)V
    .locals 5

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    int-to-double v1, p1

    const-wide v3, 0x4056800000000000L    # 90.0

    div-double/2addr v1, v3

    .line 3287
    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v2, v1

    const/16 v1, 0x5a

    mul-int/lit8 v2, v2, 0x5a

    sub-int p1, v2, p1

    .line 3288
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/16 v3, 0x14

    if-le p1, v3, :cond_1

    return-void

    .line 3291
    :cond_1
    rem-int/lit16 v2, v2, 0x168

    .line 3293
    iget p1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->deviceOrientation:I

    .line 3302
    iget v3, p0, Lcom/amazon/kcp/reader/ReaderActivity;->configOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    if-eq v2, v1, :cond_5

    const/16 v1, 0xb4

    if-ne v2, v1, :cond_3

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    const/16 v1, 0x10e

    if-ne v2, v1, :cond_6

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/16 v0, 0x8

    :cond_6
    :goto_1
    if-eq p1, v0, :cond_7

    .line 3322
    iput v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->deviceOrientation:I

    .line 3323
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->flashOrientationLockIfNeeded()V

    :cond_7
    return-void
.end method

.method private handleNoteEvent(Landroid/content/Intent;)V
    .locals 6

    const/4 v0, -0x1

    const-string v1, "selectedAnnotationStart"

    .line 3389
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "selectedAnnotationType"

    .line 3390
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 3391
    iget-object v3, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-static {v3, v1, v2}, Lcom/amazon/kindle/annotation/ui/AbstractAnnotationRendererFactory;->getAnnotationByStartPositionAndType(Lcom/amazon/android/docviewer/KindleDocViewer;II)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    .line 3396
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 3397
    invoke-interface {v4}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_3

    const/4 v5, 0x7

    if-ne v2, v5, :cond_2

    .line 3401
    iget-object v2, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-static {v2, v1}, Lcom/amazon/android/docviewer/grid/GridPageUtility;->getPositionEquivalentFromGeometricPosition(Lcom/amazon/android/docviewer/KindleDocViewer;I)I

    move-result v1

    :cond_2
    const-string v2, "EntryPoint"

    .line 3403
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3404
    new-instance v5, Lcom/amazon/kindle/model/Annotations/IntPosition;

    invoke-direct {v5, v1}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    const/4 v1, 0x1

    invoke-interface {v4, v5, v1, v2}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->goToPosition(Lcom/amazon/kindle/krx/reader/IPosition;ZLjava/lang/String;)V

    :cond_3
    const-string v1, "editNoteAtIndex"

    .line 3408
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_4

    const-string p1, "Notebook"

    .line 3410
    invoke-virtual {p0, v3, p1}, Lcom/amazon/kcp/reader/ReaderActivity;->displayNoteUI(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private handleOrientationLockClick()V
    .locals 7

    .line 3360
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    .line 3362
    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getOrientation()I

    move-result v0

    const-string v1, "Page"

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 3364
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->orientationLockSettingManager:Lcom/amazon/kcp/reader/ui/OrientationLockSettingManager;

    invoke-interface {v0}, Lcom/amazon/kcp/reader/ui/OrientationLockSettingManager;->unlockSetting()V

    .line 3365
    invoke-static {v2}, Lcom/amazon/kcp/util/MetricsUtils;->getActivityOrientationForMetrics(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/amazon/kcp/util/fastmetrics/InBookFastMetrics;->reportOrientationLockTap(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3367
    :cond_0
    iget v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->deviceOrientation:I

    if-eq v0, v2, :cond_1

    .line 3369
    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderActivity;->orientationLockSettingManager:Lcom/amazon/kcp/reader/ui/OrientationLockSettingManager;

    invoke-interface {v2, v0}, Lcom/amazon/kcp/reader/ui/OrientationLockSettingManager;->lockSetting(I)V

    .line 3370
    iget v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->deviceOrientation:I

    invoke-static {v0}, Lcom/amazon/kcp/util/MetricsUtils;->getActivityOrientationForMetrics(I)Ljava/lang/String;

    move-result-object v0

    .line 3371
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "Orientation"

    .line 3372
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3373
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v3

    sget-object v4, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v5, "ReaderActivity"

    const-string v6, "OrientationLockSet"

    invoke-virtual {v3, v5, v6, v4, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;Ljava/util/Map;)V

    .line 3374
    invoke-static {v0, v1}, Lcom/amazon/kcp/util/fastmetrics/InBookFastMetrics;->reportOrientationLockTap(Ljava/lang/String;Ljava/lang/String;)V

    .line 3378
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderMenuContainer()Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3379
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderMenuContainer()Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->enableViewOptionsSheetResetFlag()V

    :cond_2
    return-void
.end method

.method private handleTOCEvent(I)V
    .locals 2

    .line 968
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 969
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 971
    new-instance v1, Lcom/amazon/kindle/model/Annotations/IntPosition;

    invoke-direct {v1, p1}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    const/4 p1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->goToPosition(Lcom/amazon/kindle/krx/reader/IPosition;Z)V

    .line 972
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->hideTOCFragment()V

    :cond_1
    return-void
.end method

.method private inflateAndAddToolbar()V
    .locals 2

    .line 5188
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-static {v0}, Lcom/amazon/kindle/nln/pageflip/NLNUtils;->shouldUseNonLinearNavigation(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    if-eqz v0, :cond_2

    .line 5193
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderMenuContainer()Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5195
    sget v1, Lcom/amazon/kindle/krl/R$id;->toolbar_with_shadow:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 5196
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->currentBook:Lcom/amazon/kindle/krx/content/IBook;

    if-eqz v1, :cond_1

    .line 5197
    invoke-static {v0, v1}, Lcom/amazon/android/widget/CommandBarUtils;->inflateTopBarImplementation(Landroid/view/ViewGroup;Lcom/amazon/kindle/krx/content/IBook;)Landroid/view/View;

    move-result-object v0

    .line 5198
    instance-of v1, v0, Landroidx/appcompat/widget/Toolbar;

    if-eqz v1, :cond_0

    .line 5199
    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    goto :goto_0

    .line 5200
    :cond_0
    instance-of v1, v0, Lcom/amazon/android/widget/CommandBar;

    if-eqz v1, :cond_2

    .line 5201
    check-cast v0, Lcom/amazon/android/widget/CommandBar;

    .line 5202
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->commandBarItemController:Lcom/amazon/android/widget/CommandBarItemController;

    invoke-virtual {v1, v0, p0}, Lcom/amazon/android/widget/CommandBarItemController;->inflateCommandBarItems(Lcom/amazon/android/widget/CommandBar;Lcom/amazon/kcp/reader/ReaderActivity;)V

    .line 5203
    iput-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->commandBar:Lcom/amazon/android/widget/CommandBar;

    goto :goto_0

    .line 5206
    :cond_1
    sget-object v0, Lcom/amazon/kcp/reader/ReaderActivity;->TAG:Ljava/lang/String;

    const-string v1, "Couldn\'t load the toolbar container, so no toolbar :-/"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private isInWordRunnerMode()Z
    .locals 3

    .line 4445
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 4446
    :goto_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v2

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    .line 4448
    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderModeHandler()Lcom/amazon/kindle/krx/reader/IReaderModeHandler;

    move-result-object v1

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/reader/IReaderModeHandler;->getReaderMode(Ljava/lang/String;)Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    move-result-object v1

    .line 4450
    :cond_1
    sget-object v0, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->DOUBLETIME:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private jumpToUserLocation(Lcom/amazon/kcp/reader/IReaderController$StartPage;)V
    .locals 1

    .line 1486
    new-instance v0, Lcom/amazon/kcp/reader/ReaderActivity$15;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ReaderActivity$15;-><init>(Lcom/amazon/kcp/reader/ReaderActivity;)V

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/reader/IReaderController$StartPage;->accept(Lcom/amazon/kcp/reader/IReaderController$StartPageVisitor;)V

    return-void
.end method

.method private onActivityCreated()V
    .locals 5

    .line 4886
    invoke-static {p0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    .line 4888
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4890
    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/kcp/reader/ReaderActivity;->currentBook:Lcom/amazon/kindle/krx/content/IBook;

    .line 4893
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->createGestureHandlerProvider()Lcom/amazon/kcp/reader/gestures/IGestureHandlerProvider;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/kcp/reader/ReaderActivity;->gestureHandlerProvider:Lcom/amazon/kcp/reader/gestures/IGestureHandlerProvider;

    .line 4895
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v2

    .line 4896
    iget-object v3, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v3}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4898
    invoke-interface {v2}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/kcp/reader/ReaderActivity;->contentMetadata:Lcom/amazon/kindle/content/ContentMetadata;

    .line 4900
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->inflateAndAddToolbar()V

    if-eqz v1, :cond_1

    .line 4903
    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-interface {v0, v1, v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->createInfoCardController(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kcp/reader/ui/ReaderLayout;)Lcom/amazon/kcp/reader/InfoCardController;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->infoCardController:Lcom/amazon/kcp/reader/InfoCardController;

    .line 4904
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getObjectSelectionModel()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/InfoCardController;->setObjectSelectionModel(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)V

    .line 4907
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getOrientationLockManager()Lcom/amazon/kcp/reader/ui/IOrientationLockManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/ui/IOrientationLockManager;->shouldUseOrientationListener()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4910
    new-instance v0, Lcom/amazon/kcp/reader/ReaderActivity$ReaderOrientationChangeListener;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/amazon/kcp/reader/ReaderActivity$ReaderOrientationChangeListener;-><init>(Landroid/content/Context;Lcom/amazon/kcp/reader/ReaderActivity;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->orientationListener:Lcom/amazon/kcp/reader/ReaderActivity$ReaderOrientationChangeListener;

    .line 4912
    :cond_2
    invoke-static {p0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getRotationHandler()Lcom/amazon/kcp/reader/IRotationHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->rotationHandler:Lcom/amazon/kcp/reader/IRotationHandler;

    .line 4913
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kcp/reader/IRotationHandler;->setRotation(Landroid/content/res/Configuration;)V

    .line 4915
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->primeGLSurfaceView()V

    .line 4917
    invoke-static {p0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderLayoutCustomizer()Lcom/amazon/kcp/reader/IReaderLayoutCustomizer;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-interface {v0, p0, v1}, Lcom/amazon/kcp/reader/IReaderLayoutCustomizer;->onCreate(Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kcp/reader/ui/ReaderLayout;)V

    .line 4919
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->supportsTOCPanelHelper()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4920
    new-instance v0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->contentMetadata:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-direct {v0, p0, v1}, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;-><init>(Lcom/amazon/kcp/redding/ReddingActivity;Lcom/amazon/kindle/content/ContentMetadata;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->panelHelper:Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;

    .line 4921
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->drawerListener:Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->setDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V

    .line 4924
    :cond_3
    sget v0, Lcom/amazon/kindle/krl/R$id;->action_bar_container:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    .line 4929
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocus(Z)V

    .line 4932
    :cond_4
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->selectionWidgetItemController:Lcom/amazon/android/widget/SelectionWidgetItemController;

    invoke-virtual {v0, p0}, Lcom/amazon/android/widget/SelectionWidgetItemController;->populateWidgetItems(Lcom/amazon/kcp/reader/ReaderActivity;)V

    const-string v0, "MrprDialogDelay_onCreate"

    .line 4934
    invoke-static {v0}, Lcom/amazon/kcp/reader/DialogMetricsRecorder;->resetMetricTimer(Ljava/lang/String;)V

    return-void
.end method

.method private onActivityResumed()V
    .locals 4

    .line 5034
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAppSettingsController()Lcom/amazon/kcp/application/IAppSettingsController;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/application/IAppSettingsController$LaunchToSetting;->READER:Lcom/amazon/kcp/application/IAppSettingsController$LaunchToSetting;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IAppSettingsController;->setLaunchTo(Lcom/amazon/kcp/application/IAppSettingsController$LaunchToSetting;)V

    .line 5038
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getVirtualViewHierarchyManager()Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;->reset()V

    .line 5040
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->setupGestureHandler()V

    .line 5042
    new-instance v0, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent;

    sget-object v1, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;->RESUME:Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;

    invoke-direct {v0, p0, v1}, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent;-><init>(Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;)V

    .line 5043
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ReaderActivity;->publishEvent(Lcom/amazon/kindle/krx/events/IEvent;)V

    const-string v0, "MrprDialogDelay_onResume"

    const-string v1, "MrprDialogDelay_TODO"

    const-string v2, "MrprDialogDelay_v5"

    const-string v3, "MrprDoubleDialogDelay_v5"

    .line 5045
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/reader/DialogMetricsRecorder;->resetMetricTimer(Ljava/util/List;)V

    return-void
.end method

.method private onActivityStarted()V
    .locals 7

    .line 4938
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->wasRestartedForSettingsChange()Z

    move-result v0

    .line 4942
    iget-boolean v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->isActivityRestarting:Z

    if-nez v1, :cond_0

    .line 4943
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->shouldSetOverlayVisibleAtLaunch()Z

    move-result v1

    iput-boolean v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->shouldFlashOverlays:Z

    :cond_0
    if-nez v0, :cond_1

    .line 4947
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->startActionsHelper:Lcom/amazon/kcp/reader/StartActionsHelper;

    iget-object v2, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/reader/StartActionsHelper;->triggerStartActions(Lcom/amazon/android/docviewer/KindleDocViewer;)V

    :cond_1
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 4951
    iput-boolean v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->shouldFlashOverlays:Z

    goto :goto_0

    .line 4952
    :cond_2
    iget-boolean v2, p0, Lcom/amazon/kcp/reader/ReaderActivity;->rotateWithChromeUp:Z

    if-eqz v2, :cond_3

    .line 4953
    iput-boolean v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->shouldFlashOverlays:Z

    .line 4954
    iput-boolean v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->rotateWithChromeUp:Z

    .line 4957
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    const/4 v3, 0x1

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-static {v2}, Lcom/amazon/kindle/nln/pageflip/NLNUtils;->shouldUseNonLinearNavigation(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/amazon/kcp/reader/AudibleHelper;->isReaderInAudibleMode()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 4966
    :cond_4
    iget-boolean v2, p0, Lcom/amazon/kcp/reader/ReaderActivity;->rotateWithChromeUp:Z

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lcom/amazon/kcp/reader/ReaderActivity;->shouldFlashOverlays:Z

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v2, 0x1

    .line 4967
    :goto_2
    iget-object v4, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v4, v2, v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setOverlaysVisible(ZZ)Lcom/amazon/kcp/reader/ui/ReaderLayout;

    .line 4968
    iget-object v4, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v4}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderMenuContainer()Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 4969
    iget-object v4, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v4}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderMenuContainer()Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    move-result-object v4

    invoke-virtual {v4, v2, v1}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->setOverlaysVisible(ZZ)V

    .line 4971
    :cond_7
    iget-object v4, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v4, v2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->onOverlaysVisibilityChanged(Z)V

    :cond_8
    if-eqz v0, :cond_9

    .line 4978
    invoke-virtual {p0, v3, v1}, Lcom/amazon/kcp/reader/ReaderActivity;->setViewOptionsVisible(ZZ)V

    .line 4981
    :cond_9
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->orientationListener:Lcom/amazon/kcp/reader/ReaderActivity$ReaderOrientationChangeListener;

    if-eqz v0, :cond_a

    .line 4982
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 4986
    :cond_a
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->setDeviceDefaultActionBarDisplayOptions()V

    .line 4989
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_c

    .line 4990
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    .line 4991
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    if-eqz v2, :cond_b

    .line 4993
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v4, :cond_b

    .line 4994
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 4997
    :cond_b
    sget-object v5, Lcom/amazon/kcp/reader/ReaderActivity;->TAG:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v1

    .line 5000
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v2

    aput-object v2, v4, v3

    const/4 v2, 0x2

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBaseLanguage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    const-string v0, "Book ASIN Truncated: ...%s, Book Type: %s, Language %s"

    .line 4998
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4997
    invoke-static {v5, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 5005
    :cond_c
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->supportsSubPixelRendering()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    instance-of v0, v0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    if-eqz v0, :cond_e

    .line 5007
    iget v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->deviceOrientation:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_d

    goto :goto_3

    :cond_d
    const/4 v3, 0x0

    .line 5008
    :goto_3
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    check-cast v0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    .line 5009
    iget v2, p0, Lcom/amazon/kcp/reader/ReaderActivity;->configOrientation:I

    .line 5011
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v4

    .line 5012
    invoke-virtual {v4, p0}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->isSubpixelRenderingRotated(Landroid/content/Context;)Z

    move-result v4

    .line 5010
    invoke-static {v2, v3, v4}, Lcom/amazon/kcp/reader/SubPixelRenderingOrientations;->getSubPixelOrientationValue(IZZ)Lcom/amazon/kcp/reader/SubPixelRenderingOrientations;

    move-result-object v2

    .line 5013
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getOrientation()Lcom/amazon/kindle/model/content/BookOrientation;

    move-result-object v3

    sget-object v4, Lcom/amazon/kindle/model/content/BookOrientation;->UNDEFINED:Lcom/amazon/kindle/model/content/BookOrientation;

    if-ne v3, v4, :cond_f

    .line 5014
    iget v3, p0, Lcom/amazon/kcp/reader/ReaderActivity;->configOrientation:I

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/SubPixelRenderingOrientations;->getValue()I

    move-result v2

    invoke-virtual {v0, v3, v2}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->setOrientation(II)V

    goto :goto_4

    .line 5016
    :cond_e
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_f

    .line 5017
    iget v2, p0, Lcom/amazon/kcp/reader/ReaderActivity;->configOrientation:I

    invoke-interface {v0, v2}, Lcom/amazon/android/docviewer/KindleDocViewer;->setInitialOrientation(I)V

    .line 5020
    :cond_f
    :goto_4
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->mOrientationChangeEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    iget v2, p0, Lcom/amazon/kcp/reader/ReaderActivity;->configOrientation:I

    invoke-virtual {v0, v2}, Lcom/amazon/foundation/internal/IntEventProvider;->notifyListeners(I)V

    const-string v0, "ReaderActivity.onStart()"

    .line 5021
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 5022
    new-instance v0, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent;

    sget-object v1, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;->START:Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;

    invoke-direct {v0, p0, v1}, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent;-><init>(Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;)V

    .line 5023
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ReaderActivity;->publishEvent(Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 5026
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->shouldRegisterTimeUpdateReceiver()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 5027
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getTimeUpdateReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.TIME_TICK"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_10
    const-string v0, "MrprDialogDelay_onStart"

    const-string v1, "MrprDialogDelay_v4"

    .line 5030
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/reader/DialogMetricsRecorder;->resetMetricTimer(Ljava/util/List;)V

    return-void
.end method

.method private populateCommandBar()V
    .locals 2

    .line 2029
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->currentBook:Lcom/amazon/kindle/krx/content/IBook;

    invoke-static {v0}, Lcom/amazon/android/widget/CommandBarUtils;->useCommandBarForContent(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2030
    sget-object v0, Lcom/amazon/kcp/reader/ReaderActivity;->TAG:Ljava/lang/String;

    const-string v1, "Trying to refresh CommandBar when it\'s not being used"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2034
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->commandBar:Lcom/amazon/android/widget/CommandBar;

    if-nez v0, :cond_1

    .line 2037
    sget-object v0, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->PAGE_FLIP:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    invoke-virtual {v0}, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->getFragmentTag()Ljava/lang/String;

    move-result-object v0

    .line 2038
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;

    if-eqz v0, :cond_2

    .line 2040
    invoke-virtual {v0}, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->populateCommandBar()V

    goto :goto_0

    .line 2043
    :cond_1
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->commandBarItemController:Lcom/amazon/android/widget/CommandBarItemController;

    invoke-virtual {v1, v0}, Lcom/amazon/android/widget/CommandBarItemController;->populateCommandBar(Lcom/amazon/android/widget/CommandBar;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private populateDefaultFeatureSet()V
    .locals 2

    .line 1974
    sget-object v0, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;->SidePanel:Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/reader/ReaderActivity;->setReaderActivityFeature(Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;Z)V

    return-void
.end method

.method private prepareSnapshotPreview()V
    .locals 3

    .line 1538
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->contentContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getSnapshotView()Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 1539
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->closeDocument()V

    return-void
.end method

.method private primeGLSurfaceView()V
    .locals 3

    .line 1203
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->isPageCurlSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1204
    new-instance v0, Lcom/amazon/kcp/reader/BlankGLSurfaceView;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/BlankGLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->surfaceView:Lcom/amazon/kcp/reader/BlankGLSurfaceView;

    .line 1205
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1206
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->contentContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->surfaceView:Lcom/amazon/kcp/reader/BlankGLSurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private publishEvent(Lcom/amazon/kindle/krx/events/IEvent;)V
    .locals 2

    .line 3829
    sget-object v0, Lcom/amazon/kcp/reader/ReaderActivity;->MESSAGEQUEUE:Lcom/amazon/kindle/krx/events/IMessageQueue;

    if-nez v0, :cond_0

    .line 3830
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    const-class v1, Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/ReaderActivity;->MESSAGEQUEUE:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 3832
    :cond_0
    sget-object v0, Lcom/amazon/kcp/reader/ReaderActivity;->MESSAGEQUEUE:Lcom/amazon/kindle/krx/events/IMessageQueue;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method private recoverPageFlipFragment(Landroid/os/Bundle;)V
    .locals 2

    .line 1280
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-static {v0}, Lcom/amazon/kindle/nln/pageflip/NLNUtils;->shouldUseNonLinearNavigation(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1281
    sget v0, Lcom/amazon/kindle/krl/R$id;->reader_content_fragment_container:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "FragmentStateBundle"

    .line 1288
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 1290
    iput-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->fragmentStateManager:Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;

    .line 1291
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 1294
    invoke-virtual {p1}, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->getCurrentMode()Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    move-result-object p1

    .line 1295
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->getFragmentTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1297
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ReaderActivity;->showNLNContentFragment(Lcom/amazon/kindle/nln/NonLinearNavigationMode;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private registerReaderPluginOverlayStub()V
    .locals 6

    .line 3837
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->setCurrentActivity(Landroid/app/Activity;)V

    .line 3842
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3844
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v1

    new-instance v2, Lcom/amazon/kindle/krx/ui/customwidget/CustomWidgetState;

    const/4 v3, 0x0

    const-string v4, ""

    const-string v5, "READER_PLUGIN_OVERLAY_STUB"

    invoke-direct {v2, v4, v5, v3}, Lcom/amazon/kindle/krx/ui/customwidget/CustomWidgetState;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getCustomWidget(Lcom/amazon/kindle/krx/ui/customwidget/CustomWidgetState;)Lcom/amazon/kindle/krx/ui/customwidget/ICustomWidget;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3847
    new-instance v1, Lcom/amazon/kcp/reader/ReaderActivity$ReaderOverlayProvider;

    new-instance v2, Lcom/amazon/kcp/reader/ReaderActivity$ReaderPluginOverlay;

    invoke-direct {v2, v3}, Lcom/amazon/kcp/reader/ReaderActivity$ReaderPluginOverlay;-><init>(Lcom/amazon/kcp/reader/ReaderActivity$1;)V

    invoke-direct {v1, v2}, Lcom/amazon/kcp/reader/ReaderActivity$ReaderOverlayProvider;-><init>(Lcom/amazon/kcp/reader/ReaderActivity$ReaderPluginOverlay;)V

    .line 3849
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->registerCustomWidgetProvider(Lcom/amazon/kindle/krx/ui/customwidget/ICustomWidgetProvider;)V

    :cond_0
    return-void
.end method

.method private removeToolbar()V
    .locals 2

    .line 5216
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    if-eqz v0, :cond_0

    .line 5217
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderMenuContainer()Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5219
    sget v1, Lcom/amazon/kindle/krl/R$id;->toolbar_with_shadow:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 5221
    sget v1, Lcom/amazon/kindle/krl/R$id;->book_toolbar:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 5223
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private reportAccessibilityMetrics()V
    .locals 3

    .line 3025
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "OrientationChange"

    const-string v2, "AccessibilityModeEnabled"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private reportSyncEventMetric(Lcom/amazon/kindle/krx/sync/LPRSyncType;Ljava/lang/String;)V
    .locals 2

    .line 3981
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReaderActivity:Sync"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3982
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private requestLargeWebviewTilesIfNecessary()V
    .locals 3

    .line 3726
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 3727
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 3728
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v2, 0x76c

    if-gt v1, v2, :cond_0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v0, v2, :cond_1

    :cond_0
    const-string/jumbo v0, "true"

    const-string/jumbo v1, "webview.useLargeBaseTiles"

    .line 3731
    invoke-static {v1, v0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v1, "webview.useLargeLayerTiles"

    .line 3732
    invoke-static {v1, v0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private saveCurrentBookStateWithoutChangingLastAccessed()V
    .locals 3

    .line 1833
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_0

    .line 1834
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1836
    iget-object v1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->readerController:Lcom/amazon/kcp/reader/ReaderController;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/amazon/kcp/reader/ReaderController;->updatebookMetadataForStorage(Lcom/amazon/kindle/model/content/ILocalBookItem;Z)V

    .line 1837
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getLastPositionRead()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/model/content/ILocalBookItem;->persistLastPositionReadToSidecar(I)V

    :cond_0
    return-void
.end method

.method private setDialogListeners(ILandroid/app/Dialog;Lcom/amazon/kcp/reader/DialogListener;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 2849
    new-instance p1, Lcom/amazon/kcp/reader/ReaderActivity$18;

    invoke-direct {p1, p0, p3}, Lcom/amazon/kcp/reader/ReaderActivity$18;-><init>(Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kcp/reader/DialogListener;)V

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 2862
    new-instance p1, Lcom/amazon/kcp/reader/ReaderActivity$19;

    invoke-direct {p1, p0, p3}, Lcom/amazon/kcp/reader/ReaderActivity$19;-><init>(Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kcp/reader/DialogListener;)V

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 2873
    new-instance p1, Lcom/amazon/kcp/reader/ReaderActivity$20;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/reader/ReaderActivity$20;-><init>(Lcom/amazon/kcp/reader/ReaderActivity;)V

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2880
    new-instance p1, Lcom/amazon/kcp/reader/ReaderActivity$21;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/reader/ReaderActivity$21;-><init>(Lcom/amazon/kcp/reader/ReaderActivity;)V

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_0
    return-void
.end method

.method private setForceDisableJustification(Z)V
    .locals 1

    .line 2577
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_0

    .line 2578
    invoke-interface {v0, p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->setForceDisableJustification(Z)V

    :cond_0
    return-void
.end method

.method private setOverlayVisibility(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 4528
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->makeOverlaysVisible()V

    goto :goto_0

    .line 4530
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->hideOverlays()V

    :goto_0
    return-void
.end method

.method private setPreferenceFromSettingsController(Ljava/lang/String;)V
    .locals 5

    .line 2160
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    .line 2161
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2164
    iget-object v3, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v3, :cond_0

    .line 2165
    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderModeHandler()Lcom/amazon/kindle/krx/reader/IReaderModeHandler;

    move-result-object v1

    iget-object v3, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v3}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/amazon/kindle/krx/reader/IReaderModeHandler;->getReaderMode(Ljava/lang/String;)Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 2168
    :goto_0
    sget-object v3, Lcom/amazon/kcp/application/UserSettingsController$Setting;->FONT_SIZE:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v3, p1}, Lcom/amazon/kcp/application/UserSettingsController$Setting;->equals(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2169
    iget-object p1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz p1, :cond_23

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->isFontSizeChangeSupported()Z

    move-result p1

    if-eqz p1, :cond_23

    .line 2170
    invoke-static {}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getFontSizes()[I

    move-result-object p1

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getFontSizeIndex()I

    move-result v0

    aget p1, p1, v0

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ReaderActivity;->setFontSize(I)V

    goto/16 :goto_6

    .line 2172
    :cond_1
    sget-object v3, Lcom/amazon/kcp/application/UserSettingsController$Setting;->COLOR_MODE:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v3, p1}, Lcom/amazon/kcp/application/UserSettingsController$Setting;->equals(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1e

    sget-object v3, Lcom/amazon/kcp/application/UserSettingsController$Setting;->KINDLE_ILLUSTRATED:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    .line 2173
    invoke-virtual {v3, p1}, Lcom/amazon/kcp/application/UserSettingsController$Setting;->equals(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1e

    sget-object v3, Lcom/amazon/kcp/application/UserSettingsController$Setting;->COLOR_MODE_CHANGED_FROM_FAB:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    .line 2174
    invoke-virtual {v3, p1}, Lcom/amazon/kcp/application/UserSettingsController$Setting;->equals(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1e

    sget-object v3, Lcom/amazon/kcp/application/UserSettingsController$Setting;->SYSTEM_THEME_FOR_PAGE_COLOR:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    .line 2175
    invoke-virtual {v3, p1}, Lcom/amazon/kcp/application/UserSettingsController$Setting;->equals(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_4

    .line 2216
    :cond_2
    sget-object v3, Lcom/amazon/kcp/application/UserSettingsController$Setting;->READER_ORIENTATION_ACTIVITY_INFO:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v3, p1}, Lcom/amazon/kcp/application/UserSettingsController$Setting;->equals(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2218
    sget-object p1, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->DOUBLETIME:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    if-eq v1, p1, :cond_23

    sget-object p1, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->AMPLIFY:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    if-eq v1, p1, :cond_23

    .line 2219
    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getOrientation()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->setRequestedOrientation(I)V

    goto/16 :goto_6

    .line 2221
    :cond_3
    sget-object v1, Lcom/amazon/kcp/application/UserSettingsController$Setting;->SCREEN_BRIGHTNESS:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v1, p1}, Lcom/amazon/kcp/application/UserSettingsController$Setting;->equals(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d

    sget-object v1, Lcom/amazon/kcp/application/UserSettingsController$Setting;->BRIGHTNESS_MODE:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    .line 2222
    invoke-virtual {v1, p1}, Lcom/amazon/kcp/application/UserSettingsController$Setting;->equals(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto/16 :goto_3

    .line 2224
    :cond_4
    sget-object v1, Lcom/amazon/kcp/application/UserSettingsController$Setting;->LINE_SPACING:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v1, p1}, Lcom/amazon/kcp/application/UserSettingsController$Setting;->equals(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1b

    sget-object v1, Lcom/amazon/kcp/application/UserSettingsController$Setting;->PINYIN_LETTER_SPACING:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    .line 2225
    invoke-virtual {v1, p1}, Lcom/amazon/kcp/application/UserSettingsController$Setting;->equals(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto/16 :goto_2

    .line 2240
    :cond_5
    sget-object v1, Lcom/amazon/kcp/application/UserSettingsController$Setting;->LINE_LENGTH:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v1, p1}, Lcom/amazon/kcp/application/UserSettingsController$Setting;->equals(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2241
    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getMargin()Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ReaderActivity;->setMargin(Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;)V

    goto/16 :goto_6

    :cond_6
    if-eqz p1, :cond_7

    .line 2245
    sget-object v1, Lcom/amazon/kcp/application/UserSettingsController$Setting;->FONT_FACE:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2246
    iget-object p1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz p1, :cond_23

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->isFontTypeChangeSupported()Z

    move-result p1

    if-eqz p1, :cond_23

    .line 2247
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/application/UserSettingsController;->getFontFamilyForBook(Lcom/amazon/kindle/model/content/ILocalBookInfo;)Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object p1

    .line 2248
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-virtual {p1}, Lcom/mobipocket/android/drawing/FontFamily;->getTypeFaceName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->setDefaultFontFace(Ljava/lang/String;)Z

    .line 2249
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "FONT_FACE="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDefaultFontFace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",FONT_SIZE="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 2250
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getFontSize()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",LINE_SPACING="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 2251
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getLineSpacing()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_6

    .line 2253
    :cond_7
    sget-object v1, Lcom/amazon/kcp/application/UserSettingsController$Setting;->COLUMN_COUNT:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v1, p1}, Lcom/amazon/kcp/application/UserSettingsController$Setting;->equals(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2254
    iget-object p1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz p1, :cond_23

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->isClosed()Z

    move-result p1

    if-nez p1, :cond_23

    .line 2255
    iget-object p1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getColumnCount()I

    move-result v0

    invoke-interface {p1, v0, v4}, Lcom/amazon/android/docviewer/KindleDocViewer;->setColumnCount(IZ)V

    goto/16 :goto_6

    .line 2257
    :cond_8
    sget-object v1, Lcom/amazon/kcp/application/UserSettingsController$Setting;->TEXT_ALIGNMENT:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v1, p1}, Lcom/amazon/kcp/application/UserSettingsController$Setting;->equals(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2258
    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getTextAlignment()Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ReaderActivity;->setTextAlignment(Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;)V

    goto/16 :goto_6

    .line 2259
    :cond_9
    sget-object v1, Lcom/amazon/kcp/application/UserSettingsController$Setting;->FORCE_DISABLE_JUSTIFICATION:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v1, p1}, Lcom/amazon/kcp/application/UserSettingsController$Setting;->equals(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2260
    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getForceDisableJustification()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ReaderActivity;->setForceDisableJustification(Z)V

    goto/16 :goto_6

    .line 2261
    :cond_a
    sget-object v1, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->SUBPIXEL_RENDERING:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    invoke-virtual {v1, p1}, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->equals(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2262
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->updateSubpixelRenderingValue()V

    .line 2263
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    if-eqz p1, :cond_23

    .line 2264
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->refresh()V

    goto/16 :goto_6

    .line 2266
    :cond_b
    sget-object v1, Lcom/amazon/kcp/application/UserSettingsController$Setting;->KINDLE_ILLUSTRATED_AUTO_PLAY_ANIMATIONS:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v1, p1}, Lcom/amazon/kcp/application/UserSettingsController$Setting;->equals(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2267
    iget-object p1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz p1, :cond_23

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->isClosed()Z

    move-result p1

    if-nez p1, :cond_23

    .line 2268
    iget-object p1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->isKindleIllustratedAutoPlayEnabled()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->setKindleIllustratedAutoPlayAnimations(Z)V

    goto/16 :goto_6

    .line 2270
    :cond_c
    sget-object v1, Lcom/amazon/kcp/application/UserSettingsController$Setting;->COMICS_SECTION_LAYOUT_MODE:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v1, p1}, Lcom/amazon/kcp/application/UserSettingsController$Setting;->equals(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2271
    iget-object p1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz p1, :cond_23

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->isClosed()Z

    move-result p1

    if-nez p1, :cond_23

    .line 2272
    iget-object p1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getSectionLayoutMode()Lcom/amazon/android/docviewer/SectionLayoutMode;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->setSectionLayoutMode(Lcom/amazon/android/docviewer/SectionLayoutMode;)V

    goto/16 :goto_6

    .line 2274
    :cond_d
    sget-object v1, Lcom/amazon/kcp/application/UserSettingsController$Setting;->COMICS_TRANSITION_DURATION:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v1, p1}, Lcom/amazon/kcp/application/UserSettingsController$Setting;->equals(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a

    sget-object v1, Lcom/amazon/kcp/application/UserSettingsController$Setting;->COMICS_ANIMATE_TRANSITIONS:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    .line 2275
    invoke-virtual {v1, p1}, Lcom/amazon/kcp/application/UserSettingsController$Setting;->equals(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto/16 :goto_1

    .line 2279
    :cond_e
    sget-object v1, Lcom/amazon/kcp/application/UserSettingsController$Setting;->CONTRAST_LEVEL:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v1, p1}, Lcom/amazon/kcp/application/UserSettingsController$Setting;->equals(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2280
    iget-object p1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz p1, :cond_23

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->isClosed()Z

    move-result p1

    if-nez p1, :cond_23

    .line 2281
    iget-object p1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->onContrastLevelChanged()V

    goto/16 :goto_6

    .line 2283
    :cond_f
    sget-object v1, Lcom/amazon/kcp/application/UserSettingsController$Setting;->CONTINUOUS_SCROLL_REFLOWABLE:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v1, p1}, Lcom/amazon/kcp/application/UserSettingsController$Setting;->equals(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2284
    iget-object p1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz p1, :cond_23

    .line 2285
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->isClosed()Z

    move-result p1

    if-nez p1, :cond_23

    iget-object p1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 2286
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    sget-object v1, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->ContinuousScrollReflowable:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    invoke-interface {p1, v1}, Lcom/amazon/kindle/model/content/ILocalBookItem;->hasFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;)Z

    move-result p1

    if-eqz p1, :cond_23

    iget-boolean p1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->isRestartingForSettingChange:Z

    if-nez p1, :cond_23

    .line 2288
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_23

    .line 2293
    iget-boolean p1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->isCurrentlyVisible:Z

    if-eqz p1, :cond_23

    .line 2294
    iget-object p1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getContinuousScrollReflowableEnabled()Z

    move-result v0

    invoke-interface {p1, v0, v4}, Lcom/amazon/android/docviewer/KindleDocViewer;->setContinuousScrollEnabled(ZZ)V

    goto/16 :goto_6

    .line 2297
    :cond_10
    sget-object v1, Lcom/amazon/kcp/application/UserSettingsController$Setting;->READING_RULER:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v1, p1}, Lcom/amazon/kcp/application/UserSettingsController$Setting;->equals(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2298
    iget-object p1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz p1, :cond_23

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->isClosed()Z

    move-result p1

    if-nez p1, :cond_23

    .line 2299
    iget-object p1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getReadingRulerEnabled()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->setReadingRulerEnabled(Z)V

    goto/16 :goto_6

    .line 2301
    :cond_11
    sget-object v1, Lcom/amazon/kcp/application/UserSettingsController$Setting;->READING_RULER_OPACITY:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v1, p1}, Lcom/amazon/kcp/application/UserSettingsController$Setting;->equals(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2302
    iget-object p1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz p1, :cond_23

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->isClosed()Z

    move-result p1

    if-nez p1, :cond_23

    .line 2303
    iget-object p1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getReadingRulerOpacity()F

    move-result v0

    invoke-interface {p1, v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->setReadingRulerOpacity(F)V

    goto/16 :goto_6

    .line 2305
    :cond_12
    sget-object v1, Lcom/amazon/kcp/application/UserSettingsController$Setting;->READING_RULER_STYLE:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v1, p1}, Lcom/amazon/kcp/application/UserSettingsController$Setting;->equals(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2306
    iget-object p1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz p1, :cond_23

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->isClosed()Z

    move-result p1

    if-nez p1, :cond_23

    .line 2307
    iget-object p1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getReadingRulerStyle()Lcom/amazon/ksdk/presets/ReadingRulerStyleType;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->setReadingRulerStyle(Lcom/amazon/ksdk/presets/ReadingRulerStyleType;)V

    goto/16 :goto_6

    .line 2309
    :cond_13
    sget-object v1, Lcom/amazon/kcp/application/UserSettingsController$Setting;->READING_RULER_COLOR:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v1, p1}, Lcom/amazon/kcp/application/UserSettingsController$Setting;->equals(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 2310
    iget-object p1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz p1, :cond_23

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->isClosed()Z

    move-result p1

    if-nez p1, :cond_23

    .line 2311
    iget-object p1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getReadingRulerColor()Lcom/amazon/ksdk/presets/Color;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->setReadingRulerColor(Lcom/amazon/ksdk/presets/Color;)V

    goto/16 :goto_6

    .line 2313
    :cond_14
    sget-object v1, Lcom/amazon/kcp/application/UserSettingsController$Setting;->READING_RULER_SIZE:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v1, p1}, Lcom/amazon/kcp/application/UserSettingsController$Setting;->equals(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 2314
    iget-object p1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz p1, :cond_23

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->isClosed()Z

    move-result p1

    if-nez p1, :cond_23

    .line 2315
    iget-object p1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getReadingRulerSize()Lcom/amazon/ksdk/presets/ReadingRulerNumberOfLinesType;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->setReadingRulerSize(Lcom/amazon/ksdk/presets/ReadingRulerNumberOfLinesType;)V

    goto/16 :goto_6

    .line 2317
    :cond_15
    sget-object v1, Lcom/amazon/kcp/application/UserSettingsController$Setting;->TIME_DISPLAY:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v1, p1}, Lcom/amazon/kcp/application/UserSettingsController$Setting;->equals(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 2321
    iget-object p1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz p1, :cond_23

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->isClosed()Z

    move-result p1

    if-nez p1, :cond_23

    .line 2322
    new-instance p1, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent;

    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    sget-object v1, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$ChangeType;->POST_CHANGE:Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$ChangeType;

    invoke-direct {p1, v0, v1, v2}, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$ChangeType;Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;)V

    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ReaderActivity;->publishEvent(Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 2323
    iget-object p1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->refreshHeader()V

    goto/16 :goto_6

    .line 2325
    :cond_16
    sget-object v1, Lcom/amazon/kcp/application/UserSettingsController$Setting;->PAGE_CURL:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v1, p1}, Lcom/amazon/kcp/application/UserSettingsController$Setting;->equals(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2327
    iget-object p1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz p1, :cond_23

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->isClosed()Z

    move-result p1

    if-nez p1, :cond_23

    .line 2328
    iget-object p1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->isPageCurlEnabled()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->enablePageCurl(Z)V

    goto/16 :goto_6

    .line 2330
    :cond_17
    sget-object v1, Lcom/amazon/kcp/application/UserSettingsController$Setting;->SHOW_PAGE_ON_ENTER:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v1, p1}, Lcom/amazon/kcp/application/UserSettingsController$Setting;->equals(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 2331
    iget-object p1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz p1, :cond_23

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->isClosed()Z

    move-result p1

    if-nez p1, :cond_23

    .line 2332
    iget-object p1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->isShowPageOnEnterEnabled()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->setShowPageOnEnter(Z)V

    goto/16 :goto_6

    .line 2334
    :cond_18
    sget-object v1, Lcom/amazon/kcp/application/UserSettingsController$Setting;->SHOW_PAGE_ON_EXIT:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v1, p1}, Lcom/amazon/kcp/application/UserSettingsController$Setting;->equals(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 2335
    iget-object p1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz p1, :cond_23

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->isClosed()Z

    move-result p1

    if-nez p1, :cond_23

    .line 2336
    iget-object p1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->isShowPageOnExitEnabled()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->setShowPageOnExit(Z)V

    goto/16 :goto_6

    .line 2338
    :cond_19
    sget-object v1, Lcom/amazon/kcp/application/UserSettingsController$Setting;->LETTERBOXING:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v1, p1}, Lcom/amazon/kcp/application/UserSettingsController$Setting;->equals(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 2339
    iget-object p1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz p1, :cond_23

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->isClosed()Z

    move-result p1

    if-nez p1, :cond_23

    .line 2340
    iget-object p1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getLetterboxColor()Lcom/amazon/android/docviewer/LetterboxingColor;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->setLetterboxingMaskColor(Lcom/amazon/android/docviewer/LetterboxingColor;)V

    goto/16 :goto_6

    .line 2276
    :cond_1a
    :goto_1
    iget-object p1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz p1, :cond_23

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->isClosed()Z

    move-result p1

    if-nez p1, :cond_23

    .line 2277
    iget-object p1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getGuidedViewTransitionDuration()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->setTransitionDuration(I)V

    goto/16 :goto_6

    .line 2226
    :cond_1b
    :goto_2
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getLineSettings()Lcom/amazon/android/docviewer/KindleDocLineSettings;

    move-result-object p1

    .line 2227
    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getLineSpacingIndex()I

    move-result v1

    .line 2229
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->calculateLineSpacingInDocViewer()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 2230
    invoke-static {v1}, Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;->fromSerializationValue(I)Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ReaderActivity;->setLineSpacing(Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;)V

    goto/16 :goto_6

    :cond_1c
    if-eqz p1, :cond_23

    .line 2235
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDocViewer;->isJpVertContent()Z

    move-result v2

    .line 2236
    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getFontSizeIndex()I

    move-result v0

    invoke-virtual {p1, v1, v0, v2}, Lcom/amazon/android/docviewer/KindleDocLineSettings;->getLineSpacing(IIZ)I

    move-result p1

    .line 2237
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ReaderActivity;->setLineSpacing(I)V

    goto/16 :goto_6

    .line 2223
    :cond_1d
    :goto_3
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getBrightnessManager()Lcom/amazon/kindle/brightness/IBrightnessManager;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazon/kindle/brightness/IBrightnessManager;->applyScreenBrightness(Landroid/view/Window;)Z

    goto :goto_6

    .line 2176
    :cond_1e
    :goto_4
    iget-boolean v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->isRestartingForSettingChange:Z

    if-nez v1, :cond_23

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1f

    goto :goto_6

    .line 2182
    :cond_1f
    sget-object v1, Lcom/amazon/kcp/application/UserSettingsController$Setting;->COLOR_MODE_CHANGED_FROM_FAB:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v1, p1}, Lcom/amazon/kcp/application/UserSettingsController$Setting;->equals(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 2183
    iput-boolean v4, p0, Lcom/amazon/kcp/reader/ReaderActivity;->isRestartingForSettingChange:Z

    .line 2188
    :cond_20
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 2189
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getCurrentColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getBackgroundColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2192
    iget-object v1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v1, :cond_22

    .line 2193
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getColorModeFactory()Lcom/amazon/android/docviewer/KindleDocColorModeFactory;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/amazon/android/docviewer/KindleDocColorModeFactory;->getColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;Landroid/content/res/Resources;)Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 2195
    sget-object v2, Lcom/amazon/kcp/application/UserSettingsController$Setting;->KINDLE_ILLUSTRATED:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v2, p1}, Lcom/amazon/kcp/application/UserSettingsController$Setting;->equals(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 2197
    iget-object v2, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->isKindleIllustratedEnabled()Z

    move-result v3

    invoke-interface {v2, v3, v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->setKindleIllustratedSettings(ZLcom/amazon/android/docviewer/KindleDocColorMode;)V

    goto :goto_5

    .line 2199
    :cond_21
    iget-object v2, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v2, v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->setColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode;)V

    .line 2207
    :cond_22
    :goto_5
    sget-object v1, Lcom/amazon/kcp/application/UserSettingsController$Setting;->COLOR_MODE_CHANGED_FROM_FAB:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v1, p1}, Lcom/amazon/kcp/application/UserSettingsController$Setting;->equals(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 2213
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kcp/reader/ReaderActivity;->restartActivity(Ljava/lang/String;Lcom/amazon/kcp/application/UserSettingsController;)V

    .line 2214
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->finish()V

    :cond_23
    :goto_6
    return-void
.end method

.method private setPreferencesFromSettings()V
    .locals 6

    const-string v0, "ReaderLayout.setPreferencesFromSettings()"

    const/4 v1, 0x1

    .line 2124
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    const/16 v2, 0x8

    new-array v3, v2, [Lcom/amazon/kcp/application/UserSettingsController$Setting;

    .line 2125
    sget-object v4, Lcom/amazon/kcp/application/UserSettingsController$Setting;->READER_ORIENTATION:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lcom/amazon/kcp/application/UserSettingsController$Setting;->READER_ORIENTATION_ACTIVITY_INFO:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    aput-object v4, v3, v1

    sget-object v1, Lcom/amazon/kcp/application/UserSettingsController$Setting;->FONT_SIZE:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    const/4 v4, 0x2

    aput-object v1, v3, v4

    sget-object v1, Lcom/amazon/kcp/application/UserSettingsController$Setting;->SCREEN_BRIGHTNESS:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    const/4 v4, 0x3

    aput-object v1, v3, v4

    sget-object v1, Lcom/amazon/kcp/application/UserSettingsController$Setting;->LINE_SPACING:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    const/4 v4, 0x4

    aput-object v1, v3, v4

    sget-object v1, Lcom/amazon/kcp/application/UserSettingsController$Setting;->LINE_LENGTH:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    const/4 v4, 0x5

    aput-object v1, v3, v4

    sget-object v1, Lcom/amazon/kcp/application/UserSettingsController$Setting;->COLUMN_COUNT:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    const/4 v4, 0x6

    aput-object v1, v3, v4

    sget-object v1, Lcom/amazon/kcp/application/UserSettingsController$Setting;->TEXT_ALIGNMENT:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    const/4 v4, 0x7

    aput-object v1, v3, v4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 2136
    aget-object v4, v3, v1

    .line 2137
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/amazon/kcp/reader/ReaderActivity;->setPreferenceFromSettingsController(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2140
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v1, :cond_2

    .line 2141
    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->hasPublisherFonts()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2142
    sget-object v1, Lcom/amazon/kcp/application/UserSettingsController$Setting;->FONT_FACE:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amazon/kcp/reader/ReaderActivity;->setPreferenceFromSettingsController(Ljava/lang/String;)V

    goto :goto_1

    .line 2144
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FONT_FACE="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDefaultFontFace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",FONT_SIZE="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 2145
    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getFontSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",LINE_SPACING="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 2146
    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getLineSpacing()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2149
    :cond_2
    :goto_1
    invoke-static {v0, v5}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-void
.end method

.method private setTextAlignment(Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;)V
    .locals 1

    .line 2567
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_0

    .line 2568
    invoke-interface {v0, p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->setTextAlignment(Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;)V

    .line 2570
    iget-object p1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getTextAlignment()Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2571
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TEXT_ALIGNMENT="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getTextAlignment()Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private setupContainerSafeInsets()V
    .locals 2

    .line 977
    invoke-static {}, Lcom/amazon/kcp/util/device/DisplayCutoutUtils;->isNotchSupportEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 978
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->contentContainer:Landroid/view/ViewGroup;

    new-instance v1, Lcom/amazon/kcp/reader/ReaderActivity$10;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/reader/ReaderActivity$10;-><init>(Lcom/amazon/kcp/reader/ReaderActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    :cond_0
    return-void
.end method

.method private setupFullPageFragment()V
    .locals 4

    .line 1336
    sget v0, Lcom/amazon/kindle/krl/R$id;->reader_content_fragment_container:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1344
    :cond_0
    sget-object v0, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->FULL_PAGE:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    invoke-virtual {v0}, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->getFragmentTag()Ljava/lang/String;

    move-result-object v0

    .line 1345
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1346
    new-instance v1, Lcom/amazon/kindle/fragment/KindleDocViewerFragment;

    invoke-direct {v1}, Lcom/amazon/kindle/fragment/KindleDocViewerFragment;-><init>()V

    .line 1347
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    .line 1348
    sget v3, Lcom/amazon/kindle/krl/R$id;->reader_content_fragment_container:I

    invoke-virtual {v2, v3, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_1
    :goto_0
    return-void
.end method

.method private setupGestureHandler()V
    .locals 9

    .line 1357
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const-string v1, "Setup GestureHandler"

    .line 1361
    invoke-static {v1, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 1362
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->usesReaderGestureDetector()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1363
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->gestureHandlerFactory:Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;

    if-eqz v0, :cond_1

    .line 1366
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;->clearHandlers()V

    .line 1370
    :cond_1
    new-instance v0, Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-direct {v0, v2}, Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;-><init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->gestureHandlerFactory:Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;

    .line 1371
    new-instance v0, Lcom/amazon/kcp/reader/gestures/GestureListener;

    new-instance v5, Lcom/amazon/kcp/reader/gestures/GestureController;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderActivity;->gestureHandlerFactory:Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;

    invoke-direct {v5, v2}, Lcom/amazon/kcp/reader/gestures/GestureController;-><init>(Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;)V

    .line 1372
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/krl/R$dimen;->min_selection_movement:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 1373
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/krl/R$dimen;->tap_wiggle_threshold:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 1374
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/krl/R$integer;->gesture_long_press_after_motion_delay_ms:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/amazon/kcp/reader/gestures/GestureListener;-><init>(Landroid/content/Context;Lcom/amazon/kcp/reader/gestures/GestureController;III)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerGestureListener:Lcom/amazon/kcp/reader/gestures/GestureListener;

    .line 1380
    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v2, v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setGestureListener(Lcom/amazon/kcp/reader/gestures/GestureListener;)V

    .line 1381
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->gestureHandlerFactory:Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0, v2}, Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;->initHandlers(Lcom/amazon/kcp/reader/ui/ReaderLayout;)Z

    goto :goto_0

    .line 1382
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    instance-of v2, v0, Lcom/amazon/kcp/reader/ui/PdfLayout;

    if-nez v2, :cond_3

    instance-of v0, v0, Lcom/amazon/kcp/reader/ui/GraphicalHighlightLayout;

    if-eqz v0, :cond_4

    .line 1384
    :cond_3
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    .line 1385
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getVirtualViewHierarchyManager()Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;

    move-result-object v0

    new-instance v2, Lcom/amazon/kcp/reader/gestures/ActiveAreaGestureHandler;

    new-instance v3, Lcom/amazon/kcp/reader/gestures/GestureService;

    iget-object v4, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-direct {v3, v4}, Lcom/amazon/kcp/reader/gestures/GestureService;-><init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;)V

    invoke-direct {v2, v3}, Lcom/amazon/kcp/reader/gestures/ActiveAreaGestureHandler;-><init>(Lcom/amazon/kcp/reader/gestures/GestureService;)V

    .line 1386
    invoke-virtual {v0, v2}, Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;->registerVirtualViewProvider(Lcom/amazon/kcp/reader/accessibility/IVirtualViewProvider;)V

    :cond_4
    :goto_0
    const/4 v0, 0x0

    .line 1388
    invoke-static {v1, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-void
.end method

.method private setupNewPageFlipFragment()V
    .locals 5

    .line 1307
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-static {v0}, Lcom/amazon/kindle/nln/pageflip/NLNUtils;->shouldUseNonLinearNavigation(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1308
    sget v0, Lcom/amazon/kindle/krl/R$id;->reader_content_fragment_container:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->fragmentStateManager:Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;

    if-eqz v0, :cond_0

    goto :goto_2

    .line 1314
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/reader/AudibleHelper;->isReaderInAudibleMode()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->PAGE_FLIP:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->FULL_PAGE:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    .line 1318
    :goto_0
    iget-object v1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getThumbnailManager()Lcom/amazon/kindle/nln/IThumbnailManager;

    move-result-object v1

    .line 1319
    :goto_1
    new-instance v2, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;

    invoke-direct {v2, v0, v1}, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;-><init>(Lcom/amazon/kindle/nln/NonLinearNavigationMode;Lcom/amazon/kindle/nln/IThumbnailManager;)V

    .line 1321
    sget-object v1, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->PAGE_FLIP:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    if-ne v0, v1, :cond_3

    .line 1322
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 1323
    new-instance v1, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;

    invoke-direct {v1}, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;-><init>()V

    const/4 v3, 0x1

    .line 1324
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, p0, v1, v3, v4}, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->addArgsForPageFlip(Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kindle/nln/BaseNonLinearFragment;ZLjava/util/List;)V

    .line 1325
    sget v3, Lcom/amazon/kindle/krl/R$id;->reader_chrome_fragment_container:I

    sget-object v4, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->PAGE_FLIP:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    invoke-virtual {v4}, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->getFragmentTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v1, v4}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1328
    :cond_3
    iput-object v2, p0, Lcom/amazon/kcp/reader/ReaderActivity;->fragmentStateManager:Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;

    .line 1329
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private shouldDelayOverlays(Lcom/amazon/kindle/nln/NonLinearNavigationMode;Lcom/amazon/kindle/nln/NonLinearNavigationMode;)Z
    .locals 2

    .line 4546
    sget-object v0, Lcom/amazon/kcp/reader/ReaderActivity$37;->$SwitchMap$com$amazon$kindle$nln$NonLinearNavigationMode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return v0

    .line 4555
    :cond_1
    sget-object p1, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->PAGE_FLIP:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    invoke-virtual {p2, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    return v0
.end method

.method private shouldRegisterTimeUpdateReceiver()Z
    .locals 1

    .line 4845
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isFixedLayout()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4846
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->isTimeDisplayEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static shouldSuppressMRPRDialog()Z
    .locals 4

    const/4 v0, 0x0

    .line 4030
    :try_start_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAuthenticationManager;->getSecureStorage()Lcom/amazon/kindle/persistence/ISecureStorage;

    move-result-object v1

    const-string v2, "ShouldSuppressMrpr"

    .line 4031
    invoke-interface {v1, v2}, Lcom/amazon/kindle/persistence/ISecureStorage;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4032
    invoke-static {v1}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 4033
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    .line 4035
    sget-object v2, Lcom/amazon/kcp/reader/ReaderActivity;->TAG:Ljava/lang/String;

    const-string v3, "Issue accessing MRPR supression info: "

    invoke-static {v2, v3, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method private showBirdsEyeFragment(Landroidx/fragment/app/FragmentTransaction;)Z
    .locals 1

    .line 4583
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->fragmentStateManager:Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;

    if-eqz v0, :cond_0

    .line 4584
    invoke-virtual {v0, p0, p1}, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->transitionToBirdsEye(Lcom/amazon/kcp/reader/ReaderActivity;Landroidx/fragment/app/FragmentTransaction;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private showFullPageFragment(Landroidx/fragment/app/FragmentTransaction;Z)Z
    .locals 3

    .line 4595
    sget-object v0, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->FULL_PAGE:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    invoke-virtual {v0}, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->getFragmentTag()Ljava/lang/String;

    move-result-object v0

    .line 4596
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 4597
    new-instance v1, Lcom/amazon/kindle/fragment/KindleDocViewerFragment;

    invoke-direct {v1}, Lcom/amazon/kindle/fragment/KindleDocViewerFragment;-><init>()V

    .line 4598
    sget v2, Lcom/amazon/kindle/krl/R$id;->reader_content_fragment_container:I

    invoke-virtual {p1, v2, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 4601
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->fragmentStateManager:Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;

    if-eqz v0, :cond_1

    .line 4602
    invoke-virtual {v0, p0, p1, p2}, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->transitionToFullPage(Lcom/amazon/kcp/reader/ReaderActivity;Landroidx/fragment/app/FragmentTransaction;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private showPageFlipFragment(Landroidx/fragment/app/FragmentTransaction;)Z
    .locals 1

    .line 4572
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->fragmentStateManager:Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;

    if-eqz v0, :cond_0

    .line 4573
    invoke-virtual {v0, p0, p1}, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->transitionToPageFlip(Lcom/amazon/kcp/reader/ReaderActivity;Landroidx/fragment/app/FragmentTransaction;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private supportsTOCPanelHelper()Z
    .locals 2

    .line 1049
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->contentMetadata:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-static {p0, v0}, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->SupportsContent(Lcom/amazon/kcp/redding/ReddingActivity;Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1054
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->currentBook:Lcom/amazon/kindle/krx/content/IBook;

    invoke-static {v0}, Lcom/amazon/android/widget/CommandBarUtils;->useCommandBarForContent(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    .line 1058
    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1061
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getContentClass()Lcom/amazon/kindle/model/content/ContentClass;

    move-result-object v0

    .line 1062
    sget-object v1, Lcom/amazon/kindle/model/content/ContentClass;->CHILDREN:Lcom/amazon/kindle/model/content/ContentClass;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_2
    return v1
.end method

.method private updateSubpixelRenderingValue()V
    .locals 4

    .line 3331
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->supportsSubPixelRendering()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    instance-of v0, v0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    if-eqz v0, :cond_1

    .line 3333
    iget v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->deviceOrientation:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3334
    :goto_0
    iget-object v1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    check-cast v1, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    .line 3335
    iget v2, p0, Lcom/amazon/kcp/reader/ReaderActivity;->configOrientation:I

    .line 3337
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->isSubpixelRenderingRotated(Landroid/content/Context;)Z

    move-result v3

    .line 3336
    invoke-static {v2, v0, v3}, Lcom/amazon/kcp/reader/SubPixelRenderingOrientations;->getSubPixelOrientationValue(IZZ)Lcom/amazon/kcp/reader/SubPixelRenderingOrientations;

    move-result-object v0

    .line 3338
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/SubPixelRenderingOrientations;->getValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->setSubPixelRenderingValue(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public ContentMissingEventListener(Lcom/amazon/kindle/yj/events/ContentMissingEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 1140
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_1

    .line 1141
    invoke-virtual {p1}, Lcom/amazon/kindle/yj/events/ContentMissingEvent;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1145
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->boundPanelContent:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1146
    new-instance p1, Lcom/amazon/kcp/reader/ReaderActivity$13;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/reader/ReaderActivity$13;-><init>(Lcom/amazon/kcp/reader/ReaderActivity;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public applyDLCIfApplicable()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public bindPanelContent()V
    .locals 4

    const-string v0, "ReaderActivity.bindPanelContent"

    const/4 v1, 0x1

    .line 1157
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 1158
    new-instance v1, Lcom/amazon/kindle/panels/PanelProviderState;

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getPanelState()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/amazon/kindle/panels/PanelProviderState;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1166
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->isTOCPanelEnabledForActivity()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1167
    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderActivity;->panelController:Lcom/amazon/kindle/panels/IPanelController;

    iget-object v3, p0, Lcom/amazon/kcp/reader/ReaderActivity;->panelLocation:Lcom/amazon/kindle/panels/PanelLocation;

    invoke-interface {v2, v1, v3}, Lcom/amazon/kindle/panels/IPanelController;->bindPanelContent(Lcom/amazon/kindle/panels/PanelProviderState;Lcom/amazon/kindle/panels/PanelLocation;)V

    :cond_0
    const/4 v1, 0x0

    .line 1169
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-void
.end method

.method protected bindPanelContentOnInitialDraw()V
    .locals 2

    .line 1107
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->isDoneWithInitialDraw()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->boundPanelContent:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1111
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->bindPanelContent()V

    :cond_0
    return-void
.end method

.method public closePanels()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2482
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->panelController:Lcom/amazon/kindle/panels/IPanelController;

    if-eqz v0, :cond_0

    .line 2483
    invoke-interface {v0}, Lcom/amazon/kindle/panels/IPanelController;->closePanels()V

    :cond_0
    return-void
.end method

.method protected createGestureHandlerProvider()Lcom/amazon/kcp/reader/gestures/IGestureHandlerProvider;
    .locals 1

    .line 1029
    new-instance v0, Lcom/amazon/kcp/reader/gestures/GestureHandlerProvider;

    invoke-direct {v0}, Lcom/amazon/kcp/reader/gestures/GestureHandlerProvider;-><init>()V

    return-object v0
.end method

.method public disableFlashOverlays()V
    .locals 1

    const/4 v0, 0x0

    .line 3273
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->shouldFlashOverlays:Z

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 3596
    invoke-static {p0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKeyEventController()Lcom/amazon/kcp/reader/KeyEventController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/KeyEventController;->dispatchKeyEventToListeners(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 3599
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    if-eqz v0, :cond_1

    .line 3600
    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 3603
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :cond_2
    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 580
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->enabled:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public displayNoteUI(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Ljava/lang/String;)V
    .locals 6

    .line 3627
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-nez v0, :cond_0

    return-void

    .line 3632
    :cond_0
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->getIndex(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)I

    move-result v1

    .line 3634
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->supportsPageLabels()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 3635
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/amazon/android/docviewer/IPageLabelProvider;->getPageLabelForPosition(I)Ljava/lang/String;

    move-result-object v0

    .line 3636
    sget v2, Lcom/amazon/kindle/krl/R$string;->note_view_title_page:I

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    invoke-virtual {p0, v2, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3638
    :cond_1
    sget v2, Lcom/amazon/kindle/krl/R$string;->note_view_title:I

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v5

    invoke-interface {v0, v5}, Lcom/amazon/android/docviewer/KindleDoc;->userLocationFromPosition(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v3

    invoke-virtual {p0, v2, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3641
    :goto_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 3642
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getUserText()Ljava/lang/String;

    move-result-object v3

    const-string v4, "note_text"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "annotation_index"

    .line 3643
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3644
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    const-string v3, "selectedAnnotationStart"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3645
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result p1

    const-string v1, "selectedAnnotationType"

    invoke-virtual {v2, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "noteEditorEntry"

    .line 3646
    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "title"

    .line 3647
    invoke-virtual {v2, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3649
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getNoteUIProvider()Lcom/amazon/kcp/reader/notebook/INoteUIProvider;

    move-result-object p1

    invoke-interface {p1, v2, p0}, Lcom/amazon/kcp/reader/notebook/INoteUIProvider;->showNoteEditDialog(Landroid/os/Bundle;Lcom/amazon/kcp/reader/ReaderActivity;)V

    return-void
.end method

.method protected doesContentSupportDLC()Z
    .locals 1

    .line 2443
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isFixedLayout()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected enhancedNotebookSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public execute()V
    .locals 1

    .line 5150
    invoke-super {p0}, Lcom/amazon/kcp/redding/DocumentActivity;->execute()V

    .line 5151
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->onActivityCreated()V

    .line 5152
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->onActivityStarted()V

    .line 5153
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->onActivityResumed()V

    .line 5154
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->onRefreshLayout()V

    const/4 v0, 0x0

    .line 5155
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ReaderActivity;->onActivityFocusChanged(Ljava/lang/Boolean;)V

    .line 5156
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5158
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->execute()V

    :cond_0
    return-void
.end method

.method public executeSearch()V
    .locals 1

    .line 2620
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->lastSearchQuery:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ReaderActivity;->startSearch(Ljava/lang/String;)V

    return-void
.end method

.method public finish()V
    .locals 4

    .line 1544
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->saveCurrentBookStateWithoutChangingLastAccessed()V

    .line 1546
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "AllowSnapshotPreview"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1547
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1548
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->prepareSnapshotPreview()V

    .line 1552
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->readerController:Lcom/amazon/kcp/reader/ReaderController;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderController;->isFinishingAllActivities()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 1553
    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 1554
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v3, "BookExit"

    invoke-virtual {v0, v3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->startMetricTimer(Ljava/lang/String;)V

    .line 1556
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->unboundFromBook:Z

    if-nez v0, :cond_3

    .line 1557
    iput-boolean v2, p0, Lcom/amazon/kcp/reader/ReaderActivity;->shouldCloseBook:Z

    :cond_3
    if-nez v1, :cond_4

    .line 1560
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getHistoryManager()Lcom/amazon/kcp/application/HistoryManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/HistoryManager;->hasBack()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->isRestartingForSettingChange:Z

    if-nez v0, :cond_4

    .line 1561
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getHistoryManager()Lcom/amazon/kcp/application/HistoryManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/HistoryManager;->pop()Z

    :cond_4
    return-void
.end method

.method public getActionMenuButtonById(Ljava/lang/String;)Landroid/view/View;
    .locals 5

    .line 4768
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ReaderActivity;->getMenuItemByButtonId(Ljava/lang/String;)Landroid/view/MenuItem;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 4773
    :cond_0
    sget v1, Lcom/amazon/kindle/krl/R$id;->book_toolbar:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 4774
    instance-of v2, v1, Landroidx/appcompat/widget/Toolbar;

    if-nez v2, :cond_1

    return-object v0

    .line 4777
    :cond_1
    check-cast v1, Landroidx/appcompat/widget/Toolbar;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4781
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 4782
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v4, :cond_2

    .line 4783
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/ActionMenuView;

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    move-object v1, v0

    :goto_1
    if-nez v1, :cond_4

    return-object v0

    .line 4793
    :cond_4
    :goto_2
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 4794
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Landroidx/appcompat/view/menu/ActionMenuItemView;

    if-eqz v3, :cond_5

    .line 4795
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/ActionMenuItemView;

    .line 4796
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/ActionMenuItemView;->getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    return-object v3

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    return-object v0
.end method

.method public getAdditionalCommandItems()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/amazon/android/widget/items/AbstractReaderActionCommandItem;",
            ">;"
        }
    .end annotation

    .line 1790
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method public getAnnotationManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;
    .locals 1

    .line 5396
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object v0

    return-object v0
.end method

.method public getButtonFactory()Lcom/amazon/android/menu/IButtonFactory;
    .locals 2

    .line 3808
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    .line 3810
    sget-object v1, Lcom/amazon/kindle/model/content/ContentClass;->CHILDREN:Lcom/amazon/kindle/model/content/ContentClass;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getContentClass()Lcom/amazon/kindle/model/content/ContentClass;

    move-result-object v0

    if-ne v1, v0, :cond_0

    .line 3811
    new-instance v0, Lcom/amazon/android/menu/NoOpButtonFactory;

    invoke-direct {v0}, Lcom/amazon/android/menu/NoOpButtonFactory;-><init>()V

    return-object v0

    .line 3814
    :cond_0
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getButtonFactory()Lcom/amazon/android/menu/IButtonFactory;

    move-result-object v0

    return-object v0
.end method

.method public getCommandBarItemController()Lcom/amazon/android/widget/CommandBarItemController;
    .locals 1

    .line 1984
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->commandBarItemController:Lcom/amazon/android/widget/CommandBarItemController;

    return-object v0
.end method

.method public getCurrentColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode;
    .locals 3

    .line 2583
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_0

    .line 2584
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v0

    return-object v0

    .line 2586
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v0

    .line 2587
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getColorModeFactory()Lcom/amazon/android/docviewer/KindleDocColorModeFactory;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/amazon/android/docviewer/KindleDocColorModeFactory;->getColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;Landroid/content/res/Resources;)Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v0

    return-object v0
.end method

.method protected getCurrentMenu()Landroid/view/Menu;
    .locals 1

    .line 1003
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->currentMenu:Landroid/view/Menu;

    return-object v0
.end method

.method public getCurrentNLNMode()Lcom/amazon/kindle/nln/NonLinearNavigationMode;
    .locals 1

    .line 4611
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->fragmentStateManager:Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;

    if-nez v0, :cond_0

    .line 4613
    sget-object v0, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->FULL_PAGE:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    return-object v0

    .line 4616
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->getCurrentMode()Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getCustomMenuType()Lcom/amazon/android/menu/AndroidCustomMenuController$CustomMenu;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 1

    .line 1450
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-object v0
.end method

.method public getExactScreenOrientation()I
    .locals 2

    .line 4051
    iget v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->deviceOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x6

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x7

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getGestureHandlerFactory()Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;
    .locals 1

    .line 3718
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->gestureHandlerFactory:Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;

    return-object v0
.end method

.method public getGestureHandlerProvider()Lcom/amazon/kcp/reader/gestures/IGestureHandlerProvider;
    .locals 1

    .line 1039
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->gestureHandlerProvider:Lcom/amazon/kcp/reader/gestures/IGestureHandlerProvider;

    return-object v0
.end method

.method public getInfoCardController()Lcom/amazon/kcp/reader/InfoCardController;
    .locals 1

    .line 4095
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->infoCardController:Lcom/amazon/kcp/reader/InfoCardController;

    return-object v0
.end method

.method public getKindleDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 1

    .line 5402
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-object v0
.end method

.method protected getMenuItemByButtonId(Ljava/lang/String;)Landroid/view/MenuItem;
    .locals 1

    .line 4814
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCustomActionMenuController()Lcom/amazon/android/menu/CustomActionMenuController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4815
    invoke-virtual {v0, p1}, Lcom/amazon/android/menu/CustomActionMenuController;->getMenuItemById(Ljava/lang/String;)Landroid/view/MenuItem;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getObjectSelectionModel()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;
    .locals 1

    .line 3510
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_0

    .line 3511
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getObjectSelectionModel()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOnOrientationLockCheckChangeListener()Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 1

    .line 3673
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->orientationLockCheckChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .line 3991
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method public getOrientationChangeEvent()Lcom/amazon/foundation/IIntEventProvider;
    .locals 1

    .line 3518
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->mOrientationChangeEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    return-object v0
.end method

.method public getOriginActivityName()Ljava/lang/String;
    .locals 2

    .line 4625
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "OriginActivity"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPanelState()Ljava/lang/String;
    .locals 1

    const-string v0, "reader"

    return-object v0
.end method

.method public getReaderGestureListener()Lcom/amazon/kcp/reader/gestures/GestureListener;
    .locals 1

    .line 3663
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerGestureListener:Lcom/amazon/kcp/reader/gestures/GestureListener;

    return-object v0
.end method

.method public getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;
    .locals 1

    .line 1443
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    return-object v0
.end method

.method protected getRootView()Landroid/view/View;
    .locals 1

    .line 3464
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->contentContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getSelectionWidgetItemController()Lcom/amazon/android/widget/SelectionWidgetItemController;
    .locals 1

    .line 1979
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->selectionWidgetItemController:Lcom/amazon/android/widget/SelectionWidgetItemController;

    return-object v0
.end method

.method public getSupportedReaderActivityFeatures()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;",
            ">;"
        }
    .end annotation

    .line 1970
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerActivityFeatures:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getToolbarContainer()Landroid/widget/LinearLayout;
    .locals 1

    .line 4739
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->toolbarContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 4740
    sget v0, Lcom/amazon/kindle/krl/R$id;->toolbar_with_shadow:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->toolbarContainer:Landroid/widget/LinearLayout;

    .line 4743
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->toolbarContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method protected goToTOC()V
    .locals 1

    .line 3067
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_0

    .line 3068
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->navigateToTOC()V

    :cond_0
    return-void
.end method

.method public gracefullyKillActivity()V
    .locals 1

    const/4 v0, 0x1

    .line 3479
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->activitiesNeedToBeClosed:Z

    return-void
.end method

.method public gracefullyKillActivity(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 3485
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->finishAllActivities()V

    goto :goto_0

    .line 3487
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->gracefullyKillActivity()V

    :goto_0
    return-void
.end method

.method public handleLeaveBookButton()V
    .locals 1

    .line 4644
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_0

    .line 4645
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->closeThumbnailManager()V

    .line 4648
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->isOriginActivityReaderActivity:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->isOriginActivityStoreActivity:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->isOriginActivityRecapsActivity:Z

    if-eqz v0, :cond_1

    .line 4652
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 4660
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->returnToLibrary(Lcom/amazon/kcp/reader/ReaderActivity;)V

    .line 4662
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->onFinishByUser()V

    goto :goto_1

    .line 4657
    :cond_2
    :goto_0
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onBackPressed()V

    :goto_1
    return-void
.end method

.method public handleNoteCardEditEvent(Landroid/content/Intent;)V
    .locals 9

    const/4 v0, 0x0

    .line 3144
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->shouldFlashOverlays:Z

    .line 3146
    iget-object v1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->readerController:Lcom/amazon/kcp/reader/ReaderController;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ReaderController;->getCurrentBook()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 3148
    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object v2

    const-string v1, "result_of_edit"

    .line 3150
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData$EditResult;

    const/4 v3, -0x1

    const-string v4, "selectedAnnotationStart"

    .line 3151
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "note_text"

    .line 3152
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v5, "annotation_index"

    .line 3153
    invoke-virtual {p1, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v7, "noteEditorEntry"

    .line 3154
    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3156
    sget-object v7, Lcom/amazon/kcp/reader/ReaderActivity$37;->$SwitchMap$com$amazon$kcp$reader$notebook$notecard$NoteCardUIData$EditResult:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v7, v1

    const/4 v7, 0x1

    if-eq v1, v7, :cond_2

    const/4 p1, 0x2

    if-eq v1, p1, :cond_1

    const/4 p1, 0x3

    if-eq v1, p1, :cond_0

    goto :goto_0

    .line 3190
    :cond_0
    invoke-interface {v2, v5}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->getAnnotationAtIndex(I)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 3192
    invoke-interface {v2, p1, v8}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->deleteAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Ljava/lang/String;)Z

    goto :goto_0

    .line 3183
    :cond_1
    invoke-interface {v2, v7, v4, v4}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->getAnnotationsOverlappingRange(III)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 3185
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 3186
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    invoke-interface {v2, p1, v6, v8}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->editNote(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    goto :goto_0

    .line 3158
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getObjectSelectionModel()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "selectionStartPos"

    .line 3160
    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v5, "selectionEndPos"

    .line 3161
    invoke-virtual {p1, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-eq v1, v3, :cond_3

    if-eq v4, v3, :cond_3

    if-eq v5, v3, :cond_3

    const/4 v7, 0x0

    move v3, v1

    .line 3167
    invoke-interface/range {v2 .. v8}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->addNote(IIILjava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    goto :goto_0

    .line 3169
    :cond_3
    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getFirstSelectedPositionId()I

    move-result p1

    .line 3170
    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getLastSelectedPositionId()I

    move-result v5

    if-eq p1, v3, :cond_4

    if-eq v4, v3, :cond_4

    if-eq v5, v3, :cond_4

    const/4 v7, 0x0

    move v3, p1

    .line 3176
    invoke-interface/range {v2 .. v8}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->addNote(IIILjava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    .line 3200
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getObjectSelectionModel()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 3202
    invoke-interface {p1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->selectNone()V

    :cond_5
    return-void
.end method

.method protected handleOverlayVisibilityChanged(Z)V
    .locals 3

    .line 4388
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->isChromeVisible:Z

    .line 4389
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->panelHelper:Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;

    if-eqz v0, :cond_0

    .line 4391
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->handleOverlayVisibilityChanged(Z)V

    :cond_0
    if-eqz p1, :cond_1

    .line 4394
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->firstChromeOpen:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 4395
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->firstChromeOpen:Z

    .line 4399
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getContinuousScrollEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4400
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->removeToolbar()V

    .line 4401
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->inflateAndAddToolbar()V

    .line 4405
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->commandBar:Lcom/amazon/android/widget/CommandBar;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 4407
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->commandBarItemController:Lcom/amazon/android/widget/CommandBarItemController;

    invoke-virtual {v1, v0}, Lcom/amazon/android/widget/CommandBarItemController;->populateCommandBar(Lcom/amazon/android/widget/CommandBar;)V

    :cond_2
    if-eqz p1, :cond_3

    .line 4410
    sget-object p1, Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;->CHROME_SHOWN:Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;->CHROME_HIDDEN:Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;

    .line 4412
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->areOverlaysVisible()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/cs/FastNavigationMetrics$NavigationType;->NONE:Lcom/amazon/kindle/cs/FastNavigationMetrics$NavigationType;

    invoke-static {v0, v1, p1, v2}, Lcom/amazon/kindle/cs/FastNavigationMetrics;->reportEvent(Lcom/amazon/android/docviewer/KindleDocViewer;Ljava/lang/Boolean;Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;Lcom/amazon/kindle/cs/FastNavigationMetrics$NavigationType;)V

    return-void
.end method

.method protected handleThemeChange()V
    .locals 5

    .line 5407
    iget-boolean v0, p0, Lcom/amazon/kcp/redding/ThemeActivity;->isThemeChangeSupported:Z

    if-eqz v0, :cond_2

    .line 5408
    invoke-static {}, Lcom/amazon/kcp/debug/DarkModeUtils;->isPhaseThreeEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5411
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    if-ne v0, p0, :cond_1

    .line 5412
    iget-object v0, p0, Lcom/amazon/kcp/redding/ThemeActivity;->activityStateManager:Lcom/amazon/kcp/redding/ActivityStateManager;

    invoke-virtual {v0}, Lcom/amazon/kcp/redding/ActivityStateManager;->isActivityVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5413
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->recreateActivity()V

    goto :goto_0

    .line 5418
    :cond_0
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/reader/ReaderActivity$36;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/reader/ReaderActivity$36;-><init>(Lcom/amazon/kcp/reader/ReaderActivity;)V

    const-wide/16 v2, 0x1f4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->scheduleOnMainThread(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    goto :goto_0

    .line 5427
    :cond_1
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->handleThemeChange()V

    :cond_2
    :goto_0
    return-void
.end method

.method public hasReaderActivityFeature(Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 1945
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerActivityFeatures:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hideOverlays()V
    .locals 2

    .line 4689
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4690
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->cancelHideOverlaysAfterDelay()V

    .line 4691
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0, v1, v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setOverlaysVisible(ZZ)Lcom/amazon/kcp/reader/ui/ReaderLayout;

    .line 4694
    :cond_0
    iput-boolean v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->shouldFlashOverlays:Z

    return-void
.end method

.method public hideTOCFragment()V
    .locals 2

    .line 897
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "TableOfContentsFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 898
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->tocFragment:Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 899
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    return-void
.end method

.method public hideViewPanel()V
    .locals 2

    .line 4750
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->panelController:Lcom/amazon/kindle/panels/IPanelController;

    invoke-interface {v0}, Lcom/amazon/kindle/panels/IPanelController;->isTOCPanelOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4751
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->panelController:Lcom/amazon/kindle/panels/IPanelController;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->panelLocation:Lcom/amazon/kindle/panels/PanelLocation;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/panels/IPanelController;->closePanel(Lcom/amazon/kindle/panels/PanelLocation;)V

    :cond_0
    return-void
.end method

.method protected inflateOptionsMenu(Landroid/view/Menu;)V
    .locals 6

    const-string v0, "ReaderActivity.inflateOptionsMenu()"

    const/4 v1, 0x1

    .line 4232
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 4234
    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderActivity;->contentMetadata:Lcom/amazon/kindle/content/ContentMetadata;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/amazon/kindle/content/ContentMetadata;->getDictionaryType()Lcom/amazon/kindle/model/content/DictionaryType;

    move-result-object v2

    sget-object v4, Lcom/amazon/kindle/model/content/DictionaryType;->FREE_DICT:Lcom/amazon/kindle/model/content/DictionaryType;

    if-ne v2, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 4235
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/amazon/kindle/krl/R$bool;->show_options_menu_in_free_dictionaries:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v2, :cond_1

    if-nez v4, :cond_1

    return-void

    .line 4242
    :cond_1
    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderActivity;->contentMetadata:Lcom/amazon/kindle/content/ContentMetadata;

    if-eqz v2, :cond_2

    .line 4243
    invoke-virtual {v2}, Lcom/amazon/kindle/content/ContentMetadata;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v2

    .line 4244
    sget-object v4, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_MAGAZINE:Lcom/amazon/kcp/library/models/BookType;

    if-eq v2, v4, :cond_3

    sget-object v4, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_NEWSPAPER:Lcom/amazon/kcp/library/models/BookType;

    if-ne v2, v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 4250
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v2, :cond_4

    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isTextbook()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4251
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$menu;->textbook_reader_activity_mainmenu:I

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_2

    :cond_4
    if-nez v1, :cond_5

    .line 4256
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$menu;->reader_activity_mainmenu:I

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 4259
    :cond_5
    :goto_2
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCustomActionMenuController()Lcom/amazon/android/menu/CustomActionMenuController;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 4261
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getColorModeId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/amazon/android/menu/CustomActionMenuController;->addCustomButtonsAsMenuItems(Landroid/view/Menu;Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)V

    .line 4264
    :cond_6
    invoke-static {v0, v3}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-void
.end method

.method public isCurrentlyVisible()Z
    .locals 1

    .line 4099
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->isCurrentlyVisible:Z

    return v0
.end method

.method public isDialogBeingShown()Z
    .locals 1

    .line 2896
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->isDialogBeingShown:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 588
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->enabled:Z

    return v0
.end method

.method public isImmersiveReadingMode()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public isOrientationLocked()Z
    .locals 1

    .line 3682
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->orientationLockSettingManager:Lcom/amazon/kcp/reader/ui/OrientationLockSettingManager;

    invoke-interface {v0}, Lcom/amazon/kcp/reader/ui/OrientationLockSettingManager;->isLocked()Z

    move-result v0

    return v0
.end method

.method public isOriginActivityReaderActivity()Z
    .locals 1

    .line 4633
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->isOriginActivityReaderActivity:Z

    return v0
.end method

.method public isPageCurlSupported()Z
    .locals 1

    .line 3653
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_0

    .line 3655
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    .line 3656
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getMimeType()Ljava/lang/String;

    move-result-object v0

    .line 3657
    invoke-static {v0}, Lcom/amazon/kindle/download/MimeTypeHelper;->isYellowJerseyEBookMimeType(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected isSearching()Z
    .locals 1

    .line 2635
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->isCurrentlySearching:Z

    return v0
.end method

.method protected isTOCPanelEnabledForActivity()Z
    .locals 2

    .line 2439
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$bool;->left_panel_enabled:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isTOCPanelSettling()Z
    .locals 1

    .line 3714
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->panelHelper:Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->isDrawerSettling()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isTypefaceChangeAllowed()Z
    .locals 2

    .line 3499
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->FontFaceChange:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/model/content/ILocalBookItem;->hasFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public keepViewPanelVisible()V
    .locals 2

    .line 4701
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->panelController:Lcom/amazon/kindle/panels/IPanelController;

    invoke-interface {v0}, Lcom/amazon/kindle/panels/IPanelController;->isTOCPanelOpened()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4702
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->panelController:Lcom/amazon/kindle/panels/IPanelController;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->panelLocation:Lcom/amazon/kindle/panels/PanelLocation;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/panels/IPanelController;->openPanel(Lcom/amazon/kindle/panels/PanelLocation;)V

    :cond_0
    return-void
.end method

.method public makeOverlaysVisible()V
    .locals 2

    .line 4673
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    if-eqz v0, :cond_0

    .line 4674
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->cancelHideOverlaysAfterDelay()V

    .line 4675
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setOverlaysVisible(ZZ)Lcom/amazon/kcp/reader/ui/ReaderLayout;

    :cond_0
    const/4 v0, 0x0

    .line 4678
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->shouldFlashOverlays:Z

    return-void
.end method

.method public manuallySyncBook()V
    .locals 2

    .line 3471
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/amazon/kcp/application/sync/SyncHelper;->initiateFullReaderSync(Landroid/content/Context;Lcom/amazon/kindle/model/content/ILocalBookInfo;)V

    .line 3473
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "MrprDialogDelay_v3"

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->cancelMetricTimer(Ljava/lang/String;)V

    .line 3474
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->startMetricTimer(Ljava/lang/String;)V

    return-void
.end method

.method public navigateToAllArticles()V
    .locals 0

    return-void
.end method

.method protected abstract newCustomMenuController()Lcom/amazon/android/menu/AndroidCustomMenuController;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected abstract newReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;
.end method

.method protected onActivityFocusChanged(Ljava/lang/Boolean;)V
    .locals 4

    if-nez p1, :cond_0

    .line 5052
    iget-boolean p1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->hasFocus:Z

    goto :goto_0

    .line 5054
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 5057
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    if-eqz v0, :cond_5

    if-eqz p1, :cond_3

    .line 5061
    iget-boolean v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->wasBrochureShown:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 5062
    iput-boolean v2, p0, Lcom/amazon/kcp/reader/ReaderActivity;->wasBrochureShown:Z

    .line 5063
    sget-object v0, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->PAGE_FLIP:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ReaderActivity;->showNLNContentFragment(Lcom/amazon/kindle/nln/NonLinearNavigationMode;)V

    goto :goto_1

    .line 5064
    :cond_1
    iget-boolean v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->shouldFlashOverlays:Z

    if-eqz v1, :cond_2

    .line 5066
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->flashOverlays()V

    .line 5068
    iput-boolean v2, p0, Lcom/amazon/kcp/reader/ReaderActivity;->shouldFlashOverlays:Z

    .line 5073
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getAccessibilityGapView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 5074
    iget-boolean v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->isChromeVisible:Z

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v1

    if-nez v1, :cond_4

    const/16 v1, 0x40

    const/4 v2, 0x0

    .line 5075
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    goto :goto_2

    .line 5082
    :cond_3
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->cancelHideOverlaysAfterDelay()V

    .line 5089
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    new-instance v1, Lcom/amazon/kcp/reader/ReaderActivity$32;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/reader/ReaderActivity$32;-><init>(Lcom/amazon/kcp/reader/ReaderActivity;Z)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 5099
    :cond_5
    sget-object v0, Lcom/amazon/kcp/reader/ReaderActivity;->TAG:Ljava/lang/String;

    const-string v1, "ReaderLayout is null in ReaderActivity.onWindowFocusChanged()"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    const-string p1, "MrprDialogDelay_onFocus"

    .line 5103
    invoke-static {p1}, Lcom/amazon/kcp/reader/DialogMetricsRecorder;->resetMetricTimer(Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-nez p1, :cond_0

    if-ne p2, v1, :cond_0

    .line 3104
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->shouldFlashOverlays:Z

    .line 3105
    invoke-direct {p0, p3}, Lcom/amazon/kcp/reader/ReaderActivity;->handleNoteEvent(Landroid/content/Intent;)V

    goto :goto_2

    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    if-ne p2, v1, :cond_1

    .line 3107
    invoke-virtual {p0, p3}, Lcom/amazon/kcp/reader/ReaderActivity;->handleNoteCardEditEvent(Landroid/content/Intent;)V

    goto :goto_2

    :cond_1
    const/4 v3, 0x5

    if-ne p1, v3, :cond_2

    if-ne p2, v1, :cond_2

    const-string p1, "query"

    .line 3110
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->lastSearchQuery:Ljava/lang/String;

    goto :goto_2

    :cond_2
    const/4 v3, 0x6

    if-ne p1, v3, :cond_6

    if-ne p2, v1, :cond_6

    .line 3113
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    const-string p3, "brochure_options"

    .line 3116
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_3
    move-object p1, p2

    .line 3118
    :goto_0
    instance-of p3, p1, Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;

    if-eqz p3, :cond_4

    check-cast p1, Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;

    goto :goto_1

    :cond_4
    move-object p1, p2

    :goto_1
    if-eqz p1, :cond_5

    .line 3119
    iget-object p2, p1, Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;->listener:Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions$BrochureListener;

    :cond_5
    if-eqz p2, :cond_9

    .line 3121
    invoke-interface {p2}, Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions$BrochureListener;->onClosed()V

    goto :goto_2

    .line 3123
    :cond_6
    invoke-static {}, Lcom/amazon/kcp/reader/ReaderActivity$BookOperationRequestResult;->getRequestCode()I

    move-result v3

    if-ne p1, v3, :cond_8

    if-ne p2, v1, :cond_7

    const/4 v0, 0x1

    .line 3126
    :cond_7
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->shouldFlashOverlays:Z

    if-ne p2, v1, :cond_9

    .line 3129
    invoke-virtual {p0, p3}, Lcom/amazon/kcp/reader/ReaderActivity;->performBookOperation(Landroid/content/Intent;)V

    goto :goto_2

    :cond_8
    const/16 p2, 0x64

    if-ne p1, p2, :cond_9

    .line 3132
    sput-boolean v0, Lcom/amazon/kindle/nln/pageflip/NLNUtils;->supressShowChromeForBrochure:Z

    .line 3134
    iput-boolean v2, p0, Lcom/amazon/kcp/reader/ReaderActivity;->wasBrochureShown:Z

    .line 3137
    :cond_9
    :goto_2
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getObjectSelectionModel()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 3139
    invoke-interface {p1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->selectNone()V

    :cond_a
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 4

    .line 1404
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 1406
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "suppress_cover_page_animation"

    .line 1407
    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1408
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1409
    invoke-virtual {v0, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1411
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isKFABuild()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    .line 1412
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->attemptToShowBookCover()V

    :cond_1
    return-void
.end method

.method public onAuthenticationEvent(Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
    .end annotation

    .line 5172
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;->getType()Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;->LOGOUT:Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    if-ne p1, v0, :cond_0

    .line 5173
    sget-object p1, Lcom/amazon/kcp/reader/ReaderActivity;->TAG:Ljava/lang/String;

    const-string v0, "Received logout event and the current book is to be closed"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 5174
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 5

    .line 2640
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->fragmentStateManager:Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;

    if-eqz v0, :cond_0

    .line 2642
    invoke-virtual {v0}, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->getCurrentMode()Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->BIRDSEYE:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2643
    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;->SYSTEM:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    sget-object v2, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->CLOSE_BEV:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    invoke-static {v1, v2}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->recordMetrics(Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;)V

    .line 2648
    :cond_0
    iget-boolean v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->isAfterSavedInstanceState:Z

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderMenuContainer()Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    .line 2649
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderMenuContainer()Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->hideAllViewOptionOverlays()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_1

    .line 2653
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/debug/INeutronUtil;->isNewtronTOCEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2654
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->hideTOCFragment()V

    return-void

    .line 2657
    :cond_2
    invoke-static {p0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getPanelController()Lcom/amazon/kindle/panels/IPanelController;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2658
    invoke-interface {v1}, Lcom/amazon/kindle/panels/IPanelController;->isTOCPanelOpened()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2659
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->panelLocation:Lcom/amazon/kindle/panels/PanelLocation;

    invoke-interface {v1, v0}, Lcom/amazon/kindle/panels/IPanelController;->closePanel(Lcom/amazon/kindle/panels/PanelLocation;)V

    return-void

    :cond_3
    if-eqz v0, :cond_4

    .line 2664
    invoke-virtual {v0}, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->canTransitionBack()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2665
    invoke-virtual {v0, p0}, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->transitionBack(Lcom/amazon/kcp/reader/ReaderActivity;)V

    return-void

    .line 2670
    :cond_4
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->externalScreenStatus:Lcom/amazon/kcp/reader/ui/ExternalScreenStatus;

    sget-object v1, Lcom/amazon/kcp/reader/ui/ExternalScreenStatus;->OPENED:Lcom/amazon/kcp/reader/ui/ExternalScreenStatus;

    if-ne v0, v1, :cond_5

    .line 2671
    sget-object v0, Lcom/amazon/kcp/reader/ui/ExternalScreenStatus;->CLOSING:Lcom/amazon/kcp/reader/ui/ExternalScreenStatus;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->externalScreenStatus:Lcom/amazon/kcp/reader/ui/ExternalScreenStatus;

    .line 2672
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->closeComponentViewer()V

    return-void

    .line 2676
    :cond_5
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 2677
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getObjectSelectionModel()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 2681
    invoke-interface {v1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectionState()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    move-result-object v2

    sget-object v3, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->NOTHING_SELECTED:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    if-eq v2, v3, :cond_8

    .line 2683
    invoke-interface {v1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getObjectSelectionController()Lcom/amazon/android/docviewer/selection/IObjectSelectionController;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 2684
    invoke-interface {v2}, Lcom/amazon/android/docviewer/selection/IObjectSelectionController;->hasSelectionOnScreen()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2685
    invoke-interface {v1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectedHighlight()Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object v3

    .line 2688
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isScreenReaderEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    if-eqz v3, :cond_6

    if-eqz v0, :cond_6

    .line 2690
    invoke-static {v3}, Lcom/amazon/kcp/util/AnnotationUtils;->getAnnotationColorHighlightProperties(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;

    move-result-object v4

    .line 2691
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->deleteAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Z

    const/4 v0, 0x0

    .line 2692
    invoke-interface {v2, v4, v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionController;->onHighlightButtonClicked(Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;Z)V

    .line 2695
    :cond_6
    invoke-interface {v1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->selectNone()V

    return-void

    .line 2699
    :cond_7
    invoke-interface {v1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->selectNone()V

    goto :goto_0

    .line 2704
    :cond_8
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->supportsReaderSoftBackViaHwButton()Z

    move-result v1

    if-eqz v1, :cond_9

    if-eqz v0, :cond_9

    .line 2705
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDoc;->isBackAvailable()Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;->BackNavigation:Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    .line 2706
    invoke-virtual {p0, v1}, Lcom/amazon/kcp/reader/ReaderActivity;->hasReaderActivityFeature(Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2707
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->navigateBack()V

    return-void

    .line 2710
    :cond_9
    :goto_0
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onBackPressed()V

    .line 2712
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;->SYSTEM:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->CLOSE_BOOK:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    invoke-static {v0, v1}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->recordMetrics(Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;)V

    .line 2714
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->onFinishByUser()V

    :cond_a
    :goto_1
    return-void
.end method

.method protected abstract onBookOptionsPressed()V
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 3035
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getObjectSelectionModel()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3037
    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->reInitializeOnOrientationChange()V

    .line 3040
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ReaderActivity;->_onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3041
    new-instance v0, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent;

    sget-object v1, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;->CONFIG_CHANGE:Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent;-><init>(Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;Z)V

    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ReaderActivity;->publishEvent(Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 3042
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->panelHelper:Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;

    if-eqz v0, :cond_1

    .line 3043
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3051
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->commandBar:Lcom/amazon/android/widget/CommandBar;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    if-eqz p1, :cond_2

    .line 3053
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->removeToolbar()V

    .line 3055
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->inflateAndAddToolbar()V

    .line 3057
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->areOverlaysVisible()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3058
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->commandBarItemController:Lcom/amazon/android/widget/CommandBarItemController;

    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->commandBar:Lcom/amazon/android/widget/CommandBar;

    invoke-virtual {p1, v0}, Lcom/amazon/android/widget/CommandBarItemController;->populateCommandBar(Lcom/amazon/android/widget/CommandBar;)V

    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 715
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 716
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/DocumentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 717
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 718
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/theme/ThemeArea;->IN_BOOK:Lcom/amazon/kindle/krx/theme/ThemeArea;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme(Lcom/amazon/kindle/krx/theme/ThemeArea;)Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/theme/Theme;->LIGHT:Lcom/amazon/kindle/krx/theme/Theme;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 722
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$color;->secondary_dark:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 723
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$color;->primary_dark:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    goto :goto_1

    .line 719
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$color;->primary_light:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 720
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$color;->secondary_light:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 726
    :goto_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-ge v0, v1, :cond_3

    .line 727
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v3, "suppress_animation"

    .line 728
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 729
    :cond_2
    sget v0, Lcom/amazon/kindle/krl/R$anim;->activity_fade_in:I

    sget v3, Lcom/amazon/kindle/krl/R$anim;->activity_fade_out:I

    invoke-virtual {p0, v0, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 733
    :cond_3
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 734
    sget-object v0, Lcom/amazon/kindle/panels/PanelLocation;->RIGHT:Lcom/amazon/kindle/panels/PanelLocation;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->panelLocation:Lcom/amazon/kindle/panels/PanelLocation;

    :cond_4
    const/4 v0, 0x1

    .line 737
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ReaderActivity;->setFullScreen(Z)V

    const/4 v3, 0x0

    .line 739
    iput-object v3, p0, Lcom/amazon/kcp/reader/ReaderActivity;->resumeMode:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    .line 740
    iput-object v3, p0, Lcom/amazon/kcp/reader/ReaderActivity;->resumeAllowAnimation:Ljava/lang/Boolean;

    .line 741
    iput-boolean v2, p0, Lcom/amazon/kcp/reader/ReaderActivity;->isAfterSavedInstanceState:Z

    .line 743
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v3

    invoke-interface {v3, p0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->setCurrentReaderActivity(Lcom/amazon/kcp/reader/ReaderActivity;)V

    .line 746
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_5

    return-void

    .line 750
    :cond_5
    new-instance v3, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent;

    sget-object v4, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;->CREATE:Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;

    invoke-direct {v3, p0, v4}, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent;-><init>(Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;)V

    .line 751
    invoke-direct {p0, v3}, Lcom/amazon/kcp/reader/ReaderActivity;->publishEvent(Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 753
    iget-object v3, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v3, :cond_13

    .line 757
    invoke-static {p0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    .line 763
    iget-object v4, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v4}, Lcom/amazon/android/docviewer/KindleDocViewer;->getOrientation()I

    move-result v4

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-eq v4, v5, :cond_6

    .line 764
    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->supportsContentOrientationLock()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 766
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/amazon/kcp/reader/ReaderActivity;->_onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 768
    :cond_6
    new-instance v4, Lcom/amazon/kindle/yj/ui/ContentMissingViewController;

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/amazon/kindle/yj/ui/ContentMissingViewController;-><init>(Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/android/docviewer/KindleDocViewer;)V

    iput-object v4, p0, Lcom/amazon/kcp/reader/ReaderActivity;->contentMissingViewController:Lcom/amazon/kindle/yj/ui/ContentMissingViewController;

    .line 770
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "start_page"

    .line 771
    invoke-virtual {v4, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 772
    invoke-virtual {v4, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/amazon/kcp/reader/IReaderController$StartPage;

    .line 773
    invoke-direct {p0, v4}, Lcom/amazon/kcp/reader/ReaderActivity;->jumpToUserLocation(Lcom/amazon/kcp/reader/IReaderController$StartPage;)V

    .line 776
    :cond_7
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->requestLargeWebviewTilesIfNecessary()V

    .line 779
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->populateDefaultFeatureSet()V

    .line 780
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->populateSupportedFeatureSet()V

    .line 783
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getReadingPresetsObserver()Lcom/amazon/ksdk/presets/ReadingPresetsObserver;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 785
    invoke-static {v4}, Lcom/amazon/kindle/viewoptions/AaSettingObserverManager;->addObserver(Lcom/amazon/ksdk/presets/ReadingPresetsObserver;)V

    .line 790
    :cond_8
    iget-object v4, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v4, :cond_9

    .line 791
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v4

    .line 792
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAccessibilityStateListener()Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener;->isTouchExplorationEnabled()Z

    move-result v5

    .line 793
    invoke-virtual {v4}, Lcom/amazon/kcp/application/UserSettingsController;->getContinuousScrollReflowableEnabled()Z

    move-result v4

    .line 794
    iget-object v6, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-static {v6}, Lcom/amazon/kindle/yj/ContinuousScrollUtils;->isContinuousScrollSupported(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v6

    if-eqz v6, :cond_9

    if-eqz v4, :cond_9

    if-eqz v5, :cond_9

    .line 799
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/amazon/kcp/application/UserSettingsController;->setContinuousScrollReflowableEnabled(Z)V

    .line 802
    :cond_9
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAppSettingsController()Lcom/amazon/kcp/application/IAppSettingsController;

    move-result-object v4

    iget-object v5, p0, Lcom/amazon/kcp/reader/ReaderActivity;->settingsChangedListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v4, v5}, Lcom/amazon/kcp/application/IAppSettingsController;->registerSettingsChangedListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 804
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->supportPreloadBook()Z

    move-result v4

    if-nez v4, :cond_a

    .line 805
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->setPreferencesFromSettings()V

    .line 808
    :cond_a
    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getPanelController()Lcom/amazon/kindle/panels/IPanelController;

    move-result-object v3

    iput-object v3, p0, Lcom/amazon/kcp/reader/ReaderActivity;->panelController:Lcom/amazon/kindle/panels/IPanelController;

    if-eqz v3, :cond_d

    .line 810
    sget-object v3, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;->SidePanel:Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    invoke-virtual {p0, v3}, Lcom/amazon/kcp/reader/ReaderActivity;->hasReaderActivityFeature(Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;)Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "Bind left panel content"

    .line 811
    invoke-static {v3, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 813
    iget-object v4, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-static {v4}, Lcom/amazon/android/util/BookTypeUtil;->isLavaMagazine(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 814
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kcp/debug/INeutronUtil;->isNewtronTOCEnabled()Z

    move-result v4

    if-nez v4, :cond_b

    const/4 v4, 0x1

    goto :goto_2

    :cond_b
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_c

    .line 815
    sget v4, Lcom/amazon/kindle/krl/R$layout;->reader_screen_lava:I

    goto :goto_3

    :cond_c
    sget v4, Lcom/amazon/kindle/krl/R$layout;->reader_screen:I

    .line 817
    :goto_3
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 818
    iget-object v4, p0, Lcom/amazon/kcp/reader/ReaderActivity;->panelController:Lcom/amazon/kindle/panels/IPanelController;

    sget v5, Lcom/amazon/kindle/krl/R$id;->reader_drawer_layout:I

    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/amazon/kindle/panels/IPanelController;->setMainContent(Landroid/view/View;)V

    .line 820
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->bindPanelContentOnInitialDraw()V

    .line 821
    invoke-static {v3, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    goto :goto_4

    :cond_d
    const-string v3, "set Content view"

    .line 823
    invoke-static {v3, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 824
    sget v4, Lcom/amazon/kindle/krl/R$layout;->reader_screen:I

    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 825
    invoke-static {v3, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 828
    :goto_4
    sget v3, Lcom/amazon/kindle/krl/R$id;->content_container:I

    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 829
    iput-object v3, p0, Lcom/amazon/kcp/reader/ReaderActivity;->contentContainer:Landroid/view/ViewGroup;

    if-eqz v3, :cond_12

    .line 833
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->setupContainerSafeInsets()V

    .line 835
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v1, :cond_f

    .line 837
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getSystemUiVisibility()I

    move-result v1

    .line 838
    iget-object v4, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v4}, Lcom/amazon/android/docviewer/KindleDocViewer;->getColorModeFromAppTheme()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/android/docviewer/KindleDocColorMode;->hasDarkBackground()Z

    move-result v4

    if-eqz v4, :cond_e

    and-int/lit8 v1, v1, -0x11

    goto :goto_5

    :cond_e
    or-int/lit8 v1, v1, 0x10

    .line 844
    :goto_5
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    :cond_f
    const-string v1, "ReaderLayout.refreshLayout()"

    .line 847
    invoke-static {v1, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 848
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ReaderActivity;->refreshLayout(Landroid/os/Bundle;)Lcom/amazon/kcp/reader/ui/ReaderLayout;

    .line 849
    invoke-static {v1, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 852
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->registerReaderPluginOverlayStub()V

    .line 854
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/DocumentActivity;->shouldDelayExecuted()Z

    move-result p1

    if-nez p1, :cond_10

    .line 855
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->onActivityCreated()V

    .line 858
    :cond_10
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getOriginActivityName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 861
    :try_start_0
    const-class v0, Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->isOriginActivityReaderActivity:Z

    .line 862
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$string;->store_activity:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 863
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->isOriginActivityStoreActivity:Z

    .line 864
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$string;->recaps_activity:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 865
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->isOriginActivityRecapsActivity:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    .line 867
    :catch_0
    sget-object v0, Lcom/amazon/kcp/reader/ReaderActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Origin Activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " could not be found."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    :cond_11
    :goto_6
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->wasRestartedForSettingsChange()Z

    move-result p1

    if-nez p1, :cond_13

    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ThemeActivity;->wasRecreatedForThemeChange()Z

    move-result p1

    if-nez p1, :cond_13

    .line 872
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isKFABuild()Z

    move-result p1

    if-eqz p1, :cond_13

    invoke-static {}, Lcom/amazon/kcp/reader/ui/BookCoverOnResumeManager;->getInstance()Lcom/amazon/kcp/reader/ui/BookCoverOnResume;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/reader/ui/BookCoverOnResume;->shouldShowBookCover()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 873
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->createBookCoverFragment()V

    goto :goto_7

    .line 831
    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "We can\'t make a readerActivity without R.id.content_container"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 878
    :cond_13
    :goto_7
    invoke-static {p0}, Lcom/amazon/kcp/util/device/DisplayCutoutUtils;->extendActivityIntoDisplayCutout(Landroid/app/Activity;)V

    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .line 2787
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-eqz p1, :cond_5

    const/16 v2, 0xb

    const/4 v3, 0x0

    if-eq p1, v2, :cond_3

    const/16 v2, 0xd

    if-eq p1, v2, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_5

    const/4 v2, 0x3

    if-eq p1, v2, :cond_5

    .line 2822
    sget-object v0, Lcom/amazon/kcp/reader/ReaderActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Detected invalid id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " while creating dialog"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2811
    :cond_1
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    .line 2812
    sget v2, Lcom/amazon/kindle/krl/R$string;->book_close_on_delete_message:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_2

    .line 2814
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 2815
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2816
    sget v2, Lcom/amazon/kindle/krl/R$string;->book_close_on_delete_message_with_booktitle:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    invoke-virtual {p0, v2, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2819
    :cond_2
    sget v0, Lcom/amazon/kindle/krl/R$string;->book_close_on_delete_title:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/amazon/kcp/reader/ReaderActivity;->createClosingBookOnDeletionDialog(Ljava/lang/String;Ljava/lang/String;)Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    move-object v2, v1

    goto :goto_1

    .line 2803
    :cond_3
    invoke-static {}, Lcom/amazon/kcp/reader/ReaderActivity;->shouldSuppressMRPRDialog()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2804
    sget-object p1, Lcom/amazon/kcp/reader/ReaderActivity;->TAG:Ljava/lang/String;

    const-string p2, "MRPR Dialog Suppressed via debug option"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 2805
    invoke-static {p0, p2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 2806
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-object v1

    :cond_4
    :goto_0
    move-object v0, v1

    move-object v2, v0

    goto :goto_1

    .line 2798
    :cond_5
    new-instance v2, Lcom/amazon/kcp/reader/UserGotoDialogBuilder;

    invoke-direct {v2, p0, v0}, Lcom/amazon/kcp/reader/UserGotoDialogBuilder;-><init>(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;)V

    .line 2800
    invoke-static {p1}, Lcom/amazon/kcp/reader/UserGotoDialogBuilder$GoToDialogType;->fromDialogId(I)Lcom/amazon/kcp/reader/UserGotoDialogBuilder$GoToDialogType;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/amazon/kcp/reader/UserGotoDialogBuilder;->build(Lcom/amazon/kcp/reader/UserGotoDialogBuilder$GoToDialogType;)Landroid/app/Dialog;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_7

    .line 2825
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kcp/application/UserSettingsController;->isAnnotationsSyncEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2826
    new-instance v0, Lcom/amazon/kcp/reader/readingprogress/ReadingProgressDialogBuilder;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/readingprogress/ReadingProgressDialogBuilder;-><init>(Lcom/amazon/kcp/reader/ReaderActivity;)V

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kcp/reader/readingprogress/ReadingProgressDialogBuilder;->build(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    return-object v1

    :cond_7
    :goto_2
    if-nez v2, :cond_8

    .line 2836
    instance-of p2, v0, Lcom/amazon/kcp/reader/DialogListener;

    if-eqz p2, :cond_8

    .line 2837
    move-object v2, v0

    check-cast v2, Lcom/amazon/kcp/reader/DialogListener;

    .line 2840
    :cond_8
    invoke-direct {p0, p1, v0, v2}, Lcom/amazon/kcp/reader/ReaderActivity;->setDialogListeners(ILandroid/app/Dialog;Lcom/amazon/kcp/reader/DialogListener;)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .line 4269
    iput-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->currentMenu:Landroid/view/Menu;

    .line 4271
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    const-string v2, "ReaderActivity.onCreateOptionsMenu()"

    .line 4277
    invoke-static {v2, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 4278
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ReaderActivity;->inflateOptionsMenu(Landroid/view/Menu;)V

    .line 4280
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ReaderActivity;->setupMenuVisibility(Landroid/view/Menu;)V

    .line 4281
    invoke-static {v2, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 4273
    iput-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->currentMenu:Landroid/view/Menu;

    return v1
.end method

.method public onDestroy()V
    .locals 4

    .line 1845
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->fragmentStateManager:Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;

    if-eqz v0, :cond_0

    .line 1846
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->fragmentStateManager:Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    .line 1849
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->panelController:Lcom/amazon/kindle/panels/IPanelController;

    if-eqz v0, :cond_1

    .line 1850
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->isTOCPanelEnabledForActivity()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1851
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->panelController:Lcom/amazon/kindle/panels/IPanelController;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->panelLocation:Lcom/amazon/kindle/panels/PanelLocation;

    invoke-interface {v0, p0, v1}, Lcom/amazon/kindle/panels/IPanelController;->release(Landroid/app/Activity;Lcom/amazon/kindle/panels/PanelLocation;)V

    .line 1855
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->contentMissingViewController:Lcom/amazon/kindle/yj/ui/ContentMissingViewController;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1856
    invoke-virtual {v0}, Lcom/amazon/kindle/yj/ui/ContentMissingViewController;->clearState()V

    .line 1857
    iput-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->contentMissingViewController:Lcom/amazon/kindle/yj/ui/ContentMissingViewController;

    .line 1860
    :cond_2
    invoke-super {p0}, Lcom/amazon/kcp/redding/DocumentActivity;->onDestroy()V

    .line 1863
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->isRestartingForSettingChange:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->unboundFromBook:Z

    if-nez v0, :cond_4

    .line 1864
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->readerController:Lcom/amazon/kcp/reader/ReaderController;

    invoke-virtual {p0}, Landroid/app/Activity;->getChangingConfigurations()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, p0, v2}, Lcom/amazon/kcp/reader/ReaderController;->unbindFromCurrentBook(Landroid/app/Activity;Z)V

    .line 1865
    iput-boolean v3, p0, Lcom/amazon/kcp/reader/ReaderActivity;->unboundFromBook:Z

    :cond_4
    const-string v0, "search"

    .line 1869
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    if-eqz v0, :cond_5

    .line 1871
    invoke-virtual {v0, v1}, Landroid/app/SearchManager;->setOnDismissListener(Landroid/app/SearchManager$OnDismissListener;)V

    .line 1872
    invoke-virtual {v0, v1}, Landroid/app/SearchManager;->setOnCancelListener(Landroid/app/SearchManager$OnCancelListener;)V

    .line 1875
    :cond_5
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v2, Lcom/amazon/kcp/reader/ReaderActivity$17;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/reader/ReaderActivity$17;-><init>(Lcom/amazon/kcp/reader/ReaderActivity;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 1890
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    if-eqz v0, :cond_6

    .line 1891
    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderActivity;->contentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1893
    :cond_6
    iput-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->contentContainer:Landroid/view/ViewGroup;

    .line 1895
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->gestureHandlerFactory:Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;

    if-eqz v0, :cond_7

    .line 1896
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;->clearHandlers()V

    .line 1897
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->gestureHandlerFactory:Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;->destroy()V

    .line 1900
    :cond_7
    iput-object v1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 1901
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    if-eqz v0, :cond_8

    .line 1902
    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderActivity;->orientationLockClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->removeOrientationLockClickListener(Landroid/view/View$OnClickListener;)V

    .line 1903
    iput-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    .line 1905
    :cond_8
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->panelHelper:Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;

    if-eqz v0, :cond_9

    .line 1906
    invoke-virtual {v0, v1}, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->setDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V

    .line 1907
    iput-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->panelHelper:Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;

    .line 1909
    :cond_9
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->orientationListener:Lcom/amazon/kcp/reader/ReaderActivity$ReaderOrientationChangeListener;

    if-eqz v0, :cond_a

    .line 1911
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 1912
    iput-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->orientationListener:Lcom/amazon/kcp/reader/ReaderActivity$ReaderOrientationChangeListener;

    .line 1915
    :cond_a
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->infoCardController:Lcom/amazon/kcp/reader/InfoCardController;

    if-eqz v0, :cond_b

    .line 1916
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/InfoCardController;->onActivityDestroyed()V

    .line 1917
    iput-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->infoCardController:Lcom/amazon/kcp/reader/InfoCardController;

    .line 1920
    :cond_b
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->toolbarContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_c

    .line 1921
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1922
    iput-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->toolbarContainer:Landroid/widget/LinearLayout;

    .line 1925
    :cond_c
    iput-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->currentBook:Lcom/amazon/kindle/krx/content/IBook;

    .line 1928
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readingPresetsObserver:Lcom/amazon/ksdk/presets/ReadingPresetsObserver;

    if-eqz v0, :cond_d

    .line 1929
    invoke-static {v0}, Lcom/amazon/kindle/viewoptions/AaSettingObserverManager;->removeObserver(Lcom/amazon/ksdk/presets/ReadingPresetsObserver;)V

    .line 1931
    :cond_d
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAppSettingsController()Lcom/amazon/kcp/application/IAppSettingsController;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->settingsChangedListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IAppSettingsController;->unregisterSettingsChangedListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 1933
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "ReaderActivityTimer"

    const-string v2, "BookExitTimer"

    const-string v3, "BookExit"

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->stopMetricTimerIfExists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1934
    new-instance v0, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent;

    sget-object v1, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;->DESTROY:Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;

    invoke-direct {v0, p0, v1}, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent;-><init>(Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;)V

    .line 1935
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ReaderActivity;->publishEvent(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method public onDocViewerInitialDrawEvent(Lcom/amazon/kindle/event/DocViewerInitialDrawEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
    .end annotation

    .line 1117
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-virtual {p1}, Lcom/amazon/kindle/event/DocViewerInitialDrawEvent;->getPublisher()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    if-eq v0, p1, :cond_0

    return-void

    .line 1121
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->boundPanelContent:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1122
    new-instance p1, Lcom/amazon/kcp/reader/ReaderActivity$11;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/reader/ReaderActivity$11;-><init>(Lcom/amazon/kcp/reader/ReaderActivity;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1130
    :cond_1
    new-instance p1, Lcom/amazon/kcp/reader/ReaderActivity$12;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/reader/ReaderActivity$12;-><init>(Lcom/amazon/kcp/reader/ReaderActivity;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDrawerClosed(Landroid/view/View;)V
    .locals 4

    .line 4148
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->panelController:Lcom/amazon/kindle/panels/IPanelController;

    instance-of v0, p1, Lcom/amazon/kindle/panels/ReaderPanelController;

    if-eqz v0, :cond_0

    .line 4149
    check-cast p1, Lcom/amazon/kindle/panels/ReaderPanelController;

    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->panelLocation:Lcom/amazon/kindle/panels/PanelLocation;

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/panels/ReaderPanelController;->onPanelClosed(Lcom/amazon/kindle/panels/PanelLocation;)V

    .line 4150
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->panelController:Lcom/amazon/kindle/panels/IPanelController;

    check-cast p1, Lcom/amazon/kindle/panels/ReaderPanelController;

    invoke-virtual {p1}, Lcom/amazon/kindle/panels/ReaderPanelController;->notifyListenersOfClosed()V

    .line 4151
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    .line 4154
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    if-eqz p1, :cond_2

    .line 4155
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 v0, 0x40000

    .line 4156
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setDescendantFocusability(I)V

    const/16 v0, 0x800

    .line 4157
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    const/16 v0, 0x20

    .line 4158
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    const/high16 v0, 0x10000

    .line 4159
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    .line 4160
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x40

    if-eqz v0, :cond_1

    .line 4162
    sget v0, Lcom/amazon/kindle/krl/R$id;->menuitem_hamburger:I

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 4164
    invoke-virtual {p1, v2, v1}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 4168
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getAccessibilityGapView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 4172
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4173
    invoke-virtual {p1, v2, v1}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 4174
    sget v0, Lcom/amazon/kindle/krl/R$string;->speak_button:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget v3, Lcom/amazon/kindle/krl/R$string;->speak_overlay_gap:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    .line 4118
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ReaderActivity;->setViewOptionsVisible(Z)V

    .line 4120
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->panelController:Lcom/amazon/kindle/panels/IPanelController;

    instance-of v1, v0, Lcom/amazon/kindle/panels/ReaderPanelController;

    if-eqz v1, :cond_0

    .line 4121
    check-cast v0, Lcom/amazon/kindle/panels/ReaderPanelController;

    invoke-virtual {v0}, Lcom/amazon/kindle/panels/ReaderPanelController;->notifyListenersOfOpened()V

    .line 4124
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    if-eqz v0, :cond_1

    .line 4125
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const/high16 v1, 0x60000

    .line 4126
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setDescendantFocusability(I)V

    const/16 v1, 0x800

    .line 4127
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    const/16 v1, 0x20

    .line 4128
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    const/high16 v1, 0x10000

    .line 4129
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    .line 4130
    sget v1, Lcom/amazon/kindle/krl/R$id;->reader_nav_panel_library:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4132
    new-instance v1, Lcom/amazon/kcp/reader/ReaderActivity$29;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/reader/ReaderActivity$29;-><init>(Lcom/amazon/kcp/reader/ReaderActivity;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public onDrawerSlide(Landroid/view/View;F)V
    .locals 0

    return-void
.end method

.method public onDrawerStateChanged(I)V
    .locals 2

    .line 4186
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->panelController:Lcom/amazon/kindle/panels/IPanelController;

    instance-of v0, v0, Lcom/amazon/kindle/panels/ReaderPanelController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->panelHelper:Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 4187
    invoke-virtual {v0}, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->isDrawerOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4188
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->panelController:Lcom/amazon/kindle/panels/IPanelController;

    check-cast p1, Lcom/amazon/kindle/panels/ReaderPanelController;

    invoke-virtual {p1}, Lcom/amazon/kindle/panels/ReaderPanelController;->notifyListenersOfOpening()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 4189
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->panelHelper:Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;

    invoke-virtual {p1}, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->isDrawerOpen()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4190
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->panelController:Lcom/amazon/kindle/panels/IPanelController;

    check-cast p1, Lcom/amazon/kindle/panels/ReaderPanelController;

    invoke-virtual {p1}, Lcom/amazon/kindle/panels/ReaderPanelController;->notifyListenersOfClosing()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onExternalLinkClicked(Lcom/amazon/android/docviewer/DocViewerExternalLinkClickedEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 3856
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/DocViewerExternalLinkClickedEvent;->getPublisher()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-ne v0, v1, :cond_0

    .line 3857
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/DocViewerExternalLinkClickedEvent;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/kcp/application/IKindleApplicationController;->openUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onFinishByUser()V
    .locals 3

    .line 2741
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    .line 2742
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$anim;->slide_out_bottom:I

    const-string v2, "BookCloseAnimationId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2743
    sget v1, Lcom/amazon/kindle/krl/R$anim;->no_anim:I

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    .line 2746
    :cond_0
    sget v0, Lcom/amazon/kindle/krl/R$anim;->no_anim:I

    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :goto_0
    return-void
.end method

.method public onLocalBookItemEvent(Lcom/amazon/kindle/krx/events/LocalBookItemEvent;)V
    .locals 4
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 3863
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3869
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3870
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderMenuContainer()Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    .line 3871
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderMenuContainer()Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->isViewOptionsVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3872
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "onRestartViewOptionsVisible"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 3873
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 3875
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/LocalBookItemEvent;->getType()Lcom/amazon/kindle/krx/events/LocalBookItemEvent$EventType;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/krx/events/LocalBookItemEvent$EventType;->PROPOSE_LOCATION:Lcom/amazon/kindle/krx/events/LocalBookItemEvent$EventType;

    if-ne v2, v3, :cond_2

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    .line 3877
    new-instance v0, Lcom/amazon/kcp/reader/ReaderActivity$24;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kcp/reader/ReaderActivity$24;-><init>(Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kindle/krx/events/LocalBookItemEvent;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 3911
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/LocalBookItemEvent;->getType()Lcom/amazon/kindle/krx/events/LocalBookItemEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/events/LocalBookItemEvent$EventType;->AT_LOCATION:Lcom/amazon/kindle/krx/events/LocalBookItemEvent$EventType;

    if-ne v0, v1, :cond_3

    .line 3912
    new-instance v0, Lcom/amazon/kcp/reader/ReaderActivity$25;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kcp/reader/ReaderActivity$25;-><init>(Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kindle/krx/events/LocalBookItemEvent;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 3933
    :cond_3
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/LocalBookItemEvent;->getType()Lcom/amazon/kindle/krx/events/LocalBookItemEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/events/LocalBookItemEvent$EventType;->BOOK_CLOSE:Lcom/amazon/kindle/krx/events/LocalBookItemEvent$EventType;

    if-ne v0, v1, :cond_4

    .line 3934
    new-instance p1, Lcom/amazon/kcp/reader/ReaderActivity$26;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/reader/ReaderActivity$26;-><init>(Lcom/amazon/kcp/reader/ReaderActivity;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 3941
    :cond_4
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/LocalBookItemEvent;->getType()Lcom/amazon/kindle/krx/events/LocalBookItemEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/events/LocalBookItemEvent$EventType;->SHOW_NEW_FONT:Lcom/amazon/kindle/krx/events/LocalBookItemEvent$EventType;

    if-ne p1, v0, :cond_5

    .line 3942
    new-instance p1, Lcom/amazon/kcp/reader/ReaderActivity$27;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/reader/ReaderActivity$27;-><init>(Lcom/amazon/kcp/reader/ReaderActivity;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x0

    .line 2753
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ReaderActivity;->setViewOptionsVisible(Z)V

    .line 2755
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getObjectSelectionModel()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 2758
    invoke-interface {p2}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->selectNone()V

    .line 2760
    :cond_0
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->shouldFlashOverlays:Z

    const/4 p1, 0x1

    return p1
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    .line 2727
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onMultiWindowModeChanged(Z)V

    if-nez p1, :cond_0

    .line 2729
    iget-object p1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz p1, :cond_0

    .line 2731
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->windowSizeChanged()V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 4288
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 4292
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->panelHelper:Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4296
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->panelController:Lcom/amazon/kindle/panels/IPanelController;

    instance-of p1, p1, Lcom/amazon/kindle/panels/ReaderPanelController;

    if-eqz p1, :cond_1

    .line 4297
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->panelHelper:Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;

    invoke-virtual {p1}, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->isDrawerOpen()Z

    move-result p1

    if-nez p1, :cond_1

    .line 4298
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->panelController:Lcom/amazon/kindle/panels/IPanelController;

    check-cast p1, Lcom/amazon/kindle/panels/ReaderPanelController;

    invoke-virtual {p1}, Lcom/amazon/kindle/panels/ReaderPanelController;->notifyListenersOfOpening()V

    .line 4302
    :cond_1
    iget-boolean p1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->isActionBarVisible:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    if-eqz p1, :cond_2

    .line 4303
    invoke-virtual {p1, v1, v2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setOverlaysVisible(ZZ)Lcom/amazon/kcp/reader/ui/ReaderLayout;

    .line 4305
    :cond_2
    invoke-virtual {p0, v2}, Lcom/amazon/kcp/reader/ReaderActivity;->setViewOptionsVisible(Z)V

    return v1

    .line 4309
    :cond_3
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4311
    invoke-virtual {p0, v2}, Lcom/amazon/kcp/reader/ReaderActivity;->setViewOptionsVisible(Z)V

    return v1

    .line 4315
    :cond_4
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCustomActionMenuController()Lcom/amazon/android/menu/CustomActionMenuController;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 4317
    invoke-virtual {v0, p1}, Lcom/amazon/android/menu/CustomActionMenuController;->onClickCustomButton(Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 4318
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getColorModeId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/android/menu/CustomActionMenuController;->refreshCustomButtonsAsMenuItems(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)V

    return v1

    :cond_5
    return v2
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1

    .line 2767
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 2773
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2774
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderMenuContainer()Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderMenuContainer()Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->isViewOptionsVisible()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 2775
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->shouldFlashOverlays:Z

    :cond_0
    return-void
.end method

.method public onPageNumbersLoadedEvent(Lcom/amazon/kcp/sidecar/pagenumbers/PageNumbersLoadedEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 1175
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$bool;->bind_panel_content_on_page_number_load:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1176
    new-instance p1, Lcom/amazon/kcp/reader/ReaderActivity$14;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/reader/ReaderActivity$14;-><init>(Lcom/amazon/kcp/reader/ReaderActivity;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 1795
    invoke-super {p0}, Lcom/amazon/kcp/redding/DocumentActivity;->onPause()V

    const/4 v0, 0x0

    .line 1796
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->isCurrentlyVisible:Z

    .line 1797
    invoke-static {p0}, Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetUtil;->deregisterActivity(Landroidx/fragment/app/FragmentActivity;)V

    .line 1799
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->bookCoverCreated:Z

    .line 1801
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "MrprDialogDelay_v3"

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->cancelMetricTimer(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1069
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ThemeActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 1071
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->panelHelper:Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;

    if-eqz p1, :cond_0

    .line 1072
    invoke-virtual {p1}, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->syncState()V

    .line 1075
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "settingsChange"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1076
    iget-object p1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz p1, :cond_1

    .line 1077
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1079
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderEventHandler()Lcom/amazon/kindle/tutorial/IReaderEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/tutorial/IReaderEventHandler;->onBookOpenComplete(Lcom/amazon/kindle/model/content/ILocalBookItem;)V

    :cond_1
    return-void
.end method

.method protected onPostResume()V
    .locals 2

    .line 1764
    invoke-super {p0}, Lcom/amazon/kcp/redding/ThemeActivity;->onPostResume()V

    .line 1767
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->resumeMode:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    if-eqz v0, :cond_1

    .line 1768
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->resumeAllowAnimation:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 1769
    :goto_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->resumeMode:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    invoke-virtual {p0, v1, v0}, Lcom/amazon/kcp/reader/ReaderActivity;->showNLNContentFragment(Lcom/amazon/kindle/nln/NonLinearNavigationMode;Z)V

    const/4 v0, 0x0

    .line 1770
    iput-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->resumeMode:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    .line 1771
    iput-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->resumeAllowAnimation:Ljava/lang/Boolean;

    :cond_1
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 2909
    sget-object p2, Lcom/amazon/kcp/reader/ReaderActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Detected invalid id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " while preparing dialog"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2905
    :cond_0
    new-instance v0, Lcom/amazon/kcp/reader/UserGotoDialogBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-direct {v0, p0, v1}, Lcom/amazon/kcp/reader/UserGotoDialogBuilder;-><init>(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;)V

    .line 2906
    invoke-static {p1}, Lcom/amazon/kcp/reader/UserGotoDialogBuilder$GoToDialogType;->fromDialogId(I)Lcom/amazon/kcp/reader/UserGotoDialogBuilder$GoToDialogType;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kcp/reader/UserGotoDialogBuilder;->refreshDialog(Lcom/amazon/kcp/reader/UserGotoDialogBuilder$GoToDialogType;Landroid/app/Dialog;)V

    :goto_0
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 0

    .line 2781
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .line 4205
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 4211
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCustomActionMenuController()Lcom/amazon/android/menu/CustomActionMenuController;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4213
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getColorModeId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/android/menu/CustomActionMenuController;->refreshCustomButtonsAsMenuItems(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public onReaderLayoutEvent(Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent;)V
    .locals 4
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 4331
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent;->getPublisher()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    if-eq v0, v1, :cond_0

    return-void

    .line 4335
    :cond_0
    sget-object v0, Lcom/amazon/kcp/reader/ReaderActivity$37;->$SwitchMap$com$amazon$kcp$reader$ui$ReaderLayoutEvent$EventType:[I

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent;->getEventType()Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 4357
    sget-object v0, Lcom/amazon/kcp/reader/ReaderActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReaderLayoutEvent: No other type of event should exist. Got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent;->getEventType()Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4354
    :cond_1
    invoke-direct {p0, v3}, Lcom/amazon/kcp/reader/ReaderActivity;->handleActionBarVisibilityChanged(Z)V

    goto :goto_0

    .line 4351
    :cond_2
    invoke-direct {p0, v1}, Lcom/amazon/kcp/reader/ReaderActivity;->handleActionBarVisibilityChanged(Z)V

    goto :goto_0

    .line 4348
    :cond_3
    invoke-virtual {p0, v3}, Lcom/amazon/kcp/reader/ReaderActivity;->handleOverlayVisibilityChanged(Z)V

    goto :goto_0

    .line 4337
    :cond_4
    invoke-virtual {p0, v1}, Lcom/amazon/kcp/reader/ReaderActivity;->handleOverlayVisibilityChanged(Z)V

    .line 4339
    iget-object p1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz p1, :cond_5

    .line 4340
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 4342
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderEventHandler()Lcom/amazon/kindle/tutorial/IReaderEventHandler;

    move-result-object v0

    .line 4343
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookReadingProgress()Ljava/lang/Integer;

    move-result-object v1

    .line 4342
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/amazon/kindle/tutorial/IReaderEventHandler;->onChromeOpen(Lcom/amazon/kindle/model/content/ILocalBookItem;I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onReaderModeChanged(Lcom/amazon/kindle/krx/events/ReaderModeChangedEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
    .end annotation

    .line 4365
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/ReaderModeChangedEvent;->getReaderMode()Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->DOUBLETIME:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    if-ne v0, v1, :cond_0

    .line 4366
    sget-object v0, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->FULL_PAGE:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ReaderActivity;->showNLNContentFragment(Lcom/amazon/kindle/nln/NonLinearNavigationMode;)V

    .line 4373
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/ReaderModeChangedEvent;->getReaderMode()Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->AUDIBLE_PLAYER:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    if-eq v0, v1, :cond_1

    .line 4374
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/ReaderModeChangedEvent;->getReaderMode()Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->READER:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    if-ne p1, v0, :cond_2

    .line 4375
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->commandBar:Lcom/amazon/android/widget/CommandBar;

    if-eqz p1, :cond_2

    .line 4376
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->commandBarItemController:Lcom/amazon/android/widget/CommandBarItemController;

    invoke-virtual {v0, p1, p0}, Lcom/amazon/android/widget/CommandBarItemController;->inflateCommandBarItems(Lcom/amazon/android/widget/CommandBar;Lcom/amazon/kcp/reader/ReaderActivity;)V

    .line 4377
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->commandBarItemController:Lcom/amazon/android/widget/CommandBarItemController;

    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->commandBar:Lcom/amazon/android/widget/CommandBar;

    invoke-virtual {p1, v0}, Lcom/amazon/android/widget/CommandBarItemController;->populateCommandBar(Lcom/amazon/android/widget/CommandBar;)V

    :cond_2
    return-void
.end method

.method public onReadingModeChange()V
    .locals 2

    .line 2016
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->populateCommandBar()V

    .line 2017
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->onReadingModeChange(Lcom/amazon/android/docviewer/KindleDocViewer;)V

    .line 2018
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderMenuContainer()Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2019
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderMenuContainer()Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->enableViewOptionsSheetResetFlag()V

    :cond_0
    return-void
.end method

.method public onReadingModeSwitchPressed()V
    .locals 3

    .line 3571
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_4

    .line 3573
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getReadingMode()Lcom/amazon/kindle/dualreadingmode/ReadingMode;

    move-result-object v1

    .line 3574
    sget-object v2, Lcom/amazon/kindle/dualreadingmode/ReadingMode;->BOOK_DEFAULT:Lcom/amazon/kindle/dualreadingmode/ReadingMode;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/amazon/kindle/dualreadingmode/ReadingMode;->REFLOWABLE:Lcom/amazon/kindle/dualreadingmode/ReadingMode;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    .line 3575
    sget-object v2, Lcom/amazon/kindle/dualreadingmode/ReadingMode;->FIXED:Lcom/amazon/kindle/dualreadingmode/ReadingMode;

    goto :goto_2

    :cond_2
    sget-object v2, Lcom/amazon/kindle/dualreadingmode/ReadingMode;->REFLOWABLE:Lcom/amazon/kindle/dualreadingmode/ReadingMode;

    .line 3576
    :goto_2
    invoke-interface {v0, v2}, Lcom/amazon/android/docviewer/KindleDocViewer;->setReadingMode(Lcom/amazon/kindle/dualreadingmode/ReadingMode;)V

    if-eqz v1, :cond_3

    .line 3579
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;->CHROME:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->SWITCH_TO_PERIODICAL_IMAGE_VIEW:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    invoke-static {v0, v1}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->recordMetrics(Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;)V

    goto :goto_3

    .line 3582
    :cond_3
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;->CHROME:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->SWITCH_TO_PERIODICAL_TEXT_VIEW:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    invoke-static {v0, v1}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->recordMetrics(Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;)V

    :cond_4
    :goto_3
    return-void
.end method

.method protected onRefreshLayout()V
    .locals 2

    .line 5108
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->setupGestureHandler()V

    .line 5113
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    if-eqz v0, :cond_1

    .line 5114
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_0

    .line 5115
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v0

    .line 5116
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode;)V

    .line 5118
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->orientationLockClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setOrientationLockClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const-string v0, "search"

    .line 5122
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    if-eqz v0, :cond_2

    .line 5124
    new-instance v1, Lcom/amazon/kcp/reader/ReaderActivity$33;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/reader/ReaderActivity$33;-><init>(Lcom/amazon/kcp/reader/ReaderActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/SearchManager;->setOnDismissListener(Landroid/app/SearchManager$OnDismissListener;)V

    .line 5132
    new-instance v1, Lcom/amazon/kcp/reader/ReaderActivity$34;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/reader/ReaderActivity$34;-><init>(Lcom/amazon/kcp/reader/ReaderActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/SearchManager;->setOnCancelListener(Landroid/app/SearchManager$OnCancelListener;)V

    .line 5144
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->newCustomMenuController()Lcom/amazon/android/menu/AndroidCustomMenuController;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->customMenuController:Lcom/amazon/android/menu/AndroidCustomMenuController;

    return-void
.end method

.method protected onRestart()V
    .locals 2

    .line 1680
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    const/4 v0, 0x1

    .line 1681
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->isActivityRestarting:Z

    .line 1682
    new-instance v0, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent;

    sget-object v1, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;->RESTART:Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;

    invoke-direct {v0, p0, v1}, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent;-><init>(Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;)V

    .line 1683
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ReaderActivity;->publishEvent(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 1688
    invoke-super {p0}, Lcom/amazon/kcp/redding/DocumentActivity;->onResume()V

    .line 1690
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isKFABuild()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/kcp/reader/ui/BookCoverOnResumeManager;->getInstance()Lcom/amazon/kcp/reader/ui/BookCoverOnResume;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/ui/BookCoverOnResume;->shouldCloseBook()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1691
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->finish()V

    .line 1694
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/reader/DialogMetricsRecorder;->resetMrprCount()V

    .line 1696
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_1

    .line 1698
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1700
    invoke-static {}, Lcom/amazon/android/util/RestrictionUtils;->getInstance()Lcom/amazon/android/util/RestrictionUtils;

    move-result-object v1

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    invoke-virtual {v1, v0, p0}, Lcom/amazon/android/util/RestrictionUtils;->checkParentalRestriction(Lcom/amazon/kcp/library/models/BookType;Landroid/app/Activity;)V

    :cond_1
    const/4 v0, 0x1

    .line 1704
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->isCurrentlyVisible:Z

    const/4 v1, 0x0

    .line 1705
    iput-boolean v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->isAfterSavedInstanceState:Z

    .line 1707
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v2

    .line 1708
    invoke-interface {v2, p0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->setCurrentReaderActivity(Lcom/amazon/kcp/reader/ReaderActivity;)V

    .line 1710
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/DocumentActivity;->shouldDelayExecuted()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1711
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->onActivityResumed()V

    .line 1714
    :cond_2
    iget-object v2, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1715
    iget-object v2, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v2

    invoke-virtual {v2, v0, v0}, Lcom/amazon/android/docviewer/KindleDocView;->changeFooterVisibility(ZZ)V

    .line 1716
    iget-object v2, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/amazon/android/docviewer/KindleDocView;->changeHeaderVisibility(ZZ)V

    .line 1719
    :cond_3
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->firstResume:Z

    if-eqz v0, :cond_4

    .line 1720
    iput-boolean v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->firstResume:Z

    .line 1721
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getDeviceContext()Lcom/amazon/kcp/application/IDeviceContext;

    move-result-object v0

    .line 1722
    invoke-interface {v0, p0}, Lcom/amazon/kcp/application/IDeviceContext;->startListeningForLauncherForeground(Lcom/amazon/kcp/redding/ReddingActivity;)V

    goto :goto_0

    .line 1723
    :cond_4
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    if-eqz v0, :cond_5

    .line 1725
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->refresh()V

    .line 1730
    :cond_5
    :goto_0
    invoke-static {p0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    .line 1731
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getPanelController()Lcom/amazon/kindle/panels/IPanelController;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->panelController:Lcom/amazon/kindle/panels/IPanelController;

    if-eqz v0, :cond_6

    .line 1733
    invoke-interface {v0, p0}, Lcom/amazon/kindle/panels/IPanelController;->setMainContentFromStackForActivity(Landroid/app/Activity;)V

    .line 1736
    :cond_6
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->panelHelper:Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;

    if-eqz v0, :cond_7

    .line 1737
    invoke-virtual {v0}, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->syncState()V

    .line 1741
    :cond_7
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/UserSettingsController;->setBookOpeningBadgeVisibility(Z)V

    .line 1743
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v0, "MrprDialogDelay_v5"

    const-string v1, "MrprDoubleDialogDelay_v5"

    .line 1744
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/reader/DialogMetricsRecorder;->resetMetricTimer(Ljava/util/List;)V

    .line 1745
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    .line 1746
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAnnotationsManager()Lcom/amazon/kindle/annotation/IAnnotationsManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kindle/annotation/IAnnotationsManager;->getBookAnnotationsManager(Lcom/amazon/kindle/model/content/ILocalBookItem;)Lcom/amazon/kindle/annotation/IBookAnnotationsManager;

    move-result-object v1

    .line 1747
    sget-object v2, Lcom/amazon/kindle/krx/sync/LPRSyncType;->MRPR:Lcom/amazon/kindle/krx/sync/LPRSyncType;

    invoke-interface {v1, v2}, Lcom/amazon/kindle/annotation/IBookAnnotationsManager;->getServerReadingPosition(Lcom/amazon/kindle/krx/sync/LPRSyncType;)Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 1750
    invoke-interface {v0, v1}, Lcom/amazon/kindle/model/content/ILocalBookItem;->proposeMrprToUser(Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;)V

    .line 1753
    :cond_8
    invoke-static {}, Lcom/amazon/kcp/application/AppOpenFastMetricsHelper;->getInstance()Lcom/amazon/kcp/application/AppOpenFastMetrics;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/AppOpenFastMetrics;->onBookViewShown()V

    .line 1754
    sget v0, Lcom/amazon/kindle/krl/R$id;->bottom_sheet_container:I

    invoke-static {p0, v0}, Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetUtil;->registerActivity(Landroidx/fragment/app/FragmentActivity;I)V

    .line 1756
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->bookCoverCreated:Z

    if-nez v0, :cond_9

    .line 1758
    invoke-static {}, Lcom/amazon/kindle/tutorial/InBookTutorialHelper;->showDarkModeTutorialIfNecessary()V

    :cond_9
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1008
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1010
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->fragmentStateManager:Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;

    if-eqz v0, :cond_0

    const-string v1, "FragmentStateBundle"

    .line 1012
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1015
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    if-eqz v0, :cond_1

    .line 1017
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->areOverlaysVisible()Z

    move-result v0

    const-string v1, "ChromeStateBundle"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    const/4 p1, 0x1

    .line 1020
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->isAfterSavedInstanceState:Z

    return-void
.end method

.method protected onSearchEnded()V
    .locals 3

    const/4 v0, 0x0

    .line 2624
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->isCurrentlySearching:Z

    .line 2627
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    if-eqz v1, :cond_0

    .line 2628
    iget-boolean v2, p0, Lcom/amazon/kcp/reader/ReaderActivity;->returnToImmersiveReadingModeFromSearch:Z

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->handleOverlaysOnSearchEnded(Z)V

    .line 2631
    :cond_0
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->returnToImmersiveReadingModeFromSearch:Z

    return-void
.end method

.method public onSearchRequested()Z
    .locals 4

    .line 2593
    sget-object v0, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;->Search:Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ReaderActivity;->hasReaderActivityFeature(Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2594
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2595
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$string;->reader_search_not_available:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 v1, 0x0

    .line 2596
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v2, Lcom/amazon/kindle/krl/R$string;->ok:I

    const/4 v3, 0x0

    .line 2597
    invoke-virtual {v0, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 2598
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/amazon/kindle/dialog/DialogManager;->showDialogSafely(Landroid/content/Context;Landroid/app/Dialog;)Z

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 2602
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->isCurrentlySearching:Z

    .line 2603
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->executeSearch()V

    .line 2605
    invoke-static {p0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getPanelController()Lcom/amazon/kindle/panels/IPanelController;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2607
    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderActivity;->panelLocation:Lcom/amazon/kindle/panels/PanelLocation;

    invoke-interface {v1, v2}, Lcom/amazon/kindle/panels/IPanelController;->closePanel(Lcom/amazon/kindle/panels/PanelLocation;)V

    .line 2610
    :cond_1
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    if-eqz v1, :cond_2

    .line 2611
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->handleOverlaysOnSearchRequested()V

    :cond_2
    return v0
.end method

.method public onSoftBackButtonClicked(Landroid/view/View;)V
    .locals 1

    .line 3429
    iget-object p1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-nez p1, :cond_0

    return-void

    .line 3434
    :cond_0
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3435
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->isBackAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3436
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->navigateBack()V

    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 5

    const-string v0, "ReaderActivity.onStart()"

    const/4 v1, 0x1

    .line 1567
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 1569
    invoke-super {p0}, Lcom/amazon/kcp/redding/DocumentActivity;->onStart()V

    const/4 v0, 0x0

    .line 1571
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->isAfterSavedInstanceState:Z

    .line 1573
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->setCurrentReaderActivity(Lcom/amazon/kcp/reader/ReaderActivity;)V

    .line 1575
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/application/UserSettingsController;->getOrientation()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 1578
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v1}, Lcom/amazon/android/util/UIUtils;->convertConfigurationToScreenOrientation(I)I

    move-result v1

    .line 1581
    :cond_0
    invoke-static {v1}, Lcom/amazon/android/util/UIUtils;->convertScreenToConfigurationOrientation(I)I

    move-result v3

    iput v3, p0, Lcom/amazon/kcp/reader/ReaderActivity;->configOrientation:I

    .line 1583
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Orientation in onStart: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eq v1, v2, :cond_1

    .line 1585
    iput v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->deviceOrientation:I

    .line 1588
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/DocumentActivity;->shouldDelayExecuted()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1589
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->onActivityStarted()V

    :cond_2
    const-string v1, "MrprDialogDelay_v3"

    .line 1592
    invoke-static {v1}, Lcom/amazon/kcp/reader/DialogMetricsRecorder;->resetMetricTimer(Ljava/lang/String;)V

    .line 1594
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->isActivityRestarting:Z

    .line 1596
    invoke-static {}, Lcom/amazon/kindle/displaymask/DisplayMaskManager;->getInstance()Lcom/amazon/kindle/displaymask/DisplayMaskUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->screenModeChangeListener:Lcom/amazon/kindle/displaymask/ScreenModeChangeListener;

    invoke-interface {v0, p0, v1}, Lcom/amazon/kindle/displaymask/DisplayMaskUtils;->addScreenModeChangeListener(Landroidx/fragment/app/FragmentActivity;Lcom/amazon/kindle/displaymask/ScreenModeChangeListener;)V

    return-void
.end method

.method protected onStop()V
    .locals 4

    .line 1609
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->saveCurrentBookStateWithoutChangingLastAccessed()V

    .line 1610
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->closeBook()V

    .line 1612
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 1617
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "settingsChange"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1618
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1620
    :cond_0
    new-instance v1, Lcom/amazon/kcp/reader/ReaderActivity$16;

    invoke-direct {v1, p0, v0}, Lcom/amazon/kcp/reader/ReaderActivity$16;-><init>(Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/android/docviewer/KindleDocViewer;)V

    .line 1648
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    .line 1650
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->orientationListener:Lcom/amazon/kcp/reader/ReaderActivity$ReaderOrientationChangeListener;

    if-eqz v0, :cond_1

    .line 1651
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 1653
    :cond_1
    new-instance v0, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent;

    sget-object v1, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;->STOP:Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;

    invoke-direct {v0, p0, v1}, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent;-><init>(Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;)V

    .line 1654
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ReaderActivity;->publishEvent(Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 1657
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->shouldRegisterTimeUpdateReceiver()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1658
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getTimeUpdateReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1661
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-static {v0}, Lcom/amazon/kcp/debug/FastNavigationUtils;->shouldShowFastNavigation(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1668
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    if-eqz v0, :cond_3

    .line 1669
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->areOverlaysVisible()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->shouldFlashOverlays:Z

    .line 1673
    :cond_3
    invoke-super {p0}, Lcom/amazon/kcp/redding/DocumentActivity;->onStop()V

    .line 1675
    invoke-static {}, Lcom/amazon/kindle/displaymask/DisplayMaskManager;->getInstance()Lcom/amazon/kindle/displaymask/DisplayMaskUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->screenModeChangeListener:Lcom/amazon/kindle/displaymask/ScreenModeChangeListener;

    invoke-interface {v0, p0, v1}, Lcom/amazon/kindle/displaymask/DisplayMaskUtils;->removeScreenModeChangeListener(Landroidx/fragment/app/FragmentActivity;Lcom/amazon/kindle/displaymask/ScreenModeChangeListener;)V

    return-void
.end method

.method public onTocReadyEvent(Lcom/amazon/android/docviewer/BaseKindleDocViewer$TocReadyEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
    .end annotation

    .line 3975
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->boundPanelContent:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3976
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->bindPanelContent()V

    :cond_0
    return-void
.end method

.method public onViewOptionsPressed(Landroid/view/View;)V
    .locals 1

    .line 3527
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    if-nez p1, :cond_0

    return-void

    .line 3535
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->areOverlaysVisible()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->shouldDisableViewOptions()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 3539
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderMenuContainer()Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3540
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderMenuContainer()Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->isViewOptionsVisible()Z

    move-result p1

    .line 3542
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderMenuContainer()Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    move-result-object v0

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->setViewOptionsVisible(Z)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 1393
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ThemeActivity;->onWindowFocusChanged(Z)V

    .line 1395
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/DocumentActivity;->shouldDelayExecuted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->isDoneWithInitialDraw()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1398
    :cond_0
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->hasFocus:Z

    goto :goto_1

    .line 1396
    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ReaderActivity;->onActivityFocusChanged(Ljava/lang/Boolean;)V

    :goto_1
    return-void
.end method

.method public openPanel(Lcom/amazon/kindle/panels/PanelLocation;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2494
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->panelController:Lcom/amazon/kindle/panels/IPanelController;

    if-eqz v0, :cond_0

    .line 2495
    invoke-interface {v0, p1}, Lcom/amazon/kindle/panels/IPanelController;->openPanel(Lcom/amazon/kindle/panels/PanelLocation;)V

    :cond_0
    return-void
.end method

.method public performBookOperation(Landroid/content/Intent;)V
    .locals 5

    .line 3216
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, -0x1

    const-string v2, "operation"

    .line 3221
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    .line 3265
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ReaderActivity;->handleNoteEvent(Landroid/content/Intent;)V

    goto :goto_0

    .line 3243
    :pswitch_1
    invoke-virtual {p0, v3}, Lcom/amazon/kcp/redding/ReddingActivity;->showDialogSafely(I)V

    goto :goto_0

    .line 3233
    :pswitch_2
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->suppressLocations()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3234
    invoke-virtual {p0, v3}, Lcom/amazon/kcp/redding/ReddingActivity;->showDialogSafely(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    .line 3236
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->showDialogSafely(I)V

    goto :goto_0

    .line 3262
    :pswitch_3
    iput-boolean v4, p0, Lcom/amazon/kcp/reader/ReaderActivity;->shouldFlashOverlays:Z

    goto :goto_0

    .line 3258
    :pswitch_4
    iput-boolean v4, p0, Lcom/amazon/kcp/reader/ReaderActivity;->shouldFlashOverlays:Z

    .line 3259
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->onSearchRequested()Z

    goto :goto_0

    .line 3251
    :pswitch_5
    iput-boolean v4, p0, Lcom/amazon/kcp/reader/ReaderActivity;->shouldFlashOverlays:Z

    const/4 p1, 0x0

    .line 3252
    invoke-virtual {p0, v1, p1}, Lcom/amazon/kcp/reader/ReaderActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 3253
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderMenuContainer()Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3254
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderMenuContainer()Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->setViewOptionsVisible(Z)Z

    goto :goto_0

    .line 3246
    :pswitch_6
    iput-boolean v4, p0, Lcom/amazon/kcp/reader/ReaderActivity;->shouldFlashOverlays:Z

    .line 3247
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->manuallySyncBook()V

    goto :goto_0

    .line 3240
    :pswitch_7
    invoke-virtual {p0, v4}, Lcom/amazon/kcp/redding/ReddingActivity;->showDialogSafely(I)V

    goto :goto_0

    .line 3230
    :pswitch_8
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->navigateToBeginning()V

    goto :goto_0

    .line 3227
    :pswitch_9
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->goToTOC()V

    goto :goto_0

    .line 3224
    :pswitch_a
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->navigateToCover()V

    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected abstract populateSupportedFeatureSet()V
.end method

.method protected recordChangeInSettings(Ljava/lang/String;Z)V
    .locals 2

    .line 2425
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    .line 2426
    sget-object v1, Lcom/amazon/kcp/application/UserSettingsController$Setting;->SCREEN_BRIGHTNESS:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v1, p1}, Lcom/amazon/kcp/application/UserSettingsController$Setting;->equals(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p2, :cond_0

    .line 2430
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getBrightnessManager()Lcom/amazon/kindle/brightness/IBrightnessManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/brightness/IBrightnessManager;->getScreenBrightnessPercentage()I

    move-result v0

    .line 2431
    invoke-static {p1, v0, p2}, Lcom/amazon/kcp/util/fastmetrics/RecordSettingsChangeFastMetrics;->sendSettingsChangeInt(Ljava/lang/String;IZ)V

    goto :goto_0

    .line 2432
    :cond_0
    sget-object v1, Lcom/amazon/kcp/application/UserSettingsController$Setting;->BRIGHTNESS_MODE:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v1, p1}, Lcom/amazon/kcp/application/UserSettingsController$Setting;->equals(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2433
    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getBrightnessMode()Lcom/amazon/kcp/reader/ui/BrightnessMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/BrightnessMode;->serializationValue()I

    move-result v0

    .line 2434
    invoke-static {p1, v0, p2}, Lcom/amazon/kcp/util/fastmetrics/RecordSettingsChangeFastMetrics;->sendSettingsChangeInt(Ljava/lang/String;IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public recordSettings()V
    .locals 5

    const/16 v0, 0xf

    new-array v1, v0, [Lcom/amazon/kcp/application/UserSettingsController$Setting;

    .line 2402
    sget-object v2, Lcom/amazon/kcp/application/UserSettingsController$Setting;->FONT_SIZE:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kcp/application/UserSettingsController$Setting;->COLOR_MODE:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kcp/application/UserSettingsController$Setting;->KINDLE_ILLUSTRATED:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    const/4 v4, 0x2

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kcp/application/UserSettingsController$Setting;->KINDLE_ILLUSTRATED_AUTO_PLAY_ANIMATIONS:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    const/4 v4, 0x3

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kcp/application/UserSettingsController$Setting;->SCREEN_BRIGHTNESS:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    const/4 v4, 0x4

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kcp/application/UserSettingsController$Setting;->BRIGHTNESS_MODE:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    const/4 v4, 0x5

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kcp/application/UserSettingsController$Setting;->LINE_SPACING:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    const/4 v4, 0x6

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kcp/application/UserSettingsController$Setting;->FORCE_DISABLE_JUSTIFICATION:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    const/4 v4, 0x7

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kcp/application/UserSettingsController$Setting;->LINE_LENGTH:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    const/16 v4, 0x8

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kcp/application/UserSettingsController$Setting;->FONT_FACE:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    const/16 v4, 0x9

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kcp/application/UserSettingsController$Setting;->COLUMN_COUNT:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    const/16 v4, 0xa

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kcp/application/UserSettingsController$Setting;->FOOTER_CONTENT_TYPE:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    const/16 v4, 0xb

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kcp/application/UserSettingsController$Setting;->COMICS_SECTION_LAYOUT_MODE:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    const/16 v4, 0xc

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kcp/application/UserSettingsController$Setting;->COMICS_TRANSITION_DURATION:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    const/16 v4, 0xd

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kcp/application/UserSettingsController$Setting;->CONTRAST_LEVEL:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    const/16 v4, 0xe

    aput-object v2, v1, v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 2419
    aget-object v4, v1, v2

    .line 2420
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lcom/amazon/kcp/reader/ReaderActivity;->recordChangeInSettings(Ljava/lang/String;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected recreateActivity()V
    .locals 6

    .line 5436
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 5440
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/redding/ThemeActivity;->recreationStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 5444
    :cond_1
    iput-boolean v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->isRestartingForSettingChange:Z

    .line 5446
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    .line 5447
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v2

    .line 5448
    invoke-virtual {v2}, Lcom/amazon/kcp/application/UserSettingsController;->getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v4}, Lcom/amazon/android/docviewer/KindleDocViewer;->getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v4

    if-eq v3, v4, :cond_2

    .line 5451
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getColorModeFactory()Lcom/amazon/android/docviewer/KindleDocColorModeFactory;

    move-result-object v3

    invoke-virtual {v2}, Lcom/amazon/kcp/application/UserSettingsController;->getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v4

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/amazon/android/docviewer/KindleDocColorModeFactory;->getColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;Landroid/content/res/Resources;)Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v3

    .line 5452
    iget-object v4, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v4, v3}, Lcom/amazon/android/docviewer/KindleDocViewer;->setColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode;)V

    .line 5455
    :cond_2
    iget-object v3, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    if-eqz v3, :cond_3

    .line 5456
    invoke-virtual {v3}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderMenuContainer()Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    .line 5457
    invoke-virtual {v3}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderMenuContainer()Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->isViewOptionsVisible()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_4

    const-string v0, ""

    .line 5459
    invoke-virtual {p0, v0, v2}, Lcom/amazon/kcp/reader/ReaderActivity;->restartActivity(Ljava/lang/String;Lcom/amazon/kcp/application/UserSettingsController;)V

    .line 5460
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->finish()V

    goto :goto_1

    .line 5464
    :cond_4
    iget-boolean v2, p0, Lcom/amazon/kcp/reader/ReaderActivity;->unboundFromBook:Z

    if-nez v2, :cond_5

    .line 5465
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ReaderController;

    invoke-virtual {v0, p0, v1}, Lcom/amazon/kcp/reader/ReaderController;->unbindFromCurrentBook(Landroid/app/Activity;Z)V

    .line 5466
    iput-boolean v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->unboundFromBook:Z

    .line 5468
    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    :cond_6
    :goto_1
    return-void
.end method

.method public refreshCommandBarIcon(Ljava/lang/String;)V
    .locals 2

    .line 1994
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->currentBook:Lcom/amazon/kindle/krx/content/IBook;

    invoke-static {v0}, Lcom/amazon/android/widget/CommandBarUtils;->useCommandBarForContent(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1995
    sget-object p1, Lcom/amazon/kcp/reader/ReaderActivity;->TAG:Ljava/lang/String;

    const-string v0, "Trying to refresh CommandBar when it\'s not being used"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1999
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->commandBar:Lcom/amazon/android/widget/CommandBar;

    if-nez v0, :cond_1

    .line 2002
    sget-object v0, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->PAGE_FLIP:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    invoke-virtual {v0}, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->getFragmentTag()Ljava/lang/String;

    move-result-object v0

    .line 2003
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;

    if-eqz v0, :cond_2

    .line 2005
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->refreshCommandBarIcon(Ljava/lang/String;)V

    goto :goto_0

    .line 2008
    :cond_1
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->commandBarItemController:Lcom/amazon/android/widget/CommandBarItemController;

    invoke-virtual {v1, v0, p1}, Lcom/amazon/android/widget/CommandBarItemController;->refreshCommandBarIcon(Lcom/amazon/android/widget/CommandBar;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected refreshLayout(Landroid/os/Bundle;)Lcom/amazon/kcp/reader/ui/ReaderLayout;
    .locals 6

    .line 1218
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "ReaderLayout.newReaderLayout()"

    const/4 v1, 0x1

    .line 1222
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 1223
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->newReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v2

    const/4 v3, 0x0

    .line 1224
    invoke-static {v0, v3}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    if-nez v2, :cond_1

    .line 1226
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    return-object p1

    .line 1230
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 1231
    iput-object v2, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    .line 1232
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1236
    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 1237
    instance-of v4, v2, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    .line 1238
    check-cast v2, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1240
    :cond_2
    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderActivity;->contentContainer:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    if-eqz v0, :cond_3

    .line 1246
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isFalkorEpisode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1248
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderLayoutCustomizer()Lcom/amazon/kcp/reader/IReaderLayoutCustomizer;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/amazon/kcp/reader/IReaderLayoutCustomizer;->getSystemUiFlags(Z)I

    move-result v2

    goto :goto_0

    .line 1250
    :cond_3
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderLayoutCustomizer()Lcom/amazon/kcp/reader/IReaderLayoutCustomizer;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/reader/IReaderLayoutCustomizer;->getSystemUILayoutFlags()I

    move-result v2

    .line 1252
    :goto_0
    iget-object v4, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    const-string v2, "ReaderLayout.setDocViewer"

    .line 1254
    invoke-static {v2, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 1255
    iget-object v4, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v4, v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setDocViewer(Lcom/amazon/android/docviewer/KindleDocViewer;)V

    .line 1256
    invoke-static {v2, v3}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 1258
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->setupFullPageFragment()V

    .line 1259
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ReaderActivity;->recoverPageFlipFragment(Landroid/os/Bundle;)V

    if-eqz v0, :cond_4

    .line 1260
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->isDoneWithInitialDraw()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1261
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->setupNewPageFlipFragment()V

    .line 1264
    :cond_4
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/DocumentActivity;->shouldDelayExecuted()Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->isDoneWithInitialDraw()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1265
    :cond_5
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->onRefreshLayout()V

    :cond_6
    if-eqz p1, :cond_7

    const-string v0, "ChromeStateBundle"

    .line 1268
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_1

    :cond_7
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->rotateWithChromeUp:Z

    .line 1270
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    return-object p1
.end method

.method public refreshToggleBookmarkItem()V
    .locals 2

    .line 2054
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->currentBook:Lcom/amazon/kindle/krx/content/IBook;

    invoke-static {v0}, Lcom/amazon/android/widget/CommandBarUtils;->useCommandBarForContent(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2055
    sget-object v0, Lcom/amazon/kcp/reader/ReaderActivity;->TAG:Ljava/lang/String;

    const-string v1, "Trying to refresh Toggle Bookmark when CommandBar is not being used"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2059
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->commandBar:Lcom/amazon/android/widget/CommandBar;

    if-eqz v0, :cond_1

    .line 2061
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->commandBarItemController:Lcom/amazon/android/widget/CommandBarItemController;

    invoke-virtual {v1, v0}, Lcom/amazon/android/widget/CommandBarItemController;->refreshToggleBookmarkItem(Lcom/amazon/android/widget/CommandBar;)V

    :cond_1
    return-void
.end method

.method protected restartActivity(Ljava/lang/String;Lcom/amazon/kcp/application/UserSettingsController;)V
    .locals 6

    .line 2349
    iget-boolean p1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->unboundFromBook:Z

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 2350
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/reader/ReaderController;

    invoke-virtual {p1, p0, v0}, Lcom/amazon/kcp/reader/ReaderController;->unbindFromCurrentBook(Landroid/app/Activity;Z)V

    .line 2351
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->unboundFromBook:Z

    .line 2355
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    if-eqz p1, :cond_1

    .line 2356
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderMenuContainer()Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    .line 2357
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderMenuContainer()Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->isViewOptionsVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 2363
    :goto_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    const/4 v2, 0x0

    .line 2364
    iput-object v2, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    if-eqz v1, :cond_2

    .line 2366
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getSystemUiVisibility()I

    move-result v2

    .line 2367
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 2369
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->destroy()V

    :cond_2
    const/high16 v2, 0x10a0000

    const v3, 0x10a0001

    .line 2372
    invoke-static {p0, v2, v3}, Landroidx/core/app/ActivityOptionsCompat;->makeCustomAnimation(Landroid/content/Context;II)Landroidx/core/app/ActivityOptionsCompat;

    move-result-object v2

    .line 2373
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2375
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getOriginActivityName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 2376
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getOriginActivityName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OriginActivity"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2379
    :cond_3
    invoke-virtual {p2}, Lcom/amazon/kcp/application/UserSettingsController;->getColorModeChangedFromFAB()Z

    move-result v4

    .line 2383
    invoke-virtual {p2}, Lcom/amazon/kcp/application/UserSettingsController;->isContinuousScrollChangedForAccessibility()Z

    move-result p2

    if-nez p2, :cond_6

    if-nez v4, :cond_6

    .line 2388
    iget-boolean p2, p0, Lcom/amazon/kcp/reader/ReaderActivity;->isCurrentlyVisible:Z

    if-eqz p2, :cond_6

    .line 2389
    invoke-static {}, Lcom/amazon/kcp/info/TutorialLockHelper;->getLock()Lcom/amazon/kcp/info/TutorialLock;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kcp/info/TutorialLock;->isShowingTutorial()Z

    move-result p2

    if-nez p2, :cond_6

    const-string p2, "settingsChange"

    .line 2390
    invoke-virtual {v3, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz v1, :cond_4

    .line 2391
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getLastTouchX()F

    move-result p2

    goto :goto_1

    :cond_4
    const/high16 p2, -0x40800000    # -1.0f

    :goto_1
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_5

    const-string v0, "onRestartLastTouchX"

    .line 2393
    invoke-virtual {v3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    :cond_5
    const-string p2, "onRestartViewOptionsVisible"

    .line 2395
    invoke-virtual {v3, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2398
    :cond_6
    invoke-virtual {v2}, Landroidx/core/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p0, v3, p1}, Landroidx/core/content/ContextCompat;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method protected saveCurrentBookState()V
    .locals 3

    .line 1806
    invoke-super {p0}, Lcom/amazon/kcp/redding/DocumentActivity;->saveCurrentBookState()V

    .line 1807
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->activitiesNeedToBeClosed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1808
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->finishAllActivities()V

    .line 1809
    iput-boolean v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->activitiesNeedToBeClosed:Z

    .line 1811
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->cleanupGLSurfaceView()V

    .line 1812
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    if-eqz v0, :cond_1

    .line 1813
    invoke-virtual {p0, v1, v1}, Lcom/amazon/kcp/reader/ReaderActivity;->setViewOptionsVisible(ZZ)V

    .line 1816
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getObjectSelectionModel()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1817
    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectionState()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    move-result-object v1

    sget-object v2, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->SHOW_SELECTION_OPTIONS:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1818
    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->selectNone()V

    .line 1826
    :cond_2
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getVirtualViewHierarchyManager()Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;->reset()V

    .line 1828
    new-instance v0, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent;

    sget-object v1, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;->PAUSE:Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;

    invoke-direct {v0, p0, v1}, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent;-><init>(Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;)V

    .line 1829
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ReaderActivity;->publishEvent(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method public setActionBarVisibility(ZZ)V
    .locals 0

    .line 4717
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getToolbarContainer()Landroid/widget/LinearLayout;

    move-result-object p2

    if-nez p2, :cond_1

    .line 4722
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    .line 4724
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar;->show()V

    goto :goto_0

    .line 4726
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar;->hide()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 584
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->enabled:Z

    return-void
.end method

.method public setExternalScreenStatus(Z)V
    .locals 1

    .line 3686
    new-instance v0, Lcom/amazon/kcp/reader/ReaderActivity$22;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kcp/reader/ReaderActivity$22;-><init>(Lcom/amazon/kcp/reader/ReaderActivity;Z)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected setFontSize(I)V
    .locals 1

    .line 2505
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_0

    .line 2506
    invoke-interface {v0, p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->setFontSize(I)V

    .line 2507
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "FONT_SIZE="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getFontSize()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",LINE_SPACING="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 2508
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getLineSpacing()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setFullScreen(Z)V
    .locals 2

    .line 4880
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$bool;->support_reader_fullscreen:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4881
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getOverlayController()Lcom/amazon/android/util/IOsOverlayController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/android/util/IOsOverlayController;->setFullscreen(Z)V

    :cond_0
    return-void
.end method

.method protected setLineSpacing(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2521
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->calculateLineSpacingInDocViewer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2522
    sget-object p1, Lcom/amazon/kcp/reader/ReaderActivity;->TAG:Ljava/lang/String;

    const-string v0, "Cannot set line spacing by pixel value when calculateLineSpacingInDocViewer() is enabled"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2526
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_1

    .line 2527
    invoke-interface {v0, p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->setLineSpacing(I)V

    .line 2528
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "LINE_SPACING="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getLineSpacing()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_1
    return-void
.end method

.method protected setLineSpacing(Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;)V
    .locals 1

    .line 2540
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->calculateLineSpacingInDocViewer()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2541
    sget-object p1, Lcom/amazon/kcp/reader/ReaderActivity;->TAG:Ljava/lang/String;

    const-string v0, "Cannot set line spacing by setting when calculateLineSpacingInDocViewer() is disabled"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2545
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_1

    .line 2547
    invoke-interface {v0, p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->setLineSpacing(Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;)V

    .line 2548
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "LINE_SPACING="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getLineSpacing()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_1
    return-void
.end method

.method protected setMargin(Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;)V
    .locals 1

    .line 2558
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_0

    .line 2559
    invoke-interface {v0, p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->setMargin(Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;)V

    .line 2560
    iget-object p1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getMargin()Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2561
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MARGIN="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getMargin()Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setPanelsInteractive(Z)V
    .locals 1

    .line 3695
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->panelHelper:Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;

    if-eqz v0, :cond_0

    .line 3696
    new-instance v0, Lcom/amazon/kcp/reader/ReaderActivity$23;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kcp/reader/ReaderActivity$23;-><init>(Lcom/amazon/kcp/reader/ReaderActivity;Z)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setReaderActivityFeature(Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;Z)V
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 1957
    iget-object p2, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerActivityFeatures:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1959
    :cond_0
    iget-object p2, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerActivityFeatures:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method protected setTitleVisibility(Z)V
    .locals 2

    .line 3457
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3458
    invoke-virtual {v0, p1, v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setTitleVisibility(ZZ)V

    :cond_0
    return-void
.end method

.method protected setViewOptionsVisible(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 4081
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kcp/reader/ReaderActivity;->setViewOptionsVisible(ZZ)V

    return-void
.end method

.method protected setViewOptionsVisible(ZZ)V
    .locals 1

    .line 4067
    iget-object p2, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    if-eqz p2, :cond_0

    .line 4068
    invoke-virtual {p2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderMenuContainer()Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 4069
    invoke-virtual {p2}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->isViewOptionsVisible()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 4070
    invoke-virtual {p2, p1}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->setViewOptionsVisible(Z)Z

    :cond_0
    return-void
.end method

.method protected setupMenuVisibility(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public setupTOC()V
    .locals 15

    .line 904
    new-instance v4, Lcom/amazon/kcp/reader/ReaderActivity$6;

    invoke-direct {v4, p0}, Lcom/amazon/kcp/reader/ReaderActivity$6;-><init>(Lcom/amazon/kcp/reader/ReaderActivity;)V

    .line 912
    new-instance v5, Lcom/amazon/kcp/reader/ReaderActivity$7;

    invoke-direct {v5, p0, v4}, Lcom/amazon/kcp/reader/ReaderActivity$7;-><init>(Lcom/amazon/kcp/reader/ReaderActivity;Ljava/lang/Runnable;)V

    .line 920
    new-instance v6, Lcom/amazon/android/tableofcontents/TOCDataModel;

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getKindleDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kcp/reader/ReaderActivity;->currentBook:Lcom/amazon/kindle/krx/content/IBook;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/amazon/android/tableofcontents/TOCDataModel;-><init>(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/Runnable;Lcom/amazon/android/tableofcontents/ui/TOCEntryClickListener;)V

    iput-object v6, p0, Lcom/amazon/kcp/reader/ReaderActivity;->tocDataModel:Lcom/amazon/android/tableofcontents/TOCDataModel;

    .line 923
    new-instance v8, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->tocDataModel:Lcom/amazon/android/tableofcontents/TOCDataModel;

    invoke-virtual {v0}, Lcom/amazon/android/tableofcontents/TOCDataModel;->getEntries()Ljava/util/List;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 924
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->tocDataModel:Lcom/amazon/android/tableofcontents/TOCDataModel;

    invoke-virtual {v0}, Lcom/amazon/android/tableofcontents/TOCDataModel;->getHeader()Lcom/amazon/android/tableofcontents/data/TOCHeader;

    move-result-object v9

    .line 926
    sget v0, Lcom/amazon/kindle/krl/R$style;->TOCStyleLight:I

    .line 927
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 928
    sget-object v2, Lcom/amazon/kindle/krx/theme/Theme;->DARK:Lcom/amazon/kindle/krx/theme/Theme;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v1

    sget-object v3, Lcom/amazon/kindle/krx/theme/ThemeArea;->IN_BOOK:Lcom/amazon/kindle/krx/theme/ThemeArea;

    invoke-interface {v1, v3}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme(Lcom/amazon/kindle/krx/theme/ThemeArea;)Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v1

    if-ne v2, v1, :cond_0

    .line 929
    sget v0, Lcom/amazon/kindle/krl/R$style;->TOCStyleDark:I

    :cond_0
    move v14, v0

    .line 933
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 934
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;->LEFT_TO_RIGHT:Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    iget-object v2, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 935
    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getReadingDirection()Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    move-result-object v2

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    xor-int/lit8 v10, v0, 0x1

    .line 937
    sget-object v7, Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment;->Companion:Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment$Companion;

    .line 938
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 937
    invoke-virtual/range {v7 .. v14}, Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment$Companion;->newInstance(Ljava/util/List;Lcom/amazon/android/tableofcontents/data/TOCHeader;ILandroid/content/Context;Landroid/util/AttributeSet;II)Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->tocFragment:Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment;

    .line 940
    new-instance v0, Lcom/amazon/kcp/reader/ReaderActivity$8;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ReaderActivity$8;-><init>(Lcom/amazon/kcp/reader/ReaderActivity;)V

    .line 953
    new-instance v1, Lcom/amazon/kcp/reader/ReaderActivity$9;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/reader/ReaderActivity$9;-><init>(Lcom/amazon/kcp/reader/ReaderActivity;)V

    .line 960
    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderActivity;->tocFragment:Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment;

    invoke-virtual {v2, v0, v1}, Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment;->provideTOCClickListenersV3(Landroid/view/View$OnClickListener;Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment$TOCOpenListener;)V

    return-void
.end method

.method public shouldDisableViewOptions()Z
    .locals 2

    .line 3556
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getCurrentNLNMode()Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3558
    sget-object v1, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->FULL_PAGE:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    if-eq v0, v1, :cond_0

    .line 3559
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->getFragmentTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 3560
    instance-of v1, v0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;

    if-eqz v1, :cond_0

    .line 3561
    check-cast v0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3564
    invoke-virtual {v0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->isScrolling()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public shouldDisplayHeader()Z
    .locals 2

    .line 4854
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->isTimeDisplayEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4855
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$bool;->book_reader_has_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public shouldDisplaySearchNotAvailableMessage()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2116
    sget-object v0, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;->Search:Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ReaderActivity;->hasReaderActivityFeature(Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public shouldFlashOverlaysOnFocus(Z)V
    .locals 0

    .line 4016
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->shouldFlashOverlays:Z

    return-void
.end method

.method protected shouldSetOverlayVisibleAtLaunch()Z
    .locals 2

    .line 1091
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isScreenReaderEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 1092
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->wasRestartedForSettingsChange()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 1097
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-static {v0}, Lcom/amazon/kindle/nln/pageflip/NLNUtils;->shouldUseNonLinearNavigation(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getContinuousScrollEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    return v1

    .line 1100
    :cond_4
    :goto_2
    invoke-static {}, Lcom/amazon/kcp/reader/AudibleHelper;->isReaderInAudibleMode()Z

    move-result v0

    return v0
.end method

.method public shouldUpdateCustomButtons()Z
    .locals 1

    .line 3820
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3822
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderMenuContainer()Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3823
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3824
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3825
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public shouldUseBookmarkFragment(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z
    .locals 3

    if-eqz p1, :cond_2

    .line 2457
    invoke-static {p1}, Lcom/amazon/kcp/reader/features/BookmarkActivityFeature;->isSupported(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2461
    :cond_0
    sget-object v0, Lcom/amazon/kcp/reader/ReaderActivity$37;->$SwitchMap$com$amazon$kcp$library$models$BookType:[I

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    return v1

    .line 2465
    :cond_1
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getMimeType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/download/MimeTypeHelper;->isYellowJerseyPeriodicalsV2MagazineMimeType(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public showChrome()V
    .locals 1

    const/4 v0, 0x1

    .line 4419
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ReaderActivity;->showChromeAnimated(Z)V

    return-void
.end method

.method public showChromeAnimated(Z)V
    .locals 2

    .line 4428
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-static {v0}, Lcom/amazon/kindle/nln/pageflip/NLNUtils;->shouldUseNonLinearNavigation(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4429
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->isInWordRunnerMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4437
    :cond_0
    sget-object p1, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->PAGE_FLIP:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ReaderActivity;->showNLNContentFragment(Lcom/amazon/kindle/nln/NonLinearNavigationMode;)V

    return-void

    .line 4431
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 4432
    invoke-virtual {v0, v1, p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setOverlaysVisible(ZZ)Lcom/amazon/kcp/reader/ui/ReaderLayout;

    :cond_2
    return-void
.end method

.method public showNLNContentFragment(Lcom/amazon/kindle/nln/NonLinearNavigationMode;)V
    .locals 1

    const/4 v0, 0x1

    .line 4462
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kcp/reader/ReaderActivity;->showNLNContentFragment(Lcom/amazon/kindle/nln/NonLinearNavigationMode;Z)V

    return-void
.end method

.method protected showNLNContentFragment(Lcom/amazon/kindle/nln/NonLinearNavigationMode;Z)V
    .locals 4

    .line 4466
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->isCurrentlyVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4467
    iput-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->resumeMode:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    .line 4468
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->resumeAllowAnimation:Ljava/lang/Boolean;

    return-void

    .line 4471
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->fragmentStateManager:Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;

    if-nez v0, :cond_1

    return-void

    .line 4479
    :cond_1
    invoke-virtual {v0}, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->getCurrentMode()Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    move-result-object v0

    .line 4483
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 4484
    sget-object v2, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->PAGE_FLIP:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    invoke-virtual {v2, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 4485
    invoke-direct {p0, v1}, Lcom/amazon/kcp/reader/ReaderActivity;->showPageFlipFragment(Landroidx/fragment/app/FragmentTransaction;)Z

    move-result p2

    const/4 v2, 0x1

    goto :goto_0

    .line 4487
    :cond_2
    sget-object v2, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->FULL_PAGE:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    invoke-virtual {v2, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4488
    invoke-direct {p0, v1, p2}, Lcom/amazon/kcp/reader/ReaderActivity;->showFullPageFragment(Landroidx/fragment/app/FragmentTransaction;Z)Z

    move-result p2

    .line 4491
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->isInWordRunnerMode()Z

    move-result v2

    goto :goto_0

    .line 4492
    :cond_3
    sget-object p2, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->BIRDSEYE:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    invoke-virtual {p2, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 4493
    invoke-direct {p0, v1}, Lcom/amazon/kcp/reader/ReaderActivity;->showBirdsEyeFragment(Landroidx/fragment/app/FragmentTransaction;)Z

    move-result p2

    const/4 v2, 0x0

    :goto_0
    if-eqz p2, :cond_5

    .line 4501
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 4503
    invoke-direct {p0, v0, p1}, Lcom/amazon/kcp/reader/ReaderActivity;->shouldDelayOverlays(Lcom/amazon/kindle/nln/NonLinearNavigationMode;Lcom/amazon/kindle/nln/NonLinearNavigationMode;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    if-eqz p2, :cond_4

    .line 4504
    new-instance v0, Lcom/amazon/kcp/reader/ReaderActivity$30;

    invoke-direct {v0, p0, v2}, Lcom/amazon/kcp/reader/ReaderActivity$30;-><init>(Lcom/amazon/kcp/reader/ReaderActivity;Z)V

    .line 4509
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$integer;->action_bar_decoration_hide_delay:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    .line 4504
    invoke-virtual {p2, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 4511
    :cond_4
    invoke-direct {p0, v2}, Lcom/amazon/kcp/reader/ReaderActivity;->setOverlayVisibility(Z)V

    .line 4515
    :goto_1
    iget-object p2, p0, Lcom/amazon/kcp/reader/ReaderActivity;->panelHelper:Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;

    if-eqz p2, :cond_5

    .line 4516
    sget-object v0, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->BIRDSEYE:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v3

    invoke-virtual {p2, p1}, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->setInteractive(Z)V

    :cond_5
    return-void

    .line 4496
    :cond_6
    sget-object p2, Lcom/amazon/kcp/reader/ReaderActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showTOCFragment()V
    .locals 4

    .line 882
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->isTableOfContentsInitalized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 883
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->setupTOC()V

    .line 886
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "TableOfContentsFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->tocFragment:Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment;

    if-eqz v0, :cond_1

    .line 888
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget v2, Lcom/amazon/kindle/krl/R$id;->toc_component_container:I

    iget-object v3, p0, Lcom/amazon/kcp/reader/ReaderActivity;->tocFragment:Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment;

    invoke-virtual {v0, v2, v3, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 892
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_1
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .line 3416
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3417
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    if-eqz p1, :cond_0

    .line 3418
    invoke-virtual {p1, p2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->onActivityStartActivityForResult(I)V

    :cond_0
    return-void
.end method

.method public startContinuousReading()V
    .locals 0

    return-void
.end method

.method public startNotesActivity(Landroid/os/Bundle;)V
    .locals 3

    .line 3078
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$string;->notes_activity:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3080
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3083
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->enhancedNotebookSupported()Z

    move-result v2

    if-nez v2, :cond_0

    const/high16 v2, 0x40000000    # 2.0f

    .line 3090
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3093
    :cond_0
    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 p1, 0x0

    .line 3094
    invoke-virtual {p0, v1, p1}, Lcom/amazon/kcp/reader/ReaderActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3096
    :catch_0
    sget-object p1, Lcom/amazon/kcp/reader/ReaderActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notes class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " was not found. Please make sure notes_activity is set properly in classes.xml"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public startSearch(Ljava/lang/String;)V
    .locals 3

    .line 1468
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$string;->reader_search_activity:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1470
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "android.intent.action.SEARCH"

    .line 1471
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "query"

    .line 1472
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "cache_key"

    const-string v2, "book"

    .line 1473
    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x5

    .line 1474
    invoke-virtual {p0, v1, p1}, Lcom/amazon/kcp/reader/ReaderActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1476
    :catch_0
    sget-object p1, Lcom/amazon/kcp/reader/ReaderActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Search class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " was not found. Please make sure search_activity is set properly in classes.xml"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public stopContinuousReading()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsActiveAreas()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2108
    sget-object v0, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;->ActiveArea:Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ReaderActivity;->hasReaderActivityFeature(Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;)Z

    move-result v0

    return v0
.end method

.method public supportsAnnotations()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2084
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->Annotations:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/model/content/ILocalBookItem;->hasFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public supportsBackNavigation()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2092
    sget-object v0, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;->BackNavigation:Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ReaderActivity;->hasReaderActivityFeature(Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;)Z

    move-result v0

    return v0
.end method

.method public supportsBookmarks()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2076
    sget-object v0, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;->Bookmark:Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ReaderActivity;->hasReaderActivityFeature(Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;)Z

    move-result v0

    return v0
.end method

.method protected supportsReaderSoftBackViaHwButton()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public supportsSelection()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2100
    sget-object v0, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;->Selection:Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ReaderActivity;->hasReaderActivityFeature(Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;)Z

    move-result v0

    return v0
.end method

.method public useLayoutCache()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final wasRestartedForSettingsChange()Z
    .locals 3

    .line 5167
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "settingsChange"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
