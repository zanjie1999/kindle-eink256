.class public Lcom/amazon/android/docviewer/selection/SelectionTutorialProvider;
.super Lcom/amazon/kindle/krx/tutorial/TutorialProvider;
.source "SelectionTutorialProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/docviewer/selection/SelectionTutorialProvider$QuickHighlightEvent;
    }
.end annotation


# static fields
.field private static final ACTION_GOT_IT_ANIMATED_TUTORIAL:Ljava/lang/String; = "animatedTutorial"

.field private static final ACTION_SHOW_SELECTION:Ljava/lang/String; = "ShowSelection"

.field private static final DAYS_SINCE_HIGHLIGHT_TUTORIAL_SHOWN:Ljava/lang/String; = "DaysSinceHighlightTutorialShown"

.field private static final HAS_NOT_HAPPENED_BEFORE:J = 0x0L

.field private static final IS_HIGHLIGHT_SUPPORTED:Ljava/lang/String; = "IsHighlightSupported"

.field private static final MILLI_SECONDS_FROM_LAST_QH:Ljava/lang/String; = "MillisecondsFromLastQH"

.field private static final POST_QH_EXP_HIGHLIGHT_METRIC:Ljava/lang/String; = "postQHExpHighlightMetric"

.field private static final QH_DATA_COLOR:Ljava/lang/String; = "Color"

.field private static final QH_EXISTING_HIGHLIGHTS:Ljava/lang/String; = "ExistingHighlights"

.field private static final QUICK_HIGHLIGHT:Ljava/lang/String; = "QuickHighlight"

.field private static final QUICK_HIGHLIGHT_CREATED_AFTER_TUTORIAL_SHOWN_METRIC:Ljava/lang/String; = "QuickHighlight_Created_After_Tutorial_Shown"

.field private static final QUICK_HIGHLIGHT_CREATED_POST_30_DAYS_TUTORIAL_SHOWN_METRIC:Ljava/lang/String; = "QuickHighlight_Created_Post_30_Days_Tutorial_shown"

.field private static final QUICK_HIGHLIGHT_CREATED_POST_60_DAYS_TUTORIAL_SHOWN_METRIC:Ljava/lang/String; = "QuickHighlight_Created_Post_60_Days_Tutorial_shown"

.field private static final QUICK_HIGHLIGHT_CREATED_POST_90_DAYS_TUTORIAL_SHOWN_METRIC:Ljava/lang/String; = "QuickHighlight_Created_Post_90_Days_Tutorial_shown"

.field private static final QUICK_HIGHLIGHT_CREATED_WITH_NO_TUTORIAL_SHOWN_METRIC:Ljava/lang/String; = "QuickHighlight_Created_Open_With_No_Tutorial_Shown"

.field private static final QUICK_HIGHLIGHT_TUTORIAL_ENABLED:Ljava/lang/String; = "QHTutorialEnabled"

.field private static final QUICK_HIGHLIGHT_TUTORIAL_METRICS:Ljava/lang/String; = "QuickHighlightTutorialMetrics"

.field private static final QUICK_HIGHLIGHT_TUTORIAL_READING_STREAMS:Ljava/lang/String; = "QuickHighlightTutorialShown"

.field private static final READER_TOPIC:Ljava/lang/String; = "Reader"

.field private static final SELECTION_BUTTONS_ON_QH_DISPLAYED:Ljava/lang/String; = "SelectionButtonsOnQHDisplayed"

.field private static final SELECTION_TUTORIAL_SHARED_PREFERENCES:Ljava/lang/String; = "selectionTutorialSharedPreferences"

.field private static final SEVEN_DAYS_MILLI_SECONDS:J = 0x240c8400L

.field private static final TAG:Ljava/lang/String;

.field private static final TIME_BETWEEN_TUTORIAL_SHOWN_AND_QUICK_HIGHLIGHT_CREATED:Ljava/lang/String; = "Time_Between_Tutorial_Shown_And_QuickHighlight_Created"

