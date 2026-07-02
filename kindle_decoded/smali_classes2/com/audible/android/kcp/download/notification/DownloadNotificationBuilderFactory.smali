.class public Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilderFactory;
.super Ljava/lang/Object;
.source "DownloadNotificationBuilderFactory.java"


# instance fields
.field private final mAsin:Lcom/audible/mobile/domain/Asin;

.field private final mBook:Lcom/amazon/kindle/krx/content/IBook;

.field private final mContext:Landroid/content/Context;

.field private final mDownloadNotificationBuilder:Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;

.field private final mRequestCode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;Lcom/amazon/kindle/krx/content/IBook;Lcom/audible/mobile/domain/Asin;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilderFactory;->mContext:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilderFactory;->mDownloadNotificationBuilder:Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;

    .line 40
    iput-object p3, p0, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilderFactory;->mBook:Lcom/amazon/kindle/krx/content/IBook;

    .line 41
    iput-object p4, p0, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilderFactory;->mAsin:Lcom/audible/mobile/domain/Asin;

    .line 47
    sget-object p1, Lcom/audible/mobile/download/ContentType;->Audiobook:Lcom/audible/mobile/download/ContentType;

    invoke-virtual {p1}, Lcom/audible/mobile/download/ContentType;->getNotificationId()I

    move-result p1

    invoke-static {p1, p4}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->getUniqueDownloadId(ILcom/audible/mobile/domain/Asin;)I

    move-result p1

    iput p1, p0, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilderFactory;->mRequestCode:I

    return-void
.end method

.method private buildCancelIntent()Landroid/app/PendingIntent;
    .locals 4

    .line 126
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/audible/android/kcp/download/receiver/AudioDownloaderAction;->CANCEL_DOWNLOAD:Lcom/audible/android/kcp/download/receiver/AudioDownloaderAction;

    iget-object v2, p0, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilderFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/audible/android/kcp/download/receiver/AudioDownloaderAction;->getActionString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 127
    sget-object v1, Lcom/audible/android/kcp/util/BroadcastReceiverExtra;->AUDIOBOOK_ASIN:Lcom/audible/android/kcp/util/BroadcastReceiverExtra;

    invoke-virtual {v1}, Lcom/audible/android/kcp/util/BroadcastReceiverExtra;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilderFactory;->mAsin:Lcom/audible/mobile/domain/Asin;

    invoke-interface {v2}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    iget-object v1, p0, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilderFactory;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilderFactory;->mRequestCode:I

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private buildOpenPlayerIntent()Landroid/app/PendingIntent;
    .locals 4

    .line 116
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/audible/android/kcp/player/receiver/PlayerAction;->OPEN:Lcom/audible/android/kcp/player/receiver/PlayerAction;

    iget-object v2, p0, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilderFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/audible/android/kcp/player/receiver/PlayerAction;->getActionString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    sget-object v1, Lcom/audible/android/kcp/util/BroadcastReceiverExtra;->AUDIOBOOK_ASIN:Lcom/audible/android/kcp/util/BroadcastReceiverExtra;

    invoke-virtual {v1}, Lcom/audible/android/kcp/util/BroadcastReceiverExtra;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilderFactory;->mAsin:Lcom/audible/mobile/domain/Asin;

    invoke-interface {v2}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    sget-object v1, Lcom/audible/android/kcp/util/BroadcastReceiverExtra;->EBOOK_ID:Lcom/audible/android/kcp/util/BroadcastReceiverExtra;

    invoke-virtual {v1}, Lcom/audible/android/kcp/util/BroadcastReceiverExtra;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilderFactory;->mBook:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    sget-object v1, Lcom/audible/android/kcp/util/BroadcastReceiverExtra;->SOURCE:Lcom/audible/android/kcp/util/BroadcastReceiverExtra;

    invoke-virtual {v1}, Lcom/audible/android/kcp/util/BroadcastReceiverExtra;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/audible/android/kcp/util/BroadcastSource;->NOTIFICATION_BAR:Lcom/audible/android/kcp/util/BroadcastSource;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    iget-object v1, p0, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilderFactory;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilderFactory;->mRequestCode:I

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private getBookAuthors()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilderFactory;->mBook:Lcom/amazon/kindle/krx/content/IBook;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getAuthors()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method


