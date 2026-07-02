.class public Lcom/audible/android/kcp/download/callback/DownloadNotificationListener;
.super Ljava/lang/Object;
.source "DownloadNotificationListener.java"

# interfaces
.implements Lcom/audible/android/kcp/player/DownloadProgressUI;


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final mActivationDataRepository:Lcom/audible/mobile/activation/ActivationDataRepository;

.field private final mContext:Landroid/content/Context;

.field private final mDownloadNotificationBuilderFactory:Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilderFactory;

.field private final mLibraryUIManager:Lcom/amazon/kindle/krx/ui/ILibraryUIManager;

.field private final mMainHandler:Landroid/os/Handler;

.field private final mNotificationId:I

.field private final mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/android/kcp/download/callback/DownloadNotificationListener;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/android/kcp/download/callback/DownloadNotificationListener;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/audible/android/kcp/download/notification/DownloadNotificationBuilderFactory;Lcom/amazon/kindle/krx/ui/ILibraryUIManager;)V
    .locals 8

    .line 43
    invoke-static {p1}, Lcom/audible/mobile/framework/ComponentRegistry;->getInstance(Landroid/content/Context;)Lcom/audible/mobile/framework/ComponentRegistry;

    move-result-object v0

    const-class v1, Lcom/audible/mobile/activation/ActivationDataRepository;

    invoke-virtual {v0, v1}, Lcom/audible/mobile/framework/ComponentRegistry;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/audible/mobile/activation/ActivationDataRepository;

    const-string v0, "notification"

    .line 44
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/app/NotificationManager;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v6, p4

    .line 43
    invoke-direct/range {v1 .. v7}, Lcom/audible/android/kcp/download/callback/DownloadNotificationListener;-><init>(Landroid/content/Context;ILcom/audible/android/kcp/download/notification/DownloadNotificationBuilderFactory;Lcom/audible/mobile/activation/ActivationDataRepository;Lcom/amazon/kindle/krx/ui/ILibraryUIManager;Landroid/app/NotificationManager;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ILcom/audible/android/kcp/download/notification/DownloadNotificationBuilderFactory;Lcom/audible/mobile/activation/ActivationDataRepository;Lcom/amazon/kindle/krx/ui/ILibraryUIManager;Landroid/app/NotificationManager;)V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/audible/android/kcp/download/callback/DownloadNotificationListener;->mMainHandler:Landroid/os/Handler;

    .line 51
    iput-object p6, p0, Lcom/audible/android/kcp/download/callback/DownloadNotificationListener;->mNotificationManager:Landroid/app/NotificationManager;

    .line 52
    iput p2, p0, Lcom/audible/android/kcp/download/callback/DownloadNotificationListener;->mNotificationId:I

    .line 53
    iput-object p1, p0, Lcom/audible/android/kcp/download/callback/DownloadNotificationListener;->mContext:Landroid/content/Context;

    .line 54
    iput-object p3, p0, Lcom/audible/android/kcp/download/callback/DownloadNotificationListener;->mDownloadNotificationBuilderFactory:Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilderFactory;

    .line 55
    iput-object p4, p0, Lcom/audible/android/kcp/download/callback/DownloadNotificationListener;->mActivationDataRepository:Lcom/audible/mobile/activation/ActivationDataRepository;

    .line 56
    iput-object p5, p0, Lcom/audible/android/kcp/download/callback/DownloadNotificationListener;->mLibraryUIManager:Lcom/amazon/kindle/krx/ui/ILibraryUIManager;

    return-void
.end method