.field private static final TOPIC:Ljava/lang/String; = "Selection"

.field private static final TUTORIAL_OPEN_TIMER:Ljava/lang/String; = "TutorialOpenTimer"


# instance fields
.field private context:Landroid/content/Context;

.field private eventSettingsController:Lcom/amazon/kcp/application/EventSettingsController;

.field private quickHighlightEvent:Lcom/amazon/android/docviewer/selection/SelectionTutorialProvider$QuickHighlightEvent;

.field private final statusListener:Lcom/amazon/kindle/krx/tutorial/ITutorialStatusListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-class v0, Lcom/amazon/android/docviewer/selection/SelectionTutorialProvider;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/docviewer/selection/SelectionTutorialProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const-string v0, "Selection"

    .line 112
    invoke-direct {p0, v0}, Lcom/amazon/kindle/krx/tutorial/TutorialProvider;-><init>(Ljava/lang/String;)V

    .line 87
    new-instance v1, Lcom/amazon/android/docviewer/selection/SelectionTutorialProvider$1;

    invoke-direct {v1, p0}, Lcom/amazon/android/docviewer/selection/SelectionTutorialProvider$1;-><init>(Lcom/amazon/android/docviewer/selection/SelectionTutorialProvider;)V

    iput-object v1, p0, Lcom/amazon/android/docviewer/selection/SelectionTutorialProvider;->statusListener:Lcom/amazon/kindle/krx/tutorial/ITutorialStatusListener;

    .line 113
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 114
    invoke-static {}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->getInstance()Lcom/amazon/kindle/tutorial/AndroidTutorialManager;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/android/docviewer/selection/SelectionTutorialProvider;->statusListener:Lcom/amazon/kindle/krx/tutorial/ITutorialStatusListener;

    invoke-virtual {v1, v0, v2}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->addStatusListener(Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/ITutorialStatusListener;)V

    .line 116
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/docviewer/selection/SelectionTutorialProvider;->context:Landroid/content/Context;

    .line 117
    invoke-static {v0}, Lcom/amazon/kcp/application/EventSettingsController;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/EventSettingsController;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/docviewer/selection/SelectionTutorialProvider;->eventSettingsController:Lcom/amazon/kcp/application/EventSettingsController;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/android/docviewer/selection/SelectionTutorialProvider;)Lcom/amazon/kcp/application/EventSettingsController;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/amazon/android/docviewer/selection/SelectionTutorialProvider;->eventSettingsController:Lcom/amazon/kcp/application/EventSettingsController;

    return-object p0
.end method

