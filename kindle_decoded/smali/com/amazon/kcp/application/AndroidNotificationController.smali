.class public Lcom/amazon/kcp/application/AndroidNotificationController;
.super Ljava/lang/Object;
.source "AndroidNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;
    }
.end annotation


# static fields
.field private static final DOWNLOAD_QUEUE_ID:Ljava/lang/String; = "DownloadQueue"

.field private static final LED_COLOR:I = -0x1

.field private static final LED_OFF_TIME:I = 0x3e8

.field private static final LED_ON_TIME:I = 0x12c

.field private static final MAX_DOWNLOAD_NOTIFICATIONS:I = 0x1

.field private static final NOTIFICATION_ID_KEY:Ljava/lang/String; = "notificationId"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private activePushNotificationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected final appContext:Landroid/content/Context;

.field private downloadBookTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/kcp/library/models/BookType;",
            ">;"
        }
    .end annotation
.end field

.field private downloadedBooks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private notificationDeduplicator:Lcom/amazon/kcp/notifications/util/NotificationDeduplicator;

.field protected final notificationManager:Landroid/app/NotificationManager;

.field private tracking:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/model/content/ContentState;",
            ">;"
        }
    .end annotation
.end field

.field private userSettings:Lcom/amazon/kcp/application/UserSettingsController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    const-class v0, Lcom/amazon/kcp/application/AndroidNotificationController;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/application/AndroidNotificationController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 378
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->tracking:Ljava/util/HashMap;

    .line 379
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->downloadedBooks:Ljava/util/List;

    .line 387
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->activePushNotificationList:Ljava/util/List;

    .line 399
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->appContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    .line 400
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->notificationManager:Landroid/app/NotificationManager;

    .line 401
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->userSettings:Lcom/amazon/kcp/application/UserSettingsController;

    .line 402
    new-instance v0, Lcom/amazon/kcp/notifications/util/NotificationDeduplicator;

    iget-object v2, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->appContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/amazon/kcp/notifications/util/NotificationDeduplicator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->notificationDeduplicator:Lcom/amazon/kcp/notifications/util/NotificationDeduplicator;

    .line 405
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_1

    .line 407
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 409
    new-instance v1, Landroid/app/NotificationChannel;

    const/4 v2, 0x1

    const-string v3, "kindle_debug_channel"

    const-string v4, "Debug Notifications"

    invoke-direct {v1, v3, v4, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v3, 0x0

    .line 411
    invoke-virtual {v1, v3}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 412
    invoke-virtual {v1, v3}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 414
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 416
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 419
    :cond_0
    sget v1, Lcom/amazon/kindle/krl/R$string;->app_name_short:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x3

    .line 421
    new-instance v3, Landroid/app/NotificationChannel;

    const-string v4, "kindle_default_channel"

    invoke-direct {v3, v4, p1, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 422
    invoke-virtual {v3, v2}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 423
    invoke-virtual {v3, v2}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 424
    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_1
    return-void
.end method

.method private declared-synchronized displayNotification(Landroid/app/Notification$Builder;Lcom/amazon/reader/notifications/message/NotificationMessage;)V
    .locals 4

    monitor-enter p0

    .line 1000
    :try_start_0
    invoke-virtual {p2}, Lcom/amazon/reader/notifications/message/NotificationMessage;->getMessageMetadata()Lcom/amazon/reader/notifications/message/MessageMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/reader/notifications/message/MessageMetadata;->getMessageId()Ljava/lang/String;

    move-result-object v0

    .line 1001
    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->notificationDeduplicator:Lcom/amazon/kcp/notifications/util/NotificationDeduplicator;

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/notifications/util/NotificationDeduplicator;->isDuplicate(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1002
    invoke-virtual {p2}, Lcom/amazon/reader/notifications/message/NotificationMessage;->getMessageMetadata()Lcom/amazon/reader/notifications/message/MessageMetadata;

    move-result-object p1

    sget-object p2, Lcom/amazon/kcp/notifications/metrics/NotificationStatus;->DEDUPED:Lcom/amazon/kcp/notifications/metrics/NotificationStatus;

    invoke-static {p1, p2}, Lcom/amazon/kcp/notifications/metrics/ReaderNotificationsMetricsManager;->reportNotificationMessageReceived(Lcom/amazon/reader/notifications/message/MessageMetadata;Lcom/amazon/kcp/notifications/metrics/NotificationStatus;)V

    .line 1003
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Duplicate message received for message_id "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", ignoring message"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1004
    monitor-exit p0

    return-void

    .line 1007
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Lcom/amazon/reader/notifications/message/NotificationMessage;->getMessageMetadata()Lcom/amazon/reader/notifications/message/MessageMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/reader/notifications/message/MessageMetadata;->getCampaignName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->getId(Ljava/lang/String;)I

    move-result v1

    .line 1008
    iget-object v2, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {v2, v1, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1009
    invoke-virtual {p2}, Lcom/amazon/reader/notifications/message/NotificationMessage;->getMessageMetadata()Lcom/amazon/reader/notifications/message/MessageMetadata;

    move-result-object p1

    sget-object p2, Lcom/amazon/kcp/notifications/metrics/NotificationStatus;->DISPLAYED:Lcom/amazon/kcp/notifications/metrics/NotificationStatus;

    invoke-static {p1, p2}, Lcom/amazon/kcp/notifications/metrics/ReaderNotificationsMetricsManager;->reportNotificationMessageReceived(Lcom/amazon/reader/notifications/message/MessageMetadata;Lcom/amazon/kcp/notifications/metrics/NotificationStatus;)V

    .line 1011
    iget-object p1, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->notificationDeduplicator:Lcom/amazon/kcp/notifications/util/NotificationDeduplicator;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/amazon/kcp/notifications/util/NotificationDeduplicator;->updateNotificationsDisplayed(Ljava/lang/String;J)V

    .line 1014
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1015
    iget-object p1, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->activePushNotificationList:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1017
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static getDownloadFinishedIcon(Lcom/amazon/kcp/library/models/BookType;)I
    .locals 1

    .line 949
    sget-object v0, Lcom/amazon/kcp/application/AndroidNotificationController$1;->$SwitchMap$com$amazon$kcp$library$models$BookType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 954
    sget p0, Lcom/amazon/kindle/krl/R$drawable;->ic_notification_book:I

    return p0

    .line 952
    :cond_0
    sget p0, Lcom/amazon/kindle/krl/R$drawable;->ic_notification_periodical:I

    return p0
.end method

.method private static getDownloadInProgressIcon(Lcom/amazon/kcp/library/models/BookType;)I
    .locals 0

    .line 941
    invoke-static {p0}, Lcom/amazon/kcp/application/AndroidNotificationController;->getDownloadFinishedIcon(Lcom/amazon/kcp/library/models/BookType;)I

    move-result p0

    return p0
.end method

.method private static getDownloadQueueIcon()I
    .locals 1

    .line 945
    sget v0, Lcom/amazon/kindle/krl/R$drawable;->ic_notification_book:I

    return v0
.end method

.method private getDownloadQueueInfo()Ljava/lang/String;
    .locals 8

    .line 716
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->tracking:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 717
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->appContext:Landroid/content/Context;

    sget v3, Lcom/amazon/kindle/krl/R$string;->notification_downloaded:I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->downloadedBooks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 722
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->tracking:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kindle/model/content/ContentState;

    .line 723
    sget-object v6, Lcom/amazon/kindle/model/content/ContentState;->DOWNLOADING:Lcom/amazon/kindle/model/content/ContentState;

    if-eq v5, v6, :cond_3

    sget-object v6, Lcom/amazon/kindle/model/content/ContentState;->DOWNLOADING_OPENABLE:Lcom/amazon/kindle/model/content/ContentState;

    if-ne v5, v6, :cond_2

    goto :goto_1

    .line 725
    :cond_2
    sget-object v6, Lcom/amazon/kindle/model/content/ContentState;->QUEUED:Lcom/amazon/kindle/model/content/ContentState;

    if-ne v5, v6, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    add-int/2addr v4, v3

    .line 729
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->downloadedBooks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v4, v0

    .line 730
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->appContext:Landroid/content/Context;

    sget v5, Lcom/amazon/kindle/krl/R$string;->notification_download_queue_progress:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->downloadedBooks:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v1

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getLibraryOnDeviceIntent()Landroid/content/Intent;
    .locals 2

    .line 937
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/library/LibraryView;->DOWNLOADED_ITEMS:Lcom/amazon/kindle/krx/library/LibraryView;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/library/ILibraryController;->createShowLibraryViewIntent(Lcom/amazon/kindle/krx/library/LibraryView;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private getNotificationClickedIntent(Lcom/amazon/kindle/content/ContentMetadata;)Landroid/content/Intent;
    .locals 1

    .line 921
    invoke-static {p1}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->isPreferredDictionary(Lcom/amazon/kindle/model/content/IListableBook;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 922
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    return-object p1

    .line 924
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 926
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 927
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    return-object p1

    .line 930
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->isSample()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/amazon/kcp/application/KindleProtocol;->createOpenBookIntent(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method private isMessageValid(Lcom/amazon/reader/notifications/message/NotificationMessage;)Z
    .locals 0

    .line 1069
    invoke-static {p1}, Lcom/amazon/kcp/notifications/util/ReaderNotificationIntentServiceHelper;->isMessageValid(Lcom/amazon/reader/notifications/message/NotificationMessage;)Z

    move-result p1

    return p1
.end method

.method private isSingleDownloadInProgress()Z
    .locals 2

    .line 666
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->tracking:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->downloadedBooks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private notifyBookIsDownloading(Lcom/amazon/kindle/services/download/IContentDownload;I)V
    .locals 8

    if-eqz p1, :cond_5

    .line 614
    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/AndroidNotificationController;->shouldDisplayNotification(Lcom/amazon/kindle/services/download/IContentDownload;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 622
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IContentDownload;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/model/content/ContentState;->DOWNLOADING:Lcom/amazon/kindle/model/content/ContentState;

    if-eq v0, v1, :cond_1

    .line 623
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IContentDownload;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/model/content/ContentState;->QUEUED:Lcom/amazon/kindle/model/content/ContentState;

    if-eq v0, v1, :cond_1

    .line 624
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IContentDownload;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/model/content/ContentState;->LOCAL:Lcom/amazon/kindle/model/content/ContentState;

    if-eq v0, v1, :cond_1

    .line 625
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IContentDownload;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/model/content/ContentState;->DOWNLOADING_OPENABLE:Lcom/amazon/kindle/model/content/ContentState;

    if-ne v0, v1, :cond_5

    .line 626
    :cond_1
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IContentDownload;->getBookId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/util/BookIdUtils;->parse(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 634
    :cond_2
    invoke-direct {p0}, Lcom/amazon/kcp/application/AndroidNotificationController;->isSingleDownloadInProgress()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 635
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 636
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 638
    invoke-static {v0}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->getBuilder(Lcom/amazon/kindle/model/content/IListableBook;)Landroid/app/Notification$Builder;

    move-result-object v1

    if-nez v1, :cond_3

    .line 640
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->appContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/application/AndroidNotificationController;->getDownloadInProgressIcon(Lcom/amazon/kcp/library/models/BookType;)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 641
    invoke-static {v0, v1}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->setBuilder(Lcom/amazon/kindle/model/content/IListableBook;Landroid/app/Notification$Builder;)V

    .line 643
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt p1, v2, :cond_3

    const-string p1, "kindle_default_channel"

    .line 644
    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 649
    :cond_3
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getTitle()Ljava/lang/String;

    move-result-object v4

    const/4 p1, 0x1

    iget-object v2, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->appContext:Landroid/content/Context;

    .line 650
    invoke-static {v0, p1, v2}, Lcom/amazon/android/util/UIUtils;->getBookSubtitle(Lcom/amazon/kindle/model/content/IListableBook;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 651
    invoke-direct {p0, v0}, Lcom/amazon/kcp/application/AndroidNotificationController;->getNotificationClickedIntent(Lcom/amazon/kindle/content/ContentMetadata;)Landroid/content/Intent;

    move-result-object v6

    move-object v2, p0

    move-object v3, v1

    move v7, p2

    .line 648
    invoke-direct/range {v2 .. v7}, Lcom/amazon/kcp/application/AndroidNotificationController;->updateBuilder(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;I)V

    .line 654
    iget-object p1, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->notificationManager:Landroid/app/NotificationManager;

    invoke-static {v0}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->getId(Lcom/amazon/kindle/model/content/IListableBook;)I

    move-result p2

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 657
    :cond_4
    invoke-direct {p0}, Lcom/amazon/kcp/application/AndroidNotificationController;->refreshDownloadQueueNotification()V

    :cond_5
    :goto_0
    return-void
.end method

.method private onDownloadFinished(Lcom/amazon/kindle/services/download/IContentDownload;)V
    .locals 9

    if-eqz p1, :cond_4

    .line 735
    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/AndroidNotificationController;->shouldDisplayNotification(Lcom/amazon/kindle/services/download/IContentDownload;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 736
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IContentDownload;->getBookId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/util/BookIdUtils;->parse(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 742
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->tracking:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IContentDownload;->getBookId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 743
    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->tracking:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IContentDownload;->getBookId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->downloadedBooks:Ljava/util/List;

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IContentDownload;->getBookId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 747
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 748
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v2

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v1

    .line 750
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AndroidNotificationController#onDownloadFinished("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IContentDownload;->getBookId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 752
    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/AndroidNotificationController;->shouldDisplayFinishedNotification(Lcom/amazon/kindle/services/download/IContentDownload;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 753
    iget-object p1, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->tracking:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->downloadedBooks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 754
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/application/AndroidNotificationController;->getDownloadFinishedIcon(Lcom/amazon/kcp/library/models/BookType;)I

    move-result v4

    .line 755
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getTitle()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->appContext:Landroid/content/Context;

    sget v0, Lcom/amazon/kindle/krl/R$string;->notification_downloaded:I

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 756
    invoke-static {v1, v2, p1}, Lcom/amazon/android/util/UIUtils;->getBookSubtitle(Lcom/amazon/kindle/model/content/IListableBook;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v6

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 757
    invoke-direct {p0, v1}, Lcom/amazon/kcp/application/AndroidNotificationController;->getNotificationClickedIntent(Lcom/amazon/kindle/content/ContentMetadata;)Landroid/content/Intent;

    move-result-object v7

    const/4 v8, 0x1

    move-object v3, p0

    .line 754
    invoke-virtual/range {v3 .. v8}, Lcom/amazon/kcp/application/AndroidNotificationController;->createNotification(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;Z)Landroid/app/Notification;

    move-result-object p1

    .line 759
    invoke-static {v1}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->removeActiveNotification(Lcom/amazon/kindle/model/content/IListableBook;)V

    .line 760
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->notificationManager:Landroid/app/NotificationManager;

    const/4 v2, 0x0

    .line 761
    invoke-static {v1}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->getId(Lcom/amazon/kindle/model/content/IListableBook;)I

    move-result v1

    .line 760
    invoke-static {v0, v2, v1, p1}, Lcom/amazon/kcp/application/AndroidNotificationController;->replaceNotification(Landroid/app/NotificationManager;Ljava/lang/String;ILandroid/app/Notification;)V

    goto :goto_0

    .line 763
    :cond_2
    invoke-direct {p0}, Lcom/amazon/kcp/application/AndroidNotificationController;->refreshDownloadQueueNotification()V

    goto :goto_0

    .line 766
    :cond_3
    invoke-virtual {p0, v1}, Lcom/amazon/kcp/application/AndroidNotificationController;->clearDownloadNotification(Lcom/amazon/kindle/model/content/IListableBook;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private onDownloadStarted(Lcom/amazon/kindle/services/download/IContentDownload;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 558
    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/AndroidNotificationController;->shouldDisplayNotification(Lcom/amazon/kindle/services/download/IContentDownload;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AndroidNotificationController#onDownloadStarted("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IContentDownload;->getBookId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 561
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->tracking:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->downloadedBooks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 564
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->tracking:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IContentDownload;->getBookId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/model/content/ContentState;->DOWNLOADING:Lcom/amazon/kindle/model/content/ContentState;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IContentDownload;->getPercentage()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/application/AndroidNotificationController;->notifyBookIsDownloading(Lcom/amazon/kindle/services/download/IContentDownload;I)V

    :cond_1
    return-void
.end method

.method private onDownloadUpdated(Lcom/amazon/kindle/services/download/IContentDownload;)V
    .locals 7

    if-eqz p1, :cond_5

    .line 570
    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/AndroidNotificationController;->shouldDisplayNotification(Lcom/amazon/kindle/services/download/IContentDownload;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AndroidNotificationController#onDownloadUpdated("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IContentDownload;->getBookId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 573
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IContentDownload;->getBookId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/util/BookIdUtils;->parse(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 579
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 580
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v2

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    .line 583
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IContentDownload;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/model/content/ContentState;->FAILED:Lcom/amazon/kindle/model/content/ContentState;

    if-ne v1, v2, :cond_2

    .line 584
    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/AndroidNotificationController;->shouldDisplayFinishedNotification(Lcom/amazon/kindle/services/download/IContentDownload;)Z

    move-result p1

    if-eqz p1, :cond_1

    const v2, 0x1080078

    .line 586
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getTitle()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->appContext:Landroid/content/Context;

    sget v1, Lcom/amazon/kindle/krl/R$string;->notification_download_failed:I

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 587
    invoke-static {v0, v4, p1}, Lcom/amazon/android/util/UIUtils;->getBookSubtitle(Lcom/amazon/kindle/model/content/IListableBook;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v6

    invoke-virtual {p1, v1, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 588
    invoke-direct {p0, v0}, Lcom/amazon/kcp/application/AndroidNotificationController;->getNotificationClickedIntent(Lcom/amazon/kindle/content/ContentMetadata;)Landroid/content/Intent;

    move-result-object v5

    move-object v1, p0

    .line 585
    invoke-virtual/range {v1 .. v6}, Lcom/amazon/kcp/application/AndroidNotificationController;->createNotification(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;Z)Landroid/app/Notification;

    move-result-object p1

    .line 590
    invoke-static {v0}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->removeActiveNotification(Lcom/amazon/kindle/model/content/IListableBook;)V

    .line 591
    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->notificationManager:Landroid/app/NotificationManager;

    const/4 v2, 0x0

    .line 592
    invoke-static {v0}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->getId(Lcom/amazon/kindle/model/content/IListableBook;)I

    move-result v0

    .line 591
    invoke-static {v1, v2, v0, p1}, Lcom/amazon/kcp/application/AndroidNotificationController;->replaceNotification(Landroid/app/NotificationManager;Ljava/lang/String;ILandroid/app/Notification;)V

    goto :goto_0

    .line 594
    :cond_1
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/application/AndroidNotificationController;->clearDownloadNotification(Lcom/amazon/kindle/model/content/IListableBook;)V

    goto :goto_0

    .line 596
    :cond_2
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IContentDownload;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/model/content/ContentState;->QUEUED:Lcom/amazon/kindle/model/content/ContentState;

    if-ne v1, v2, :cond_4

    .line 598
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->tracking:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 599
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->downloadedBooks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 602
    :cond_3
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->tracking:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IContentDownload;->getBookId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/model/content/ContentState;->QUEUED:Lcom/amazon/kindle/model/content/ContentState;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IContentDownload;->getPercentage()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/application/AndroidNotificationController;->notifyBookIsDownloading(Lcom/amazon/kindle/services/download/IContentDownload;I)V

    goto :goto_0

    .line 604
    :cond_4
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IContentDownload;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/model/content/ContentState;->PAUSED:Lcom/amazon/kindle/model/content/ContentState;

    if-ne v1, v2, :cond_5

    .line 607
    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->tracking:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IContentDownload;->getBookId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/application/AndroidNotificationController;->clearDownloadNotification(Lcom/amazon/kindle/model/content/IListableBook;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private onDownloadingBookDeleted(Lcom/amazon/kindle/services/download/IContentDownload;)V
    .locals 3

    .line 893
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IContentDownload;->getBookId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/util/BookIdUtils;->parse(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 899
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 900
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v2

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    .line 904
    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->tracking:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IContentDownload;->getBookId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 908
    invoke-static {v0}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->getBuilder(Lcom/amazon/kindle/model/content/IListableBook;)Landroid/app/Notification$Builder;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 909
    iget-object p1, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->notificationManager:Landroid/app/NotificationManager;

    invoke-static {v0}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->getId(Lcom/amazon/kindle/model/content/IListableBook;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 910
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->getDownloadQueueBuilder()Landroid/app/Notification$Builder;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 911
    invoke-direct {p0}, Lcom/amazon/kcp/application/AndroidNotificationController;->refreshDownloadQueueNotification()V

    .line 914
    :cond_2
    :goto_0
    invoke-static {v0}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->releaseIdForBookItem(Lcom/amazon/kindle/model/content/IListableBook;)V

    :cond_3
    return-void
.end method

.method private refreshDownloadQueueNotification()V
    .locals 7

    .line 676
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->tracking:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 677
    invoke-static {}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->getDownloadQueueBuilder()Landroid/app/Notification$Builder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 679
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->appContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/amazon/kcp/application/AndroidNotificationController;->getDownloadQueueIcon()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 680
    invoke-static {v0}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->setDownloadQueueBuilder(Landroid/app/Notification$Builder;)V

    .line 682
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    const-string v1, "kindle_default_channel"

    .line 683
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 687
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->appContext:Landroid/content/Context;

    sget v2, Lcom/amazon/kindle/krl/R$string;->notification_download_queue:I

    .line 688
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 689
    invoke-direct {p0}, Lcom/amazon/kcp/application/AndroidNotificationController;->getDownloadQueueInfo()Ljava/lang/String;

    move-result-object v2

    .line 690
    invoke-direct {p0}, Lcom/amazon/kcp/application/AndroidNotificationController;->getLibraryOnDeviceIntent()Landroid/content/Intent;

    move-result-object v3

    .line 687
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/amazon/kcp/application/AndroidNotificationController;->updateBuilder(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    .line 692
    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->notificationManager:Landroid/app/NotificationManager;

    invoke-static {}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->getDownloadQueueId()I

    move-result v2

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 695
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->downloadedBooks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 696
    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK:Lcom/amazon/kcp/library/models/BookType;

    invoke-static {v0}, Lcom/amazon/kcp/application/AndroidNotificationController;->getDownloadFinishedIcon(Lcom/amazon/kcp/library/models/BookType;)I

    move-result v2

    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->appContext:Landroid/content/Context;

    sget v1, Lcom/amazon/kindle/krl/R$string;->notification_download_queue:I

    .line 697
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 698
    invoke-direct {p0}, Lcom/amazon/kcp/application/AndroidNotificationController;->getDownloadQueueInfo()Ljava/lang/String;

    move-result-object v4

    .line 699
    invoke-direct {p0}, Lcom/amazon/kcp/application/AndroidNotificationController;->getLibraryOnDeviceIntent()Landroid/content/Intent;

    move-result-object v5

    const/4 v6, 0x1

    move-object v1, p0

    .line 696
    invoke-virtual/range {v1 .. v6}, Lcom/amazon/kcp/application/AndroidNotificationController;->createNotification(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;Z)Landroid/app/Notification;

    move-result-object v0

    .line 701
    invoke-static {}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->removeActiveDownloadQueueNotification()V

    .line 702
    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->notificationManager:Landroid/app/NotificationManager;

    const/4 v2, 0x0

    .line 703
    invoke-static {}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->getDownloadQueueId()I

    move-result v3

    .line 702
    invoke-static {v1, v2, v3, v0}, Lcom/amazon/kcp/application/AndroidNotificationController;->replaceNotification(Landroid/app/NotificationManager;Ljava/lang/String;ILandroid/app/Notification;)V

    goto :goto_0

    .line 707
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->notificationManager:Landroid/app/NotificationManager;

    invoke-static {}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->getDownloadQueueId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    :goto_0
    return-void
.end method

.method public static replaceNotification(Landroid/app/NotificationManager;Ljava/lang/String;ILandroid/app/Notification;)V
    .locals 0

    .line 795
    invoke-virtual {p0, p1, p2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 796
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method private scheduleNotificationDismissal(IJ)V
    .locals 3

    .line 1047
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->appContext:Landroid/content/Context;

    const-class v2, Lcom/amazon/kcp/notifications/NotificationsCancellationReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1048
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 1049
    invoke-static {}, Lcom/amazon/kcp/application/KindleProtocol;->getPreferredScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1050
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string/jumbo v1, "notificationId"

    .line 1051
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1052
    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->appContext:Landroid/content/Context;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, p1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 1054
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->appContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1055
    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v1, 0x0

    .line 1056
    invoke-virtual {v0, v1, p2, p3, p1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1057
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Scheduled task to remove notification at "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " if not already dismissed by the user"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method private shouldDisplayFinishedNotification(Lcom/amazon/kindle/services/download/IContentDownload;)Z
    .locals 3

    .line 819
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->userSettings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->isDownloadNotificationsEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 821
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IContentDownload;->getBookId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/util/BookIdUtils;->parse(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 823
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v2

    if-eqz p1, :cond_0

    .line 825
    iget-object p1, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->downloadBookTypes:Ljava/util/Set;

    if-eqz p1, :cond_0

    .line 827
    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 828
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getAsin()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->isPreferredDictionary(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private shouldDisplayNotification(Lcom/amazon/kindle/services/download/IContentDownload;)Z
    .locals 4

    .line 804
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->userSettings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->isDownloadNotificationsEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 805
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IContentDownload;->getBookId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/util/BookIdUtils;->parse(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 806
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->isHidden()Z

    move-result v0

    if-nez v0, :cond_2

    .line 807
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    .line 808
    iget-object v2, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->downloadBookTypes:Ljava/util/Set;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 809
    :goto_0
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getAsin()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->isPreferredDictionary(Ljava/lang/String;)Z

    move-result p1

    if-nez v0, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private updateBuilder(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V
    .locals 0

    .line 879
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 880
    invoke-virtual {p1, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->appContext:Landroid/content/Context;

    const/4 p3, 0x0

    .line 881
    invoke-static {p2, p3, p4, p3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 882
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 883
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    return-void
.end method

.method private updateBuilder(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;I)V
    .locals 2

    .line 865
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 866
    invoke-virtual {p1, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->appContext:Landroid/content/Context;

    const/4 p3, 0x0

    .line 867
    invoke-static {p2, p3, p4, p3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    const/16 p2, 0x64

    .line 868
    invoke-virtual {p1, p2, p5, p3}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->appContext:Landroid/content/Context;

    .line 869
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p4, Lcom/amazon/kindle/krl/R$string;->download_percentage:I

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    aput-object p5, v1, p3

    invoke-virtual {p2, p4, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 870
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 871
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    return-void
.end method


# virtual methods
.method public clearAllNotifications()V
    .locals 1

    .line 551
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->downloadedBooks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 552
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->tracking:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 553
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 554
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->activePushNotificationList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public clearDownloadNotification(Lcom/amazon/kindle/model/content/IListableBook;)V
    .locals 2

    .line 524
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->downloadedBooks:Ljava/util/List;

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->downloadedBooks:Ljava/util/List;

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 528
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->getDownloadNotificationBookId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 529
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->notificationManager:Landroid/app/NotificationManager;

    invoke-static {p1}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->getId(Lcom/amazon/kindle/model/content/IListableBook;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 530
    invoke-static {p1}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->releaseIdForBookItem(Lcom/amazon/kindle/model/content/IListableBook;)V

    goto :goto_0

    .line 531
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->getDownloadNotificationBookId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DownloadQueue"

    invoke-static {p1, v0}, Lcom/amazon/kindle/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 532
    invoke-direct {p0}, Lcom/amazon/kcp/application/AndroidNotificationController;->refreshDownloadQueueNotification()V

    :cond_2
    :goto_0
    return-void
.end method

.method public clearPushNotification(Ljava/lang/String;)V
    .locals 2

    .line 542
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->notificationManager:Landroid/app/NotificationManager;

    invoke-static {p1}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->getId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 543
    invoke-static {p1}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->getId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/application/AndroidNotificationController;->removePushNotification(I)V

    .line 544
    invoke-static {p1}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->releaseIdForCampaign(Ljava/lang/String;)V

    return-void
.end method

.method protected createNotification(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;Z)Landroid/app/Notification;
    .locals 2

    .line 842
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->appContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 843
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 844
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 845
    invoke-virtual {p1, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->appContext:Landroid/content/Context;

    const/4 p3, 0x0

    .line 846
    invoke-static {p2, p3, p4, p3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 847
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 849
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1a

    if-lt p2, p3, :cond_0

    const-string p2, "kindle_default_channel"

    .line 850
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    :cond_0
    if-eqz p5, :cond_1

    const/4 p2, -0x1

    const/16 p3, 0x12c

    const/16 p4, 0x3e8

    .line 854
    invoke-virtual {p1, p2, p3, p4}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    .line 856
    :cond_1
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method

.method public displayDebugNotification()V
    .locals 4

    .line 1074
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isChinaBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Kindle for China"

    goto :goto_0

    .line 1076
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isKFABuild()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Kindle for Android"

    goto :goto_0

    :cond_1
    const-string v0, "Kindle"

    .line 1082
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " debug"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1084
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->appContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AndroidNotificationController;->getDebugActivityClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1085
    iget-object v2, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->appContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1087
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->appContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/amazon/kindle/krl/R$drawable;->ic_notification_general:I

    .line 1088
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 1089
    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string v2, "Select to open Kindle debug options"

    .line 1090
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 1091
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 1093
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_2

    const-string v1, "kindle_debug_channel"

    .line 1094
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 1097
    :cond_2
    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->notificationManager:Landroid/app/NotificationManager;

    invoke-static {}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->getDebugNotificationId()I

    move-result v2

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public displayDownloadNotifications(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/amazon/kcp/library/models/BookType;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 445
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 448
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    goto :goto_1

    .line 446
    :cond_1
    :goto_0
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    .line 451
    :goto_1
    iput-object p1, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->downloadBookTypes:Ljava/util/Set;

    return-void
.end method

.method public displayPushNotification(Landroid/app/Notification$Builder;Lcom/amazon/reader/notifications/message/NotificationMessage;)V
    .locals 2

    if-nez p1, :cond_0

    .line 970
    sget-object p1, Lcom/amazon/kcp/application/AndroidNotificationController;->TAG:Ljava/lang/String;

    const-string p2, "Builder cannot be null."

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 975
    :cond_0
    invoke-direct {p0, p2}, Lcom/amazon/kcp/application/AndroidNotificationController;->isMessageValid(Lcom/amazon/reader/notifications/message/NotificationMessage;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 976
    invoke-virtual {p2}, Lcom/amazon/reader/notifications/message/NotificationMessage;->getMessageMetadata()Lcom/amazon/reader/notifications/message/MessageMetadata;

    move-result-object p1

    sget-object p2, Lcom/amazon/kcp/notifications/metrics/NotificationStatus;->VALIDITY_FAILED:Lcom/amazon/kcp/notifications/metrics/NotificationStatus;

    invoke-static {p1, p2}, Lcom/amazon/kcp/notifications/metrics/ReaderNotificationsMetricsManager;->reportNotificationMessageReceived(Lcom/amazon/reader/notifications/message/MessageMetadata;Lcom/amazon/kcp/notifications/metrics/NotificationStatus;)V

    return-void

    .line 983
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/application/AndroidNotificationController;->displayNotification(Landroid/app/Notification$Builder;Lcom/amazon/reader/notifications/message/NotificationMessage;)V

    .line 986
    invoke-virtual {p2}, Lcom/amazon/reader/notifications/message/NotificationMessage;->getMessageMetadata()Lcom/amazon/reader/notifications/message/MessageMetadata;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/reader/notifications/message/MessageMetadata;->getCampaignName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->getId(Ljava/lang/String;)I

    move-result p1

    .line 987
    invoke-virtual {p2}, Lcom/amazon/reader/notifications/message/NotificationMessage;->getMessageMetadata()Lcom/amazon/reader/notifications/message/MessageMetadata;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/reader/notifications/message/MessageMetadata;->getDealValidPeriod()Lcom/amazon/reader/notifications/message/DealValidPeriod;

    move-result-object p2

    .line 988
    invoke-virtual {p2}, Lcom/amazon/reader/notifications/message/DealValidPeriod;->getDealEndTime()J

    move-result-wide v0

    .line 987
    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/kcp/application/AndroidNotificationController;->scheduleNotificationDismissal(IJ)V

    return-void
.end method

.method protected getDebugActivityClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 434
    const-class v0, Lcom/amazon/kcp/debug/DebugActivityV2;

    return-object v0
.end method

.method protected onDownloadEncounteredLicenseError(Lcom/amazon/kindle/services/download/IContentDownload;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 772
    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/AndroidNotificationController;->shouldDisplayNotification(Lcom/amazon/kindle/services/download/IContentDownload;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 773
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AndroidNotificationController#onDownloadEncounteredLicenseError("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IContentDownload;->getBookId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 776
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IContentDownload;->getBookId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/util/BookIdUtils;->parse(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 778
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 779
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v2

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 781
    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->tracking:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IContentDownload;->getBookId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/application/AndroidNotificationController;->clearDownloadNotification(Lcom/amazon/kindle/model/content/IListableBook;)V

    :cond_0
    return-void
.end method

.method public onDownloadGroupStatusChanged(Lcom/amazon/kindle/services/download/IDownloadService$KRXDownloadStateUpdateEvent;)V
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 457
    invoke-virtual {p1}, Lcom/amazon/kindle/services/download/IDownloadService$KRXDownloadStateUpdateEvent;->getDownload()Lcom/amazon/kindle/services/download/IContentDownload;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IContentDownload;->getBookId()Ljava/lang/String;

    move-result-object v0

    .line 458
    invoke-virtual {p1}, Lcom/amazon/kindle/services/download/IDownloadService$KRXDownloadStateUpdateEvent;->getDownloadState()Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;->QUEUED:Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 459
    iget-object p1, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->tracking:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 460
    iget-object p1, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->downloadedBooks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 462
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->tracking:Ljava/util/HashMap;

    sget-object v1, Lcom/amazon/kindle/model/content/ContentState;->QUEUED:Lcom/amazon/kindle/model/content/ContentState;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 463
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kindle/services/download/IDownloadService$KRXDownloadStateUpdateEvent;->getDownloadState()Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    move-result-object p1

    sget-object v1, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;->CANCEL:Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    invoke-virtual {p1, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 464
    iget-object p1, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->tracking:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    iget-object p1, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->downloadedBooks:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public onDownloadProgressUpdateEvent(Lcom/amazon/kindle/services/download/IDownloadService$DownloadProgressUpdateEvent;)V
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 500
    invoke-virtual {p1}, Lcom/amazon/kindle/services/download/IDownloadService$DownloadProgressUpdateEvent;->getDownload()Lcom/amazon/kindle/services/download/IContentDownload;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 501
    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/AndroidNotificationController;->shouldDisplayNotification(Lcom/amazon/kindle/services/download/IContentDownload;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->tracking:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IContentDownload;->getBookId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 506
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IContentDownload;->getPercentage()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_1

    .line 508
    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->tracking:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IContentDownload;->getBookId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->downloadedBooks:Ljava/util/List;

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IContentDownload;->getBookId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 512
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/application/AndroidNotificationController;->notifyBookIsDownloading(Lcom/amazon/kindle/services/download/IContentDownload;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onDownloadStateUpdateEvent(Lcom/amazon/kindle/services/download/IDownloadService$DownloadStateUpdateEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 471
    invoke-virtual {p1}, Lcom/amazon/kindle/services/download/IDownloadService$DownloadStateUpdateEvent;->getDownloadState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v0

    .line 472
    invoke-virtual {p1}, Lcom/amazon/kindle/services/download/IDownloadService$DownloadStateUpdateEvent;->getDownload()Lcom/amazon/kindle/services/download/IContentDownload;

    move-result-object p1

    .line 474
    sget-object v1, Lcom/amazon/kcp/application/AndroidNotificationController$1;->$SwitchMap$com$amazon$kindle$model$content$ContentState:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 494
    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/AndroidNotificationController;->onDownloadUpdated(Lcom/amazon/kindle/services/download/IContentDownload;)V

    goto :goto_0

    .line 486
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IContentDownload;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->CDE_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    if-ne v0, v1, :cond_1

    .line 487
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/application/AndroidNotificationController;->onDownloadEncounteredLicenseError(Lcom/amazon/kindle/services/download/IContentDownload;)V

    goto :goto_0

    .line 489
    :cond_1
    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/AndroidNotificationController;->onDownloadingBookDeleted(Lcom/amazon/kindle/services/download/IContentDownload;)V

    goto :goto_0

    .line 480
    :cond_2
    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/AndroidNotificationController;->onDownloadFinished(Lcom/amazon/kindle/services/download/IContentDownload;)V

    goto :goto_0

    .line 476
    :cond_3
    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/AndroidNotificationController;->onDownloadStarted(Lcom/amazon/kindle/services/download/IContentDownload;)V

    :goto_0
    return-void
.end method

.method public removePushNotification(I)V
    .locals 1

    .line 1025
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->activePushNotificationList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
