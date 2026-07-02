.class public final Lcom/audible/mobile/player/metadata/SdkBasedCoverArtProviderImpl;
.super Lcom/audible/mobile/metadata/BaseCoverArtProvider;
.source "SdkBasedCoverArtProviderImpl.java"


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private final context:Landroid/content/Context;

.field private final metricManager:Lcom/audible/mobile/metric/logger/MetricManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;

    const-class v1, Lcom/audible/mobile/player/metadata/SdkBasedCoverArtProviderImpl;

    invoke-direct {v0, v1}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/audible/mobile/player/metadata/SdkBasedCoverArtProviderImpl;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/audible/mobile/metric/logger/MetricManager;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/audible/mobile/metadata/BaseCoverArtProvider;-><init>()V

    const-string v0, "Context must not be null"

    .line 39
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/mobile/player/metadata/SdkBasedCoverArtProviderImpl;->context:Landroid/content/Context;

    const-string p1, "MetricManager must not be null"

    .line 40
    invoke-static {p2, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Lcom/audible/mobile/metric/logger/MetricManager;

    iput-object p2, p0, Lcom/audible/mobile/player/metadata/SdkBasedCoverArtProviderImpl;->metricManager:Lcom/audible/mobile/metric/logger/MetricManager;

    return-void
.end method


# virtual methods
.method protected retrieveAsynchronously(Lcom/audible/mobile/player/AudioDataSource;Lcom/audible/mobile/audio/metadata/CoverArtType;Lcom/audible/mobile/audio/metadata/CoverArtProvider$Callback;)V
    .locals 3

    .line 47
    invoke-virtual {p1}, Lcom/audible/mobile/player/AudioDataSource;->getDataSourceType()Lcom/audible/mobile/player/AudioDataSourceType;

    move-result-object v0

    sget-object v1, Lcom/audible/mobile/player/AudioDataSourceType;->AudibleDRM:Lcom/audible/mobile/player/AudioDataSourceType;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/audible/mobile/player/AudioDataSource;->getDataSourceType()Lcom/audible/mobile/player/AudioDataSourceType;

    move-result-object v0

    sget-object v1, Lcom/audible/mobile/player/AudioDataSourceType;->AudibleDrmExo:Lcom/audible/mobile/player/AudioDataSourceType;

    if-eq v0, v1, :cond_0

    .line 48
    sget-object p2, Lcom/audible/mobile/player/metadata/SdkBasedCoverArtProviderImpl;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Lcom/audible/mobile/player/AudioDataSource;->getDataSourceType()Lcom/audible/mobile/player/AudioDataSourceType;

    move-result-object p1

    const-string v0, "Failed to retrieve cover art; invalid audio data source type {}"

    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    invoke-interface {p3}, Lcom/audible/mobile/audio/metadata/CoverArtProvider$Callback;->onFailure()V

    return-void

    .line 53
    :cond_0
    invoke-virtual {p1}, Lcom/audible/mobile/player/AudioDataSource;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/audible/mobile/util/UriUtils;->isFileUri(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 54
    sget-object p2, Lcom/audible/mobile/player/metadata/SdkBasedCoverArtProviderImpl;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Lcom/audible/mobile/player/AudioDataSource;->getUri()Landroid/net/Uri;

    move-result-object p1

    const-string v0, "Failed to retrieve cover art; uri is not file yet {}"

    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    invoke-interface {p3}, Lcom/audible/mobile/audio/metadata/CoverArtProvider$Callback;->onFailure()V

    return-void

    .line 59
    :cond_1
    new-instance v0, Lcom/audible/sdk/MetricRecordingAudibleSDK;

    iget-object v1, p0, Lcom/audible/mobile/player/metadata/SdkBasedCoverArtProviderImpl;->metricManager:Lcom/audible/mobile/metric/logger/MetricManager;

    invoke-direct {v0, v1}, Lcom/audible/sdk/MetricRecordingAudibleSDK;-><init>(Lcom/audible/mobile/metric/logger/MetricManager;)V

    .line 62
    :try_start_0
    invoke-virtual {p1}, Lcom/audible/mobile/player/AudioDataSource;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lcom/audible/mobile/util/UriUtils;->uriToFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/audible/sdk/AudibleSDK;->openFile(Ljava/lang/String;)Z

    .line 64
    invoke-virtual {v0}, Lcom/audible/sdk/AudibleSDK;->getCoverArtBytes()[B

    move-result-object p1

    if-nez p1, :cond_2

    .line 66
    sget-object p1, Lcom/audible/mobile/player/metadata/SdkBasedCoverArtProviderImpl;->LOGGER:Lorg/slf4j/Logger;

    const-string p2, "Failed to retrieve cover art; sdk returned null cover art bytes"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 67
    invoke-interface {p3}, Lcom/audible/mobile/audio/metadata/CoverArtProvider$Callback;->onFailure()V
    :try_end_0
    .catch Lcom/audible/sdk/AudibleSDKException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/audible/sdk/UnsupportedFileFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    invoke-virtual {v0}, Lcom/audible/sdk/AudibleSDK;->release()V

    return-void

    .line 71
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/audible/mobile/player/metadata/SdkBasedCoverArtProviderImpl;->context:Landroid/content/Context;

    invoke-interface {p2}, Lcom/audible/mobile/audio/metadata/CoverArtType;->getResourceId()I

    move-result p2

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v1, p2, v2}, Lcom/audible/mobile/util/BitmapUtils;->rescaleImage(Landroid/content/Context;ILjava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 74
    sget-object p2, Lcom/audible/mobile/player/metadata/SdkBasedCoverArtProviderImpl;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "Successfully retrieved cover art"

    invoke-interface {p2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 75
    invoke-interface {p3, p1}, Lcom/audible/mobile/audio/metadata/CoverArtProvider$Callback;->onSuccess(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 77
    :cond_3
    sget-object p1, Lcom/audible/mobile/player/metadata/SdkBasedCoverArtProviderImpl;->LOGGER:Lorg/slf4j/Logger;

    const-string p2, "Failed to retrieve cover art; failed to scale bitmap"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 78
    invoke-interface {p3}, Lcom/audible/mobile/audio/metadata/CoverArtProvider$Callback;->onFailure()V
    :try_end_1
    .catch Lcom/audible/sdk/AudibleSDKException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/audible/sdk/UnsupportedFileFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 82
    :goto_0
    :try_start_2
    sget-object p2, Lcom/audible/mobile/player/metadata/SdkBasedCoverArtProviderImpl;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "Exception occurred while retrieving cover art"

    invoke-interface {p2, v1, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    invoke-interface {p3}, Lcom/audible/mobile/audio/metadata/CoverArtProvider$Callback;->onFailure()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    :goto_1
    invoke-virtual {v0}, Lcom/audible/sdk/AudibleSDK;->release()V

    return-void

    :goto_2
    invoke-virtual {v0}, Lcom/audible/sdk/AudibleSDK;->release()V

    .line 86
    throw p1
.end method