.method private displayToast(I)V
    .locals 4

    .line 137
    iget-object v0, p0, Lcom/audible/android/kcp/download/callback/DownloadNotificationListener;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/audible/android/kcp/download/callback/DownloadNotificationListener;->mDownloadNotificationBuilderFactory:Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilderFactory;

    invoke-virtual {v2}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilderFactory;->getBookTitle()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 138
    invoke-virtual {p0}, Lcom/audible/android/kcp/download/callback/DownloadNotificationListener;->getUiContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    const/16 v0, 0x11

    .line 139
    invoke-virtual {p1, v0, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 140
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private refreshLibraryCovers(Lcom/amazon/kindle/krx/ui/ILibraryUIManager;)V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/audible/android/kcp/download/callback/DownloadNotificationListener;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/audible/android/kcp/download/callback/DownloadNotificationListener$1;

    invoke-direct {v1, p0, p1}, Lcom/audible/android/kcp/download/callback/DownloadNotificationListener$1;-><init>(Lcom/audible/android/kcp/download/callback/DownloadNotificationListener;Lcom/amazon/kindle/krx/ui/ILibraryUIManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public getUiContext()Landroid/content/Context;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/audible/android/kcp/download/callback/DownloadNotificationListener;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public notifyDownloadCancelled()V
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/audible/android/kcp/download/callback/DownloadNotificationListener;->mActivationDataRepository:Lcom/audible/mobile/activation/ActivationDataRepository;

    invoke-interface {v0}, Lcom/audible/mobile/activation/ActivationDataRepository;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/audible/android/kcp/download/callback/DownloadNotificationListener;->mDownloadNotificationBuilderFactory:Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilderFactory;

    invoke-virtual {v0}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilderFactory;->getDownloadCancelledNotification()Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 123
    iget-object v1, p0, Lcom/audible/android/kcp/download/callback/DownloadNotificationListener;->mNotificationManager:Landroid/app/NotificationManager;

    iget v2, p0, Lcom/audible/android/kcp/download/callback/DownloadNotificationListener;->mNotificationId:I

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 125
    :cond_0
    sget-object v0, Lcom/audible/android/kcp/download/callback/DownloadNotificationListener;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Download Cancelled not shown. Reason: Not Authenticated."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public notifyDownloadComplete(Ljava/io/File;)V
    .locals 2

    .line 105
    iget-object p1, p0, Lcom/audible/android/kcp/download/callback/DownloadNotificationListener;->mActivationDataRepository:Lcom/audible/mobile/activation/ActivationDataRepository;

    invoke-interface {p1}, Lcom/audible/mobile/activation/ActivationDataRepository;->isActivated()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 106
    iget-object p1, p0, Lcom/audible/android/kcp/download/callback/DownloadNotificationListener;->mDownloadNotificationBuilderFactory:Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilderFactory;

    invoke-virtual {p1}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilderFactory;->getDownloadCompletedNotification()Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 108
    iget-object v0, p0, Lcom/audible/android/kcp/download/callback/DownloadNotificationListener;->mNotificationManager:Landroid/app/NotificationManager;

    iget v1, p0, Lcom/audible/android/kcp/download/callback/DownloadNotificationListener;->mNotificationId:I

    invoke-virtual {v0, v1, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 110
    sget p1, Lcom/amazon/kindle/hushpuppy/redding/R$string;->download_toast_complete:I

    invoke-direct {p0, p1}, Lcom/audible/android/kcp/download/callback/DownloadNotificationListener;->displayToast(I)V

    .line 111
    iget-object p1, p0, Lcom/audible/android/kcp/download/callback/DownloadNotificationListener;->mLibraryUIManager:Lcom/amazon/kindle/krx/ui/ILibraryUIManager;

    invoke-direct {p0, p1}, Lcom/audible/android/kcp/download/callback/DownloadNotificationListener;->refreshLibraryCovers(Lcom/amazon/kindle/krx/ui/ILibraryUIManager;)V

    goto :goto_0

    .line 113
    :cond_0
    sget-object p1, Lcom/audible/android/kcp/download/callback/DownloadNotificationListener;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Download Complete not shown. Reason: Not Authenticated."

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public notifyDownloadError(I)V
    .locals 2

    .line 91
    iget-object p1, p0, Lcom/audible/android/kcp/download/callback/DownloadNotificationListener;->mActivationDataRepository:Lcom/audible/mobile/activation/ActivationDataRepository;

    invoke-interface {p1}, Lcom/audible/mobile/activation/ActivationDataRepository;->isActivated()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 92
    iget-object p1, p0, Lcom/audible/android/kcp/download/callback/DownloadNotificationListener;->mDownloadNotificationBuilderFactory:Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilderFactory;

    invoke-virtual {p1}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilderFactory;->getDownloadErrorNotification()Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 94
    iget-object v0, p0, Lcom/audible/android/kcp/download/callback/DownloadNotificationListener;->mNotificationManager:Landroid/app/NotificationManager;

    iget v1, p0, Lcom/audible/android/kcp/download/callback/DownloadNotificationListener;->mNotificationId:I

    invoke-virtual {v0, v1, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 96
    sget p1, Lcom/amazon/kindle/hushpuppy/redding/R$string;->download_toast_error:I

    invoke-direct {p0, p1}, Lcom/audible/android/kcp/download/callback/DownloadNotificationListener;->displayToast(I)V

    goto :goto_0

    .line 98
    :cond_0
    sget-object p1, Lcom/audible/android/kcp/download/callback/DownloadNotificationListener;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Download Error not shown. Reason: Not Authenticated."

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public notifyDownloadProgress(JJ)V
    .locals 7

    .line 62
    iget-object v0, p0, Lcom/audible/android/kcp/download/callback/DownloadNotificationListener;->mActivationDataRepository:Lcom/audible/mobile/activation/ActivationDataRepository;

    invoke-interface {v0}, Lcom/audible/mobile/activation/ActivationDataRepository;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v1, p0, Lcom/audible/android/kcp/download/callback/DownloadNotificationListener;->mDownloadNotificationBuilderFactory:Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilderFactory;

    const/4 v6, 0x0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilderFactory;->getDownloadProgressNotification(JJZ)Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 65
    iget-object p2, p0, Lcom/audible/android/kcp/download/callback/DownloadNotificationListener;->mNotificationManager:Landroid/app/NotificationManager;

    iget p3, p0, Lcom/audible/android/kcp/download/callback/DownloadNotificationListener;->mNotificationId:I

    invoke-virtual {p2, p3, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 67
    :cond_0
    sget-object p1, Lcom/audible/android/kcp/download/callback/DownloadNotificationListener;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Download Complete not shown. Reason: Not Authenticated."

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public notifyDownloadQueued()V
    .locals 0

    return-void
.end method

.method public notifyDownloadRemoved()V
    .locals 0

    return-void
.end method

.method public notifyDownloadStarted()V
    .locals 1

    .line 79
    sget v0, Lcom/amazon/kindle/hushpuppy/redding/R$string;->download_toast_started:I

    invoke-direct {p0, v0}, Lcom/audible/android/kcp/download/callback/DownloadNotificationListener;->displayToast(I)V

    return-void
.end method
