.class public Lcom/amazon/kcp/notifications/handlers/ICSNotificationHandler;
.super Ljava/lang/Object;
.source "ICSNotificationHandler.java"

# interfaces
.implements Lcom/amazon/kcp/notifications/handlers/NotificationHandler;


# static fields
.field private static final SIMPLE_CLASS_NAME:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    const-class v0, Lcom/amazon/kcp/notifications/handlers/ICSNotificationHandler;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/kcp/notifications/handlers/ICSNotificationHandler;->TAG:Ljava/lang/String;

    .line 28
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/notifications/handlers/ICSNotificationHandler;->SIMPLE_CLASS_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private enqueueSMDSync(Landroid/content/Context;)V
    .locals 2

    .line 70
    new-instance p1, Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    sget-object v0, Lcom/amazon/kcp/application/sync/internal/SyncType;->SMD_POLL_SYNC:Lcom/amazon/kcp/application/sync/internal/SyncType;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, v1, v1}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;-><init>(Lcom/amazon/kcp/application/sync/internal/SyncType;Lcom/amazon/kindle/model/content/ILocalBookInfo;Ljava/util/Date;Lcom/amazon/kindle/services/download/IStatusTracker;)V

    .line 71
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSynchronizationManager()Lcom/amazon/kindle/sync/SynchronizationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/sync/SynchronizationManager;->sync(Lcom/amazon/kcp/application/sync/internal/SyncParameters;)Z

    return-void
.end method


# virtual methods
.method public isMessageValid(Lcom/amazon/reader/notifications/message/NotificationMessage;)Z
    .locals 2

    .line 58
    invoke-virtual {p1}, Lcom/amazon/reader/notifications/message/NotificationMessage;->getMessageMetadata()Lcom/amazon/reader/notifications/message/MessageMetadata;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 59
    sget-object p1, Lcom/amazon/kcp/notifications/handlers/ICSNotificationHandler;->TAG:Ljava/lang/String;

    const-string v0, "MessageMetadata is null"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 62
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/reader/notifications/message/NotificationMessage;->getMessageMetadata()Lcom/amazon/reader/notifications/message/MessageMetadata;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/reader/notifications/message/MessageMetadata;->getMessageId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 63
    sget-object p1, Lcom/amazon/kcp/notifications/handlers/ICSNotificationHandler;->TAG:Ljava/lang/String;

    const-string v0, "Received empty MessageId"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public performAction(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 1

    .line 36
    :try_start_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderNotificationsManager()Lcom/amazon/kcp/notifications/ReaderNotificationsManagerEx;

    move-result-object v0

    .line 37
    invoke-interface {v0, p2}, Lcom/amazon/reader/notifications/ReaderNotificationsManager;->parseMessage(Landroid/os/Bundle;)Lcom/amazon/reader/notifications/message/NotificationMessage;

    move-result-object p2

    .line 38
    invoke-virtual {p0, p2}, Lcom/amazon/kcp/notifications/handlers/ICSNotificationHandler;->isMessageValid(Lcom/amazon/reader/notifications/message/NotificationMessage;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 39
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object p2, Lcom/amazon/kcp/notifications/handlers/ICSNotificationHandler;->SIMPLE_CLASS_NAME:Ljava/lang/String;

    sget-object v0, Lcom/amazon/kcp/notifications/metrics/NotificationStatus;->VALIDITY_FAILED:Lcom/amazon/kcp/notifications/metrics/NotificationStatus;

    invoke-virtual {v0}, Lcom/amazon/kcp/notifications/metrics/NotificationStatus;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 43
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kcp/notifications/handlers/ICSNotificationHandler;->enqueueSMDSync(Landroid/content/Context;)V

    .line 45
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object p2, Lcom/amazon/kcp/notifications/handlers/ICSNotificationHandler;->SIMPLE_CLASS_NAME:Ljava/lang/String;

    sget-object v0, Lcom/amazon/kcp/notifications/metrics/NotificationStatus;->SILENTLY_EXECUTED:Lcom/amazon/kcp/notifications/metrics/NotificationStatus;

    invoke-virtual {v0}, Lcom/amazon/kcp/notifications/metrics/NotificationStatus;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 48
    sget-object p2, Lcom/amazon/kcp/notifications/handlers/ICSNotificationHandler;->TAG:Ljava/lang/String;

    const-string v0, "Failure in executing silent notification"

    invoke-static {p2, v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object p2, Lcom/amazon/kcp/notifications/handlers/ICSNotificationHandler;->SIMPLE_CLASS_NAME:Ljava/lang/String;

    sget-object v0, Lcom/amazon/kcp/notifications/metrics/NotificationStatus;->PERMANENT_FAILURE:Lcom/amazon/kcp/notifications/metrics/NotificationStatus;

    invoke-virtual {v0}, Lcom/amazon/kcp/notifications/metrics/NotificationStatus;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
