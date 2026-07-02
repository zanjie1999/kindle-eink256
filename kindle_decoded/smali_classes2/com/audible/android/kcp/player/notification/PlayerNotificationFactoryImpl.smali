.class public Lcom/audible/android/kcp/player/notification/PlayerNotificationFactoryImpl;
.super Lcom/audible/mobile/player/notification/BasePlayerNotificationFactory;
.source "PlayerNotificationFactoryImpl.java"


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private mCompanionManager:Lcom/audible/android/kcp/companion/CompanionManager;

.field private mContext:Landroid/content/Context;

.field private mLibraryManager:Lcom/amazon/kindle/krx/library/ILibraryManager;

.field private mPlayerManager:Lcom/audible/android/kcp/player/manager/AiRPlayerManager;

.field private mPlayerNotificationEventListener:Lcom/audible/android/kcp/player/PlayerNotificationEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/android/kcp/player/notification/PlayerNotificationFactoryImpl;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/android/kcp/player/notification/PlayerNotificationFactoryImpl;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 53
    invoke-direct {p0}, Lcom/audible/mobile/player/notification/BasePlayerNotificationFactory;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/audible/android/kcp/player/notification/PlayerNotificationFactoryImpl;->mContext:Landroid/content/Context;

    .line 55
    new-instance p1, Lcom/audible/android/kcp/player/PlayerNotificationEventListener;

    new-instance v0, Lcom/audible/android/kcp/player/notification/PlayerNotificationListener;

    iget-object v1, p0, Lcom/audible/android/kcp/player/notification/PlayerNotificationFactoryImpl;->mContext:Landroid/content/Context;

    const/16 v2, 0x2d

    invoke-direct {v0, v1, v2, p0}, Lcom/audible/android/kcp/player/notification/PlayerNotificationListener;-><init>(Landroid/content/Context;ILcom/audible/android/kcp/player/notification/PlayerNotificationFactoryImpl;)V

    invoke-direct {p1, v0}, Lcom/audible/android/kcp/player/PlayerNotificationEventListener;-><init>(Lcom/audible/android/kcp/player/AudiblePlayerUI;)V

    iput-object p1, p0, Lcom/audible/android/kcp/player/notification/PlayerNotificationFactoryImpl;->mPlayerNotificationEventListener:Lcom/audible/android/kcp/player/PlayerNotificationEventListener;

    return-void
.end method

.method public static clearPlayerNotification(Landroid/content/Context;)V
    .locals 1

    const-string v0, "notification"

    .line 143
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    if-eqz p0, :cond_0

    const/16 v0, 0x2d

    .line 145
    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_0
    return-void
.end method

