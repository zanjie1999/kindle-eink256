.class public Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;
.super Ljava/lang/Object;
.source "DownloadNotificationBuilder.java"


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

.field private static final PERCENTAGE_FORMAT:Ljava/text/NumberFormat;

.field private static final PROGRESS_FACTOR:I = 0x3e8


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDownloadNotificationViewFactory:Lcom/audible/android/kcp/download/notification/DownloadNotificationViewFactory;

.field private final mNotificationBuilder:Landroid/app/Notification$Builder;

.field private mRemoteViews:Landroid/widget/RemoteViews;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    .line 35
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#%"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->PERCENTAGE_FORMAT:Ljava/text/NumberFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Notification$Builder;)V
    .locals 1

    .line 43
    new-instance v0, Lcom/audible/android/kcp/download/notification/DownloadNotificationViewFactory;

    invoke-direct {v0, p1}, Lcom/audible/android/kcp/download/notification/DownloadNotificationViewFactory;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;-><init>(Landroid/content/Context;Landroid/app/Notification$Builder;Lcom/audible/android/kcp/download/notification/DownloadNotificationViewFactory;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/app/Notification$Builder;Lcom/audible/android/kcp/download/notification/DownloadNotificationViewFactory;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p2, p0, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->mNotificationBuilder:Landroid/app/Notification$Builder;

    .line 49
    iput-object p3, p0, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->mDownloadNotificationViewFactory:Lcom/audible/android/kcp/download/notification/DownloadNotificationViewFactory;

    .line 50
    invoke-virtual {p3}, Lcom/audible/android/kcp/download/notification/DownloadNotificationViewFactory;->get()Landroid/widget/RemoteViews;

    move-result-object p3

    iput-object p3, p0, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->mRemoteViews:Landroid/widget/RemoteViews;

    .line 51
    iput-object p1, p0, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->mContext:Landroid/content/Context;

    .line 53
    sget p1, Lcom/amazon/kindle/hushpuppy/redding/R$drawable;->action_download_audio_white:I

    invoke-virtual {p2, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 54
    invoke-static {p2}, Lcom/audible/android/kcp/util/NotificationUtil;->setNotificationId(Landroid/app/Notification$Builder;)V

    return-void
.end method

.method public static clearAudioDownloadNotification(Landroid/content/Context;Lcom/audible/mobile/domain/Asin;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 270
    sget-object v0, Lcom/audible/mobile/download/ContentType;->Audiobook:Lcom/audible/mobile/download/ContentType;

    invoke-virtual {v0}, Lcom/audible/mobile/download/ContentType;->getNotificationId()I

    move-result v0

    invoke-static {v0, p1}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->getUniqueDownloadId(ILcom/audible/mobile/domain/Asin;)I

    move-result p1

    const-string v0, "notification"

    .line 272
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 273
    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 275
    :cond_0
    sget-object p0, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p1, "Could not clear download notification since the audiobook asin was null"

    invoke-interface {p0, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private getAndResetRemoteViews()Landroid/widget/RemoteViews;
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->mRemoteViews:Landroid/widget/RemoteViews;

    .line 232
    iget-object v1, p0, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->mDownloadNotificationViewFactory:Lcom/audible/android/kcp/download/notification/DownloadNotificationViewFactory;

    invoke-virtual {v1}, Lcom/audible/android/kcp/download/notification/DownloadNotificationViewFactory;->get()Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, p0, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->mRemoteViews:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public static getUniqueDownloadId(ILcom/audible/mobile/domain/Asin;)I
    .locals 0

    .line 258
    invoke-interface {p1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method private progressBarVisiblity(Z)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    .line 244
    :goto_1
    iget-object p1, p0, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->mRemoteViews:Landroid/widget/RemoteViews;

    sget v1, Lcom/amazon/kindle/hushpuppy/redding/R$id;->download_notification_progress_bar:I

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 245
    iget-object p1, p0, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->mRemoteViews:Landroid/widget/RemoteViews;

    sget v1, Lcom/amazon/kindle/hushpuppy/redding/R$id;->download_notification_side_button:I

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 246
    iget-object p1, p0, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->mRemoteViews:Landroid/widget/RemoteViews;

    sget v1, Lcom/amazon/kindle/hushpuppy/redding/R$id;->download_notification_text:I

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-void
.end method


# virtual methods
.method public build()Landroid/app/Notification;
    .locals 2

    .line 216
    invoke-static {}, Lcom/audible/hushpuppy/common/debug/WindowsSupportUtil;->isWindowsDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-direct {p0}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->getAndResetRemoteViews()Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 220
    iget-object v0, p0, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public withButtonIntent(Landroid/app/PendingIntent;)Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->mRemoteViews:Landroid/widget/RemoteViews;

    sget v1, Lcom/amazon/kindle/hushpuppy/redding/R$id;->download_notification_side_button:I

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-object p0
.end method

.method public withDownloadProgress(JJZ)Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;
    .locals 5

    const/4 v0, 0x1

    .line 98
    invoke-direct {p0, v0}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->progressBarVisiblity(Z)V

    const/4 v0, 0x0

    if-nez p5, :cond_0

    const-wide/16 v1, 0x0

    cmp-long v3, p3, v1

    if-lez v3, :cond_0

    const/16 v0, 0x3e8

    const-wide/16 v1, 0x3e8

    mul-long p1, p1, v1

    .line 102
    div-long/2addr p1, p3

    long-to-int p2, p1

    .line 103
    iget-object p1, p0, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->mRemoteViews:Landroid/widget/RemoteViews;

    sget p3, Lcom/amazon/kindle/hushpuppy/redding/R$id;->download_notification_information:I

    sget-object p4, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->PERCENTAGE_FORMAT:Ljava/text/NumberFormat;

    int-to-double v1, p2

    int-to-double v3, v0

    div-double/2addr v1, v3

    invoke-virtual {p4, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p3, p4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 106
    :goto_0
    iget-object p1, p0, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->mRemoteViews:Landroid/widget/RemoteViews;

    sget p3, Lcom/amazon/kindle/hushpuppy/redding/R$id;->download_notification_progress_bar:I

    invoke-virtual {p1, p3, v0, p2, p5}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    return-object p0
.end method

.method public withInformation(Ljava/lang/String;)Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->mRemoteViews:Landroid/widget/RemoteViews;

    sget v1, Lcom/amazon/kindle/hushpuppy/redding/R$id;->download_notification_information:I

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    return-object p0
.end method

.method public withNativeAction(ILjava/lang/String;Landroid/app/PendingIntent;)Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;
    .locals 1

    .line 199
    new-instance v0, Landroid/app/Notification$Action$Builder;

    invoke-direct {v0, p1, p2, p3}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 201
    iget-object p1, p0, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public withNativeProgressBar(JJZ)Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->mNotificationBuilder:Landroid/app/Notification$Builder;

    long-to-int p4, p3

    long-to-int p2, p1

    invoke-virtual {v0, p4, p2, p5}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 187
    iget-object p1, p0, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->mNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 188
    iget-object p1, p0, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->mNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public withNativeTime()Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;
    .locals 3

    .line 209
    iget-object v0, p0, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 210
    iget-object v0, p0, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->mNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public withNativeTitleAndSubtitle(Ljava/lang/String;Ljava/lang/String;)Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 175
    iget-object p1, p0, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public withNotificationIntent(Landroid/app/PendingIntent;)Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 149
    iget-object v0, p0, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->mRemoteViews:Landroid/widget/RemoteViews;

    sget v1, Lcom/amazon/kindle/hushpuppy/redding/R$id;->download_notification_body:I

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 150
    iget-object p1, p0, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->mNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public withText(Ljava/lang/String;)Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;
    .locals 2

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, v0}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->progressBarVisiblity(Z)V

    .line 65
    iget-object v0, p0, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->mRemoteViews:Landroid/widget/RemoteViews;

    sget v1, Lcom/amazon/kindle/hushpuppy/redding/R$id;->download_notification_text:I

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    return-object p0
.end method

.method public withTime(Ljava/lang/Long;)Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;
    .locals 4

    if-nez p1, :cond_0

    .line 119
    iget-object p1, p0, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->mRemoteViews:Landroid/widget/RemoteViews;

    sget v0, Lcom/amazon/kindle/hushpuppy/redding/R$id;->download_notification_start_time:I

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->mRemoteViews:Landroid/widget/RemoteViews;

    sget v1, Lcom/amazon/kindle/hushpuppy/redding/R$id;->download_notification_start_time:I

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string p1, "setTime"

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    :goto_0
    return-object p0
.end method

.method public withTitle(Ljava/lang/String;)Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;
    .locals 6

    .line 75
    iget-object v0, p0, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->mRemoteViews:Landroid/widget/RemoteViews;

    sget v1, Lcom/amazon/kindle/hushpuppy/redding/R$id;->download_notification_title:I

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 76
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-le v0, v1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->mRemoteViews:Landroid/widget/RemoteViews;

    sget v1, Lcom/amazon/kindle/hushpuppy/redding/R$id;->download_notification_side_button:I

    iget-object v2, p0, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->mContext:Landroid/content/Context;

    .line 78
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/hushpuppy/redding/R$string;->accessibility_download_notification_cancel_description:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 77
    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    :cond_0
    return-object p0
.end method
