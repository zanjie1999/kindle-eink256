.class public Lcom/audible/android/kcp/download/notification/ForegroundDownloadNotificationFactoryImpl;
.super Ljava/lang/Object;
.source "ForegroundDownloadNotificationFactoryImpl.java"

# interfaces
.implements Lcom/audible/mobile/download/notification/DownloadNotificationFactory;


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private mAsin:Lcom/audible/mobile/domain/Asin;

.field private final mAudioFileManager:Lcom/audible/android/kcp/download/AudioFileManager;

.field private final mCompanionManager:Lcom/audible/android/kcp/companion/CompanionManager;

.field private final mContext:Landroid/content/Context;

.field private final mDownloadProgressBuilder:Landroid/app/Notification$Builder;

.field private mEbook:Lcom/amazon/kindle/krx/content/IBook;

.field private final mLibraryManager:Lcom/amazon/kindle/krx/library/ILibraryManager;

.field private final mLibraryUIManager:Lcom/amazon/kindle/krx/ui/ILibraryUIManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/android/kcp/download/notification/ForegroundDownloadNotificationFactoryImpl;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/android/kcp/download/notification/ForegroundDownloadNotificationFactoryImpl;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/audible/android/kcp/download/AudioFileManager;Lcom/amazon/kindle/krx/library/ILibraryManager;Lcom/audible/android/kcp/companion/CompanionManager;Lcom/amazon/kindle/krx/ui/ILibraryUIManager;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/audible/android/kcp/download/notification/ForegroundDownloadNotificationFactoryImpl;->mContext:Landroid/content/Context;

    .line 47
    iput-object p3, p0, Lcom/audible/android/kcp/download/notification/ForegroundDownloadNotificationFactoryImpl;->mLibraryManager:Lcom/amazon/kindle/krx/library/ILibraryManager;

    .line 48
    iput-object p2, p0, Lcom/audible/android/kcp/download/notification/ForegroundDownloadNotificationFactoryImpl;->mAudioFileManager:Lcom/audible/android/kcp/download/AudioFileManager;

    .line 49
    iput-object p4, p0, Lcom/audible/android/kcp/download/notification/ForegroundDownloadNotificationFactoryImpl;->mCompanionManager:Lcom/audible/android/kcp/companion/CompanionManager;

    .line 50
    iput-object p5, p0, Lcom/audible/android/kcp/download/notification/ForegroundDownloadNotificationFactoryImpl;->mLibraryUIManager:Lcom/amazon/kindle/krx/ui/ILibraryUIManager;

    .line 52
    new-instance p1, Landroid/app/Notification$Builder;

    iget-object p2, p0, Lcom/audible/android/kcp/download/notification/ForegroundDownloadNotificationFactoryImpl;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/audible/android/kcp/download/notification/ForegroundDownloadNotificationFactoryImpl;->mDownloadProgressBuilder:Landroid/app/Notification$Builder;

    return-void
.end method