.method private canHighlightInBook(Ljava/lang/String;)Z
    .locals 2

    .line 175
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 177
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getObjectSelectionModel()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    move-result-object v0

    .line 178
    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getObjectSelectionController()Lcom/amazon/android/docviewer/selection/IObjectSelectionController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionController;->canHighlight()Z

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private compareColors(Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/krx/tutorial/conditions/InvalidComparisonTypeException;
        }
    .end annotation

    .line 221
    invoke-interface {p1}, Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;->getEventData()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string v0, "Color"

    const-string v1, "WyattEarple"

    .line 226
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 227
    sget-object v0, Lcom/amazon/android/docviewer/selection/SelectionTutorialProvider$2;->$SwitchMap$com$amazon$kindle$krx$tutorial$conditions$IConditionEvaluator$ComparisonType:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 231
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    .line 233
    :cond_1
    new-instance p1, Lcom/amazon/kindle/krx/tutorial/conditions/InvalidComparisonTypeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Comparison type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " not supported for event string value "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/amazon/kindle/krx/tutorial/conditions/InvalidComparisonTypeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 229
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private compareEventDate(JILcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/4 p1, 0x1

    return p1

    .line 405
    :cond_0
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    neg-int p3, p3

    .line 406
    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->add(II)V

    .line 407
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p3

    .line 408
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 409
    invoke-static {v0, p3, p4}, Lcom/amazon/kindle/tutorial/TutorialComparatorHelper;->compareDates(Ljava/util/Date;Ljava/util/Date;Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;)Z

    move-result p1

    return p1
.end method

.method private compareExistingHighlights(Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/krx/tutorial/conditions/InvalidComparisonTypeException;
        }
    .end annotation

    .line 195
    invoke-interface {p1}, Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;->getEventData()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "ExistingHighlights"

    .line 200
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 203
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    invoke-static {p1, p2, p3}, Lcom/amazon/kindle/tutorial/TutorialComparatorHelper;->compareIntegers(IILcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;)Z

    move-result p1

    return p1

    .line 205
    :catch_0
    sget-object p1, Lcom/amazon/android/docviewer/selection/SelectionTutorialProvider;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot format existing highlight expected value: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private hasQuickHighlightCreatedAfterSeeingTutorialIn(J)Z
    .locals 5

    .line 337
    invoke-static {}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->getInstance()Lcom/amazon/kindle/tutorial/AndroidTutorialManager;

    move-result-object v0

    const-string v1, "74fa8b1c22bbbacc9a40a737900ae487"

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->isAlreadyShown(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/SelectionTutorialProvider;->eventSettingsController:Lcom/amazon/kcp/application/EventSettingsController;

    .line 338
    invoke-virtual {v0}, Lcom/amazon/kcp/application/EventSettingsController;->getFirstHighlightCreatedAfterTutorialTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 339
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/SelectionTutorialProvider;->eventSettingsController:Lcom/amazon/kcp/application/EventSettingsController;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/EventSettingsController;->getQuickHighlightTutorialShownTime()J

    move-result-wide v0

    .line 340
    iget-object v2, p0, Lcom/amazon/android/docviewer/selection/SelectionTutorialProvider;->eventSettingsController:Lcom/amazon/kcp/application/EventSettingsController;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/EventSettingsController;->getFirstHighlightCreatedAfterTutorialTime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    cmp-long v0, v2, p1

    if-gez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isHighlightOlderThan(Ljava/lang/String;)Z
    .locals 4

    .line 278
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/SelectionTutorialProvider;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/kcp/application/EventSettingsController;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/EventSettingsController;

    move-result-object v0

    .line 279
    sget-object v1, Lcom/amazon/kcp/application/EventSettingsController$EventName;->LAST_HIGHLIGHT_CREATED_EVENT:Lcom/amazon/kcp/application/EventSettingsController$EventName;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/amazon/kcp/application/EventSettingsController;->isRecordedEventOlderThan(Lcom/amazon/kcp/application/EventSettingsController$EventName;Ljava/lang/Long;)Z

    move-result p1

    return p1
.end method

.method private isTutorialActivatedCustomer()Z
    .locals 2

    const-wide/32 v0, 0x240c8400

    .line 385
    invoke-direct {p0, v0, v1}, Lcom/amazon/android/docviewer/selection/SelectionTutorialProvider;->hasQuickHighlightCreatedAfterSeeingTutorialIn(J)Z

    move-result v0

    return v0
.end method

.method private recordHighlightRetentionMetric()V
    .locals 5

    .line 368
    invoke-direct {p0}, Lcom/amazon/android/docviewer/selection/SelectionTutorialProvider;->isTutorialActivatedCustomer()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 369
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/SelectionTutorialProvider;->eventSettingsController:Lcom/amazon/kcp/application/EventSettingsController;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/EventSettingsController;->getQuickHighlightTutorialShownTime()J

    move-result-wide v0

    const/16 v2, 0x5a

    .line 370
    sget-object v3, Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;->GREATER_THAN:Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/amazon/android/docviewer/selection/SelectionTutorialProvider;->compareEventDate(JILcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;)Z

    move-result v2

    const-string v3, "QuickHighlightTutorialMetrics"

    if-eqz v2, :cond_0

    .line 371
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "QuickHighlight_Created_Post_90_Days_Tutorial_shown"

    invoke-virtual {v0, v1, v3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x3c

    .line 372
    sget-object v4, Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;->GREATER_THAN:Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;

    invoke-direct {p0, v0, v1, v2, v4}, Lcom/amazon/android/docviewer/selection/SelectionTutorialProvider;->compareEventDate(JILcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 373
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "QuickHighlight_Created_Post_60_Days_Tutorial_shown"

    invoke-virtual {v0, v1, v3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 v2, 0x1e

    .line 374
    sget-object v4, Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;->GREATER_THAN:Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;

    invoke-direct {p0, v0, v1, v2, v4}, Lcom/amazon/android/docviewer/selection/SelectionTutorialProvider;->compareEventDate(JILcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 375
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "QuickHighlight_Created_Post_30_Days_Tutorial_shown"

    invoke-virtual {v0, v1, v3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static declared-synchronized recordQuickHighlightExperimentMetrics()V
    .locals 5

    const-class v0, Lcom/amazon/android/docviewer/selection/SelectionTutorialProvider;

    monitor-enter v0

    .line 287
    :try_start_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "selectionTutorialSharedPreferences"

    const/4 v3, 0x0

    .line 288
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "hasAlreadyRecordedQHExpMetricKey"

    .line 290
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 291
    invoke-static {}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->getInstance()Lcom/amazon/kindle/tutorial/AndroidTutorialManager;

    move-result-object v2

    const-string v3, "74fa8b1c22bbbacc9a40a737900ae487"

    invoke-virtual {v2, v3}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->isAlreadyShown(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 293
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v2

    const-string v3, "Animated_Tutorial"

    const-string/jumbo v4, "postQHExpHighlightMetric"

    invoke-virtual {v2, v3, v4}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "hasAlreadyRecordedQHExpMetricKey"

    const/4 v3, 0x1

    .line 297
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 298
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private recordQuickHighlightMetric()V
    .locals 6

    .line 307
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/SelectionTutorialProvider;->eventSettingsController:Lcom/amazon/kcp/application/EventSettingsController;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/EventSettingsController;->getQuickHighlightTutorialShownTime()J

    move-result-wide v0

    const-string v2, "QuickHighlightTutorialMetrics"

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-eqz v5, :cond_0

    const-wide/32 v0, 0x240c8400

    .line 311
    invoke-direct {p0, v0, v1}, Lcom/amazon/android/docviewer/selection/SelectionTutorialProvider;->hasQuickHighlightCreatedAfterSeeingTutorialIn(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "QuickHighlight_Created_After_Tutorial_Shown"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 315
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "QuickHighlight_Created_Open_With_No_Tutorial_Shown"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private recordTimeBetweenTutorialShownAndQuickHighlightCreated()V
    .locals 6

    .line 353
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/SelectionTutorialProvider;->eventSettingsController:Lcom/amazon/kcp/application/EventSettingsController;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/EventSettingsController;->getQuickHighlightTutorialShownTime()J

    move-result-wide v0

    .line 354
    iget-object v2, p0, Lcom/amazon/android/docviewer/selection/SelectionTutorialProvider;->eventSettingsController:Lcom/amazon/kcp/application/EventSettingsController;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/EventSettingsController;->getIsRecordedTimeBetweenTutorialAndQuickHighlight()Z

    move-result v2

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-eqz v5, :cond_0

    if-nez v2, :cond_0

    .line 357
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 358
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "Time_Between_Tutorial_Shown_And_QuickHighlight_Created"

    const-string v4, "QuickHighlightTutorialMetrics"

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportTimerMetric(Ljava/lang/String;Ljava/lang/String;J)V

    .line 359
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/SelectionTutorialProvider;->eventSettingsController:Lcom/amazon/kcp/application/EventSettingsController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/EventSettingsController;->setIsRecordedTimeBetweenTutorialAndQuickHighlight(Z)V

    :cond_0
    return-void
.end method

.method private saveTimestampIfFirstQuickHighlightEventAfterSeeingTutorial()V
    .locals 5

    .line 323
    invoke-static {}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->getInstance()Lcom/amazon/kindle/tutorial/AndroidTutorialManager;

    move-result-object v0

    const-string v1, "74fa8b1c22bbbacc9a40a737900ae487"

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->isAlreadyShown(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/SelectionTutorialProvider;->eventSettingsController:Lcom/amazon/kcp/application/EventSettingsController;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/EventSettingsController;->getFirstHighlightCreatedAfterTutorialTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 325
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/SelectionTutorialProvider;->eventSettingsController:Lcom/amazon/kcp/application/EventSettingsController;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/EventSettingsController;->setFirstHighlightCreatedAfterTutorialTime(J)V

    :cond_0
    return-void
.end method

.method private showSelectionQuickHighlight()V
    .locals 3

    .line 161
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v1, p0, Lcom/amazon/android/docviewer/selection/SelectionTutorialProvider;->quickHighlightEvent:Lcom/amazon/android/docviewer/selection/SelectionTutorialProvider$QuickHighlightEvent;

    if-eqz v1, :cond_0

    .line 163
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getObjectSelectionModel()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    move-result-object v0

    .line 164
    iget-object v1, p0, Lcom/amazon/android/docviewer/selection/SelectionTutorialProvider;->quickHighlightEvent:Lcom/amazon/android/docviewer/selection/SelectionTutorialProvider$QuickHighlightEvent;

    iget-object v1, v1, Lcom/amazon/android/docviewer/selection/SelectionTutorialProvider$QuickHighlightEvent;->annotation:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->setSelectedHighlight(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Z)V

    const/4 v0, 0x0

    .line 165
    iput-object v0, p0, Lcom/amazon/android/docviewer/selection/SelectionTutorialProvider;->quickHighlightEvent:Lcom/amazon/android/docviewer/selection/SelectionTutorialProvider$QuickHighlightEvent;

    :cond_0
    return-void
.end method


# virtual methods
.method public evaluate(Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/krx/tutorial/conditions/InvalidComparisonTypeException;
        }
    .end annotation

    .line 137
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "DaysSinceHighlightTutorialShown"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x6

    goto :goto_1

    :sswitch_1
    const-string v0, "SelectionButtonsOnQHDisplayed"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x5

    goto :goto_1

    :sswitch_2
    const-string v0, "Color"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_1

    :sswitch_3
    const-string v0, "MillisecondsFromLastQH"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x3

    goto :goto_1

    :sswitch_4
    const-string v0, "IsHighlightSupported"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    goto :goto_1

    :sswitch_5
    const-string v0, "ExistingHighlights"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_1

    :sswitch_6
    const-string v0, "QHTutorialEnabled"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x4

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p2, -0x1

    :goto_1
    packed-switch p2, :pswitch_data_0

    return v2

    .line 151
    :pswitch_0
    iget-object p1, p0, Lcom/amazon/android/docviewer/selection/SelectionTutorialProvider;->eventSettingsController:Lcom/amazon/kcp/application/EventSettingsController;

    invoke-virtual {p1}, Lcom/amazon/kcp/application/EventSettingsController;->getQuickHighlightTutorialShownTime()J

    move-result-wide p1

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/android/docviewer/selection/SelectionTutorialProvider;->compareEventDate(JILcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;)Z

    move-result p1

    return p1

    .line 149
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/kcp/application/UserSettingsController;->shouldDisplaySelectionButtonsOnQH()Z

    move-result p2

    if-ne p1, p2, :cond_1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    :goto_2
    return v1

    .line 147
    :pswitch_2
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->isHighlightTutorialEnabled()Z

    move-result p2

    if-ne p1, p2, :cond_2

    goto :goto_3

    :cond_2
    const/4 v1, 0x0

    :goto_3
    return v1

    .line 145
    :pswitch_3
    invoke-direct {p0, p3}, Lcom/amazon/android/docviewer/selection/SelectionTutorialProvider;->isHighlightOlderThan(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 143
    :pswitch_4
    invoke-direct {p0, p3}, Lcom/amazon/android/docviewer/selection/SelectionTutorialProvider;->canHighlightInBook(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 141
    :pswitch_5
    invoke-direct {p0, p1, p3, p4}, Lcom/amazon/android/docviewer/selection/SelectionTutorialProvider;->compareExistingHighlights(Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;)Z

    move-result p1

    return p1

    .line 139
    :pswitch_6
    invoke-direct {p0, p1, p3, p4}, Lcom/amazon/android/docviewer/selection/SelectionTutorialProvider;->compareColors(Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;)Z

    move-result p1

    return p1

    :sswitch_data_0
    .sparse-switch
        -0x654c9114 -> :sswitch_6
        -0x63f559b6 -> :sswitch_5
        -0x138cc6bc -> :sswitch_4
        -0xe4a00b7 -> :sswitch_3
        0x3e43f43 -> :sswitch_2
        0x428f9ed6 -> :sswitch_1
        0x554344e2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleAction(Ljava/lang/String;)V
    .locals 3

    .line 122
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x5ce20d11

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x3536621

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "animatedTutorial"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "ShowSelection"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_3

    .line 130
    sget-object v0, Lcom/amazon/android/docviewer/selection/SelectionTutorialProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Detected invalid action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 127
    :cond_3
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    const-string v0, "Animated"

    const-string v1, "QHTutorial"

    const-string v2, "TutorialOpenTimer"

    invoke-virtual {p1, v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->stopMetricTimerIfExists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 124
    :cond_4
    invoke-direct {p0}, Lcom/amazon/android/docviewer/selection/SelectionTutorialProvider;->showSelectionQuickHighlight()V

    :goto_2
    return-void
.end method

.method public onQuickHighlightEvent(Lcom/amazon/android/docviewer/selection/SelectionTutorialProvider$QuickHighlightEvent;)V
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 239
    new-instance v0, Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;

    const-string v1, "QuickHighlight"

    invoke-direct {v0, v1}, Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/amazon/android/docviewer/selection/SelectionTutorialProvider$QuickHighlightEvent;->color:Ljava/lang/String;

    const-string v2, "Color"

    .line 240
    invoke-virtual {v0, v2, v1}, Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;->withString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;

    move-result-object v0

    iget v1, p1, Lcom/amazon/android/docviewer/selection/SelectionTutorialProvider$QuickHighlightEvent;->totalAnnotations:I

    const-string v2, "ExistingHighlights"

    .line 241
    invoke-virtual {v0, v2, v1}, Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;->withInt(Ljava/lang/String;I)Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;

    move-result-object v0

    .line 242
    invoke-virtual {v0}, Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;->build()Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;

    move-result-object v0

    .line 243
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/krx/tutorial/TutorialProvider;->publishEvent(Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;)V

    .line 244
    iput-object p1, p0, Lcom/amazon/android/docviewer/selection/SelectionTutorialProvider;->quickHighlightEvent:Lcom/amazon/android/docviewer/selection/SelectionTutorialProvider$QuickHighlightEvent;

    .line 246
    invoke-direct {p0}, Lcom/amazon/android/docviewer/selection/SelectionTutorialProvider;->recordQuickHighlightMetric()V

    .line 247
    invoke-direct {p0}, Lcom/amazon/android/docviewer/selection/SelectionTutorialProvider;->recordTimeBetweenTutorialShownAndQuickHighlightCreated()V

    .line 248
    invoke-direct {p0}, Lcom/amazon/android/docviewer/selection/SelectionTutorialProvider;->recordHighlightRetentionMetric()V

    .line 249
    invoke-direct {p0}, Lcom/amazon/android/docviewer/selection/SelectionTutorialProvider;->saveTimestampIfFirstQuickHighlightEventAfterSeeingTutorial()V

    return-void
.end method
