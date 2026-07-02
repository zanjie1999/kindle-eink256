.class public Lcom/audible/hushpuppy/extensions/activation/AudioDownloadDeviceActivationInfo;
.super Ljava/lang/Object;
.source "AudioDownloadDeviceActivationInfo.java"


# instance fields
.field private mAudioBookAsin:Lcom/audible/mobile/domain/Asin;

.field private mAudiobookFormat:Lcom/audible/mobile/domain/Format;

.field private mEbookAsin:Lcom/audible/mobile/domain/Asin;

.field private mIsActivationSuccessful:Z

.field private mIsSample:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/Format;Z)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/audible/hushpuppy/extensions/activation/AudioDownloadDeviceActivationInfo;->mAudioBookAsin:Lcom/audible/mobile/domain/Asin;

    .line 48
    iput-object p2, p0, Lcom/audible/hushpuppy/extensions/activation/AudioDownloadDeviceActivationInfo;->mEbookAsin:Lcom/audible/mobile/domain/Asin;

    .line 49
    iput-object p3, p0, Lcom/audible/hushpuppy/extensions/activation/AudioDownloadDeviceActivationInfo;->mAudiobookFormat:Lcom/audible/mobile/domain/Format;

    .line 50
    iput-boolean p4, p0, Lcom/audible/hushpuppy/extensions/activation/AudioDownloadDeviceActivationInfo;->mIsSample:Z

    return-void
.end method


# virtual methods
.method public final getAudioBookAsin()Lcom/audible/mobile/domain/Asin;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/audible/hushpuppy/extensions/activation/AudioDownloadDeviceActivationInfo;->mAudioBookAsin:Lcom/audible/mobile/domain/Asin;

    return-object v0
.end method

.method public final getAudioFormat()Lcom/audible/mobile/domain/Format;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/audible/hushpuppy/extensions/activation/AudioDownloadDeviceActivationInfo;->mAudiobookFormat:Lcom/audible/mobile/domain/Format;

    return-object v0
.end method

.method public final getEBookAsin()Lcom/audible/mobile/domain/Asin;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/audible/hushpuppy/extensions/activation/AudioDownloadDeviceActivationInfo;->mEbookAsin:Lcom/audible/mobile/domain/Asin;

    return-object v0
.end method

.method public final getIsSample()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lcom/audible/hushpuppy/extensions/activation/AudioDownloadDeviceActivationInfo;->mIsSample:Z

    return v0
.end method