# virtual methods
.method public getBookTitle()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilderFactory;->mBook:Lcom/amazon/kindle/krx/content/IBook;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getDownloadCancelledNotification()Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilderFactory;->mContext:Landroid/content/Context;

    sget v1, Lcom/amazon/kindle/hushpuppy/redding/R$string;->download_notification_cancelled:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-static {}, Lcom/audible/hushpuppy/common/debug/WindowsSupportUtil;->isWindowsDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilderFactory;->getNewDownloadNotificationBuilder()Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;

    move-result-object v1

    .line 107
    invoke-virtual {p0}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilderFactory;->getBookTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->withNativeTitleAndSubtitle(Ljava/lang/String;Ljava/lang/String;)Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;

    invoke-virtual {v1}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->withNativeTime()Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;

    return-object v1

    .line 110
    :cond_0
    iget-object v1, p0, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilderFactory;->mDownloadNotificationBuilder:Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;

    invoke-direct {p0}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilderFactory;->buildOpenPlayerIntent()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->withNotificationIntent(Landroid/app/PendingIntent;)Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;

    invoke-virtual {p0}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilderFactory;->getBookTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->withTitle(Ljava/lang/String;)Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;

    invoke-virtual {v1, v0}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->withText(Ljava/lang/String;)Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;

    const-string v0, ""

    .line 111
    invoke-virtual {v1, v0}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->withInformation(Ljava/lang/String;)Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;

    return-object v1
.end method

.method public getDownloadCompletedNotification()Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;
    .locals 4

    .line 77
    iget-object v0, p0, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilderFactory;->mContext:Landroid/content/Context;

    sget v1, Lcom/amazon/kindle/hushpuppy/redding/R$string;->download_notification_success:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-static {}, Lcom/audible/hushpuppy/common/debug/WindowsSupportUtil;->isWindowsDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilderFactory;->getNewDownloadNotificationBuilder()Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;

    move-result-object v1

    .line 80
    invoke-virtual {p0}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilderFactory;->getBookTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->withNativeTitleAndSubtitle(Ljava/lang/String;Ljava/lang/String;)Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;

    .line 81
    invoke-virtual {v1}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->withNativeTime()Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;

    return-object v1

    .line 84
    :cond_0
    iget-object v1, p0, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilderFactory;->mDownloadNotificationBuilder:Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;

    invoke-direct {p0}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilderFactory;->buildOpenPlayerIntent()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->withNotificationIntent(Landroid/app/PendingIntent;)Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;

    invoke-virtual {p0}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilderFactory;->getBookTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->withTitle(Ljava/lang/String;)Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->withTime(Ljava/lang/Long;)Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;

    .line 85
    invoke-virtual {v1, v0}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->withText(Ljava/lang/String;)Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;

    const-string v0, ""

    invoke-virtual {v1, v0}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->withInformation(Ljava/lang/String;)Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;

    return-object v1
.end method

.method public getDownloadErrorNotification()Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;
    .locals 4

    .line 65
    iget-object v0, p0, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilderFactory;->mContext:Landroid/content/Context;

    sget v1, Lcom/amazon/kindle/hushpuppy/redding/R$string;->download_notification_error:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-static {}, Lcom/audible/hushpuppy/common/debug/WindowsSupportUtil;->isWindowsDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilderFactory;->getNewDownloadNotificationBuilder()Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;

    move-result-object v1

    .line 68
    invoke-virtual {p0}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilderFactory;->getBookTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->withNativeTitleAndSubtitle(Ljava/lang/String;Ljava/lang/String;)Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;

    invoke-virtual {v1}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->withNativeTime()Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;

    return-object v1

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilderFactory;->mDownloadNotificationBuilder:Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;

    invoke-direct {p0}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilderFactory;->buildOpenPlayerIntent()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->withNotificationIntent(Landroid/app/PendingIntent;)Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;

    invoke-virtual {p0}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilderFactory;->getBookTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->withTitle(Ljava/lang/String;)Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->withTime(Ljava/lang/Long;)Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;

    .line 72
    invoke-virtual {v1, v0}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->withText(Ljava/lang/String;)Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;

    const-string v0, ""

    invoke-virtual {v1, v0}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->withInformation(Ljava/lang/String;)Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;

    return-object v1
