.class public Lcom/amazon/kcp/notifications/ReaderNotificationsIntentService;
.super Landroid/app/IntentService;
.source "ReaderNotificationsIntentService.java"


# static fields
.field private static final FCM_MESSAGE_HANDLED_SUCCESS:Ljava/lang/String; = "FCM.MessageHandledSuccess"

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/amazon/kcp/notifications/ReaderNotificationsIntentService;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/notifications/ReaderNotificationsIntentService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "ReaderNotificationsIntentService"

    .line 25
    invoke-direct {p0, v0}, Lcom/amazon/kcp/notifications/ReaderNotificationsIntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3

    .line 42
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->blockOnAppInitialization()Z

    .line 44
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->arePromotionsAllowed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    invoke-static {p0, v0}, Lcom/amazon/kcp/notifications/util/ReaderNotificationIntentServiceHelper;->handleMessage(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 49
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/notifications/ReaderNotificationsIntentService;->TAG:Ljava/lang/String;

    const-string v2, "FCM.MessageHandledSuccess"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 52
    sget-object v1, Lcom/amazon/kcp/notifications/ReaderNotificationsIntentService;->TAG:Ljava/lang/String;

    const-string v2, "Exception while trying to handle message"

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    :goto_0
    invoke-static {p1}, Landroidx/legacy/content/WakefulBroadcastReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    return-void
.end method
