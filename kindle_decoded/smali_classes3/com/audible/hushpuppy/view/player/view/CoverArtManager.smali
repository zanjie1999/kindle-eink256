.class public final Lcom/audible/hushpuppy/view/player/view/CoverArtManager;
.super Ljava/lang/Object;
.source "CoverArtManager.java"

# interfaces
.implements Lcom/audible/hushpuppy/view/player/view/ICoverArtManager;


# static fields
.field private static final DEFAULT_IMAGE_SIZE:I = 0x100

.field private static final DISK_CACHE_SIZE_BYTES:I = 0x1900000

.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

.field private static final MEM_CACHE_SIZE_BYTES:I = 0x100000

.field private static final URL_IMAGE_PATH:Ljava/lang/String; = "/download/image?asin="

.field private static final URL_IMAGE_SIZE:Ljava/lang/String; = "&image_size="

.field private static final URL_PREFIX:Ljava/lang/String; = "https://"


# instance fields
.field private config:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

.field protected kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/view/player/view/CoverArtManager;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/view/player/view/CoverArtManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-static {}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->getInstance()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->inject(Lcom/audible/hushpuppy/view/player/view/CoverArtManager;)V

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/audible/hushpuppy/view/player/view/CoverArtManager;->config:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    .line 88
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    const/4 v1, 0x1

    .line 89
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 90
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisk(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$drawable;->default_album_art:I

    .line 91
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$drawable;->default_album_art:I

    .line 92
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY_STRETCHED:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 93
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 94
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/hushpuppy/view/player/view/CoverArtManager;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    return-void
.end method

.method private configLoader(Landroid/content/Context;)V
    .locals 1

    .line 181
    new-instance v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    invoke-direct {v0, p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x100000

    .line 182
    invoke-virtual {v0, p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCacheSize(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    const/high16 p1, 0x1900000

    .line 183
    invoke-virtual {v0, p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCacheSize(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    .line 184
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->build()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/hushpuppy/view/player/view/CoverArtManager;->config:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    .line 186
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object p1

    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/CoverArtManager;->config:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    invoke-virtual {p1, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->init(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V

    return-void
.end method

.method private getCoverArtRemoteService()Ljava/lang/String;
    .locals 5

    .line 103
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/CoverArtManager;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IUserAccount;->getCountryOfResidence()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DE"

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "cds.audible.de"

    return-object v0

    :cond_0
    const-string v1, "GB"

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "cds.audible.co.uk"

    return-object v0

    :cond_1
    const-string v1, "AU"

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "cds.audible.com.au"

    return-object v0

    :cond_2
    const-string v1, "US"

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "cds.audible.com"

    if-eqz v1, :cond_3

    return-object v2

    .line 117
    :cond_3
    sget-object v1, Lcom/audible/hushpuppy/view/player/view/CoverArtManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find country code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; using US as default."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-object v2
.end method

.method private getImageUrl(ILcom/audible/mobile/domain/Asin;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/CoverArtManager;->config:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    if-nez v0, :cond_0

    .line 145
    invoke-direct {p0, p3}, Lcom/audible/hushpuppy/view/player/view/CoverArtManager;->configLoader(Landroid/content/Context;)V

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/16 p1, 0x100

    .line 149
    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "https://"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/CoverArtManager;->getCoverArtRemoteService()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/download/image?asin="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    if-nez p2, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    .line 150
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&image_size="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1
.end method


# virtual methods
.method public clear()V
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/CoverArtManager;->config:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/CoverArtManager;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/view/player/view/CoverArtManager;->configLoader(Landroid/content/Context;)V

    .line 161
    :cond_0
    :try_start_0
    sget-object v0, Lcom/audible/hushpuppy/view/player/view/CoverArtManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Clearing Memory cache ..."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 162
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->clearMemoryCache()V

    .line 164
    sget-object v0, Lcom/audible/hushpuppy/view/player/view/CoverArtManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Clearing Disk cache from location : %s ..."

    .line 165
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getDiskCache()Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

    move-result-object v2

    invoke-interface {v2}, Lcom/nostra13/universalimageloader/cache/disc/DiskCache;->getDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    .line 164
    invoke-interface {v0, v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 166
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->clearDiskCache()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 168
    sget-object v1, Lcom/audible/hushpuppy/view/player/view/CoverArtManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "Caught IllegalStateException when clearing the cache. ImageLoader was not init with configuration"

    invoke-interface {v1, v2, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public getBitmap(Lcom/audible/mobile/domain/Asin;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 132
    invoke-direct {p0, v0, p1, p2}, Lcom/audible/hushpuppy/view/player/view/CoverArtManager;->getImageUrl(ILcom/audible/mobile/domain/Asin;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 133
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImageSync(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public loadImage(Landroid/widget/ImageView;Lcom/audible/mobile/domain/Asin;)V
    .locals 2

    .line 125
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1}, Lcom/audible/hushpuppy/view/player/view/CoverArtManager;->getImageUrl(ILcom/audible/mobile/domain/Asin;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 126
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/view/CoverArtManager;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v0, p2, p1, v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    return-void
.end method
