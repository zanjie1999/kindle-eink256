.class public final Lcom/amazon/kedu/flashcards/metrics/MetricManager;
.super Ljava/lang/Object;
.source "MetricManager.java"


# static fields
.field private static deckCount:I = 0x0

.field private static deckDownloadStartTime:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager; = null

.field private static openedDecks:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static pluginWasOpened:Z = false

.field private static resumedQuiz:Z

.field private static sessionCounters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/kedu/flashcards/metrics/MetricManager;->sessionCounters:Ljava/util/Map;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/kedu/flashcards/metrics/MetricManager;->deckDownloadStartTime:Ljava/util/Map;

    .line 31
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/amazon/kedu/flashcards/metrics/MetricManager;->openedDecks:Ljava/util/Set;

    const/4 v0, 0x0

    .line 32
    sput-boolean v0, Lcom/amazon/kedu/flashcards/metrics/MetricManager;->resumedQuiz:Z

    const/4 v0, -0x1

    .line 33
    sput v0, Lcom/amazon/kedu/flashcards/metrics/MetricManager;->deckCount:I

    return-void
.end method

.method public static bookClosed()V
    .locals 4

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 101
    sget v1, Lcom/amazon/kedu/flashcards/metrics/MetricManager;->deckCount:I

    const-string v2, "Flashcards:"

    if-ltz v1, :cond_0

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/amazon/kedu/flashcards/metrics/MetricCounters;->BOOK_CLOSE_DECK_COUNT:Lcom/amazon/kedu/flashcards/metrics/MetricCounters;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v3, Lcom/amazon/kedu/flashcards/metrics/MetricManager;->deckCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :cond_0
    sget-boolean v1, Lcom/amazon/kedu/flashcards/metrics/MetricManager;->pluginWasOpened:Z

    .line 107
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kedu/flashcards/metrics/MetricCounters;->BOOK_CLOSE_WAS_OPENED:Lcom/amazon/kedu/flashcards/metrics/MetricCounters;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-static {v0}, Lcom/amazon/kedu/flashcards/metrics/MetricManager;->reportMetricCounters(Ljava/util/Map;)V

    return-void
.end method

.method public static bookOpened()V
    .locals 1

    .line 91
    sget-object v0, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;->AVAILABLE:Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

    invoke-static {v0}, Lcom/amazon/kedu/flashcards/metrics/MetricManager;->reportMetricEvent(Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;)V

    .line 93
    sget-object v0, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;->PLUGIN_FIRST_OPEN:Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

    invoke-static {v0}, Lcom/amazon/kedu/flashcards/metrics/MetricManager;->startMetricTimer(Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;)V

    const/4 v0, 0x0

    .line 94
    sput-boolean v0, Lcom/amazon/kedu/flashcards/metrics/MetricManager;->pluginWasOpened:Z

    return-void
.end method

.method public static declared-synchronized deckDownloadFinished(Ljava/lang/String;)V
    .locals 6

    const-class v0, Lcom/amazon/kedu/flashcards/metrics/MetricManager;

    monitor-enter v0

    .line 242
    :try_start_0
    sget-object v1, Lcom/amazon/kedu/flashcards/metrics/MetricManager;->deckDownloadStartTime:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    sget-object v1, Lcom/amazon/kedu/flashcards/metrics/MetricManager;->deckDownloadStartTime:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 245
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    .line 246
    sget-object v5, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;->SYNCHRONIZE_DECK:Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

    sub-long/2addr v3, v1

    invoke-static {v5, v3, v4}, Lcom/amazon/kedu/flashcards/metrics/MetricManager;->reportTimerMetric(Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;J)V

    .line 247
    sget-object v1, Lcom/amazon/kedu/flashcards/metrics/MetricManager;->deckDownloadStartTime:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized deckDownloadStarted(Ljava/lang/String;)V
    .locals 4

    const-class v0, Lcom/amazon/kedu/flashcards/metrics/MetricManager;

    monitor-enter v0

    .line 236
    :try_start_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 237
    sget-object v3, Lcom/amazon/kedu/flashcards/metrics/MetricManager;->deckDownloadStartTime:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v3, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static flashcardsPluginStarted()V
    .locals 1

    .line 85
    sget-object v0, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;->SESSION_OPEN:Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

    invoke-static {v0}, Lcom/amazon/kedu/flashcards/metrics/MetricManager;->startMetricTimer(Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;)V

    return-void
