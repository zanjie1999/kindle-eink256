.class public Lcom/amazon/startactions/plugin/StartActionsController$StartActionsCustomTutorialHandler;
.super Lcom/amazon/kindle/krx/tutorial/BaseCustomTutorialHandler;
.source "StartActionsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/startactions/plugin/StartActionsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StartActionsCustomTutorialHandler"
.end annotation


# static fields
.field private static final START_ACTIONS_CUSTOM_TUTORIAL_HANDLER_KEY:Ljava/lang/String; = "StartActionsCustomTutorialHandler"


# instance fields
.field private callback:Lcom/amazon/kindle/krx/tutorial/ICustomTutorialCallback;

.field private final readerManager:Lcom/amazon/kindle/krx/reader/IReaderManager;

.field final synthetic this$0:Lcom/amazon/startactions/plugin/StartActionsController;


# direct methods
.method public constructor <init>(Lcom/amazon/startactions/plugin/StartActionsController;Lcom/amazon/kindle/krx/reader/IReaderManager;)V
    .locals 0

    .line 1267
    iput-object p1, p0, Lcom/amazon/startactions/plugin/StartActionsController$StartActionsCustomTutorialHandler;->this$0:Lcom/amazon/startactions/plugin/StartActionsController;

    invoke-direct {p0}, Lcom/amazon/kindle/krx/tutorial/BaseCustomTutorialHandler;-><init>()V

    .line 1268
    iput-object p2, p0, Lcom/amazon/startactions/plugin/StartActionsController$StartActionsCustomTutorialHandler;->readerManager:Lcom/amazon/kindle/krx/reader/IReaderManager;

    return-void
.end method


# virtual methods
.method public declared-synchronized dismissCallBack()V
    .locals 1

    monitor-enter p0

    .line 1272
    :try_start_0
    iget-object v0, p0, Lcom/amazon/startactions/plugin/StartActionsController$StartActionsCustomTutorialHandler;->callback:Lcom/amazon/kindle/krx/tutorial/ICustomTutorialCallback;

    if-eqz v0, :cond_0

    .line 1273
    iget-object v0, p0, Lcom/amazon/startactions/plugin/StartActionsController$StartActionsCustomTutorialHandler;->callback:Lcom/amazon/kindle/krx/tutorial/ICustomTutorialCallback;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/tutorial/ICustomTutorialCallback;->onTutorialDismissed()V

    const/4 v0, 0x0

    .line 1274
    iput-object v0, p0, Lcom/amazon/startactions/plugin/StartActionsController$StartActionsCustomTutorialHandler;->callback:Lcom/amazon/kindle/krx/tutorial/ICustomTutorialCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1276
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    const-string v0, "StartActionsCustomTutorialHandler"

    return-object v0
.end method

