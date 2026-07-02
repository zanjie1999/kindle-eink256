.class public final Lcom/amazon/kcp/notifications/handlers/BackgroundTodoSyncNotificationHandler;
.super Ljava/lang/Object;
.source "BackgroundTodoSyncNotificationHandler.kt"

# interfaces
.implements Lcom/amazon/kcp/notifications/handlers/DiscoverableBackgroundTodoSyncNotificationHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHandler()Lcom/amazon/kcp/notifications/handlers/NotificationHandler;
    .locals 7

    .line 24
    new-instance v6, Lcom/amazon/kcp/notifications/handlers/BackgroundTodoSyncNotificationHandlerImpl;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/notifications/handlers/BackgroundTodoSyncNotificationHandlerImpl;-><init>(Lcom/amazon/kindle/sync/SynchronizationManager;Lcom/amazon/kcp/application/metrics/internal/MetricsManager;Lcom/amazon/kcp/application/IAndroidApplicationController;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6
.end method
