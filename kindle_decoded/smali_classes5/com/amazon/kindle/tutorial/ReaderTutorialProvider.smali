.class public Lcom/amazon/kindle/tutorial/ReaderTutorialProvider;
.super Lcom/amazon/kindle/krx/tutorial/TutorialProvider;
.source "ReaderTutorialProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/tutorial/ReaderTutorialProvider$EventHandlerImpl;
    }
.end annotation


# static fields
.field private static final ACTION_CLOSE_CURRENT_BOOK:Ljava/lang/String; = "CloseCurrentBook"

.field private static final ACTION_GO_TO_BEV:Ljava/lang/String; = "TransitionToBirdsEye"

.field private static final ACTION_GO_TO_FP:Ljava/lang/String; = "TransitionToFullPage"

.field private static final ACTION_GO_TO_PFV:Ljava/lang/String; = "TransitionToPageFlip"

.field private static final ACTION_OPEN_AA_MENU:Ljava/lang/String; = "OpenAaMenu"

.field private static final ACTION_OPEN_CHROME:Ljava/lang/String; = "OpenChrome"

.field private static final ACTION_SUPPRESS_CS_JIT:Ljava/lang/String; = "SuppressContinuousScrollJIT"

.field private static final ACTION_SWITCH_READING_MODE:Ljava/lang/String; = "SwitchReadingMode"

.field private static final ACTION_TURN_ON_CS:Ljava/lang/String; = "TurnOnContinuousScrolling"

.field private static final DATA_ASIN:Ljava/lang/String; = "Asin"

.field private static final DATA_BOOK_FORMAT:Ljava/lang/String; = "BookFormat"

.field private static final DATA_BOOK_GUID:Ljava/lang/String; = "Guid"

.field private static final DATA_BOOK_ID:Ljava/lang/String; = "BookId"

.field private static final DATA_BOOLEAN_CONSTANT:Ljava/lang/String; = "BooleanConstant"

.field private static final DATA_CONTENT_CLASS:Ljava/lang/String; = "ContentClass"

.field private static final DATA_COUNT:Ljava/lang/String; = "Count"

.field private static final DATA_FTUE_LOADING_SCREEN_SHOWN:Ljava/lang/String; = "FtueLoadingScreenShown"

.field private static final DATA_HAS_EVER_ENABLED_CONTINUOUS_SCROLL:Ljava/lang/String; = "HasEverEnabledContinuousScroll"

.field private static final DATA_HAS_KLO_SIDECAR:Ljava/lang/String; = "HasKLOSidecar"

.field private static final DATA_INTENDED_AUDIENCE:Ljava/lang/String; = "IntendedAudience"

.field private static final DATA_IS_COMIC:Ljava/lang/String; = "IsComic"

.field private static final DATA_IS_CONTINUOUS_SCROLL:Ljava/lang/String; = "IsContinuousScroll"

.field private static final DATA_IS_CONTINUOUS_SCROLL_JIT_SUPPRESSED:Ljava/lang/String; = "IsContinuousScrollJITSuppressed"

.field private static final DATA_IS_DICTIONARY:Ljava/lang/String; = "IsDictionary"

.field private static final DATA_IS_FRESH_APP_INSTALL:Ljava/lang/String; = "IsFreshAppInstall"

.field private static final DATA_IS_GVN:Ljava/lang/String; = "IsGVN"

.field private static final DATA_IS_SEPARATELY_FONTS_DOWNLOAD_ENABLED:Ljava/lang/String; = "IsSeparatelyFontsDownloadEnabled"

.field private static final DATA_IS_TABLET:Ljava/lang/String; = "IsTablet"

.field private static final DATA_IS_TEXTBOOK:Ljava/lang/String; = "IsTextbook"

.field private static final DATA_IS_TTS_ALLOWED:Ljava/lang/String; = "IsTtsAllowed"

.field private static final DATA_IS_TTS_SETTING_ENABLED:Ljava/lang/String; = "IsTtsSettingEnabled"

.field private static final DATA_MIME_TYPE:Ljava/lang/String; = "MimeType"

.field private static final DATA_OTHER_TUTORIAL_SHOWN:Ljava/lang/String; = "OtherTutorialShown"

.field private static final DATA_OTHER_TUTORIAL_SHOWN_THIS_LIFECYCLE:Ljava/lang/String; = "OtherTutorialShownThisLifeCycle"

