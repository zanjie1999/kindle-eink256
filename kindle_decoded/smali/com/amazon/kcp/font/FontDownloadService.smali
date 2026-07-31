.class public Lcom/amazon/kcp/font/FontDownloadService;
.super Lcom/amazon/kcp/service/ReddingService;
.source "FontDownloadService.java"

# interfaces
.implements Lcom/amazon/kcp/font/FontDownloadRequest$FontDownloadRequestDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/font/FontDownloadService$FontDownloadStatusTracker;
    }
.end annotation


# static fields
.field public static final ACTION_CANCEL_FONT_DOWNLOAD:Ljava/lang/String; = "com.amazon.kindle.CANCEL_FONT_DOWNLOAD"

.field public static final ACTION_DOWNLOAD_FONT:Ljava/lang/String; = "com.amazon.kindle.DOWNLOAD_FONT"

.field public static final EXTRA_LANGUAGE_FOR_FONT_DOWNLOAD:Ljava/lang/String; = "com.amazon.kindle.LANGUAGE_FOR_FONT_DOWNLOAD"

.field public static final EXTRA_PROMPT_USER_ON_WAN:Ljava/lang/String; = "com.amazon.kindle.EXTRA_PROMPT_USER_ON_WAN"

.field private static final FONT_DOWNLOAD_CANCELLED:Ljava/lang/String; = "FontDownloadCancelled"

.field private static final FONT_DOWNLOAD_FAILED:Ljava/lang/String; = "FontDownloadFailed"

.field private static final FONT_DOWNLOAD_SUCCEEDED:Ljava/lang/String; = "FontDownloadSucceeded"

.field private static final FONT_DOWNLOAD_TIMER:Ljava/lang/String; = "FontDownloadTimer"

.field private static final NOTIFICATION_ID:I = 0xab3

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final binder:Landroid/os/IBinder;

.field private currentlyDownloadingRequest:Lcom/amazon/kcp/font/FontDownloadRequest;

.field private final hasLanguageRequestUnfinished:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final queue:Ljava/util/AbstractQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/AbstractQueue<",
            "Lcom/amazon/kcp/font/FontDownloadRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-class v0, Lcom/amazon/kcp/font/FontDownloadService;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/font/FontDownloadService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/amazon/kcp/service/ReddingService;-><init>()V

    .line 74
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/font/FontDownloadService;->queue:Ljava/util/AbstractQueue;

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/amazon/kcp/font/FontDownloadService;->currentlyDownloadingRequest:Lcom/amazon/kcp/font/FontDownloadRequest;

    .line 84
    invoke-static {}, Lcom/google/common/collect/Sets;->newConcurrentHashSet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/font/FontDownloadService;->hasLanguageRequestUnfinished:Ljava/util/Set;

    .line 87
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/font/FontDownloadService;->binder:Landroid/os/IBinder;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 45
    sget-object v0, Lcom/amazon/kcp/font/FontDownloadService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private constructFontNotification(Ljava/lang/String;)Lcom/amazon/kcp/font/FontNotification;
    .locals 3

    .line 208
    new-instance v0, Lcom/amazon/kcp/font/FontNotification;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/amazon/kcp/font/FontDownloadService;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/amazon/kcp/font/FontNotification;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method private enqueueFontDownload(Lcom/amazon/kcp/font/FontDownloadRequest;)V
    .locals 2

    .line 212
    invoke-virtual {p1}, Lcom/amazon/kcp/font/FontDownloadRequest;->getDownloadLanguage()Ljava/lang/String;

    move-result-object v0

    .line 213
    iget-object v1, p0, Lcom/amazon/kcp/font/FontDownloadService;->hasLanguageRequestUnfinished:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/amazon/kcp/font/FontDownloadService;->queue:Ljava/util/AbstractQueue;

    invoke-virtual {v0, p1}, Ljava/util/AbstractQueue;->add(Ljava/lang/Object;)Z

    .line 215
    iget-object p1, p0, Lcom/amazon/kcp/font/FontDownloadService;->currentlyDownloadingRequest:Lcom/amazon/kcp/font/FontDownloadRequest;

    if-nez p1, :cond_0

    .line 216
    invoke-direct {p0}, Lcom/amazon/kcp/font/FontDownloadService;->runNextCommand()V

    :cond_0
    return-void
