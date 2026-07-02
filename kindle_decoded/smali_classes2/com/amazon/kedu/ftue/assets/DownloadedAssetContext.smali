.class public Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext;
.super Ljava/lang/Object;
.source "DownloadedAssetContext.java"

# interfaces
.implements Lcom/amazon/kedu/ftue/assets/IAssetContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext$ResourceMap;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.kedu.ftue.assets.DownloadedAssetContext"


# instance fields
.field private assets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kedu/ftue/assets/resources/ResourceType;",
            "Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext$ResourceMap;",
            ">;"
        }
    .end annotation
.end field

.field private final fileProvider:Lcom/amazon/kedu/ftue/assets/IFileProvider;

.field private volatile initialized:Z

.field private lock:Ljava/util/concurrent/Semaphore;

.field private final manager:Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;

.field private manifest:Lcom/amazon/kedu/ftue/assets/AssetManifest;

.field private mapHelper:Lcom/amazon/kedu/ftue/assets/AssetResourceMapHelper;

.field private systemConfiguration:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kedu/ftue/assets/resources/QualifierType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;Lcom/amazon/kedu/ftue/assets/IFileProvider;Lcom/amazon/kedu/ftue/assets/AssetResourceMapHelper;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext;-><init>(Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;Lcom/amazon/kedu/ftue/assets/IFileProvider;Lcom/amazon/kedu/ftue/assets/AssetResourceMapHelper;Ljava/util/Map;)V

    return-void
.end method

.method constructor <init>(Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;Lcom/amazon/kedu/ftue/assets/IFileProvider;Lcom/amazon/kedu/ftue/assets/AssetResourceMapHelper;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;",
            "Lcom/amazon/kedu/ftue/assets/IFileProvider;",
            "Lcom/amazon/kedu/ftue/assets/AssetResourceMapHelper;",
            "Ljava/util/Map<",
            "Lcom/amazon/kedu/ftue/assets/resources/QualifierType;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext;->assets:Ljava/util/Map;

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext;->initialized:Z

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext;->manifest:Lcom/amazon/kedu/ftue/assets/AssetManifest;

    .line 34
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext;->lock:Ljava/util/concurrent/Semaphore;

    .line 57
    iput-object p1, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext;->manager:Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;

    .line 58
    iput-object p3, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext;->mapHelper:Lcom/amazon/kedu/ftue/assets/AssetResourceMapHelper;

    .line 59
    iput-object p2, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext;->fileProvider:Lcom/amazon/kedu/ftue/assets/IFileProvider;

    .line 60
    iput-object p4, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext;->systemConfiguration:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 22
    sget-object v0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getCurrentSystemSettings()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/amazon/kedu/ftue/assets/resources/QualifierType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 110
    invoke-virtual {p0}, Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext;->getSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 111
    new-instance v1, Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext;->getSystemConfiguration()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 112
    sget-object v2, Lcom/amazon/kedu/ftue/assets/resources/QualifierType;->LOCALE:Lcom/amazon/kedu/ftue/assets/resources/QualifierType;

    invoke-virtual {p0, v0}, Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext;->getLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v2, Lcom/amazon/kedu/ftue/assets/resources/QualifierType;->ORIENTATION:Lcom/amazon/kedu/ftue/assets/resources/QualifierType;

    invoke-virtual {p0, v0}, Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext;->getOrientation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method private getDrawable(Ljava/lang/String;Ljava/util/Map;)Lcom/amazon/kedu/ftue/assets/resources/ResourceDetails;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/amazon/kedu/ftue/assets/resources/QualifierType;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazon/kedu/ftue/assets/resources/ResourceDetails;"
        }
    .end annotation

    .line 95
    invoke-virtual {p0}, Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext;->getAssets()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/amazon/kedu/ftue/assets/resources/ResourceType;->DRAWABLE:Lcom/amazon/kedu/ftue/assets/resources/ResourceType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext$ResourceMap;

    .line 96
    invoke-virtual {v0, p1, p2}, Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext$ResourceMap;->getResource(Ljava/lang/String;Ljava/util/Map;)Lcom/amazon/kedu/ftue/assets/resources/ResourceDetails;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method buildBaseSystemSettings()V
    .locals 3

    .line 181
    iget-object v0, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext;->systemConfiguration:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 183
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 185
    sget-object v1, Lcom/amazon/kedu/ftue/assets/resources/QualifierType;->PLATFORM_VERSION:Lcom/amazon/kedu/ftue/assets/resources/QualifierType;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext;->systemConfiguration:Ljava/util/Map;

    :cond_0
    return-void