.field private static final DATA_READING_PROGRESS:Ljava/lang/String; = "ReadingProgress"

.field private static final DATA_SRL:Ljava/lang/String; = "Srl"

.field private static final DATA_SUPPORTS_CONTINUOUS_SCROLL:Ljava/lang/String; = "IsContinuousScrollSupported"

.field private static final DATA_TOUCH_EXPLORATION_ENABLED:Ljava/lang/String; = "TouchExplorationEnabled"

.field private static final EVENT_ACCESSIBILITY_STATE_CHANGED:Ljava/lang/String; = "AccessibilityStateChanged"

.field private static final EVENT_BOOK_OPEN_START:Ljava/lang/String; = "BookOpenStart"

.field private static final EVENT_CHROME_OPEN:Ljava/lang/String; = "ChromeOpen"

.field private static final EVENT_PAGE_TURN:Ljava/lang/String; = "PageTurn"

.field private static final FICTION_STATUS:Ljava/lang/String; = "fictionStatus"

.field private static final NEWTRON_PHASE_ONE_ENABLED:Ljava/lang/String; = "NewtronPhase1Enabled"

.field private static final NEW_TO_KINDLE:Ljava/lang/String; = "NewToKindle"

.field private static final READER_PREVIOUS_UPDATE_VERSION:Ljava/lang/String; = "ReaderPreviousUpdateVersion"

.field private static final READER_TOPIC:Ljava/lang/String; = "Reader"

.field private static final READER_VALUE_AA_MENU_COUNT:Ljava/lang/String; = "AaMenuOpenCount"

.field private static final READER_VALUE_BOOK_OPEN_COUNT:Ljava/lang/String; = "BookOpenCount"

.field private static final READER_VALUE_PAGE_TURN_COUNT:Ljava/lang/String; = "PageTurnCount"

.field private static final SHARED_PREFS:Ljava/lang/String; = "ReaderTutorialProviderEventCounts"

.field private static final SHARED_PREF_CHROME_OPEN_KEY:Ljava/lang/String; = "ChromeOpenCount"

.field private static final SMD_TEXTBOOK_KEY:Ljava/lang/String; = "textbook_type"

.field private static final TAG:Ljava/lang/String;

.field static provider:Lcom/amazon/kindle/tutorial/ReaderTutorialProvider;

.field private static final readerManagedCounters:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private activityActive:Z

.field private final context:Landroid/content/Context;

.field private deferForActivityEvents:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final eventHandler:Lcom/amazon/kindle/tutorial/IReaderEventHandler;