.end method

.method public static getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;
    .locals 1

    .line 117
    sget-object v0, Lcom/amazon/kedu/flashcards/metrics/MetricManager;->metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    if-nez v0, :cond_0

    .line 119
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsPlugin;->getSdkRef()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    sput-object v0, Lcom/amazon/kedu/flashcards/metrics/MetricManager;->metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    .line 125
    :cond_0
    sget-object v0, Lcom/amazon/kedu/flashcards/metrics/MetricManager;->metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    return-object v0
.end method

.method public static declared-synchronized reportMetricCounter(Lcom/amazon/kedu/flashcards/metrics/MetricCounters;I)V
    .locals 2

    const-class v0, Lcom/amazon/kedu/flashcards/metrics/MetricManager;

    monitor-enter v0

    .line 180
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 181
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/metrics/MetricCounters;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-static {v1}, Lcom/amazon/kedu/flashcards/metrics/MetricManager;->reportMetricCounters(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized reportMetricCounters(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lcom/amazon/kedu/flashcards/metrics/MetricManager;

    monitor-enter v0

    .line 187
    :try_start_0
    invoke-static {}, Lcom/amazon/kedu/flashcards/metrics/MetricManager;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "Flashcards"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    .line 191
    invoke-interface/range {v1 .. v6}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetrics(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized reportMetricEvent(Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;)V
    .locals 5

    const-class v0, Lcom/amazon/kedu/flashcards/metrics/MetricManager;

    monitor-enter v0

    .line 130
    :try_start_0
    invoke-static {}, Lcom/amazon/kedu/flashcards/metrics/MetricManager;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "Flashcards"

    .line 134
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Flashcards:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, v2, p0}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized reportTimerMetric(Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;J)V
    .locals 5

    const-class v0, Lcom/amazon/kedu/flashcards/metrics/MetricManager;

    monitor-enter v0

    .line 170
    :try_start_0
    invoke-static {}, Lcom/amazon/kedu/flashcards/metrics/MetricManager;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "Flashcards"

    .line 174
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Flashcards:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, v2, p0, p1, p2}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportTimerMetric(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setDeckCount(I)V
    .locals 1

    const-class v0, Lcom/amazon/kedu/flashcards/metrics/MetricManager;

    monitor-enter v0

    .line 274
    :try_start_0
    sput p0, Lcom/amazon/kedu/flashcards/metrics/MetricManager;->deckCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized startMetricTimer(Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;)V
    .locals 4

    const-class v0, Lcom/amazon/kedu/flashcards/metrics/MetricManager;

    monitor-enter v0

    .line 140
    :try_start_0
    invoke-static {}, Lcom/amazon/kedu/flashcards/metrics/MetricManager;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Flashcards:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->startMetricTimer(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static startNotebookDeckCreation()V
    .locals 1

    .line 197
    sget-boolean v0, Lcom/amazon/kedu/flashcards/metrics/MetricManager;->pluginWasOpened:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;->NOTEBOOK_DECK_CREATED:Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;->PLUGIN_FIRST_OPEN_NOTEBOOK_DECK_CREATED:Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

    .line 198
    :goto_0
    invoke-static {v0}, Lcom/amazon/kedu/flashcards/metrics/MetricManager;->startMetricTimer(Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;)V

    return-void
.end method

.method public static startXrayDeckCreation()V
    .locals 1

    .line 218
    sget-boolean v0, Lcom/amazon/kedu/flashcards/metrics/MetricManager;->pluginWasOpened:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;->XRAY_DECK_CREATED:Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;->PLUGIN_FIRST_OPEN_XRAY_DECK_CREATED:Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

    .line 219
    :goto_0
    invoke-static {v0}, Lcom/amazon/kedu/flashcards/metrics/MetricManager;->startMetricTimer(Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;)V

    return-void
.end method

.method public static declared-synchronized stopMetricTimer(Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;)V
    .locals 6

    const-class v0, Lcom/amazon/kedu/flashcards/metrics/MetricManager;

    monitor-enter v0

    .line 160
    :try_start_0
    invoke-static {}, Lcom/amazon/kedu/flashcards/metrics/MetricManager;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "Flashcards"

    .line 164
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Flashcards:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, v2, v3, p0}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->stopMetricTimerIfExists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static stopNotebookDeckCreation(I)V
    .locals 2

    .line 203
    sget-boolean v0, Lcom/amazon/kedu/flashcards/metrics/MetricManager;->pluginWasOpened:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;->NOTEBOOK_DECK_CREATED:Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;->PLUGIN_FIRST_OPEN_NOTEBOOK_DECK_CREATED:Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

    .line 206
    :goto_0
    sget-boolean v1, Lcom/amazon/kedu/flashcards/metrics/MetricManager;->pluginWasOpened:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/amazon/kedu/flashcards/metrics/MetricCounters;->NOTEBOOK_DECK_CREATED_CARDS_COUNT:Lcom/amazon/kedu/flashcards/metrics/MetricCounters;

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/amazon/kedu/flashcards/metrics/MetricCounters;->PLUGIN_FIRST_OPEN_NOTEBOOK_DECK_CREATED_CARDS_COUNT:Lcom/amazon/kedu/flashcards/metrics/MetricCounters;

    .line 210
    :goto_1
    invoke-static {v0}, Lcom/amazon/kedu/flashcards/metrics/MetricManager;->stopMetricTimer(Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;)V

    .line 211
    invoke-static {v1, p0}, Lcom/amazon/kedu/flashcards/metrics/MetricManager;->reportMetricCounter(Lcom/amazon/kedu/flashcards/metrics/MetricCounters;I)V

    const/4 p0, 0x1

    .line 213
    sput-boolean p0, Lcom/amazon/kedu/flashcards/metrics/MetricManager;->pluginWasOpened:Z

    return-void
.end method

.method public static stopXrayDeckCreation(I)V
    .locals 2

    .line 224
    sget-boolean v0, Lcom/amazon/kedu/flashcards/metrics/MetricManager;->pluginWasOpened:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;->XRAY_DECK_CREATED:Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;->PLUGIN_FIRST_OPEN_XRAY_DECK_CREATED:Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;

    .line 225
    :goto_0
    sget-boolean v1, Lcom/amazon/kedu/flashcards/metrics/MetricManager;->pluginWasOpened:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/amazon/kedu/flashcards/metrics/MetricCounters;->XRAY_DECK_CREATED_CARDS_COUNT:Lcom/amazon/kedu/flashcards/metrics/MetricCounters;

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/amazon/kedu/flashcards/metrics/MetricCounters;->PLUGIN_FIRST_OPEN_XRAY_DECK_CREATED_CARDS_COUNT:Lcom/amazon/kedu/flashcards/metrics/MetricCounters;

    .line 228
    :goto_1
    invoke-static {v0}, Lcom/amazon/kedu/flashcards/metrics/MetricManager;->stopMetricTimer(Lcom/amazon/kedu/flashcards/metrics/FlashcardsMetric;)V

    .line 229
    invoke-static {v1, p0}, Lcom/amazon/kedu/flashcards/metrics/MetricManager;->reportMetricCounter(Lcom/amazon/kedu/flashcards/metrics/MetricCounters;I)V

    const/4 p0, 0x1

    .line 231
    sput-boolean p0, Lcom/amazon/kedu/flashcards/metrics/MetricManager;->pluginWasOpened:Z

    return-void
.end method
