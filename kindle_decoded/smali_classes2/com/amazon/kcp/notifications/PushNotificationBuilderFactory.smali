.class public Lcom/amazon/kcp/notifications/PushNotificationBuilderFactory;
.super Ljava/lang/Object;
.source "PushNotificationBuilderFactory.java"


# static fields
.field private static final FIRST_BUTTON_ACTION_RECEIVER:Ljava/lang/String; = "com.amazon.kcp.notifications.FIRST_BUTTON"

.field private static final SECOND_BUTTON_ACTION_RECEIVER:Ljava/lang/String; = "com.amazon.kcp.notifications.SECOND_BUTTON"

.field private static final TAG:Ljava/lang/String;

.field private static final TAP_ACTION_RECEIVER:Ljava/lang/String; = "com.amazon.kcp.notifications.TAP_ACTION"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lcom/amazon/kcp/notifications/PushNotificationBuilderFactory;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/notifications/PushNotificationBuilderFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addBigViewAction(Landroid/app/Notification$Builder;Lcom/amazon/reader/notifications/message/NotificationAction;Landroid/content/Context;Ljava/lang/String;Lcom/amazon/reader/notifications/message/MessageMetadata;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 126
    :cond_0
    :try_start_0
    invoke-static {p2, p1, p3, p4}, Lcom/amazon/kcp/notifications/PushNotificationBuilderFactory;->constructPendingIntent(Landroid/content/Context;Lcom/amazon/reader/notifications/message/NotificationAction;Ljava/lang/String;Lcom/amazon/reader/notifications/message/MessageMetadata;)Landroid/app/PendingIntent;

    move-result-object p3

    .line 128
    invoke-virtual {p1}, Lcom/amazon/reader/notifications/message/NotificationAction;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/amazon/kcp/notifications/PushNotificationAction;->valueOf(Ljava/lang/String;)Lcom/amazon/kcp/notifications/PushNotificationAction;

    move-result-object p4

    .line 129
    invoke-virtual {p4}, Lcom/amazon/kcp/notifications/PushNotificationAction;->getDisplayIcon()I

    move-result v0

    invoke-virtual {p4, p2}, Lcom/amazon/kcp/notifications/PushNotificationAction;->getDisplayText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 132
    :catch_0
    sget-object p0, Lcom/amazon/kcp/notifications/PushNotificationBuilderFactory;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unrecognized or unsupported notification action: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/reader/notifications/message/NotificationAction;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static constructNotificationBuilder(Landroid/content/Context;Lcom/amazon/reader/notifications/message/NotificationMessage;)Landroid/app/Notification$Builder;
    .locals 6

    const/4 v0, 0x2

    .line 46
    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 47
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 48
    invoke-virtual {p1}, Lcom/amazon/reader/notifications/message/NotificationMessage;->getMessageContent()Lcom/amazon/reader/notifications/message/MessageContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/reader/notifications/message/MessageContent;->getBigViewStyle()Lcom/amazon/reader/notifications/message/BigViewStyle;

    move-result-object v2

    .line 49
    invoke-virtual {p1}, Lcom/amazon/reader/notifications/message/NotificationMessage;->getMessageMetadata()Lcom/amazon/reader/notifications/message/MessageMetadata;

    move-result-object v3

    .line 52
    invoke-virtual {p1}, Lcom/amazon/reader/notifications/message/NotificationMessage;->getMessageContent()Lcom/amazon/reader/notifications/message/MessageContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/reader/notifications/message/MessageContent;->getTapAction()Lcom/amazon/reader/notifications/message/NotificationAction;

    move-result-object v4

    sget-object v5, Lcom/amazon/kcp/notifications/ActionKey;->TAP_ACTION:Lcom/amazon/kcp/notifications/ActionKey;

    .line 53
    invoke-virtual {v5}, Lcom/amazon/kcp/notifications/ActionKey;->toString()Ljava/lang/String;

    move-result-object v5

    .line 51
    invoke-static {p0, v4, v5, v3}, Lcom/amazon/kcp/notifications/PushNotificationBuilderFactory;->constructPendingIntent(Landroid/content/Context;Lcom/amazon/reader/notifications/message/NotificationAction;Ljava/lang/String;Lcom/amazon/reader/notifications/message/MessageMetadata;)Landroid/app/PendingIntent;

    move-result-object v4

    .line 56
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 57
    invoke-static {v2, p0}, Lcom/amazon/kcp/notifications/NotificationStyleFactory;->constructBigViewStyle(Lcom/amazon/reader/notifications/message/BigViewStyle;Landroid/content/Context;)Landroid/app/Notification$Style;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 58
    invoke-static {p1, p0}, Lcom/amazon/kcp/notifications/PushNotificationBuilderFactory;->getLargeIcon(Lcom/amazon/reader/notifications/message/NotificationMessage;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 59
    invoke-virtual {p1}, Lcom/amazon/reader/notifications/message/NotificationMessage;->getMessageContent()Lcom/amazon/reader/notifications/message/MessageContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazon/reader/notifications/message/MessageContent;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 60
    invoke-virtual {p1}, Lcom/amazon/reader/notifications/message/NotificationMessage;->getMessageContent()Lcom/amazon/reader/notifications/message/MessageContent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/reader/notifications/message/MessageContent;->getContentText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 61
    invoke-virtual {p1, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$drawable;->ic_notification_book:I

    .line 62
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 63
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 64
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 66
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_0

    const-string p1, "kindle_default_channel"

    .line 67
    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 70
    :cond_0
    invoke-virtual {v2}, Lcom/amazon/reader/notifications/message/BigViewStyle;->getBigViewData()Lcom/amazon/reader/notifications/message/BigViewData;

    move-result-object p1

    .line 72
    invoke-virtual {p1}, Lcom/amazon/reader/notifications/message/BigViewData;->getBigFirstButtonAction()Lcom/amazon/reader/notifications/message/NotificationAction;

    move-result-object v0

    sget-object v2, Lcom/amazon/kcp/notifications/ActionKey;->FIRST_BUTTON_ACTION:Lcom/amazon/kcp/notifications/ActionKey;

    invoke-virtual {v2}, Lcom/amazon/kcp/notifications/ActionKey;->toString()Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-static {v1, v0, p0, v2, v3}, Lcom/amazon/kcp/notifications/PushNotificationBuilderFactory;->addBigViewAction(Landroid/app/Notification$Builder;Lcom/amazon/reader/notifications/message/NotificationAction;Landroid/content/Context;Ljava/lang/String;Lcom/amazon/reader/notifications/message/MessageMetadata;)V

    .line 74
    invoke-virtual {p1}, Lcom/amazon/reader/notifications/message/BigViewData;->getBigSecondButtonAction()Lcom/amazon/reader/notifications/message/NotificationAction;

    move-result-object p1

    sget-object v0, Lcom/amazon/kcp/notifications/ActionKey;->SECOND_BUTTON_ACTION:Lcom/amazon/kcp/notifications/ActionKey;

    invoke-virtual {v0}, Lcom/amazon/kcp/notifications/ActionKey;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-static {v1, p1, p0, v0, v3}, Lcom/amazon/kcp/notifications/PushNotificationBuilderFactory;->addBigViewAction(Landroid/app/Notification$Builder;Lcom/amazon/reader/notifications/message/NotificationAction;Landroid/content/Context;Ljava/lang/String;Lcom/amazon/reader/notifications/message/MessageMetadata;)V

    return-object v1
.end method

.method private static constructPendingIntent(Landroid/content/Context;Lcom/amazon/reader/notifications/message/NotificationAction;Ljava/lang/String;Lcom/amazon/reader/notifications/message/MessageMetadata;)Landroid/app/PendingIntent;
    .locals 6

    .line 146
    invoke-virtual {p1}, Lcom/amazon/reader/notifications/message/NotificationAction;->getName()Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-virtual {p1}, Lcom/amazon/reader/notifications/message/NotificationAction;->getRefTag()Ljava/lang/String;

    move-result-object v1

    .line 148
    invoke-virtual {p3}, Lcom/amazon/reader/notifications/message/MessageMetadata;->getCampaignName()Ljava/lang/String;

    move-result-object v2

    .line 149
    invoke-virtual {p3}, Lcom/amazon/reader/notifications/message/MessageMetadata;->getMessageId()Ljava/lang/String;

    move-result-object v3

    .line 151
    invoke-virtual {p1}, Lcom/amazon/reader/notifications/message/NotificationAction;->getData()Ljava/util/Map;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    .line 153
    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    .line 154
    invoke-static {}, Lcom/amazon/kcp/application/KindleProtocol;->getPreferredScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 155
    invoke-static {p2}, Lcom/amazon/kcp/notifications/PushNotificationBuilderFactory;->getIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const/high16 v5, 0x10000000

    .line 156
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 157
    sget-object v5, Lcom/amazon/kcp/notifications/ActionKey;->ACTION_NAME:Lcom/amazon/kcp/notifications/ActionKey;

    invoke-virtual {v5}, Lcom/amazon/kcp/notifications/ActionKey;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    sget-object v0, Lcom/amazon/kcp/notifications/ActionKey;->ACTION_REFTAG:Lcom/amazon/kcp/notifications/ActionKey;

    invoke-virtual {v0}, Lcom/amazon/kcp/notifications/ActionKey;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    sget-object v0, Lcom/amazon/kcp/notifications/ActionKey;->ACTION_DATA:Lcom/amazon/kcp/notifications/ActionKey;

    invoke-virtual {v0}, Lcom/amazon/kcp/notifications/ActionKey;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 160
    sget-object p1, Lcom/amazon/kcp/notifications/ActionKey;->ACTION_SOURCE:Lcom/amazon/kcp/notifications/ActionKey;

    invoke-virtual {p1}, Lcom/amazon/kcp/notifications/ActionKey;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    sget-object p1, Lcom/amazon/kcp/notifications/ActionKey;->MESSAGE_METADATA_KEY:Lcom/amazon/kcp/notifications/ActionKey;

    invoke-virtual {p1}, Lcom/amazon/kcp/notifications/ActionKey;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/amazon/kcp/notifications/ParcelableMetadata;

    invoke-direct {p2, p3}, Lcom/amazon/kcp/notifications/ParcelableMetadata;-><init>(Lcom/amazon/reader/notifications/message/MessageMetadata;)V

    invoke-virtual {v4, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 162
    sget-object p1, Lcom/amazon/kcp/notifications/ActionKey;->CAMPAIGN_NAME:Lcom/amazon/kcp/notifications/ActionKey;

    invoke-virtual {p1}, Lcom/amazon/kcp/notifications/ActionKey;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    sget-object p1, Lcom/amazon/kcp/notifications/ActionKey;->MESSAGE_ID:Lcom/amazon/kcp/notifications/ActionKey;

    invoke-virtual {p1}, Lcom/amazon/kcp/notifications/ActionKey;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    const-class p1, Lcom/amazon/kcp/notifications/receiver/ReaderNotificationsActionReceiver;

    invoke-virtual {v4, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 166
    invoke-static {}, Lcom/amazon/kcp/notifications/PushNotificationBuilderFactory;->getRequestCode()I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p0, p1, v4, p2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private static getIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    .line 177
    sget-object v0, Lcom/amazon/kcp/notifications/ActionKey;->TAP_ACTION:Lcom/amazon/kcp/notifications/ActionKey;

    invoke-virtual {v0}, Lcom/amazon/kcp/notifications/ActionKey;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.amazon.kcp.notifications.TAP_ACTION"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 179
    :cond_0
    sget-object v0, Lcom/amazon/kcp/notifications/ActionKey;->FIRST_BUTTON_ACTION:Lcom/amazon/kcp/notifications/ActionKey;

    invoke-virtual {v0}, Lcom/amazon/kcp/notifications/ActionKey;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.amazon.kcp.notifications.FIRST_BUTTON"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 181
    :cond_1
    sget-object v0, Lcom/amazon/kcp/notifications/ActionKey;->SECOND_BUTTON_ACTION:Lcom/amazon/kcp/notifications/ActionKey;

    invoke-virtual {v0}, Lcom/amazon/kcp/notifications/ActionKey;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 182
    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.amazon.kcp.notifications.SECOND_BUTTON"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 184
    :cond_2
    sget-object p0, Lcom/amazon/kcp/notifications/PushNotificationBuilderFactory;->TAG:Ljava/lang/String;

    const-string v0, "Unrecognized or unsupported notification action source."

    invoke-static {p0, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getLargeIcon(Lcom/amazon/reader/notifications/message/NotificationMessage;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    .line 86
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/reader/notifications/message/NotificationMessage;->getMessageContent()Lcom/amazon/reader/notifications/message/MessageContent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amazon/reader/notifications/message/MessageContent;->getLargeIconUrl()Ljava/lang/String;

    move-result-object p0

    .line 88
    invoke-static {p0}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 93
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 94
    sget v2, Lcom/amazon/kindle/krl/R$dimen;->notification_large_icon_width:I

    .line 95
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget v3, Lcom/amazon/kindle/krl/R$dimen;->notification_large_icon_height:I

    .line 96
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 94
    invoke-static {p0, p1, v2, v1}, Lcom/amazon/kcp/notifications/util/BitmapDownloader;->downloadBitmapFromUrl(Ljava/lang/String;Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_1

    .line 98
    sget-object p1, Lcom/amazon/kcp/notifications/PushNotificationBuilderFactory;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not get bitmap from url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_1
    return-object p1

    :catch_0
    move-exception p0

    .line 104
    sget-object p1, Lcom/amazon/kcp/notifications/PushNotificationBuilderFactory;->TAG:Ljava/lang/String;

    const-string v1, "Error getting large icon for notification"

    invoke-static {p1, v1, p0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static declared-synchronized getRequestCode()I
    .locals 5

    const-class v0, Lcom/amazon/kcp/notifications/PushNotificationBuilderFactory;

    monitor-enter v0

    .line 193
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/32 v3, 0xfffffff

    and-long/2addr v1, v3

    long-to-int v2, v1

    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