.field private final kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 58
    const-class v0, Lcom/amazon/kindle/tutorial/ReaderTutorialProvider;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/tutorial/ReaderTutorialProvider;->TAG:Ljava/lang/String;

    .line 113
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "AaMenuOpenCount"

    const-string v2, "BookOpenCount"

    const-string v3, "PageTurnCount"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 113
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/tutorial/ReaderTutorialProvider;->readerManagedCounters:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "Reader"

    .line 132
    invoke-direct {p0, v0}, Lcom/amazon/kindle/krx/tutorial/TutorialProvider;-><init>(Ljava/lang/String;)V

    .line 126
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/tutorial/ReaderTutorialProvider;->deferForActivityEvents:Ljava/util/Queue;

    .line 133
    new-instance v0, Lcom/amazon/kindle/tutorial/ReaderTutorialProvider$EventHandlerImpl;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/tutorial/ReaderTutorialProvider$EventHandlerImpl;-><init>(Lcom/amazon/kindle/tutorial/ReaderTutorialProvider;)V

    iput-object v0, p0, Lcom/amazon/kindle/tutorial/ReaderTutorialProvider;->eventHandler:Lcom/amazon/kindle/tutorial/IReaderEventHandler;

    const-string v0, "ReaderTutorialProviderEventCounts"

    const/4 v1, 0x0

    .line 134
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/tutorial/ReaderTutorialProvider;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 135
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/tutorial/ReaderTutorialProvider;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 136
    iput-object p1, p0, Lcom/amazon/kindle/tutorial/ReaderTutorialProvider;->context:Landroid/content/Context;

    .line 137
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 138
    sput-object p0, Lcom/amazon/kindle/tutorial/ReaderTutorialProvider;->provider:Lcom/amazon/kindle/tutorial/ReaderTutorialProvider;

    const/4 p1, 0x1

    .line 139
    iput-boolean p1, p0, Lcom/amazon/kindle/tutorial/ReaderTutorialProvider;->activityActive:Z

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 57
    sget-object v0, Lcom/amazon/kindle/tutorial/ReaderTutorialProvider;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/kindle/tutorial/ReaderTutorialProvider;Ljava/lang/String;)I
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/amazon/kindle/tutorial/ReaderTutorialProvider;->incrementCount(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private evaluateIntValue(ILjava/lang/String;Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;)Z
    .locals 5

    .line 337
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v1, p1

    int-to-long v3, v0

    .line 338
    invoke-static {v1, v2, v3, v4, p3}, Lcom/amazon/kindle/tutorial/TutorialComparatorHelper;->compareLongs(JJLcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 340
    :catch_0
    sget-object p1, Lcom/amazon/kindle/tutorial/ReaderTutorialProvider;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Given data value is not a valid int: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method private evaluateLongValue(JLjava/lang/String;Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;)Z
    .locals 2

    .line 355
    :try_start_0
    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 356
    invoke-static {p1, p2, v0, v1, p4}, Lcom/amazon/kindle/tutorial/TutorialComparatorHelper;->compareLongs(JJLcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 358
    :catch_0
    sget-object p1, Lcom/amazon/kindle/tutorial/ReaderTutorialProvider;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Given data value is not a valid long: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method private evaluateWasOtherTutorialShown(Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;)Z
    .locals 1

    .line 312
    invoke-static {}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->getInstance()Lcom/amazon/kindle/tutorial/AndroidTutorialManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->isAlreadyShown(Ljava/lang/String;)Z

    move-result p1

    .line 313
    sget-object v0, Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;->NOT_EQUAL:Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;

    invoke-virtual {v0, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eq p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private evaluateWasOtherTutorialShownThisLifeCycle(Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;)Z
    .locals 1

    .line 324
    invoke-static {}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->getInstance()Lcom/amazon/kindle/tutorial/AndroidTutorialManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->wasShownThisLifeCycle(Ljava/lang/String;)Z

    move-result p1

    .line 325
    sget-object v0, Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;->NOT_EQUAL:Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;

    invoke-virtual {v0, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eq p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private getCount(Ljava/lang/String;)I
    .locals 3

    .line 455
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ReaderTutorialProvider;->sharedPreferences:Landroid/content/SharedPreferences;

    monitor-enter v0

    .line 456
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/tutorial/ReaderTutorialProvider;->sharedPreferences:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 457
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private getReaderValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 151
    sget-object v0, Lcom/amazon/kindle/tutorial/ReaderTutorialProvider;->readerManagedCounters:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    invoke-direct {p0, p1}, Lcom/amazon/kindle/tutorial/ReaderTutorialProvider;->getCount(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "BookFormat"

    .line 154
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 155
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 157
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 159
    invoke-static {p1}, Lcom/amazon/kindle/content/KindleContentFormat;->getFormat(Lcom/amazon/kindle/model/content/ILocalBookItem;)Lcom/amazon/kindle/content/KindleContentFormat;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private incrementCount(Ljava/lang/String;)I
    .locals 3

    .line 442
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ReaderTutorialProvider;->sharedPreferences:Landroid/content/SharedPreferences;

    monitor-enter v0

    .line 443
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/tutorial/ReaderTutorialProvider;->sharedPreferences:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 444
    invoke-direct {p0, p1, v1}, Lcom/amazon/kindle/tutorial/ReaderTutorialProvider;->setCount(Ljava/lang/String;I)V

    .line 445
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    .line 446
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private sendOrDeferEvent(Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;)V
    .locals 1

    .line 565
    iget-boolean v0, p0, Lcom/amazon/kindle/tutorial/ReaderTutorialProvider;->activityActive:Z

    if-eqz v0, :cond_0

    .line 566
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/krx/tutorial/TutorialProvider;->publishEvent(Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;)V

    goto :goto_0

    .line 568
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ReaderTutorialProvider;->deferForActivityEvents:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private setCount(Ljava/lang/String;I)V
    .locals 2

    .line 461
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ReaderTutorialProvider;->sharedPreferences:Landroid/content/SharedPreferences;

    monitor-enter v0

    .line 462
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/tutorial/ReaderTutorialProvider;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 463
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 464
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 465
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public evaluate(Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/krx/tutorial/conditions/InvalidComparisonTypeException;
        }
    .end annotation

    .line 180
    const-class v0, Lcom/amazon/kindle/tutorial/TTSTutorialCondition;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v4, 0x1

    .line 228
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object p3, v2, v4

    const-string v6, "Evaluating condition for key %s and value %s"

    .line 180
    invoke-static {v6, v2}, Lcom/amazon/kindle/log/Lazy;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/kindle/log/Lazy;

    .line 183
    invoke-interface {p1}, Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;->getEventData()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 184
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p2, v0, v3

    const-string v2, "Fetching key %s from event data."

    .line 185
    invoke-static {v2, v0}, Lcom/amazon/kindle/log/Lazy;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/kindle/log/Lazy;

    .line 186
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_c

    :cond_0
    const-string p1, "BooleanConstant"

    .line 187
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 189
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    goto/16 :goto_c

    :cond_1
    const-string p1, "OtherTutorialShown"

    .line 190
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 192
    invoke-direct {p0, p3, p4}, Lcom/amazon/kindle/tutorial/ReaderTutorialProvider;->evaluateWasOtherTutorialShown(Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;)Z

    move-result p1

    return p1

    :cond_2
    const-string p1, "OtherTutorialShownThisLifeCycle"

    .line 193
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 194
    invoke-direct {p0, p3, p4}, Lcom/amazon/kindle/tutorial/ReaderTutorialProvider;->evaluateWasOtherTutorialShownThisLifeCycle(Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;)Z

    move-result p1

    return p1

    :cond_3
    const-string p1, "ReaderPreviousUpdateVersion"

    .line 195
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 197
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAppSettingsController()Lcom/amazon/kcp/application/IAppSettingsController;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IAppSettingsController;->getPreviousVersion()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto/16 :goto_c

    :cond_4
    const-string p1, "TouchExplorationEnabled"

    .line 198
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 200
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto/16 :goto_c

    :cond_5
    const-string p1, "IsSeparatelyFontsDownloadEnabled"

    .line 201
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_8

    .line 203
    iget-object p1, p0, Lcom/amazon/kindle/tutorial/ReaderTutorialProvider;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v2

    :cond_6
    if-eqz v2, :cond_7

    .line 204
    invoke-interface {v2}, Lcom/amazon/kindle/krx/content/IBook;->getContentLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/font/FontUtils;->supportSeparatelyFontsDownload(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x1

    goto :goto_0

    :cond_7
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto/16 :goto_c

    :cond_8
    const-string p1, "fictionStatus"

    .line 205
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 206
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ReaderTutorialProvider;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    goto :goto_1

    :cond_9
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_a

    .line 207
    iget-object v2, p0, Lcom/amazon/kindle/tutorial/ReaderTutorialProvider;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object v2

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, p1}, Lcom/amazon/kindle/krx/library/ILibraryManager;->getAdditionalMetadataForBook(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_2
    move-object v5, p1

    goto/16 :goto_c

    :cond_a
    move-object v5, v2

    goto/16 :goto_c

    :cond_b
    const-string p1, "IsContinuousScroll"

    .line 208
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 209
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 210
    invoke-virtual {p1}, Lcom/amazon/kcp/application/UserSettingsController;->getContinuousScrollReflowableEnabled()Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_3

    :cond_c
    const/4 p1, 0x0

    :goto_3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto/16 :goto_c

    :cond_d
    const-string p1, "IsContinuousScrollSupported"

    .line 211
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 212
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 213
    invoke-static {p1}, Lcom/amazon/kindle/yj/ContinuousScrollUtils;->isContinuousScrollSupported(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_4

    :cond_e
    const/4 p1, 0x0

    :goto_4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto/16 :goto_c

    :cond_f
    const-string p1, "HasEverEnabledContinuousScroll"

    .line 214
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 215
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 216
    invoke-virtual {p1}, Lcom/amazon/kcp/application/UserSettingsController;->getHasContinuousScrollEverEnabled()Z

    move-result p1

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    goto :goto_5

    :cond_10
    const/4 p1, 0x0

    :goto_5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto/16 :goto_c

    :cond_11
    const-string p1, "IsComic"

    .line 217
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 218
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 219
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getContentClass()Lcom/amazon/kindle/model/content/ContentClass;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/model/content/ContentClass;->COMIC:Lcom/amazon/kindle/model/content/ContentClass;

    if-ne p1, v0, :cond_12

    const/4 p1, 0x1

    goto :goto_6

    :cond_12
    const/4 p1, 0x0

    :goto_6
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto/16 :goto_c

    :cond_13
    const-string p1, "IsContinuousScrollJITSuppressed"

    .line 220
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 221
    invoke-direct {p0, p1}, Lcom/amazon/kindle/tutorial/ReaderTutorialProvider;->getCount(Ljava/lang/String;)I

    move-result p1

    if-ne v4, p1, :cond_14

    const/4 p1, 0x1

    goto :goto_7

    :cond_14
    const/4 p1, 0x0

    :goto_7
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto/16 :goto_c

    :cond_15
    const-string p1, "IsTablet"

    .line 222
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 223
    iget-object p1, p0, Lcom/amazon/kindle/tutorial/ReaderTutorialProvider;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$bool;->is_tablet:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto/16 :goto_c

    :cond_16
    const-string p1, "IsGVN"

    .line 224
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 225
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 226
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->GuidedViewNative:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/model/content/ILocalBookItem;->hasFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;)Z

    move-result p1

    if-eqz p1, :cond_17

    const/4 p1, 0x1

    goto :goto_8

    :cond_17
    const/4 p1, 0x0

    :goto_8
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto/16 :goto_c

    :cond_18
    const-string p1, "NewToKindle"

    .line 227
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    goto/16 :goto_c

    :cond_19
    const-string p1, "IsFreshAppInstall"

    .line 229
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 230
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAppSettingsController()Lcom/amazon/kcp/application/IAppSettingsController;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IAppSettingsController;->isFreshAppInstall()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto/16 :goto_c

    :cond_1a
    const-string p1, "FtueLoadingScreenShown"

    .line 231
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 232
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/application/UserSettingsController;->getFTUELoadingScreenShown()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto/16 :goto_c

    :cond_1b
    const-string p1, "IsTtsAllowed"

    .line 233
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 234
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 235
    invoke-static {v0}, Lcom/amazon/discovery/Discoveries;->of(Ljava/lang/Class;)Lcom/amazon/discovery/Discoveries;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/Discoveries;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v5, p1

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/tutorial/TTSTutorialCondition;

    .line 236
    invoke-interface {p1}, Lcom/amazon/kindle/tutorial/TTSTutorialCondition;->isTtsAllowedForBook()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_9

    :cond_1c
    const-string p1, "IsTtsSettingEnabled"

    .line 238
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 240
    invoke-static {v0}, Lcom/amazon/discovery/Discoveries;->of(Ljava/lang/Class;)Lcom/amazon/discovery/Discoveries;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/discovery/Discoveries;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/tutorial/TTSTutorialCondition;

    .line 241
    invoke-interface {v0}, Lcom/amazon/kindle/tutorial/TTSTutorialCondition;->isTtsSettingEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_a

    :cond_1d
    const-string p1, "NewtronPhase1Enabled"

    .line 243
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 244
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto/16 :goto_c

    :cond_1e
    const-string p1, "IsTextbook"

    .line 245
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 246
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    .line 247
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 250
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v2

    :cond_1f
    if-eqz p1, :cond_20

    .line 253
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isTextbook()Z

    move-result p1

    if-nez p1, :cond_21

    :cond_20
    if-eqz v2, :cond_22

    .line 254
    invoke-interface {v2}, Lcom/amazon/kindle/krx/content/IBook;->getContentClass()Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/content/IBook$BookContentClass;->TEXTBOOK:Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    if-eq p1, v0, :cond_21

    const-string/jumbo p1, "textbook_type"

    .line 255
    invoke-interface {v2, p1}, Lcom/amazon/kindle/krx/content/IBook;->getExtendedMetadata(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_22

    :cond_21
    const/4 p1, 0x1

    goto :goto_b

    :cond_22
    const/4 p1, 0x0

    .line 253
    :goto_b
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_c

    :cond_23
    const-string p1, "HasKLOSidecar"

    .line 256
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24

    .line 257
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object p1

    .line 258
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->getCommandBarItemController()Lcom/amazon/android/widget/CommandBarItemController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/android/widget/CommandBarItemController;->isKLOCommandItemVisible()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_c

    :cond_24
    const-string p1, "IntendedAudience"

    .line 259
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 260
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    if-eqz p1, :cond_25

    .line 261
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getIntendedAudience()Lcom/amazon/kindle/model/content/IntendedAudience;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 262
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getIntendedAudience()Lcom/amazon/kindle/model/content/IntendedAudience;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    :cond_25
    const-string p1, "NONE"

    goto/16 :goto_2

    :cond_26
    new-array p1, v4, [Ljava/lang/Object;

    aput-object p2, p1, v3

    const-string v0, "Fetching key %s from reader provider values."

    .line 269
    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Lazy;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/kindle/log/Lazy;

    .line 270
    invoke-direct {p0, p2}, Lcom/amazon/kindle/tutorial/ReaderTutorialProvider;->getReaderValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    :cond_27
    :goto_c
    if-eqz v5, :cond_2c

    .line 274
    instance-of p1, v5, Ljava/lang/String;

    if-eqz p1, :cond_28

    .line 275
    check-cast v5, Ljava/lang/String;

    new-array p1, v1, [Ljava/lang/Object;

    aput-object p2, p1, v3

    aput-object v5, p1, v4

    const-string p2, "Key %s has string value %s"

    .line 276
    invoke-static {p2, p1}, Lcom/amazon/kindle/log/Lazy;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/kindle/log/Lazy;

    .line 278
    invoke-static {v5, p3, p4}, Lcom/amazon/kindle/tutorial/TutorialComparatorHelper;->compareStrings(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;)Z

    move-result p1

    return p1

    .line 279
    :cond_28
    instance-of p1, v5, Ljava/lang/Integer;

    if-eqz p1, :cond_29

    .line 280
    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result p1

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p2, v0, v3

    .line 281
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v4

    const-string p2, "Key %s has int value %d"

    invoke-static {p2, v0}, Lcom/amazon/kindle/log/Lazy;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/kindle/log/Lazy;

    .line 283
    invoke-direct {p0, p1, p3, p4}, Lcom/amazon/kindle/tutorial/ReaderTutorialProvider;->evaluateIntValue(ILjava/lang/String;Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;)Z

    move-result p1

    return p1

    .line 284
    :cond_29
    instance-of p1, v5, Ljava/lang/Boolean;

    if-eqz p1, :cond_2a

    .line 285
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 286
    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p3

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p2, v0, v3

    .line 287
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v0, v4

    const-string p2, "Key %s has boolean value %b"

    invoke-static {p2, v0}, Lcom/amazon/kindle/log/Lazy;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/kindle/log/Lazy;

    .line 289
    invoke-static {p1, p3, p4}, Lcom/amazon/kindle/tutorial/TutorialComparatorHelper;->compareBooleans(ZZLcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;)Z

    move-result p1

    return p1

    .line 290
    :cond_2a
    instance-of p1, v5, Ljava/lang/Long;

    if-eqz p1, :cond_2b

    .line 291
    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    new-array p1, v1, [Ljava/lang/Object;

    aput-object p2, p1, v3

    .line 292
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, p1, v4

    const-string p2, "Key %s has long value %d"

    invoke-static {p2, p1}, Lcom/amazon/kindle/log/Lazy;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/kindle/log/Lazy;

    .line 294
    invoke-direct {p0, v5, v6, p3, p4}, Lcom/amazon/kindle/tutorial/ReaderTutorialProvider;->evaluateLongValue(JLjava/lang/String;Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;)Z

    move-result p1

    return p1

    :cond_2b
    new-array p1, v1, [Ljava/lang/Object;

    aput-object p2, p1, v3

    .line 296
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, v4

    const-string p3, "Value for %s has unsupported type %s."

    invoke-static {p3, p1}, Lcom/amazon/kindle/log/Lazy;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/kindle/log/Lazy;

    :cond_2c
    new-array p1, v4, [Ljava/lang/Object;

    aput-object p2, p1, v3

    const-string p2, "Value for %s not found. Returning false."

    .line 300
    invoke-static {p2, p1}, Lcom/amazon/kindle/log/Lazy;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/kindle/log/Lazy;

    return v3
.end method

.method public getEventHandler()Lcom/amazon/kindle/tutorial/IReaderEventHandler;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ReaderTutorialProvider;->eventHandler:Lcom/amazon/kindle/tutorial/IReaderEventHandler;

    return-object v0
.end method

.method public handleAction(Ljava/lang/String;)V
    .locals 3

    .line 376
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "OpenChrome"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_1
    const-string v0, "OpenAaMenu"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_2
    const-string v0, "TurnOnContinuousScrolling"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_3
    const-string v0, "TransitionToFullPage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_4
    const-string v0, "TransitionToBirdsEye"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_5
    const-string v0, "TransitionToPageFlip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_6
    const-string v0, "SuppressContinuousScrollJIT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_7
    const-string v0, "SwitchReadingMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_8
    const-string v0, "CloseCurrentBook"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 424
    :pswitch_0
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result v0

    if-nez v0, :cond_1

    .line 425
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 427
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->onReadingModeSwitchPressed()V

    goto/16 :goto_2

    .line 416
    :pswitch_1
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result p1

    if-nez p1, :cond_2

    .line 417
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 419
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->handleLeaveBookButton()V

    goto/16 :goto_3

    .line 408
    :pswitch_2
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result p1

    if-nez p1, :cond_2

    .line 409
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 411
    invoke-virtual {p1, v0}, Lcom/amazon/kcp/reader/ReaderActivity;->onViewOptionsPressed(Landroid/view/View;)V

    goto :goto_3

    .line 402
    :pswitch_3
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 404
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->showChrome()V

    goto :goto_3

    .line 395
    :pswitch_4
    iget-object p1, p0, Lcom/amazon/kindle/tutorial/ReaderTutorialProvider;->sharedPreferences:Landroid/content/SharedPreferences;

    monitor-enter p1

    .line 396
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ReaderTutorialProvider;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "IsContinuousScrollJITSuppressed"

    .line 397
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 398
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 399
    monitor-exit p1

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 387
    :pswitch_5
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 389
    invoke-static {}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->getInstance()Lcom/amazon/kindle/tutorial/AndroidTutorialManager;

    move-result-object v0

    iput-boolean v2, v0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->showChromeOnRestart:Z

    .line 390
    sget-object v0, Lcom/amazon/kindle/tutorial/ReaderTutorialProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setContinuousScrollReflowableEnabled called in ReaderTutorialProvider with value: true"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    invoke-virtual {p1, v2}, Lcom/amazon/kcp/application/UserSettingsController;->setContinuousScrollReflowableEnabled(Z)V

    goto :goto_3

    .line 384
    :pswitch_6
    invoke-static {}, Lcom/amazon/kindle/nln/NlnTransitionHelper;->transitionToBirdsEye()V

    goto :goto_3

    .line 381
    :pswitch_7
    invoke-static {}, Lcom/amazon/kindle/nln/NlnTransitionHelper;->transitionToPageFlip()V

    goto :goto_3

    .line 378
    :pswitch_8
    invoke-static {}, Lcom/amazon/kindle/nln/NlnTransitionHelper;->transitionToFullPage()V

    goto :goto_3

    .line 431
    :cond_1
    :goto_2
    sget-object v0, Lcom/amazon/kindle/tutorial/ReaderTutorialProvider;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string p1, "Action %s specified in tutorial config but not implemented."

    invoke-static {p1, v2}, Lcom/amazon/kindle/log/Lazy;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/kindle/log/Lazy;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Lcom/amazon/kindle/log/ILazy;)V

    :cond_2
    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x69edd4f6 -> :sswitch_8
        -0x25b841a5 -> :sswitch_7
        -0x21532e5c -> :sswitch_6
        0x101f568c -> :sswitch_5
        0x1bcbd7e7 -> :sswitch_4
        0x2c3f78ae -> :sswitch_3
        0x56d916aa -> :sswitch_2
        0x6bc514a9 -> :sswitch_1
        0x6fa26184 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onAccessibilityChangedEvent(Lcom/amazon/kindle/event/AccessibilityStateChangeEvent;)V
    .locals 5
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 578
    iget-boolean p1, p1, Lcom/amazon/kindle/event/AccessibilityStateChangeEvent;->accessibilityOn:Z

    const-string v0, "AccessibilityStateChanged"

    if-eqz p1, :cond_2

    .line 579
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 580
    invoke-virtual {p1}, Lcom/amazon/kcp/application/UserSettingsController;->getContinuousScrollReflowableEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 581
    :goto_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 582
    invoke-static {v4}, Lcom/amazon/kindle/yj/ContinuousScrollUtils;->isContinuousScrollSupported(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 584
    :goto_1
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result v2

    .line 586
    new-instance v4, Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;

    invoke-direct {v4, v0}, Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "IsContinuousScroll"

    .line 587
    invoke-virtual {v4, v0, v3}, Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;->withBoolean(Ljava/lang/String;Z)Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;

    move-result-object v0

    const-string v4, "IsContinuousScrollSupported"

    .line 588
    invoke-virtual {v0, v4, v1}, Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;->withBoolean(Ljava/lang/String;Z)Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;

    move-result-object v0

    const-string v4, "TouchExplorationEnabled"

    .line 589
    invoke-virtual {v0, v4, v2}, Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;->withBoolean(Ljava/lang/String;Z)Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;

    move-result-object v0

    .line 590
    invoke-virtual {v0}, Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;->build()Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;

    move-result-object v0

    .line 591
    invoke-direct {p0, v0}, Lcom/amazon/kindle/tutorial/ReaderTutorialProvider;->sendOrDeferEvent(Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;)V

    if-eqz v3, :cond_3

    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    .line 596
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 598
    new-instance v1, Lcom/amazon/kindle/tutorial/ReaderTutorialProvider$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/tutorial/ReaderTutorialProvider$1;-><init>(Lcom/amazon/kindle/tutorial/ReaderTutorialProvider;Lcom/amazon/kcp/application/UserSettingsController;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 607
    :cond_2
    new-instance p1, Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;

    invoke-direct {p1, v0}, Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;->build()Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/kindle/tutorial/ReaderTutorialProvider;->sendOrDeferEvent(Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public onActivityLifecycleEvent(Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 614
    sget-object v0, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;->RESUME:Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent;->getActivityLifecycleType()Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;

    move-result-object v1

    if-ne v0, v1, :cond_1

    const/4 p1, 0x1

    .line 615
    iput-boolean p1, p0, Lcom/amazon/kindle/tutorial/ReaderTutorialProvider;->activityActive:Z

    .line 616
    iget-object p1, p0, Lcom/amazon/kindle/tutorial/ReaderTutorialProvider;->deferForActivityEvents:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;

    .line 617
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/krx/tutorial/TutorialProvider;->publishEvent(Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;)V

    goto :goto_0

    .line 619
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/tutorial/ReaderTutorialProvider;->deferForActivityEvents:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->clear()V

    goto :goto_1

    .line 620
    :cond_1
    sget-object v0, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;->PAUSE:Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent;->getActivityLifecycleType()Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;

    move-result-object p1

    if-ne v0, p1, :cond_2

    const/4 p1, 0x0

    .line 621
    iput-boolean p1, p0, Lcom/amazon/kindle/tutorial/ReaderTutorialProvider;->activityActive:Z

    :cond_2
    :goto_1
    return-void
.end method

.method public onTutorialStatus(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;Lcom/amazon/kindle/krx/tutorial/TutorialStatus;)V
    .locals 4

    .line 366
    sget-object v0, Lcom/amazon/kindle/tutorial/ReaderTutorialProvider;->TAG:Ljava/lang/String;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 367
    invoke-virtual {p4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-interface {p3}, Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;->getName()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x3

    aput-object p2, v1, p3

    const-string p2, "Tutorial %s status callback: %s (%s / %s)"

    .line 366
    invoke-static {p2, v1}, Lcom/amazon/kindle/log/Lazy;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/kindle/log/Lazy;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Lcom/amazon/kindle/log/ILazy;)V

    .line 369
    sget-object p2, Lcom/amazon/kindle/krx/tutorial/TutorialStatus;->SHOWN:Lcom/amazon/kindle/krx/tutorial/TutorialStatus;

    invoke-virtual {p4, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 370
    invoke-static {p1}, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper;->handleTutorialShownEvent(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onViewOptionsEvent(Lcom/amazon/kindle/krx/events/UIEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 552
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/UIEvent;->getElement()Lcom/amazon/kindle/krx/events/UIEvent$UIElement;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/events/UIEvent$UIElement;->VIEW_OPTIONS:Lcom/amazon/kindle/krx/events/UIEvent$UIElement;

    if-ne v0, v1, :cond_0

    .line 553
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/UIEvent;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "AaMenuOpenCount"

    .line 554
    invoke-direct {p0, p1}, Lcom/amazon/kindle/tutorial/ReaderTutorialProvider;->incrementCount(Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method resetAllCounters()V
    .locals 3

    .line 626
    sget-object v0, Lcom/amazon/kindle/tutorial/ReaderTutorialProvider;->readerManagedCounters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    .line 627
    invoke-direct {p0, v1, v2}, Lcom/amazon/kindle/tutorial/ReaderTutorialProvider;->setCount(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    return-void
.end method