.end method

.method getAssets()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/amazon/kedu/ftue/assets/resources/ResourceType;",
            "Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext$ResourceMap;",
            ">;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext;->assets:Ljava/util/Map;

    return-object v0
.end method

.method public getDrawableFile(Ljava/lang/String;)Ljava/io/File;
    .locals 5

    .line 69
    invoke-virtual {p0}, Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext;->loadManifest()Lcom/amazon/kedu/ftue/assets/AssetManifest;

    move-result-object v0

    .line 70
    invoke-direct {p0}, Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext;->getCurrentSystemSettings()Ljava/util/Map;

    move-result-object v1

    .line 71
    invoke-direct {p0, p1, v1}, Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext;->getDrawable(Ljava/lang/String;Ljava/util/Map;)Lcom/amazon/kedu/ftue/assets/resources/ResourceDetails;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 73
    iget-object v4, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext;->manager:Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;

    invoke-virtual {v4, v0}, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->attemptToLockManifestRevision(Lcom/amazon/kedu/ftue/assets/AssetManifest;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    sget-object v0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext;->TAG:Ljava/lang/String;

    const-string v2, "Failed locking manifest revision, re-attempting"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-virtual {p0}, Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext;->loadManifest()Lcom/amazon/kedu/ftue/assets/AssetManifest;

    move-result-object v0

    .line 78
    invoke-direct {p0, p1, v1}, Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext;->getDrawable(Ljava/lang/String;Ljava/util/Map;)Lcom/amazon/kedu/ftue/assets/resources/ResourceDetails;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 79
    iget-object v1, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext;->manager:Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;

    invoke-virtual {v1, v0}, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->attemptToLockManifestRevision(Lcom/amazon/kedu/ftue/assets/AssetManifest;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    sget-object p1, Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext;->TAG:Ljava/lang/String;

    const-string v0, "Failed locking manifest revision, failed!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_0
    if-eqz v2, :cond_1

    .line 86
    iget-object v0, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext;->fileProvider:Lcom/amazon/kedu/ftue/assets/IFileProvider;

    invoke-virtual {v2}, Lcom/amazon/kedu/ftue/assets/resources/ResourceDetails;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kedu/ftue/assets/IFileProvider;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v3

    .line 87
    :goto_0
    sget-object v1, Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDrawableFile("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "): "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-static {}, Lcom/amazon/kedu/ftue/metrics/MetricManager;->getInstance()Lcom/amazon/kedu/ftue/metrics/MetricManager;

    move-result-object p1

    sget-object v1, Lcom/amazon/kedu/ftue/metrics/Metric;->ASSET_ACCESSED_SUCCESS:Lcom/amazon/kedu/ftue/metrics/Metric;

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p1, v1, v2}, Lcom/amazon/kedu/ftue/metrics/MetricManager;->reportMetricCounter(Lcom/amazon/kedu/ftue/metrics/Metric;I)V

    return-object v0
.end method

.method getLocale(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 206
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-r"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getOrientation(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 216
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const-string p1, "land"

    goto :goto_0

    :cond_0
    const-string p1, "port"

    :goto_0
    return-object p1
.end method

.method getSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 1

    .line 296
    invoke-static {}, Lcom/amazon/kedu/ftue/Plugin;->getSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    return-object v0
.end method

.method getSystemConfiguration()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/amazon/kedu/ftue/assets/resources/QualifierType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext;->systemConfiguration:Ljava/util/Map;

    return-object v0
.end method

.method loadManifest()Lcom/amazon/kedu/ftue/assets/AssetManifest;
    .locals 4

    .line 124
    iget-object v0, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext;->manager:Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;

    invoke-virtual {v0}, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->getAssetManifest()Lcom/amazon/kedu/ftue/assets/AssetManifest;

    move-result-object v0

    .line 125
    iget-boolean v1, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext;->initialized:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext;->manifest:Lcom/amazon/kedu/ftue/assets/AssetManifest;

    invoke-virtual {v1}, Lcom/amazon/kedu/ftue/assets/AssetManifest;->getVersion()I

    move-result v1

    invoke-virtual {v0}, Lcom/amazon/kedu/ftue/assets/AssetManifest;->getVersion()I

    move-result v3

    if-eq v1, v3, :cond_1

    .line 127
    sget-object v1, Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext;->TAG:Ljava/lang/String;

    const-string v3, "current manifest doesn\'t match the manager"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext;->lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 131
    sget-object v1, Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext;->TAG:Ljava/lang/String;

    const-string v3, "lock acquired to reset"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v1, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext;->manifest:Lcom/amazon/kedu/ftue/assets/AssetManifest;

    invoke-virtual {v1}, Lcom/amazon/kedu/ftue/assets/AssetManifest;->getVersion()I

    move-result v1

    invoke-virtual {v0}, Lcom/amazon/kedu/ftue/assets/AssetManifest;->getVersion()I

    move-result v0

    if-eq v1, v0, :cond_0

    const/4 v0, 0x0

    .line 134
    iput-boolean v0, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext;->initialized:Z

    .line 136
    iget-object v0, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext;->manager:Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;

    invoke-virtual {v0}, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->getAssetManifest()Lcom/amazon/kedu/ftue/assets/AssetManifest;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext;->mapHelper:Lcom/amazon/kedu/ftue/assets/AssetResourceMapHelper;

    invoke-virtual {v1, v0}, Lcom/amazon/kedu/ftue/assets/AssetResourceMapHelper;->buildResourceMaps(Lcom/amazon/kedu/ftue/assets/AssetManifest;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext;->assets:Ljava/util/Map;

    .line 138
    iput-object v0, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext;->manifest:Lcom/amazon/kedu/ftue/assets/AssetManifest;

    .line 139
    iput-boolean v2, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext;->initialized:Z

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext;->lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 142
    sget-object v0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext;->TAG:Ljava/lang/String;

    const-string v1, "lock released from reset"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 146
    sget-object v1, Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext;->TAG:Ljava/lang/String;

    const-string v3, "Interrupted while resetting"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext;->initialized:Z

    if-nez v0, :cond_3

    .line 153
    :try_start_1
    iget-object v0, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext;->lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 154
    iget-boolean v0, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext;->initialized:Z

    if-nez v0, :cond_2

    .line 157
    iget-object v0, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext;->manager:Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;

    invoke-virtual {v0}, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->getAssetManifest()Lcom/amazon/kedu/ftue/assets/AssetManifest;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 160
    invoke-virtual {p0}, Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext;->buildBaseSystemSettings()V

    .line 161
    iget-object v1, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext;->mapHelper:Lcom/amazon/kedu/ftue/assets/AssetResourceMapHelper;

    invoke-virtual {v1, v0}, Lcom/amazon/kedu/ftue/assets/AssetResourceMapHelper;->buildResourceMaps(Lcom/amazon/kedu/ftue/assets/AssetManifest;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext;->assets:Ljava/util/Map;

    .line 162
    iput-object v0, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext;->manifest:Lcom/amazon/kedu/ftue/assets/AssetManifest;

    .line 163
    iput-boolean v2, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext;->initialized:Z

    .line 166
    :cond_2
    iget-object v0, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext;->lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 170
    sget-object v1, Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext;->TAG:Ljava/lang/String;

    const-string v2, "Interrupted while initializing"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext;->manifest:Lcom/amazon/kedu/ftue/assets/AssetManifest;

    return-object v0
.end method
