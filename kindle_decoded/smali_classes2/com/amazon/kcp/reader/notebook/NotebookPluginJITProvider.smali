.class public Lcom/amazon/kcp/reader/notebook/NotebookPluginJITProvider;
.super Lcom/amazon/kindle/krx/tutorial/TutorialProvider;
.source "NotebookPluginJITProvider.java"

# interfaces
.implements Lcom/amazon/notebook/module/INotebookPluginEventsListener;


# static fields
.field private static final DAYS_SINCE_EXPORT_TO_FLASHCARD_CLICKED_KEY:Ljava/lang/String; = "DaysSinceExportToFlashcardClicked"

.field private static final DAYS_SINCE_LAST_CREATED_HIGHLIGHT:Ljava/lang/String; = "DaysSinceLastCreatedHighlight"

.field private static final DAYS_SINCE_LAST_JIT_SHOWED_KEY:Ljava/lang/String; = "DaysSinceLastJitShowed"

.field private static final DAYS_SINCE_LAST_NOTEBOOK_OPEN:Ljava/lang/String; = "DaysSinceLastNotebookOpen"

.field private static final DAYS_SINCE_LAST_NOTEBOOK_TUTORIAL_SHOWN:Ljava/lang/String; = "DaysSinceLastNotebookTutorialShowed"

.field private static final EXPORTED_TO_FLASHCARDS_FROM_NOTEBOOK_EVENT:Ljava/lang/String; = "ExportedToFlashcardsFromNotebook"

.field private static final HAS_RECORDED_TIME_BETWEEN_TUTORIAL_AND_NOTEBOOK_VIEW:Ljava/lang/String; = "hasRecordedTimeBetweenTutorialAndNotebookView"

.field private static final NOTEBOOK_FLASHCARDS_JIT_SHOW_EVENT:Ljava/lang/String; = "NotebookFlashcardsJITShows"

.field private static final NOTEBOOK_OPENED_EVENT:Ljava/lang/String; = "NotebookOpened"

.field private static final NOTEBOOK_OPEN_AFTER_JIT_SHOWN_METRIC:Ljava/lang/String; = "Notebook_Open_After_Jit_Shown"

.field private static final NOTEBOOK_OPEN_POST_30_DAYS_JIT_SHOWN_METRIC:Ljava/lang/String; = "Notebook_Open_Post_30_Days_Jit_shown"

.field private static final NOTEBOOK_OPEN_POST_60_DAYS_JIT_SHOWN_METRIC:Ljava/lang/String; = "Notebook_Open_Post_60_Days_Jit_shown"

.field private static final NOTEBOOK_OPEN_POST_90_DAYS_JIT_SHOWN_METRIC:Ljava/lang/String; = "Notebook_Open_Post_90_Days_Jit_shown"

.field private static final NOTEBOOK_OPEN_WITH_NO_JIT_SHOWN_METRIC:Ljava/lang/String; = "Notebook_Open_With_No_Jit_Shown"

.field private static final NOTEBOOK_TOPIC:Ljava/lang/String; = "Notebook"

.field private static final NOTEBOOK_TUTORIAL_ENABLED:Ljava/lang/String; = "NotebookTutorialEnabled"

.field private static final NOTEBOOK_TUTORIAL_ID:Ljava/lang/String; = "a81154794d924adb965fc3dae661d7e0"

.field private static final NOTEBOOK_TUTORIAL_METRICS:Ljava/lang/String; = "NotebookTutorialMetrics"

.field private static final NOTEBOOK_TUTORIAL_SHOWN_METRIC:Ljava/lang/String; = "Notebook_Tutorial_Shown_Metric"

.field private static final NOTEBOOK_TUTORIAL_SHOWN_METRIC_READING_STREAMS:Ljava/lang/String; = "NotebookTutorialShown"

.field private static final NOTEBOOK_WEBLAB_TREATMENT_KEY:Ljava/lang/String; = "NotebookWeblabTreatment"

.field private static final NUMBER_OF_ANNOTATIONS_KEY:Ljava/lang/String; = "NumberOfAnnotations"

.field private static final SEVEN_DAYS_MILLI_SECONDS:J = 0x240c8400L

.field private static final SHARED_PREFERENCES_KEY:Ljava/lang/String; = "NotebookTutorialEventCounts"

.field private static final TAG:Ljava/lang/String;

.field private static final TIME_BETWEEN_TUTORIAL_SHOWN_AND_NOTEBOOK_OPEN:Ljava/lang/String; = "Time_Between_Tutorial_Shown_And_Notebook_Open"


# instance fields
.field private eventSettingsController:Lcom/amazon/kcp/application/EventSettingsController;