.end method

.method public static getCancelDownloadIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 318
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amazon/kcp/font/FontDownloadService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "com.amazon.kindle.CANCEL_FONT_DOWNLOAD"

    .line 319
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "com.amazon.kindle.LANGUAGE_FOR_FONT_DOWNLOAD"

    .line 320
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static getFontDownloadIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    .line 283
    invoke-static {p1}, Lcom/amazon/kcp/font/FontUtils;->fontRequiresUserNotification(Ljava/lang/String;)Z

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/amazon/kcp/font/FontDownloadService;->getFontDownloadIntent(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static getFontDownloadIntent(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 2

    .line 295
    invoke-static {p1}, Lcom/amazon/kcp/font/FontUtils;->getBaseLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 296
    invoke-static {v0}, Lcom/amazon/kcp/font/FontUtils;->supportSeparatelyFontsDownload(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
    invoke-static {p1}, Lcom/amazon/kcp/font/ManualFontDownloadHelper;->getFont(Ljava/lang/String;)Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 303
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amazon/kcp/font/FontDownloadService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "com.amazon.kindle.DOWNLOAD_FONT"

    .line 304
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "com.amazon.kindle.LANGUAGE_FOR_FONT_DOWNLOAD"

    .line 305
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "com.amazon.kindle.EXTRA_PROMPT_USER_ON_WAN"

    .line 306
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method private handleCancelIntent(Ljava/lang/String;)V
    .locals 3

    .line 161
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 163
    iget-object v0, p0, Lcom/amazon/kcp/font/FontDownloadService;->hasLanguageRequestUnfinished:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 166
    iget-object v0, p0, Lcom/amazon/kcp/font/FontDownloadService;->queue:Ljava/util/AbstractQueue;

    invoke-virtual {v0}, Ljava/util/AbstractQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 167
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/font/FontDownloadRequest;

    invoke-virtual {v1}, Lcom/amazon/kcp/font/FontDownloadRequest;->getDownloadLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 173
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/font/FontDownloadService;->currentlyDownloadingRequest:Lcom/amazon/kcp/font/FontDownloadRequest;

    if-eqz p1, :cond_2

    .line 174
    invoke-virtual {p1}, Lcom/amazon/kcp/font/FontDownloadRequest;->cancel()V

    .line 175
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v1, "FontDownloadService"

    const-string v2, "FontDownloadCancelled"

    invoke-virtual {p1, v1, v2, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    :cond_2
    return-void
.end method

.method private handleDownloadIntent(Ljava/lang/String;)V
    .locals 3

    .line 155
    invoke-direct {p0, p1}, Lcom/amazon/kcp/font/FontDownloadService;->constructFontNotification(Ljava/lang/String;)Lcom/amazon/kcp/font/FontNotification;

    move-result-object v0

    .line 156
    new-instance v1, Lcom/amazon/kcp/font/FontDownloadRequest;

    new-instance v2, Lcom/amazon/kcp/font/FontDownloadService$FontDownloadStatusTracker;

    invoke-direct {v2, p0, v0}, Lcom/amazon/kcp/font/FontDownloadService$FontDownloadStatusTracker;-><init>(Lcom/amazon/kcp/font/FontDownloadService;Lcom/amazon/kcp/font/FontNotification;)V

    invoke-direct {v1, p1, v2, p0}, Lcom/amazon/kcp/font/FontDownloadRequest;-><init>(Ljava/lang/String;Lcom/amazon/kindle/services/download/IStatusTracker;Lcom/amazon/kcp/font/FontDownloadRequest$FontDownloadRequestDelegate;)V

    .line 157
    invoke-direct {p0, v1}, Lcom/amazon/kcp/font/FontDownloadService;->enqueueFontDownload(Lcom/amazon/kcp/font/FontDownloadRequest;)V

    return-void
.end method

.method private handleDownloadPrompt(Ljava/lang/String;)V
    .locals 1

    const-string v0, "connectivity"

    .line 146
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-static {v0}, Landroidx/core/net/ConnectivityManagerCompat;->isActiveNetworkMetered(Landroid/net/ConnectivityManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-direct {p0, p1}, Lcom/amazon/kcp/font/FontDownloadService;->constructFontNotification(Ljava/lang/String;)Lcom/amazon/kcp/font/FontNotification;

    move-result-object p1

    .line 148
    invoke-virtual {p1}, Lcom/amazon/kcp/font/FontNotification;->promptForFontDownload()V

    goto :goto_0

    .line 150
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kcp/font/FontDownloadService;->handleDownloadIntent(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private handleLoadFonts(Ljava/lang/String;)V
    .locals 4

    .line 182
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    .line 183
    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 184
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 186
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBaseLanguage()Ljava/lang/String;

    move-result-object v1

    .line 187
    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    invoke-static {p0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    .line 189
    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontConfigurationProvider()Lcom/amazon/kcp/font/AbstractFontConfigurationProvider;

    move-result-object v1

    .line 190
    invoke-virtual {v1, v0}, Lcom/amazon/kcp/font/AbstractFontConfigurationProvider;->getFontConfigFile(Lcom/amazon/android/docviewer/KindleDocViewer;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 192
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/amazon/android/docviewer/KindleDocViewer;->setFontConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v2, "FontDownloadService"

    const-string v3, "FontsLoadedForOpenBook"

    invoke-virtual {v0, v2, v3, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 199
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontConfigInitializer()Lcom/amazon/kcp/font/FontConfigInitializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/font/FontConfigInitializer;->onFontDownload()V

    .line 200
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontFactory()Lcom/mobipocket/android/drawing/AndroidFontFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->populateSupportedFonts()V

    .line 201
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/application/UserSettingsController;->getFontFamily(Ljava/lang/String;)Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object v0

    .line 202
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/amazon/kcp/application/UserSettingsController;->setFontFamily(Lcom/mobipocket/android/drawing/FontFamily;Ljava/lang/String;)V

    return-void
.end method

.method private runNextCommand()V
    .locals 3

    .line 222
    iget-object v0, p0, Lcom/amazon/kcp/font/FontDownloadService;->queue:Ljava/util/AbstractQueue;

    invoke-virtual {v0}, Ljava/util/AbstractQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/font/FontDownloadRequest;

    if-nez v0, :cond_0

    .line 226
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto :goto_0

    .line 227
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kcp/font/FontDownloadRequest;->hasStarted()Z

    move-result v1

    if-nez v1, :cond_2

    .line 229
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amazon/kcp/font/FontDownloadRequest;->getDownloadLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/kcp/font/FontUtils;->areRequiredFontsDownloaded(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 231
    invoke-direct {p0}, Lcom/amazon/kcp/font/FontDownloadService;->runNextCommand()V

    goto :goto_0

    .line 233
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    const-string v2, "FontDownloadTimer"

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->startMetricTimer(Ljava/lang/String;)V

    .line 234
    invoke-virtual {v0}, Lcom/amazon/kcp/font/FontDownloadRequest;->performFontRetrieval()V

    .line 235
    iput-object v0, p0, Lcom/amazon/kcp/font/FontDownloadService;->currentlyDownloadingRequest:Lcom/amazon/kcp/font/FontDownloadRequest;

    :cond_2
    :goto_0
    return-void
.end method

.method public static startService(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 95
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 96
    new-instance v0, Lcom/amazon/kcp/font/FontDownloadService$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kcp/font/FontDownloadService$1;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    const/4 v1, 0x1

    .line 112
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 91
    iget-object p1, p0, Lcom/amazon/kcp/font/FontDownloadService;->binder:Landroid/os/IBinder;

    return-object p1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .line 123
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1a

    if-lt p2, p3, :cond_0

    const/16 p2, 0xab3

    .line 124
    sget p3, Lcom/amazon/kindle/thirdparty/R$string;->fds_notification_desc:I

    invoke-virtual {p0, p2, p3}, Lcom/amazon/kcp/service/ReddingService;->startForegroundWithNotification(II)V

    .line 127
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string p3, "com.amazon.kindle.LANGUAGE_FOR_FONT_DOWNLOAD"

    .line 128
    invoke-virtual {p1, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x1

    const-string v1, "com.amazon.kindle.EXTRA_PROMPT_USER_ON_WAN"

    .line 129
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const-string v0, "com.amazon.kindle.DOWNLOAD_FONT"

    .line 131
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 133
    invoke-direct {p0, p3}, Lcom/amazon/kcp/font/FontDownloadService;->handleDownloadPrompt(Ljava/lang/String;)V

    goto :goto_0

    .line 135
    :cond_1
    invoke-direct {p0, p3}, Lcom/amazon/kcp/font/FontDownloadService;->handleDownloadIntent(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "com.amazon.kindle.CANCEL_FONT_DOWNLOAD"

    .line 137
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 138
    invoke-direct {p0, p3}, Lcom/amazon/kcp/font/FontDownloadService;->handleCancelIntent(Ljava/lang/String;)V

    :cond_3
    :goto_0
    const/4 p1, 0x3

    return p1
.end method

.method public requestDidFinish(Lcom/amazon/kcp/font/FontDownloadRequest;)V
    .locals 6

    .line 242
    invoke-virtual {p1}, Lcom/amazon/kcp/font/FontDownloadRequest;->getBaseLanguage()Ljava/lang/String;

    move-result-object v0

    .line 243
    invoke-virtual {p1}, Lcom/amazon/kcp/font/FontDownloadRequest;->getDownloadLanguage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 244
    iput-object v2, p0, Lcom/amazon/kcp/font/FontDownloadService;->currentlyDownloadingRequest:Lcom/amazon/kcp/font/FontDownloadRequest;

    .line 247
    iget-object v2, p0, Lcom/amazon/kcp/font/FontDownloadService;->hasLanguageRequestUnfinished:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 249
    invoke-static {v0}, Lcom/amazon/kcp/font/FontUtils;->supportSeparatelyFontsDownload(Ljava/lang/String;)Z

    move-result v2

    .line 250
    invoke-virtual {p1}, Lcom/amazon/kcp/font/FontDownloadRequest;->hasError()Z

    move-result v3

    const-string v4, "FontDownloadService"

    const-string v5, "FontDownloadTimer"

    if-eqz v3, :cond_0

    .line 251
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->cancelMetricTimer(Ljava/lang/String;)V

    .line 252
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    const-string v3, "FontDownloadFailed"

    invoke-virtual {p1, v4, v3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 254
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kcp/font/FontDownloadRequest;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 257
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    const-string v2, "FontDownloadSucceeded"

    invoke-virtual {p1, v4, v2, v5}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->stopMetricTimer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-direct {p0, v0}, Lcom/amazon/kcp/font/FontDownloadService;->handleLoadFonts(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 264
    invoke-static {}, Lcom/amazon/kcp/font/ManualFontDownloadHelper;->getInstance()Lcom/amazon/kcp/font/ManualFontDownloadHelper;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/amazon/kcp/font/ManualFontDownloadHelper;->getFontInfo(Ljava/lang/String;)Lcom/amazon/kcp/font/ManualFontDownloadHelper$FontInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 266
    invoke-virtual {p1}, Lcom/amazon/kcp/font/ManualFontDownloadHelper$FontInfo;->setDownloadFailed()V

    .line 268
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/application/UserSettingsController;->getFontFamily(Ljava/lang/String;)Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object p1

    .line 269
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/amazon/kcp/application/UserSettingsController;->setFontFamily(Lcom/mobipocket/android/drawing/FontFamily;Ljava/lang/String;)V

    .line 273
    :cond_2
    invoke-direct {p0}, Lcom/amazon/kcp/font/FontDownloadService;->runNextCommand()V

    return-void
.end method