.method private getContentPendingIntent(Lcom/audible/mobile/domain/Asin;Lcom/amazon/kindle/krx/content/IBook;)Landroid/app/PendingIntent;
    .locals 3

    .line 114
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/audible/android/kcp/player/receiver/PlayerAction;->OPEN:Lcom/audible/android/kcp/player/receiver/PlayerAction;

    iget-object v2, p0, Lcom/audible/android/kcp/player/notification/PlayerNotificationFactoryImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/audible/android/kcp/player/receiver/PlayerAction;->getActionString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 115
    sget-object v1, Lcom/audible/android/kcp/util/BroadcastReceiverExtra;->AUDIOBOOK_ASIN:Lcom/audible/android/kcp/util/BroadcastReceiverExtra;

    invoke-virtual {v1}, Lcom/audible/android/kcp/util/BroadcastReceiverExtra;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    sget-object p1, Lcom/audible/android/kcp/util/BroadcastReceiverExtra;->EBOOK_ID:Lcom/audible/android/kcp/util/BroadcastReceiverExtra;

    invoke-virtual {p1}, Lcom/audible/android/kcp/util/BroadcastReceiverExtra;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    sget-object p1, Lcom/audible/android/kcp/util/BroadcastReceiverExtra;->SOURCE:Lcom/audible/android/kcp/util/BroadcastReceiverExtra;

    invoke-virtual {p1}, Lcom/audible/android/kcp/util/BroadcastReceiverExtra;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/audible/android/kcp/util/BroadcastSource;->NOTIFICATION_BAR:Lcom/audible/android/kcp/util/BroadcastSource;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    iget-object p1, p0, Lcom/audible/android/kcp/player/notification/PlayerNotificationFactoryImpl;->mCompanionManager:Lcom/audible/android/kcp/companion/CompanionManager;

    invoke-interface {p1, p2}, Lcom/audible/android/kcp/companion/CompanionManager;->getPurchasedAudiobookAsin(Lcom/amazon/kindle/krx/content/IBook;)Lcom/audible/mobile/domain/Asin;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 124
    sget-object p2, Lcom/audible/mobile/domain/Asin;->NONE:Lcom/audible/mobile/domain/Asin;

    if-ne p2, p1, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    sget-object p1, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->AUDIBLE_PLAYER:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    goto :goto_1

    .line 125
    :cond_1
    :goto_0
    sget-object p1, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->READER:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    .line 129
    :goto_1
    sget-object p2, Lcom/audible/android/kcp/util/BroadcastReceiverExtra;->READER_MODE:Lcom/audible/android/kcp/util/BroadcastReceiverExtra;

    invoke-virtual {p2}, Lcom/audible/android/kcp/util/BroadcastReceiverExtra;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    iget-object p1, p0, Lcom/audible/android/kcp/player/notification/PlayerNotificationFactoryImpl;->mContext:Landroid/content/Context;

    const/16 p2, 0x2d

    const/high16 v1, 0x8000000

    invoke-static {p1, p2, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private getPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 3

    .line 107
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 108
    sget-object p1, Lcom/audible/android/kcp/util/BroadcastReceiverExtra;->SOURCE:Lcom/audible/android/kcp/util/BroadcastReceiverExtra;

    invoke-virtual {p1}, Lcom/audible/android/kcp/util/BroadcastReceiverExtra;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/audible/android/kcp/util/BroadcastSource;->NOTIFICATION_BAR:Lcom/audible/android/kcp/util/BroadcastSource;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    iget-object p1, p0, Lcom/audible/android/kcp/player/notification/PlayerNotificationFactoryImpl;->mContext:Landroid/content/Context;

    const/16 v1, 0x2d

    const/high16 v2, 0x8000000

    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private getWindowsNotification()Landroid/app/Notification;
    .locals 6

    .line 222
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/audible/android/kcp/player/notification/PlayerNotificationFactoryImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 223
    iget-object v1, p0, Lcom/audible/android/kcp/player/notification/PlayerNotificationFactoryImpl;->mPlayerManager:Lcom/audible/android/kcp/player/manager/AiRPlayerManager;

    invoke-interface {v1}, Lcom/audible/android/kcp/player/manager/AiRPlayerManager;->getAudiobookMetadata()Lcom/audible/mobile/audio/metadata/AudiobookMetadata;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 224
    invoke-virtual {v1}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/audible/android/kcp/player/notification/PlayerNotificationFactoryImpl;->isAsinValid(Lcom/audible/mobile/domain/Asin;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 225
    invoke-virtual {v1}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 227
    :cond_0
    iget-object v1, p0, Lcom/audible/android/kcp/player/notification/PlayerNotificationFactoryImpl;->mContext:Landroid/content/Context;

    sget v2, Lcom/amazon/kindle/hushpuppy/redding/R$string;->read_with_audible:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 230
    :goto_0
    iget-object v1, p0, Lcom/audible/android/kcp/player/notification/PlayerNotificationFactoryImpl;->mContext:Landroid/content/Context;

    sget v2, Lcom/amazon/kindle/hushpuppy/redding/R$string;->play_selection_button_text:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 231
    sget v1, Lcom/amazon/kindle/hushpuppy/redding/R$drawable;->notification_audio_books:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    const/4 v1, 0x1

    .line 232
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    const/4 v1, 0x0

    .line 233
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 234
    invoke-static {v0}, Lcom/audible/android/kcp/util/NotificationUtil;->setNotificationId(Landroid/app/Notification$Builder;)V

    .line 237
    iget-object v1, p0, Lcom/audible/android/kcp/player/notification/PlayerNotificationFactoryImpl;->mPlayerManager:Lcom/audible/android/kcp/player/manager/AiRPlayerManager;

    invoke-interface {v1}, Lcom/audible/android/kcp/player/manager/AiRPlayerManager;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 238
    new-instance v1, Landroid/app/Notification$Action$Builder;

    sget v2, Lcom/amazon/kindle/hushpuppy/redding/R$drawable;->mini_player_pause_button_black:I

    iget-object v3, p0, Lcom/audible/android/kcp/player/notification/PlayerNotificationFactoryImpl;->mContext:Landroid/content/Context;

    sget v4, Lcom/amazon/kindle/hushpuppy/redding/R$string;->player_pause_text:I

    .line 239
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/audible/android/kcp/player/receiver/PlayerAction;->PAUSE:Lcom/audible/android/kcp/player/receiver/PlayerAction;

    iget-object v5, p0, Lcom/audible/android/kcp/player/notification/PlayerNotificationFactoryImpl;->mContext:Landroid/content/Context;

    .line 240
    invoke-virtual {v4, v5}, Lcom/audible/android/kcp/player/receiver/PlayerAction;->getActionString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/audible/android/kcp/player/notification/PlayerNotificationFactoryImpl;->getPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 241
    invoke-virtual {v1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    goto :goto_1

    .line 243
    :cond_1
    new-instance v1, Landroid/app/Notification$Action$Builder;

    sget v2, Lcom/amazon/kindle/hushpuppy/redding/R$drawable;->mini_player_play_button_black:I

    iget-object v3, p0, Lcom/audible/android/kcp/player/notification/PlayerNotificationFactoryImpl;->mContext:Landroid/content/Context;

    sget v4, Lcom/amazon/kindle/hushpuppy/redding/R$string;->player_play_text:I

    .line 244
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/audible/android/kcp/player/receiver/PlayerAction;->PLAY:Lcom/audible/android/kcp/player/receiver/PlayerAction;

    iget-object v5, p0, Lcom/audible/android/kcp/player/notification/PlayerNotificationFactoryImpl;->mContext:Landroid/content/Context;

    .line 245
    invoke-virtual {v4, v5}, Lcom/audible/android/kcp/player/receiver/PlayerAction;->getActionString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/audible/android/kcp/player/notification/PlayerNotificationFactoryImpl;->getPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 246
    invoke-virtual {v1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 248
    :goto_1
    new-instance v1, Landroid/app/Notification$Action$Builder;

    sget v2, Lcom/amazon/kindle/hushpuppy/redding/R$drawable;->mini_player_pause_button_black:I

    iget-object v3, p0, Lcom/audible/android/kcp/player/notification/PlayerNotificationFactoryImpl;->mContext:Landroid/content/Context;

    sget v4, Lcom/amazon/kindle/hushpuppy/redding/R$string;->cancel:I

    .line 249
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/audible/android/kcp/player/receiver/PlayerAction;->STOP:Lcom/audible/android/kcp/player/receiver/PlayerAction;

    iget-object v5, p0, Lcom/audible/android/kcp/player/notification/PlayerNotificationFactoryImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/audible/android/kcp/player/receiver/PlayerAction;->getActionString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/audible/android/kcp/player/notification/PlayerNotificationFactoryImpl;->getPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 250
    invoke-virtual {v1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 251
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method private isAsinValid(Lcom/audible/mobile/domain/Asin;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 213
    sget-object v0, Lcom/audible/mobile/domain/Asin;->NONE:Lcom/audible/mobile/domain/Asin;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public get()Landroid/app/Notification;
    .locals 8

    .line 67
    invoke-static {}, Lcom/audible/hushpuppy/common/debug/WindowsSupportUtil;->isWindowsDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-direct {p0}, Lcom/audible/android/kcp/player/notification/PlayerNotificationFactoryImpl;->getWindowsNotification()Landroid/app/Notification;

    move-result-object v0

    return-object v0

    .line 72
    :cond_0
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/audible/android/kcp/player/notification/PlayerNotificationFactoryImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/hushpuppy/redding/R$layout;->audible_player_notification:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 73
    new-instance v1, Lcom/audible/android/kcp/player/notification/PlayerNotificationBuilder;

    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/audible/android/kcp/player/notification/PlayerNotificationFactoryImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2, v0}, Lcom/audible/android/kcp/player/notification/PlayerNotificationBuilder;-><init>(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;)V

    .line 75
    iget-object v0, p0, Lcom/audible/android/kcp/player/notification/PlayerNotificationFactoryImpl;->mPlayerManager:Lcom/audible/android/kcp/player/manager/AiRPlayerManager;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/audible/android/kcp/player/notification/PlayerNotificationFactoryImpl;->mCompanionManager:Lcom/audible/android/kcp/companion/CompanionManager;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/audible/android/kcp/player/notification/PlayerNotificationFactoryImpl;->mLibraryManager:Lcom/amazon/kindle/krx/library/ILibraryManager;

    if-eqz v2, :cond_3

    .line 76
    invoke-interface {v0}, Lcom/audible/android/kcp/player/manager/AiRPlayerManager;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    sget-object v0, Lcom/audible/android/kcp/player/receiver/PlayerAction;->PAUSE:Lcom/audible/android/kcp/player/receiver/PlayerAction;

    iget-object v2, p0, Lcom/audible/android/kcp/player/notification/PlayerNotificationFactoryImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/audible/android/kcp/player/receiver/PlayerAction;->getActionString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/audible/android/kcp/player/notification/PlayerNotificationFactoryImpl;->getPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/audible/android/kcp/player/notification/PlayerNotificationBuilder;->withPause(Landroid/app/PendingIntent;)Lcom/audible/android/kcp/player/notification/PlayerNotificationBuilder;

    goto :goto_0

    .line 79
    :cond_1
    sget-object v0, Lcom/audible/android/kcp/player/receiver/PlayerAction;->PLAY:Lcom/audible/android/kcp/player/receiver/PlayerAction;

    iget-object v2, p0, Lcom/audible/android/kcp/player/notification/PlayerNotificationFactoryImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/audible/android/kcp/player/receiver/PlayerAction;->getActionString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/audible/android/kcp/player/notification/PlayerNotificationFactoryImpl;->getPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/audible/android/kcp/player/notification/PlayerNotificationBuilder;->withPlay(Landroid/app/PendingIntent;)Lcom/audible/android/kcp/player/notification/PlayerNotificationBuilder;

    .line 81
    :goto_0
    sget-object v0, Lcom/audible/android/kcp/player/receiver/PlayerAction;->STOP:Lcom/audible/android/kcp/player/receiver/PlayerAction;

    iget-object v2, p0, Lcom/audible/android/kcp/player/notification/PlayerNotificationFactoryImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/audible/android/kcp/player/receiver/PlayerAction;->getActionString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/audible/android/kcp/player/notification/PlayerNotificationFactoryImpl;->getPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/audible/android/kcp/player/notification/PlayerNotificationBuilder;->withCancel(Landroid/app/PendingIntent;)Lcom/audible/android/kcp/player/notification/PlayerNotificationBuilder;

    .line 83
    iget-object v0, p0, Lcom/audible/android/kcp/player/notification/PlayerNotificationFactoryImpl;->mPlayerManager:Lcom/audible/android/kcp/player/manager/AiRPlayerManager;

    invoke-interface {v0}, Lcom/audible/android/kcp/player/manager/AiRPlayerManager;->getAudiobookMetadata()Lcom/audible/mobile/audio/metadata/AudiobookMetadata;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 84
    invoke-virtual {v0}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/audible/android/kcp/player/notification/PlayerNotificationFactoryImpl;->isAsinValid(Lcom/audible/mobile/domain/Asin;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 85
    sget-object v2, Lcom/audible/android/kcp/player/notification/PlayerNotificationFactoryImpl;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v3, "Player metadata not null and a valid audiobook asin - build the content PendingIntents"

    invoke-interface {v2, v3}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v2

    .line 87
    iget-object v3, p0, Lcom/audible/android/kcp/player/notification/PlayerNotificationFactoryImpl;->mCompanionManager:Lcom/audible/android/kcp/companion/CompanionManager;

    invoke-interface {v2}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/audible/android/kcp/companion/CompanionManager;->getCompanionEbookAsin(Ljava/lang/String;)Lcom/audible/mobile/domain/Asin;

    move-result-object v3

    .line 88
    iget-object v4, p0, Lcom/audible/android/kcp/player/notification/PlayerNotificationFactoryImpl;->mLibraryManager:Lcom/amazon/kindle/krx/library/ILibraryManager;

    invoke-interface {v3}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/amazon/kindle/krx/library/ILibraryManager;->getContentFromAsin(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v4

    .line 90
    sget-object v5, Lcom/audible/android/kcp/player/notification/PlayerNotificationFactoryImpl;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-interface {v2}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v7, "get : build content pending intent for audiobook %s, ebook %s"

    invoke-interface {v5, v7, v6, v3}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v4, :cond_2

    .line 93
    invoke-direct {p0, v2, v4}, Lcom/audible/android/kcp/player/notification/PlayerNotificationFactoryImpl;->getContentPendingIntent(Lcom/audible/mobile/domain/Asin;Lcom/amazon/kindle/krx/content/IBook;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/audible/android/kcp/player/notification/PlayerNotificationBuilder;->withContentIntent(Landroid/app/PendingIntent;)Lcom/audible/android/kcp/player/notification/PlayerNotificationBuilder;

    .line 96
    :cond_2
    invoke-virtual {v0}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/audible/android/kcp/player/notification/PlayerNotificationBuilder;->withTitle(Ljava/lang/String;)Lcom/audible/android/kcp/player/notification/PlayerNotificationBuilder;

    iget-object v2, p0, Lcom/audible/android/kcp/player/notification/PlayerNotificationFactoryImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/hushpuppy/redding/R$string;->player_notification_author:I

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->getAuthor()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/audible/android/kcp/player/notification/PlayerNotificationBuilder;->withAuthor(Ljava/lang/String;)Lcom/audible/android/kcp/player/notification/PlayerNotificationBuilder;

    iget-object v2, p0, Lcom/audible/android/kcp/player/notification/PlayerNotificationFactoryImpl;->mContext:Landroid/content/Context;

    .line 97
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/hushpuppy/redding/R$string;->player_notification_narrator:I

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->getNarrator()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/audible/android/kcp/player/notification/PlayerNotificationBuilder;->withNarrator(Ljava/lang/String;)Lcom/audible/android/kcp/player/notification/PlayerNotificationBuilder;

    goto :goto_1

    .line 100
    :cond_3
    sget-object v0, Lcom/audible/android/kcp/player/notification/PlayerNotificationFactoryImpl;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "PlayerManager, CompanionManager, LibraryManager - One/All of them are NULL. Returning Dummy Notification Factory"

    invoke-interface {v0, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 102
    :cond_4
    :goto_1
    invoke-virtual {v1}, Lcom/audible/android/kcp/player/notification/PlayerNotificationBuilder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/audible/android/kcp/player/notification/PlayerNotificationFactoryImpl;->get()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public setCompanionManager(Lcom/audible/android/kcp/companion/CompanionManager;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/audible/android/kcp/player/notification/PlayerNotificationFactoryImpl;->mCompanionManager:Lcom/audible/android/kcp/companion/CompanionManager;

    return-void
.end method

.method public setLibraryManager(Lcom/amazon/kindle/krx/library/ILibraryManager;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/audible/android/kcp/player/notification/PlayerNotificationFactoryImpl;->mLibraryManager:Lcom/amazon/kindle/krx/library/ILibraryManager;

    return-void
.end method

.method public setPlayerManager(Lcom/audible/android/kcp/player/manager/AiRPlayerManager;)V
    .locals 1

    .line 156
    iput-object p1, p0, Lcom/audible/android/kcp/player/notification/PlayerNotificationFactoryImpl;->mPlayerManager:Lcom/audible/android/kcp/player/manager/AiRPlayerManager;

    .line 157
    iget-object v0, p0, Lcom/audible/android/kcp/player/notification/PlayerNotificationFactoryImpl;->mPlayerNotificationEventListener:Lcom/audible/android/kcp/player/PlayerNotificationEventListener;

    invoke-interface {p1, v0}, Lcom/audible/android/kcp/player/manager/AiRPlayerManager;->addOnPlayerEventListener(Lcom/audible/mobile/player/LocalPlayerEventListener;)V

    return-void
.end method
