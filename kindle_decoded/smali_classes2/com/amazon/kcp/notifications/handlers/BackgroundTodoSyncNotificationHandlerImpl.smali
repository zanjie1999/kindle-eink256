.class public final Lcom/amazon/kcp/notifications/handlers/BackgroundTodoSyncNotificationHandlerImpl;
.super Ljava/lang/Object;
.source "BackgroundTodoSyncNotificationHandler.kt"

# interfaces
.implements Lcom/amazon/kcp/notifications/handlers/NotificationHandler;


# instance fields
.field private final METRICS_PREFIX:Ljava/lang/String;

.field private androidApplicationController:Lcom/amazon/kcp/application/IAndroidApplicationController;

.field private metricsManager:Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

.field private syncManager:Lcom/amazon/kindle/sync/SynchronizationManager;


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/notifications/handlers/BackgroundTodoSyncNotificationHandlerImpl;-><init>(Lcom/amazon/kindle/sync/SynchronizationManager;Lcom/amazon/kcp/application/metrics/internal/MetricsManager;Lcom/amazon/kcp/application/IAndroidApplicationController;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/sync/SynchronizationManager;Lcom/amazon/kcp/application/metrics/internal/MetricsManager;Lcom/amazon/kcp/application/IAndroidApplicationController;)V
    .locals 1

    const-string v0, "syncManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metricsManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "androidApplicationController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/notifications/handlers/BackgroundTodoSyncNotificationHandlerImpl;->syncManager:Lcom/amazon/kindle/sync/SynchronizationManager;

    iput-object p2, p0, Lcom/amazon/kcp/notifications/handlers/BackgroundTodoSyncNotificationHandlerImpl;->metricsManager:Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    iput-object p3, p0, Lcom/amazon/kcp/notifications/handlers/BackgroundTodoSyncNotificationHandlerImpl;->androidApplicationController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    .line 41
    const-class p1, Lcom/amazon/kcp/notifications/handlers/BackgroundTodoSyncNotificationHandlerImpl;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/notifications/handlers/BackgroundTodoSyncNotificationHandlerImpl;->METRICS_PREFIX:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/amazon/kindle/sync/SynchronizationManager;Lcom/amazon/kcp/application/metrics/internal/MetricsManager;Lcom/amazon/kcp/application/IAndroidApplicationController;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 36
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    const-string p5, "Utils.getFactory()"

    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSynchronizationManager()Lcom/amazon/kindle/sync/SynchronizationManager;

    move-result-object p1

    const-string p5, "Utils.getFactory().synchronizationManager"

    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    .line 37
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p2

    const-string p5, "MetricsManager.getInstance()"

    invoke-static {p2, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 38
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p3

    const-string p4, "AndroidApplicationController.getInstance()"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/notifications/handlers/BackgroundTodoSyncNotificationHandlerImpl;-><init>(Lcom/amazon/kindle/sync/SynchronizationManager;Lcom/amazon/kcp/application/metrics/internal/MetricsManager;Lcom/amazon/kcp/application/IAndroidApplicationController;)V

    return-void
.end method

.method public static final synthetic access$getMETRICS_PREFIX$p(Lcom/amazon/kcp/notifications/handlers/BackgroundTodoSyncNotificationHandlerImpl;)Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/amazon/kcp/notifications/handlers/BackgroundTodoSyncNotificationHandlerImpl;->METRICS_PREFIX:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final getAndroidApplicationController()Lcom/amazon/kcp/application/IAndroidApplicationController;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/amazon/kcp/notifications/handlers/BackgroundTodoSyncNotificationHandlerImpl;->androidApplicationController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    return-object v0
.end method

.method public final getMetricsManager()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/amazon/kcp/notifications/handlers/BackgroundTodoSyncNotificationHandlerImpl;->metricsManager:Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    return-object v0
.end method

.method public final getSyncManager()Lcom/amazon/kindle/sync/SynchronizationManager;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/amazon/kcp/notifications/handlers/BackgroundTodoSyncNotificationHandlerImpl;->syncManager:Lcom/amazon/kindle/sync/SynchronizationManager;

    return-object v0
.end method

.method public isMessageValid(Lcom/amazon/reader/notifications/message/NotificationMessage;)Z
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public performAction(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "extras"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object p1, p0, Lcom/amazon/kcp/notifications/handlers/BackgroundTodoSyncNotificationHandlerImpl;->androidApplicationController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    invoke-interface {p1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/amazon/kcp/notifications/handlers/BackgroundTodoSyncNotificationHandlerImpl;->androidApplicationController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    invoke-interface {p1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->isAppVisible()Z

    move-result p1

    if-nez p1, :cond_1

    .line 51
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/notifications/handlers/BackgroundTodoSyncNotificationHandlerImpl;->metricsManager:Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    iget-object p2, p0, Lcom/amazon/kcp/notifications/handlers/BackgroundTodoSyncNotificationHandlerImpl;->METRICS_PREFIX:Ljava/lang/String;

    sget-object v0, Lcom/amazon/kcp/notifications/metrics/NotificationStatus;->SILENTLY_EXECUTED:Lcom/amazon/kcp/notifications/metrics/NotificationStatus;

    invoke-virtual {v0}, Lcom/amazon/kcp/notifications/metrics/NotificationStatus;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/amazon/kcp/notifications/handlers/BackgroundTodoSyncNotificationHandlerImpl;->metricsManager:Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    iget-object p2, p0, Lcom/amazon/kcp/notifications/handlers/BackgroundTodoSyncNotificationHandlerImpl;->METRICS_PREFIX:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->startMetricTimer(Ljava/lang/String;)V

    .line 55
    iget-object p1, p0, Lcom/amazon/kcp/notifications/handlers/BackgroundTodoSyncNotificationHandlerImpl;->syncManager:Lcom/amazon/kindle/sync/SynchronizationManager;

    new-instance p2, Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    sget-object v1, Lcom/amazon/kcp/application/sync/internal/SyncType;->BACKGROUND_TODO_SYNC:Lcom/amazon/kcp/application/sync/internal/SyncType;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 59
    new-instance v5, Lcom/amazon/kcp/notifications/handlers/BackgroundTodoSyncNotificationHandlerImpl$performAction$results$1;

    invoke-direct {v5, p0}, Lcom/amazon/kcp/notifications/handlers/BackgroundTodoSyncNotificationHandlerImpl$performAction$results$1;-><init>(Lcom/amazon/kcp/notifications/handlers/BackgroundTodoSyncNotificationHandlerImpl;)V

    move-object v0, p2

    .line 55
    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;-><init>(Lcom/amazon/kcp/application/sync/internal/SyncType;Lcom/amazon/kindle/model/content/ILocalBookInfo;Ljava/util/Date;Lcom/amazon/kindle/services/download/IStatusTracker;Lcom/amazon/foundation/internal/IBooleanCallback;)V

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/sync/SynchronizationManager;->sync(Lcom/amazon/kcp/application/sync/internal/SyncParameters;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 65
    iget-object p1, p0, Lcom/amazon/kcp/notifications/handlers/BackgroundTodoSyncNotificationHandlerImpl;->metricsManager:Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    iget-object p2, p0, Lcom/amazon/kcp/notifications/handlers/BackgroundTodoSyncNotificationHandlerImpl;->METRICS_PREFIX:Ljava/lang/String;

    const-string v0, "InvalidAuthenticationOrParameters"

    invoke-virtual {p1, p2, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object p1, p0, Lcom/amazon/kcp/notifications/handlers/BackgroundTodoSyncNotificationHandlerImpl;->metricsManager:Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    iget-object p2, p0, Lcom/amazon/kcp/notifications/handlers/BackgroundTodoSyncNotificationHandlerImpl;->METRICS_PREFIX:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->cancelMetricTimer(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final setAndroidApplicationController(Lcom/amazon/kcp/application/IAndroidApplicationController;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lcom/amazon/kcp/notifications/handlers/BackgroundTodoSyncNotificationHandlerImpl;->androidApplicationController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    return-void
.end method

.method public final setMetricsManager(Lcom/amazon/kcp/application/metrics/internal/MetricsManager;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lcom/amazon/kcp/notifications/handlers/BackgroundTodoSyncNotificationHandlerImpl;->metricsManager:Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    return-void
.end method

.method public final setSyncManager(Lcom/amazon/kindle/sync/SynchronizationManager;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lcom/amazon/kcp/notifications/handlers/BackgroundTodoSyncNotificationHandlerImpl;->syncManager:Lcom/amazon/kindle/sync/SynchronizationManager;

    return-void
.end method