.method public show(Lcom/amazon/kindle/krx/tutorial/ICustomTutorialCallback;)Z
    .locals 11

    .line 1285
    invoke-static {}, Lcom/amazon/ea/metrics/SimpleMetricsManager;->getStartActionsMetricsManager()Lcom/amazon/ea/metrics/SimpleMetricsManager;

    move-result-object v0

    const-string v1, "StartActionsCustomTutorialHandler"

    const-string v2, "ReceivedEvent"

    .line 1286
    invoke-virtual {v0, v1, v2}, Lcom/amazon/ea/metrics/SimpleMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 1287
    invoke-static {v2}, Lcom/amazon/startactions/plugin/StartActionsController;->access$1202(Z)Z

    .line 1289
    iget-object v3, p0, Lcom/amazon/startactions/plugin/StartActionsController$StartActionsCustomTutorialHandler;->readerManager:Lcom/amazon/kindle/krx/reader/IReaderManager;

    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return v4

    :cond_0
    const-string/jumbo v5, "startactions.config"

    const-string/jumbo v6, "server_state"

    .line 1295
    invoke-static {v5, v6}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->getStringPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/amazon/startactions/plugin/StartActionsState;->fromString(Ljava/lang/String;)Lcom/amazon/startactions/plugin/StartActionsState;

    move-result-object v5

    .line 1297
    sget-object v6, Lcom/amazon/startactions/plugin/StartActionsState;->ON:Lcom/amazon/startactions/plugin/StartActionsState;

    invoke-virtual {v6, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "]"

    if-nez v6, :cond_2

    .line 1298
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1299
    invoke-static {}, Lcom/amazon/startactions/plugin/StartActionsController;->access$600()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Will not launch Start Actions StartActionsCustomTutorialHandler [state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string p1, "ExitEarlyDisabledFromServer"

    .line 1301
    invoke-virtual {v0, v1, p1}, Lcom/amazon/ea/metrics/SimpleMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    .line 1307
    :cond_2
    new-instance v5, Lcom/amazon/startactions/metrics/Metric;

    const-string v6, "StartActionsBookOpenAtSrl"

    invoke-static {v6}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {v5, v6}, Lcom/amazon/startactions/metrics/Metric;-><init>(Ljava/lang/String;)V

    const-string v6, "BookOpenAtSrl"

    .line 1308
    invoke-static {v6}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v5, v6, v2}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    const-string v6, "StartActionsDisabled"

    .line 1309
    invoke-static {v6}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    sget-boolean v8, Lcom/amazon/startactions/plugin/StartActionsController;->isEnabledFromSettings:Z

    xor-int/2addr v8, v2

    invoke-virtual {v5, v6, v8}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    const-string v6, "SrlOpenAccessibilityOn"

    .line 1310
    invoke-static {v6}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    const-string v8, "SrlOpenBookNotSupported"

    .line 1311
    invoke-static {v8}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v5, v8}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    const-string v9, "SrlOpenPreviouslyPopped"

    .line 1312
    invoke-static {v9}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v5, v9}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    .line 1316
    :try_start_0
    sget-boolean v10, Lcom/amazon/startactions/plugin/StartActionsController;->isEnabledFromSettings:Z

    if-nez v10, :cond_4

    .line 1317
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1318
    invoke-static {}, Lcom/amazon/startactions/plugin/StartActionsController;->access$600()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Will not launch start actions StartActionsCustomTutorialHandler [setting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/amazon/startactions/plugin/StartActionsController;->isEnabledFromSettings:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string p1, "ExitEarlyDisabledFromSettings"

    .line 1321
    invoke-virtual {v0, v1, p1}, Lcom/amazon/ea/metrics/SimpleMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1380
    invoke-virtual {v5}, Lcom/amazon/startactions/metrics/Metric;->close()V

    return v4

    .line 1326
    :cond_4
    :try_start_1
    invoke-static {v3}, Lcom/amazon/startactions/ui/helpers/StartActionsBookSupport;->isSupported(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 1327
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1328
    invoke-static {}, Lcom/amazon/startactions/plugin/StartActionsController;->access$600()Ljava/lang/String;

    move-result-object p1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Start actions not supported for book StartActionsCustomTutorialHandler [contentType="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1330
    invoke-interface {v3}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", bookFormat="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/amazon/kindle/krx/content/IBook;->getBookFormat()Lcom/amazon/kindle/krx/content/BookFormat;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", contentClass="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1331
    invoke-interface {v3}, Lcom/amazon/kindle/krx/content/IBook;->getContentClass()Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1328
    invoke-static {p1, v3}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string p1, "ExitEarlyBookNotSupported"

    .line 1334
    invoke-virtual {v0, v1, p1}, Lcom/amazon/ea/metrics/SimpleMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 1335
    invoke-static {v8}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v5, v8, v2}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1380
    invoke-virtual {v5}, Lcom/amazon/startactions/metrics/Metric;->close()V

    return v4

    .line 1342
    :cond_6
    :try_start_2
    iget-object v8, p0, Lcom/amazon/startactions/plugin/StartActionsController$StartActionsCustomTutorialHandler;->this$0:Lcom/amazon/startactions/plugin/StartActionsController;

    invoke-static {v8}, Lcom/amazon/startactions/plugin/StartActionsController;->access$1600(Lcom/amazon/startactions/plugin/StartActionsController;)Landroid/content/Context;

    move-result-object v8

    const-string v10, "accessibility"

    .line 1343
    invoke-virtual {v8, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/accessibility/AccessibilityManager;

    .line 1344
    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1345
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1346
    invoke-static {}, Lcom/amazon/startactions/plugin/StartActionsController;->access$600()Ljava/lang/String;

    move-result-object p1

    const-string v3, "accessibility is on, will not open from StartActionsCustomTutorialHandler"

    invoke-static {p1, v3}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const-string p1, "ExitEarlyAccessibilityEnabled"

    .line 1349
    invoke-virtual {v0, v1, p1}, Lcom/amazon/ea/metrics/SimpleMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 1350
    invoke-static {v6}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v5, v6, v2}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1380
    invoke-virtual {v5}, Lcom/amazon/startactions/metrics/Metric;->close()V

    return v4

    .line 1355
    :cond_8
    :try_start_3
    invoke-interface {v3}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "startactions.dismissed.books"

    .line 1356
    invoke-static {v8, v6}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->getBooleanPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    if-eqz v8, :cond_a

    .line 1358
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1359
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1360
    invoke-static {}, Lcom/amazon/startactions/plugin/StartActionsController;->access$600()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Start Actions has previously auto-popped for this book, will not open fromStartActionsCustomTutorialHandler [bookId="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    const-string p1, "ExitEarlyAlreadyPoppedForBook"

    .line 1364
    invoke-virtual {v0, v1, p1}, Lcom/amazon/ea/metrics/SimpleMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 1365
    invoke-static {v9}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v5, v9, v2}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1380
    invoke-virtual {v5}, Lcom/amazon/startactions/metrics/Metric;->close()V

    return v4

    .line 1369
    :cond_a
    :try_start_4
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1370
    invoke-static {}, Lcom/amazon/startactions/plugin/StartActionsController;->access$600()Ljava/lang/String;

    move-result-object v4

    const-string v6, "StartActionsCustomTutorialHandler! Launching start actions."

    invoke-static {v4, v6}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    const-string v4, "ChecksPassedLaunchingStartActions"

    .line 1373
    invoke-virtual {v0, v1, v4}, Lcom/amazon/ea/metrics/SimpleMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 1375
    invoke-static {}, Lcom/amazon/startactions/plugin/StartActionsController;->access$1100()Z

    move-result v0

    iget-object v1, p0, Lcom/amazon/startactions/plugin/StartActionsController$StartActionsCustomTutorialHandler;->this$0:Lcom/amazon/startactions/plugin/StartActionsController;

    iget-object v4, p0, Lcom/amazon/startactions/plugin/StartActionsController$StartActionsCustomTutorialHandler;->readerManager:Lcom/amazon/kindle/krx/reader/IReaderManager;

    invoke-interface {v4}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v4

    sget-object v6, Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;->SRL_OPEN:Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;

    invoke-virtual {v1, v4, v6}, Lcom/amazon/startactions/plugin/StartActionsController;->launchStartActions(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-static {v0}, Lcom/amazon/startactions/plugin/StartActionsController;->access$1102(Z)Z

    .line 1378
    iget-object v0, p0, Lcom/amazon/startactions/plugin/StartActionsController$StartActionsCustomTutorialHandler;->this$0:Lcom/amazon/startactions/plugin/StartActionsController;

    invoke-static {v0, v3}, Lcom/amazon/startactions/plugin/StartActionsController;->access$700(Lcom/amazon/startactions/plugin/StartActionsController;Lcom/amazon/kindle/krx/content/IBook;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1380
    invoke-virtual {v5}, Lcom/amazon/startactions/metrics/Metric;->close()V

    .line 1384
    iput-object p1, p0, Lcom/amazon/startactions/plugin/StartActionsController$StartActionsCustomTutorialHandler;->callback:Lcom/amazon/kindle/krx/tutorial/ICustomTutorialCallback;

    return v2

    :catchall_0
    move-exception p1

    .line 1380
    invoke-virtual {v5}, Lcom/amazon/startactions/metrics/Metric;->close()V

    .line 1381
    throw p1
.end method
