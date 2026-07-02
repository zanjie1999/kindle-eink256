.class final Lcom/amazon/kcp/notifications/util/PushNotificationHelper$1;
.super Ljava/lang/Object;
.source "PushNotificationHelper.java"

# interfaces
.implements Lcom/amazon/reader/notifications/ReaderNotificationsStatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/notifications/util/PushNotificationHelper;->register(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/Exception;)V
    .locals 3

    .line 75
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    invoke-static {}, Lcom/amazon/kcp/notifications/util/PushNotificationHelper;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PushNotification.RegisterCalledOnException"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-static {}, Lcom/amazon/kcp/notifications/util/PushNotificationHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AndroidReaderNotificationsClient called onException."

    invoke-static {v0, v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3

    .line 68
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    invoke-static {}, Lcom/amazon/kcp/notifications/util/PushNotificationHelper;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PushNotification.RegisterEndpointArnSuccess"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-static {}, Lcom/amazon/kcp/notifications/util/PushNotificationHelper;->access$000()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSuccess called with endpointArn= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    invoke-static {}, Lcom/amazon/kcp/notifications/util/PushNotificationHelper;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Successfully registered for push notifications."

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
