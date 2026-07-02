.class public Lcom/amazon/kcp/notifications/metrics/ReaderNotificationsMetricsManager;
.super Ljava/lang/Object;
.source "ReaderNotificationsMetricsManager.java"


# static fields
.field static final ACTION_TAP:Ljava/lang/String; = "ACTION_TAP"

.field static final ACTIVITY:Ljava/lang/String; = "activity"

.field private static final CAMPAIGN_MESSAGE_ID_KEY:Ljava/lang/String; = "messageId"

.field static final CAMPAIGN_NAME:Ljava/lang/String; = "campaign_name"

.field private static final CAMPAIGN_NAME_KEY:Ljava/lang/String; = "campaignName"

.field static final DISPLAY_STATUS:Ljava/lang/String; = "display_status"

.field private static final GENERAL_NOTIFICATIONS:Ljava/lang/String; = "GENERAL_NOTIFICATIONS"

.field private static final GENERAL_NOTIFICATIONS_RECEIVED:Ljava/lang/String; = "GeneralNotificationsReceived_"

.field private static final KINDLE_DEALS_NOTIFICATIONS:Ljava/lang/String; = "KINDLE_DEALS_NOTIFICATIONS"

.field private static final KINDLE_DEALS_NOTIFICATIONS_RECEIVED:Ljava/lang/String; = "KindleDealsNotificationsReceived_"

.field static final MESSAGE_ID:Ljava/lang/String; = "message_id"

.field static final NOTIFICATION_RECEIVED_FM:Ljava/lang/String; = "RECEIVED"

.field private static final NOTIFICATION_STATUS:Ljava/lang/String; = "NotificationStatus"

.field private static final TAG:Ljava/lang/String;

.field private static final fastMetrics:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