.end method

.method public getDownloadProgressNotification(JJZ)Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;
    .locals 7

    .line 90
    invoke-static {}, Lcom/audible/hushpuppy/common/debug/WindowsSupportUtil;->isWindowsDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilderFactory;->getNewDownloadNotificationBuilder()Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;

    move-result-object v0

    .line 92
    invoke-virtual {p0}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilderFactory;->getBookTitle()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilderFactory;->getBookAuthors()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->withNativeTitleAndSubtitle(Ljava/lang/String;Ljava/lang/String;)Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;

    move-object v1, v0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    .line 93
    invoke-virtual/range {v1 .. v6}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->withNativeProgressBar(JJZ)Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;

    sget p1, Lcom/amazon/kindle/hushpuppy/redding/R$drawable;->mini_player_cancel_button_black:I

    iget-object p2, p0, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilderFactory;->mContext:Landroid/content/Context;

    sget p3, Lcom/amazon/kindle/hushpuppy/redding/R$string;->cancel:I

    .line 95
    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilderFactory;->buildCancelIntent()Landroid/app/PendingIntent;

    move-result-object p3

    .line 94
    invoke-virtual {v0, p1, p2, p3}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->withNativeAction(ILjava/lang/String;Landroid/app/PendingIntent;)Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;

    return-object v0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilderFactory;->mDownloadNotificationBuilder:Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;

    invoke-virtual {p0}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilderFactory;->getBookTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->withTitle(Ljava/lang/String;)Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;

    invoke-direct {p0}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilderFactory;->buildOpenPlayerIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->withNotificationIntent(Landroid/app/PendingIntent;)Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;

    move-object v1, v0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    .line 99
    invoke-virtual/range {v1 .. v6}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->withDownloadProgress(JJZ)Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;

    return-object v0
.end method

.method public getDownloadQueuedNotification()Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;
    .locals 10

    .line 52
    invoke-static {}, Lcom/audible/hushpuppy/common/debug/WindowsSupportUtil;->isWindowsDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilderFactory;->getNewDownloadNotificationBuilder()Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;

    move-result-object v0

    .line 54
    invoke-virtual {p0}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilderFactory;->getBookTitle()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilderFactory;->getBookAuthors()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->withNativeTitleAndSubtitle(Ljava/lang/String;Ljava/lang/String;)Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;

    sget v1, Lcom/amazon/kindle/hushpuppy/redding/R$drawable;->mini_player_cancel_button_black:I

    iget-object v2, p0, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilderFactory;->mContext:Landroid/content/Context;

    sget v3, Lcom/amazon/kindle/hushpuppy/redding/R$string;->cancel:I

    .line 56
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilderFactory;->buildCancelIntent()Landroid/app/PendingIntent;

    move-result-object v3

    .line 55
    invoke-virtual {v0, v1, v2, v3}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->withNativeAction(ILjava/lang/String;Landroid/app/PendingIntent;)Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;

    .line 57
    invoke-virtual {v0}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->withNativeTime()Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;

    return-object v0

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilderFactory;->mDownloadNotificationBuilder:Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;

    invoke-direct {p0}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilderFactory;->buildOpenPlayerIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->withNotificationIntent(Landroid/app/PendingIntent;)Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;

    invoke-virtual {p0}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilderFactory;->getBookTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->withTitle(Ljava/lang/String;)Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->withTime(Ljava/lang/Long;)Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;

    .line 60
    invoke-direct {p0}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilderFactory;->buildCancelIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->withButtonIntent(Landroid/app/PendingIntent;)Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    move-object v4, v0

    invoke-virtual/range {v4 .. v9}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->withDownloadProgress(JJZ)Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->withInformation(Ljava/lang/String;)Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;

    return-object v0
.end method

.method protected getNewDownloadNotificationBuilder()Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;
    .locals 4

    .line 158
    new-instance v0, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;

    iget-object v1, p0, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilderFactory;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilderFactory;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;-><init>(Landroid/content/Context;Landroid/app/Notification$Builder;)V

    return-object v0
.end method