# virtual methods
.method public get()Landroid/app/Notification;
    .locals 7

    .line 98
    iget-object v0, p0, Lcom/audible/android/kcp/download/notification/ForegroundDownloadNotificationFactoryImpl;->mAsin:Lcom/audible/mobile/domain/Asin;

    if-nez v0, :cond_0

    .line 99
    sget-object v0, Lcom/audible/android/kcp/download/notification/ForegroundDownloadNotificationFactoryImpl;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "ASIN must be provided to build Audiobook download notifications"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 103
    :cond_0
    new-instance v0, Lcom/audible/mobile/domain/ImmutableAsinImpl;

    iget-object v1, p0, Lcom/audible/android/kcp/download/notification/ForegroundDownloadNotificationFactoryImpl;->mAsin:Lcom/audible/mobile/domain/Asin;

    invoke-interface {v1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/audible/mobile/domain/ImmutableAsinImpl;-><init>(Ljava/lang/String;)V

    .line 108
    new-instance v1, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilderFactory;

    iget-object v2, p0, Lcom/audible/android/kcp/download/notification/ForegroundDownloadNotificationFactoryImpl;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;

    iget-object v4, p0, Lcom/audible/android/kcp/download/notification/ForegroundDownloadNotificationFactoryImpl;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/audible/android/kcp/download/notification/ForegroundDownloadNotificationFactoryImpl;->mDownloadProgressBuilder:Landroid/app/Notification$Builder;

    invoke-direct {v3, v4, v5}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;-><init>(Landroid/content/Context;Landroid/app/Notification$Builder;)V

    iget-object v4, p0, Lcom/audible/android/kcp/download/notification/ForegroundDownloadNotificationFactoryImpl;->mEbook:Lcom/amazon/kindle/krx/content/IBook;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilderFactory;-><init>(Landroid/content/Context;Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;Lcom/amazon/kindle/krx/content/IBook;Lcom/audible/mobile/domain/Asin;)V

    .line 111
    invoke-virtual {v1}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilderFactory;->getDownloadQueuedNotification()Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 113
    new-instance v3, Lcom/audible/android/kcp/download/callback/DownloadNotificationListener;

    iget-object v4, p0, Lcom/audible/android/kcp/download/notification/ForegroundDownloadNotificationFactoryImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/audible/android/kcp/download/notification/ForegroundDownloadNotificationFactoryImpl;->getId()I

    move-result v5

    iget-object v6, p0, Lcom/audible/android/kcp/download/notification/ForegroundDownloadNotificationFactoryImpl;->mLibraryUIManager:Lcom/amazon/kindle/krx/ui/ILibraryUIManager;

    invoke-direct {v3, v4, v5, v1, v6}, Lcom/audible/android/kcp/download/callback/DownloadNotificationListener;-><init>(Landroid/content/Context;ILcom/audible/android/kcp/download/notification/DownloadNotificationBuilderFactory;Lcom/amazon/kindle/krx/ui/ILibraryUIManager;)V

    .line 116
    new-instance v1, Lcom/audible/android/kcp/download/callback/NotificationAudiobookDownloadStatusCallback;

    iget-object v4, p0, Lcom/audible/android/kcp/download/notification/ForegroundDownloadNotificationFactoryImpl;->mAudioFileManager:Lcom/audible/android/kcp/download/AudioFileManager;

    invoke-direct {v1, v0, v4, v3}, Lcom/audible/android/kcp/download/callback/NotificationAudiobookDownloadStatusCallback;-><init>(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/AudioFileManager;Lcom/audible/android/kcp/player/DownloadProgressUI;)V

    .line 119
    iget-object v3, p0, Lcom/audible/android/kcp/download/notification/ForegroundDownloadNotificationFactoryImpl;->mAudioFileManager:Lcom/audible/android/kcp/download/AudioFileManager;

    sget-object v4, Lcom/audible/android/kcp/download/receiver/AirDownloadType;->AUDIOBOOK:Lcom/audible/android/kcp/download/receiver/AirDownloadType;

    invoke-interface {v3, v0, v4, v1}, Lcom/audible/android/kcp/download/AudioFileManager;->registerDownloadStatusCallback(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;Lcom/audible/android/kcp/download/callback/DownloadStatusCallback;)V

    return-object v2
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/audible/android/kcp/download/notification/ForegroundDownloadNotificationFactoryImpl;->get()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public getId()I
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/audible/android/kcp/download/notification/ForegroundDownloadNotificationFactoryImpl;->mAsin:Lcom/audible/mobile/domain/Asin;

    if-nez v0, :cond_0

    .line 59
    sget-object v0, Lcom/audible/mobile/download/ContentType;->Audiobook:Lcom/audible/mobile/download/ContentType;

    invoke-virtual {v0}, Lcom/audible/mobile/download/ContentType;->getNotificationId()I

    move-result v0

    return v0

    .line 62
    :cond_0
    sget-object v0, Lcom/audible/mobile/download/ContentType;->Audiobook:Lcom/audible/mobile/download/ContentType;

    invoke-virtual {v0}, Lcom/audible/mobile/download/ContentType;->getNotificationId()I

    move-result v0

    iget-object v1, p0, Lcom/audible/android/kcp/download/notification/ForegroundDownloadNotificationFactoryImpl;->mAsin:Lcom/audible/mobile/domain/Asin;

    invoke-static {v0, v1}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->getUniqueDownloadId(ILcom/audible/mobile/domain/Asin;)I

    move-result v0

    return v0
.end method

.method public setAsin(Lcom/audible/mobile/domain/Asin;)V
    .locals 1

    .line 68
    iput-object p1, p0, Lcom/audible/android/kcp/download/notification/ForegroundDownloadNotificationFactoryImpl;->mAsin:Lcom/audible/mobile/domain/Asin;

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/audible/android/kcp/download/notification/ForegroundDownloadNotificationFactoryImpl;->mEbook:Lcom/amazon/kindle/krx/content/IBook;

    if-eqz p1, :cond_0

    .line 72
    iget-object v0, p0, Lcom/audible/android/kcp/download/notification/ForegroundDownloadNotificationFactoryImpl;->mCompanionManager:Lcom/audible/android/kcp/companion/CompanionManager;

    invoke-interface {p1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/audible/android/kcp/companion/CompanionManager;->getCompanionEbookAsin(Ljava/lang/String;)Lcom/audible/mobile/domain/Asin;

    move-result-object p1

    .line 73
    sget-object v0, Lcom/audible/mobile/domain/Asin;->NONE:Lcom/audible/mobile/domain/Asin;

    if-eq p1, v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/audible/android/kcp/download/notification/ForegroundDownloadNotificationFactoryImpl;->mLibraryManager:Lcom/amazon/kindle/krx/library/ILibraryManager;

    invoke-interface {p1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/library/ILibraryManager;->getContentFromAsin(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/android/kcp/download/notification/ForegroundDownloadNotificationFactoryImpl;->mEbook:Lcom/amazon/kindle/krx/content/IBook;

    :cond_0
    return-void
.end method