.field private final sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lcom/amazon/kcp/reader/notebook/NotebookPluginJITProvider;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/notebook/NotebookPluginJITProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const-string v0, "Notebook"

    .line 73
    invoke-direct {p0, v0}, Lcom/amazon/kindle/krx/tutorial/TutorialProvider;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "NotebookTutorialEventCounts"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/notebook/NotebookPluginJITProvider;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 76
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/application/EventSettingsController;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/EventSettingsController;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/notebook/NotebookPluginJITProvider;->eventSettingsController:Lcom/amazon/kcp/application/EventSettingsController;

    return-void
.end method

.method private compareEventDate(JILcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/4 p1, 0x1

    return p1

    .line 131
    :cond_0
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    neg-int p3, p3

    .line 132
    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->add(II)V

    .line 133
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p3

    .line 134
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 135
    invoke-static {v0, p3, p4}, Lcom/amazon/kindle/tutorial/TutorialComparatorHelper;->compareDates(Ljava/util/Date;Ljava/util/Date;Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;)Z

    move-result p1

    return p1
.end method

.method private getNumberOfAnnotations()I
    .locals 2

    .line 146
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 148
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    .line 150
    invoke-interface {v1}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->getAnnotationsList()[Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object v0

    array-length v0, v0

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private hasNotebookOpenedAfterSeeingJitIn(J)Z
    .locals 5

    .line 236
    invoke-static {}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->getInstance()Lcom/amazon/kindle/tutorial/AndroidTutorialManager;

    move-result-object v0

    const-string v1, "a81154794d924adb965fc3dae661d7e0"

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->isAlreadyShown(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/reader/notebook/NotebookPluginJITProvider;->eventSettingsController:Lcom/amazon/kcp/application/EventSettingsController;

    .line 237
    invoke-virtual {v0}, Lcom/amazon/kcp/application/EventSettingsController;->getFirstNotebookOpenAfterJitTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 239
    iget-object v0, p0, Lcom/amazon/kcp/reader/notebook/NotebookPluginJITProvider;->eventSettingsController:Lcom/amazon/kcp/application/EventSettingsController;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/EventSettingsController;->getNotebookJitShownTime()J

    move-result-wide v0

    .line 240
    iget-object v2, p0, Lcom/amazon/kcp/reader/notebook/NotebookPluginJITProvider;->eventSettingsController:Lcom/amazon/kcp/application/EventSettingsController;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/EventSettingsController;->getFirstNotebookOpenAfterJitTime()J

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

.method private recordEventForKey(Ljava/lang/String;)V
    .locals 3

    .line 196
    iget-object v0, p0, Lcom/amazon/kcp/reader/notebook/NotebookPluginJITProvider;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 197
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 198
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private recordNotebookViewMetric()V
    .locals 6

    .line 206
    iget-object v0, p0, Lcom/amazon/kcp/reader/notebook/NotebookPluginJITProvider;->eventSettingsController:Lcom/amazon/kcp/application/EventSettingsController;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/EventSettingsController;->getNotebookJitShownTime()J

    move-result-wide v0

    const-string v2, "NotebookTutorialMetrics"

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-eqz v5, :cond_0

    const-wide/32 v0, 0x240c8400

    .line 210
    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/reader/notebook/NotebookPluginJITProvider;->hasNotebookOpenedAfterSeeingJitIn(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "Notebook_Open_After_Jit_Shown"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 214
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "Notebook_Open_With_No_Jit_Shown"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private recordNotebookViewRetentionMetric()V
    .locals 5

    .line 273
    iget-object v0, p0, Lcom/amazon/kcp/reader/notebook/NotebookPluginJITProvider;->eventSettingsController:Lcom/amazon/kcp/application/EventSettingsController;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/EventSettingsController;->getNotebookJitShownTime()J

    move-result-wide v0

    .line 274
    sget-object v2, Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;->GREATER_THAN:Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;

    const/16 v3, 0x5a

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/amazon/kcp/reader/notebook/NotebookPluginJITProvider;->compareEventDate(JILcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;)Z

    move-result v2

    const-string v3, "NotebookTutorialMetrics"

    if-eqz v2, :cond_0

    .line 275
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "Notebook_Open_Post_90_Days_Jit_shown"

    invoke-virtual {v0, v1, v3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x3c

    .line 276
    sget-object v4, Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;->GREATER_THAN:Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;

    invoke-direct {p0, v0, v1, v2, v4}, Lcom/amazon/kcp/reader/notebook/NotebookPluginJITProvider;->compareEventDate(JILcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 277
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "Notebook_Open_Post_60_Days_Jit_shown"

    invoke-virtual {v0, v1, v3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 v2, 0x1e

    .line 278
    sget-object v4, Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;->GREATER_THAN:Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;

    invoke-direct {p0, v0, v1, v2, v4}, Lcom/amazon/kcp/reader/notebook/NotebookPluginJITProvider;->compareEventDate(JILcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 279
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "Notebook_Open_Post_30_Days_Jit_shown"

    invoke-virtual {v0, v1, v3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private recordTimeBetweenTutorialShownAndNotebookOpened()V
    .locals 7

    .line 253
    iget-object v0, p0, Lcom/amazon/kcp/reader/notebook/NotebookPluginJITProvider;->eventSettingsController:Lcom/amazon/kcp/application/EventSettingsController;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/EventSettingsController;->getNotebookJitShownTime()J

    move-result-wide v0

    .line 254
    iget-object v2, p0, Lcom/amazon/kcp/reader/notebook/NotebookPluginJITProvider;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "hasRecordedTimeBetweenTutorialAndNotebookView"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-eqz v6, :cond_0

    if-nez v2, :cond_0

    .line 258
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    .line 259
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "Time_Between_Tutorial_Shown_And_Notebook_Open"

    const-string v2, "NotebookTutorialMetrics"

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportTimerMetric(Ljava/lang/String;Ljava/lang/String;J)V

    .line 262
    iget-object v0, p0, Lcom/amazon/kcp/reader/notebook/NotebookPluginJITProvider;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x1

    .line 263
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 264
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method private saveTimestampIfFirstNotebookOpenAfterSeeingJit()V
    .locals 5

    .line 222
    invoke-static {}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->getInstance()Lcom/amazon/kindle/tutorial/AndroidTutorialManager;

    move-result-object v0

    const-string v1, "a81154794d924adb965fc3dae661d7e0"

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->isAlreadyShown(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/amazon/kcp/reader/notebook/NotebookPluginJITProvider;->eventSettingsController:Lcom/amazon/kcp/application/EventSettingsController;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/EventSettingsController;->getFirstNotebookOpenAfterJitTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 224
    iget-object v0, p0, Lcom/amazon/kcp/reader/notebook/NotebookPluginJITProvider;->eventSettingsController:Lcom/amazon/kcp/application/EventSettingsController;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/EventSettingsController;->setFirstNoteBookOpenAfterJitTime(J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public evaluate(Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/krx/tutorial/conditions/InvalidComparisonTypeException;
        }
    .end annotation

    .line 82
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p1, "DaysSinceExportToFlashcardClicked"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_1
    const-string p1, "DaysSinceLastNotebookTutorialShowed"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_2
    const-string p1, "DaysSinceLastJitShowed"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_3
    const-string p1, "DaysSinceLastCreatedHighlight"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :sswitch_4
    const-string p1, "NumberOfAnnotations"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto :goto_1

    :sswitch_5
    const-string p1, "NotebookTutorialEnabled"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    goto :goto_1

    :sswitch_6
    const-string p1, "NotebookWeblabTreatment"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x7

    goto :goto_1

    :sswitch_7
    const-string p1, "DaysSinceLastNotebookOpen"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    const-wide/16 v2, 0x0

    packed-switch p1, :pswitch_data_0

    return v0

    :pswitch_0
    return v1

    .line 105
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->isNotebookTutorialEnabled()Z

    move-result p2

    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 101
    :pswitch_2
    invoke-direct {p0}, Lcom/amazon/kcp/reader/notebook/NotebookPluginJITProvider;->getNumberOfAnnotations()I

    move-result p1

    .line 102
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p1, p2, p4}, Lcom/amazon/kindle/tutorial/TutorialComparatorHelper;->compareIntegers(IILcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;)Z

    move-result p1

    return p1

    .line 98
    :pswitch_3
    iget-object p1, p0, Lcom/amazon/kcp/reader/notebook/NotebookPluginJITProvider;->eventSettingsController:Lcom/amazon/kcp/application/EventSettingsController;

    invoke-virtual {p1}, Lcom/amazon/kcp/application/EventSettingsController;->getLastNotebookOpenTime()J

    move-result-wide p1

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kcp/reader/notebook/NotebookPluginJITProvider;->compareEventDate(JILcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;)Z

    move-result p1

    return p1

    .line 94
    :pswitch_4
    iget-object p1, p0, Lcom/amazon/kcp/reader/notebook/NotebookPluginJITProvider;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string p2, "ExportedToFlashcardsFromNotebook"

    invoke-interface {p1, p2, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 95
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kcp/reader/notebook/NotebookPluginJITProvider;->compareEventDate(JILcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;)Z

    move-result p1

    return p1

    .line 91
    :pswitch_5
    iget-object p1, p0, Lcom/amazon/kcp/reader/notebook/NotebookPluginJITProvider;->eventSettingsController:Lcom/amazon/kcp/application/EventSettingsController;

    invoke-virtual {p1}, Lcom/amazon/kcp/application/EventSettingsController;->getNotebookJitShownTime()J

    move-result-wide p1

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kcp/reader/notebook/NotebookPluginJITProvider;->compareEventDate(JILcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;)Z

    move-result p1

    return p1

    .line 87
    :pswitch_6
    iget-object p1, p0, Lcom/amazon/kcp/reader/notebook/NotebookPluginJITProvider;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string p2, "NotebookFlashcardsJITShows"

    invoke-interface {p1, p2, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 88
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kcp/reader/notebook/NotebookPluginJITProvider;->compareEventDate(JILcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;)Z

    move-result p1

    return p1

    .line 84
    :pswitch_7
    iget-object p1, p0, Lcom/amazon/kcp/reader/notebook/NotebookPluginJITProvider;->eventSettingsController:Lcom/amazon/kcp/application/EventSettingsController;

    invoke-virtual {p1}, Lcom/amazon/kcp/application/EventSettingsController;->getLastHighlightCreatedTime()J

    move-result-wide p1

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kcp/reader/notebook/NotebookPluginJITProvider;->compareEventDate(JILcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;)Z

    move-result p1

    return p1

    :sswitch_data_0
    .sparse-switch
        -0x7cf5c462 -> :sswitch_7
        -0x2b0890bc -> :sswitch_6
        -0x1cb75178 -> :sswitch_5
        0x106353e4 -> :sswitch_4
        0x476fc305 -> :sswitch_3
        0x4ac2b198 -> :sswitch_2
        0x4cdd31ae -> :sswitch_1
        0x7bc57899 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method public onExportToFlashcardsClicked()V
    .locals 1

    const-string v0, "ExportedToFlashcardsFromNotebook"

    .line 186
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/notebook/NotebookPluginJITProvider;->recordEventForKey(Ljava/lang/String;)V

    return-void
.end method

.method public onNotebookOpened()V
    .locals 2

    .line 175
    invoke-direct {p0}, Lcom/amazon/kcp/reader/notebook/NotebookPluginJITProvider;->recordNotebookViewMetric()V

    .line 176
    invoke-direct {p0}, Lcom/amazon/kcp/reader/notebook/NotebookPluginJITProvider;->recordTimeBetweenTutorialShownAndNotebookOpened()V

    .line 177
    invoke-direct {p0}, Lcom/amazon/kcp/reader/notebook/NotebookPluginJITProvider;->recordNotebookViewRetentionMetric()V

    .line 178
    invoke-direct {p0}, Lcom/amazon/kcp/reader/notebook/NotebookPluginJITProvider;->saveTimestampIfFirstNotebookOpenAfterSeeingJit()V

    .line 180
    new-instance v0, Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;

    const-string v1, "NotebookOpened"

    invoke-direct {v0, v1}, Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;->build()Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;

    move-result-object v0

    .line 181
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/krx/tutorial/TutorialProvider;->publishEvent(Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;)V

    return-void
.end method

.method public onTutorialStatus(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;Lcom/amazon/kindle/krx/tutorial/TutorialStatus;)V
    .locals 0

    .line 157
    invoke-super {p0, p1, p2, p3, p4}, Lcom/amazon/kindle/krx/tutorial/TutorialProvider;->onTutorialStatus(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;Lcom/amazon/kindle/krx/tutorial/TutorialStatus;)V

    .line 158
    sget-object p2, Lcom/amazon/kindle/krx/tutorial/TutorialStatus;->SHOWN:Lcom/amazon/kindle/krx/tutorial/TutorialStatus;

    invoke-virtual {p4, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "a81154794d924adb965fc3dae661d7e0"

    .line 159
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 160
    iget-object p1, p0, Lcom/amazon/kcp/reader/notebook/NotebookPluginJITProvider;->eventSettingsController:Lcom/amazon/kcp/application/EventSettingsController;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/amazon/kcp/application/EventSettingsController;->setNotebookJitShownTime(J)V

    .line 161
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    const-string p2, "Notebook_Tutorial_Shown_Metric"

    const-string p3, "NotebookTutorialMetrics"

    invoke-virtual {p1, p2, p3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 164
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    const-string p2, "Book"

    const-string p3, "NotebookTutorialShown"

    invoke-interface {p1, p2, p3}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "NotebookFlashcardsJITShows"

    .line 168
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/notebook/NotebookPluginJITProvider;->recordEventForKey(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