.field private static final readingStreamsEncoder:Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    const-class v0, Lcom/amazon/kcp/notifications/metrics/ReaderNotificationsMetricsManager;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/notifications/metrics/ReaderNotificationsMetricsManager;->TAG:Ljava/lang/String;

    .line 60
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-object v0, Lcom/amazon/kcp/notifications/metrics/ReaderNotificationsMetricsManager;->readingStreamsEncoder:Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    .line 62
    const-class v0, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    sput-object v0, Lcom/amazon/kcp/notifications/metrics/ReaderNotificationsMetricsManager;->fastMetrics:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    if-nez v0, :cond_1

    .line 64
    sget-object v0, Lcom/amazon/kcp/notifications/metrics/ReaderNotificationsMetricsManager;->TAG:Ljava/lang/String;

    const-string v1, "FastMetrics not available"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMetadata(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "campaignName"

    .line 99
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "messageId"

    .line 100
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static reportNotificationClicked(Lcom/amazon/kcp/notifications/ParcelableMetadata;Ljava/lang/String;)V
    .locals 1

    .line 89
    invoke-static {p0, p1}, Lcom/amazon/kcp/notifications/metrics/ReaderNotificationsMetricsManager;->reportNotificationClickedToReadingStreams(Lcom/amazon/kcp/notifications/ParcelableMetadata;Ljava/lang/String;)V

    const-string v0, "ACTION_TAP"

    .line 90
    invoke-static {v0, p0}, Lcom/amazon/kcp/notifications/metrics/ReaderNotificationsMetricsManager;->reportNotificationsAction(Ljava/lang/String;Lcom/amazon/kcp/notifications/ParcelableMetadata;)V

    .line 91
    invoke-static {p0, p1}, Lcom/amazon/kcp/notifications/metrics/ReaderNotificationsMetricsManager;->reportNotificationClickedToDET(Lcom/amazon/kcp/notifications/ParcelableMetadata;Ljava/lang/String;)V

    return-void
.end method

.method private static reportNotificationClickedToDET(Lcom/amazon/kcp/notifications/ParcelableMetadata;Ljava/lang/String;)V
    .locals 2

    .line 202
    invoke-virtual {p0}, Lcom/amazon/kcp/notifications/ParcelableMetadata;->getCampaignName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "kindle_deals"

    invoke-static {p0, v0}, Lcom/amazon/kindle/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    const/16 v0, 0x5f

    if-eqz p0, :cond_0

    .line 203
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KindleDealsNotificationsReceived_"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 204
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/services/authentication/TokenKey;->PFM:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-interface {p1, v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->fetchToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KINDLE_DEALS_NOTIFICATIONS"

    goto :goto_0

    .line 208
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GeneralNotificationsReceived_"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 209
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/services/authentication/TokenKey;->PFM:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-interface {p1, v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->fetchToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GENERAL_NOTIFICATIONS"

    .line 213
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reporting metric "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Reported metric "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " successfully"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method private static reportNotificationClickedToReadingStreams(Lcom/amazon/kcp/notifications/ParcelableMetadata;Ljava/lang/String;)V
    .locals 2

    .line 225
    sget-object v0, Lcom/amazon/kcp/notifications/metrics/ReaderNotificationsMetricsManager;->readingStreamsEncoder:Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/amazon/kcp/notifications/ParcelableMetadata;->getCampaignName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/kcp/notifications/ParcelableMetadata;->getMessageId()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/amazon/kcp/notifications/metrics/ReaderNotificationsMetricsManager;->getMetadata(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    const-string v1, "ReaderNotifications"

    .line 226
    invoke-interface {v0, v1, p1, p0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public static reportNotificationMessageReceived(Lcom/amazon/reader/notifications/message/MessageMetadata;Lcom/amazon/kcp/notifications/metrics/NotificationStatus;)V
    .locals 1

    if-eqz p0, :cond_1

    .line 74
    invoke-virtual {p0}, Lcom/amazon/reader/notifications/message/MessageMetadata;->getCampaignName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    invoke-static {p0, p1}, Lcom/amazon/kcp/notifications/metrics/ReaderNotificationsMetricsManager;->reportNotificationReceivedToReadingStreams(Lcom/amazon/reader/notifications/message/MessageMetadata;Lcom/amazon/kcp/notifications/metrics/NotificationStatus;)V

    .line 79
    invoke-static {p0, p1}, Lcom/amazon/kcp/notifications/metrics/ReaderNotificationsMetricsManager;->reportNotificationsReceived(Lcom/amazon/reader/notifications/message/MessageMetadata;Lcom/amazon/kcp/notifications/metrics/NotificationStatus;)V

    .line 80
    invoke-static {p0, p1}, Lcom/amazon/kcp/notifications/metrics/ReaderNotificationsMetricsManager;->reportNotificationReceivedToDET(Lcom/amazon/reader/notifications/message/MessageMetadata;Lcom/amazon/kcp/notifications/metrics/NotificationStatus;)V

    return-void

    .line 75
    :cond_1
    :goto_0
    sget-object p0, Lcom/amazon/kcp/notifications/metrics/ReaderNotificationsMetricsManager;->TAG:Ljava/lang/String;

    const-string p1, "Not reporting metrics because message metadata is null or campaign name is null"

    invoke-static {p0, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static reportNotificationReceivedToDET(Lcom/amazon/reader/notifications/message/MessageMetadata;Lcom/amazon/kcp/notifications/metrics/NotificationStatus;)V
    .locals 2

    .line 153
    invoke-virtual {p0}, Lcom/amazon/reader/notifications/message/MessageMetadata;->getCampaignName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "kindle_deals"

    invoke-static {p0, v0}, Lcom/amazon/kindle/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    const/16 v0, 0x5f

    if-eqz p0, :cond_0

    .line 154
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KindleDealsNotificationsReceived_"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kcp/notifications/metrics/NotificationStatus;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 155
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/services/authentication/TokenKey;->PFM:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-interface {p1, v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->fetchToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KINDLE_DEALS_NOTIFICATIONS"

    goto :goto_0

    .line 159
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GeneralNotificationsReceived_"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kcp/notifications/metrics/NotificationStatus;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 160
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/services/authentication/TokenKey;->PFM:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-interface {p1, v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->fetchToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GENERAL_NOTIFICATIONS"

    .line 164
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reporting metric "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Reported metric "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " successfully"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method private static reportNotificationReceivedToReadingStreams(Lcom/amazon/reader/notifications/message/MessageMetadata;Lcom/amazon/kcp/notifications/metrics/NotificationStatus;)V
    .locals 2

    .line 239
    invoke-virtual {p0}, Lcom/amazon/reader/notifications/message/MessageMetadata;->getCampaignName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/reader/notifications/message/MessageMetadata;->getMessageId()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/amazon/kcp/notifications/metrics/ReaderNotificationsMetricsManager;->getMetadata(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    .line 240
    invoke-virtual {p1}, Lcom/amazon/kcp/notifications/metrics/NotificationStatus;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationStatus"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reporting notification received to reading streams with status "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    sget-object p1, Lcom/amazon/kcp/notifications/metrics/ReaderNotificationsMetricsManager;->readingStreamsEncoder:Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    if-eqz p1, :cond_0

    const-string v0, "ReaderNotifications"

    .line 244
    invoke-interface {p1, v0, p0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->recordMetadata(Ljava/lang/String;Ljava/util/Map;)V

    .line 247
    sget-object p0, Lcom/amazon/kcp/notifications/metrics/ReaderNotificationsMetricsManager;->readingStreamsEncoder:Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->invokeExplicitMessageProcessing(Z)V

    :cond_0
    return-void
.end method

.method public static reportNotificationsAction(Ljava/lang/String;Lcom/amazon/kcp/notifications/ParcelableMetadata;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 114
    invoke-virtual {p1}, Lcom/amazon/kcp/notifications/ParcelableMetadata;->getMessageId()Ljava/lang/String;

    move-result-object v1

    .line 115
    invoke-virtual {p1}, Lcom/amazon/kcp/notifications/ParcelableMetadata;->getCampaignName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    move-object v1, p1

    .line 117
    :goto_0
    invoke-static {p0, v1, p1, v0}, Lcom/amazon/kcp/notifications/metrics/ReaderNotificationsMetricsManager;->reportToFastMetrics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static reportNotificationsReceived(Lcom/amazon/reader/notifications/message/MessageMetadata;Lcom/amazon/kcp/notifications/metrics/NotificationStatus;)V
    .locals 2

    .line 126
    invoke-virtual {p0}, Lcom/amazon/reader/notifications/message/MessageMetadata;->getMessageId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/reader/notifications/message/MessageMetadata;->getCampaignName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/amazon/kcp/notifications/metrics/NotificationStatus;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "RECEIVED"

    invoke-static {v1, v0, p0, p1}, Lcom/amazon/kcp/notifications/metrics/ReaderNotificationsMetricsManager;->reportToFastMetrics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static reportPushNotificationsSettings(Ljava/lang/String;Z)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "%s%s"

    if-eqz p1, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    aput-object p0, p1, v1

    const-string p0, "_ON"

    aput-object p0, p1, v0

    .line 137
    invoke-static {v3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-array p1, v2, [Ljava/lang/Object;

    aput-object p0, p1, v1

    const-string p0, "_OFF"

    aput-object p0, p1, v0

    .line 139
    invoke-static {v3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    const/4 p1, 0x0

    .line 141
    invoke-static {p0, p1, p1, p1}, Lcom/amazon/kcp/notifications/metrics/ReaderNotificationsMetricsManager;->reportToFastMetrics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static reportToFastMetrics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 178
    sget-object v0, Lcom/amazon/kcp/notifications/metrics/ReaderNotificationsMetricsManager;->fastMetrics:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    if-eqz v0, :cond_0

    .line 180
    :try_start_0
    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->READER_NOTIFICATION_METRICS:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v1}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->READER_NOTIFICATION_METRICS:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    .line 181
    invoke-virtual {v2}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaVersion()I

    move-result v2

    .line 180
    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->getPayloadBuilder(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v0

    const-string v1, "activity"

    .line 182
    invoke-interface {v0, v1, p0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object p0

    const-string v1, "message_id"

    .line 183
    invoke-interface {p0, v1, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object p0

    const-string p1, "campaign_name"

    .line 184
    invoke-interface {p0, p1, p2}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object p0

    const-string p1, "display_status"

    .line 185
    invoke-interface {p0, p1, p3}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 186
    sget-object p0, Lcom/amazon/kcp/notifications/metrics/ReaderNotificationsMetricsManager;->fastMetrics:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    invoke-interface {v0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->build()Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->record(Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;)V

    .line 187
    sget-object p0, Lcom/amazon/kcp/notifications/metrics/ReaderNotificationsMetricsManager;->TAG:Ljava/lang/String;

    const-string p1, "Reported action to FastMetrics"

    invoke-static {p0, p1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 189
    :catch_0
    sget-object p0, Lcom/amazon/kcp/notifications/metrics/ReaderNotificationsMetricsManager;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to get FastMetricsPayloadBuilder for schema"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->READER_NOTIFICATION_METRICS:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {p2}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
