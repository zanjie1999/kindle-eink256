.class public Lcom/audible/android/kcp/download/receiver/AudiobookDownloadRequestProvider;
.super Ljava/lang/Object;
.source "AudiobookDownloadRequestProvider.java"

# interfaces
.implements Lcom/audible/android/kcp/download/receiver/DownloadRequestProvider;


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final mAudioDownloadFormat:Lcom/audible/mobile/domain/Format;

.field private final mAudiobookAsin:Lcom/audible/mobile/domain/Asin;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/android/kcp/download/receiver/AudiobookDownloadRequestProvider;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/android/kcp/download/receiver/AudiobookDownloadRequestProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/Format;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/audible/android/kcp/download/receiver/AudiobookDownloadRequestProvider;->mAudiobookAsin:Lcom/audible/mobile/domain/Asin;

    .line 27
    iput-object p2, p0, Lcom/audible/android/kcp/download/receiver/AudiobookDownloadRequestProvider;->mAudioDownloadFormat:Lcom/audible/mobile/domain/Format;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 50
    const-class v2, Lcom/audible/android/kcp/download/receiver/AudiobookDownloadRequestProvider;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 53
    :cond_1
    check-cast p1, Lcom/audible/android/kcp/download/receiver/AudiobookDownloadRequestProvider;

    .line 55
    iget-object v2, p0, Lcom/audible/android/kcp/download/receiver/AudiobookDownloadRequestProvider;->mAudiobookAsin:Lcom/audible/mobile/domain/Asin;

    iget-object p1, p1, Lcom/audible/android/kcp/download/receiver/AudiobookDownloadRequestProvider;->mAudiobookAsin:Lcom/audible/mobile/domain/Asin;

    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    :goto_0
    return v1

    :cond_3
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public getDownloadType()Lcom/audible/android/kcp/download/receiver/AirDownloadType;
    .locals 1

    .line 42
    sget-object v0, Lcom/audible/android/kcp/download/receiver/AirDownloadType;->AUDIOBOOK:Lcom/audible/android/kcp/download/receiver/AirDownloadType;

    return-object v0
.end method

.method public getRequest()Lcom/audible/mobile/download/Request;
    .locals 4

    .line 35
    sget-object v0, Lcom/audible/android/kcp/download/receiver/AudiobookDownloadRequestProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audiobook download request format is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/audible/android/kcp/download/receiver/AudiobookDownloadRequestProvider;->mAudioDownloadFormat:Lcom/audible/mobile/domain/Format;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 36
    new-instance v0, Lcom/audible/mobile/download/AudiobookRequest;

    new-instance v1, Lcom/audible/mobile/domain/ImmutableCustomerIdImpl;

    const-string v2, "LEGACY"

    invoke-direct {v1, v2}, Lcom/audible/mobile/domain/ImmutableCustomerIdImpl;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/audible/android/kcp/download/receiver/AudiobookDownloadRequestProvider;->mAudiobookAsin:Lcom/audible/mobile/domain/Asin;

    iget-object v3, p0, Lcom/audible/android/kcp/download/receiver/AudiobookDownloadRequestProvider;->mAudioDownloadFormat:Lcom/audible/mobile/domain/Format;

    invoke-direct {v0, v1, v2, v3}, Lcom/audible/mobile/download/AudiobookRequest;-><init>(Lcom/audible/mobile/domain/CustomerId;Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/Format;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/audible/android/kcp/download/receiver/AudiobookDownloadRequestProvider;->mAudiobookAsin:Lcom/audible/mobile/domain/Asin;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
