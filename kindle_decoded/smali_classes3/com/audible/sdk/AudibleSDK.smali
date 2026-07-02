.class public Lcom/audible/sdk/AudibleSDK;
.super Ljava/lang/Object;
.source "AudibleSDK.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/sdk/AudibleSDK$FrameInfoImpl;,
        Lcom/audible/sdk/AudibleSDK$FrameInfo;,
        Lcom/audible/sdk/AudibleSDK$PlaybackPositionImpl;,
        Lcom/audible/sdk/AudibleSDK$PlaybackPosition;,
        Lcom/audible/sdk/AudibleSDK$TitleImpl;,
        Lcom/audible/sdk/AudibleSDK$Title;,
        Lcom/audible/sdk/AudibleSDK$CovertArtInfoImpl;,
        Lcom/audible/sdk/AudibleSDK$CoverArtInfo;,
        Lcom/audible/sdk/AudibleSDK$ImageFormat;,
        Lcom/audible/sdk/AudibleSDK$DRMType;,
        Lcom/audible/sdk/AudibleSDK$FileType;,
        Lcom/audible/sdk/AudibleSDK$PlaybackPosSavingReason;,
        Lcom/audible/sdk/AudibleSDK$TextFormat;,
        Lcom/audible/sdk/AudibleSDK$ImageQuality;,
        Lcom/audible/sdk/AudibleSDK$MetadataTag;,
        Lcom/audible/sdk/AudibleSDK$AudioEncoding;,
        Lcom/audible/sdk/AudibleSDK$MultiMediaType;
    }
.end annotation


# static fields
.field public static final DEFAULT_LOCALE:I

.field private static final logger:Lorg/slf4j/Logger;

.field protected static sdkLoaded:Z


# instance fields
.field private volatile fileName:Ljava/lang/String;

.field private mNativeHAAXFile:J

.field private volatile playbackPosFileName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 28
    new-instance v0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;

    const-class v1, Lcom/audible/sdk/AudibleSDK;

    invoke-direct {v0, v1}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/audible/sdk/AudibleSDK;->logger:Lorg/slf4j/Logger;

    const/4 v0, 0x0

    .line 38
    sput-boolean v0, Lcom/audible/sdk/AudibleSDK;->sdkLoaded:Z

    .line 46
    invoke-static {}, Lcom/audible/sdk/AudibleSDK;->loadAAXSDK()Z

    move-result v0

    sput-boolean v0, Lcom/audible/sdk/AudibleSDK;->sdkLoaded:Z

    .line 49
    :try_start_0
    invoke-static {}, Lcom/audible/sdk/AudibleSDK;->nativeInit()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 51
    sget-object v1, Lcom/audible/sdk/AudibleSDK;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 40
    iput-wide v0, p0, Lcom/audible/sdk/AudibleSDK;->mNativeHAAXFile:J

    return-void
.end method

.method private native audioEncoding()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/sdk/AudibleSDKException;
        }
    .end annotation
.end method

.method private native audioType()I
.end method

.method private native chapterInfo(I)[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/sdk/AudibleSDKException;,
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation
.end method

.method private native closeFileNative()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/sdk/AudibleSDKException;
        }
    .end annotation
.end method

.method private native coverArtInfo(I)[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/sdk/AudibleSDKException;
        }
    .end annotation
.end method

.method private native drmType()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/sdk/AudibleSDKException;
        }
    .end annotation
.end method

.method private native fileType()I
.end method

.method private native getChapterMetadata(II)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/sdk/AudibleSDKException;,
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation
.end method

.method private native getChapterMetadataInfo(III)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/sdk/AudibleSDKException;,
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation
.end method

.method private native getChapterText(IIIIII)Ljava/lang/String;
.end method

.method private native getEncodedImage(IIIIIII[B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/sdk/AudibleSDKException;,
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation
.end method

.method private native getLink(IIIIII)Ljava/lang/String;
.end method

.method private native getMetadata(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/sdk/AudibleSDKException;
        }
    .end annotation
.end method

.method private native getMetadataInfo(II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/sdk/AudibleSDKException;
        }
    .end annotation
.end method

.method public static native getPlaybackPositionFromPlaybackPosFile(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/sdk/AudibleSDKException;
        }
    .end annotation
.end method

.method public static native getPlaythroughFlagFromPlaybackPosFile(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/sdk/AudibleSDKException;
        }
    .end annotation
.end method

.method private native imageInfo(I)[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/sdk/AudibleSDKException;,
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation
.end method

.method private native imageQuality()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/sdk/AudibleSDKException;
        }
    .end annotation
.end method

.method public static native isVariablePlaybackAvailable()Z
.end method

.method private native linkInfo(I)[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/sdk/AudibleSDKException;,
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation
.end method

.method public static loadAAXSDK()Z
    .locals 3

    .line 804
    sget-boolean v0, Lcom/audible/sdk/AudibleSDK;->sdkLoaded:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    const-string v0, "AAX_SDK"

    .line 809
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    .line 812
    sget-object v1, Lcom/audible/sdk/AudibleSDK;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method private static native nativeInit()V
.end method

.method private native openFileNative(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native openFileNativeStream(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native originalTitle()[I
.end method

.method private native savePlaybackPosition(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/sdk/AudibleSDKException;
        }
    .end annotation
.end method

.method private native savedPlaybackPosition()[I
.end method

.method private native setImageQuality(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/sdk/AudibleSDKException;
        }
    .end annotation
.end method

.method private native setUnicodeFormat(I)Z
.end method

.method private static native testHandleError()V
.end method

.method private static native testIndexOutOfBounds()V
.end method

.method private static native testRuntimeException()V
.end method

.method private native unicodeFormat()I
.end method

.method private native verifyFileNative()Z
.end method


# virtual methods
.method public native authenticate([BLjava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/sdk/DeviceNotActivatedException;,
            Lcom/audible/sdk/DeviceNotActivatedForThisFileException;
        }
    .end annotation
.end method

.method public native authenticateCdn([B[B)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/sdk/DeviceNotActivatedException;,
            Lcom/audible/sdk/DeviceNotActivatedForThisFileException;
        }
    .end annotation
.end method

.method public native byteOffsetToTimeOffset(J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/sdk/AudibleSDKException;
        }
    .end annotation
.end method

.method public declared-synchronized closeFile()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/sdk/AudibleSDKException;
        }
    .end annotation

    monitor-enter p0

    .line 971
    :try_start_0
    iget-object v0, p0, Lcom/audible/sdk/AudibleSDK;->fileName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 972
    monitor-exit p0

    return v0

    .line 974
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/audible/sdk/AudibleSDK;->closeFileNative()V

    const/4 v0, 0x0

    .line 975
    iput-object v0, p0, Lcom/audible/sdk/AudibleSDK;->fileName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    .line 976
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public native decodePCMFrame([B[B)I
.end method

.method public native disableADTSHeaders()Z
.end method

.method public native disableChapterImages()Z
.end method

.method public native disableChapterLinks()Z
.end method

.method public native disableChapterText()Z
.end method

.method public native disableImages()Z
.end method

.method public native disableLinks()Z
.end method

.method public native enableADTSHeaders()Z
.end method

.method public native enableChapterImages()Z
.end method

.method public native enableChapterLinks()Z
.end method

.method public native enableChapterText()Z
.end method

.method public native enableImages()Z
.end method

.method public native enableLinks()Z
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1862
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1863
    invoke-virtual {p0}, Lcom/audible/sdk/AudibleSDK;->release()V

    return-void
.end method

.method public native finalizeABMFile()Z
.end method

.method public native getAudioChannelCount()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/sdk/AudibleSDKException;
        }
    .end annotation
.end method

.method public getAudioEncoding()Lcom/audible/sdk/AudibleSDK$AudioEncoding;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/sdk/AudibleSDKException;
        }
    .end annotation

    .line 1028
    invoke-direct {p0}, Lcom/audible/sdk/AudibleSDK;->audioEncoding()I

    move-result v0

    invoke-static {v0}, Lcom/audible/sdk/AudibleSDK$AudioEncoding;->getInstance(I)Lcom/audible/sdk/AudibleSDK$AudioEncoding;

    move-result-object v0

    return-object v0
.end method

.method public native getAudioSectionOffset(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/sdk/AudibleSDKException;
        }
    .end annotation
.end method

.method public getAudioType()Lcom/audible/sdk/AudibleSDK$MultiMediaType;
    .locals 1

    .line 1015
    invoke-direct {p0}, Lcom/audible/sdk/AudibleSDK;->audioType()I

    move-result v0

    invoke-static {v0}, Lcom/audible/sdk/AudibleSDK$MultiMediaType;->getInstance(I)Lcom/audible/sdk/AudibleSDK$MultiMediaType;

    move-result-object v0

    return-object v0
.end method

.method public native getAvgBitrate()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/sdk/AudibleSDKException;
        }
    .end annotation
.end method

.method public native getChapterCount()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/sdk/AudibleSDKException;
        }
    .end annotation
.end method

.method public getChapterInfo(I)Lcom/audible/sdk/AudibleSDK$FrameInfo;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/sdk/AudibleSDKException;,
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 1442
    invoke-direct {p0, p1}, Lcom/audible/sdk/AudibleSDK;->chapterInfo(I)[I

    move-result-object p1

    .line 1443
    new-instance v7, Lcom/audible/sdk/AudibleSDK$FrameInfoImpl;

    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v0, 0x1

    aget v2, p1, v0

    const/4 v0, 0x2

    aget v3, p1, v0

    const/4 v0, 0x3

    aget v4, p1, v0

    const/4 v0, 0x4

    aget v5, p1, v0

    aget v6, p1, v0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/audible/sdk/AudibleSDK$FrameInfoImpl;-><init>(IIIIII)V

    return-object v7
.end method

.method public getChapterMetadata(ILcom/audible/sdk/AudibleSDK$MetadataTag;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/sdk/AudibleSDKException;,
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 1213
    invoke-virtual {p2}, Lcom/audible/sdk/AudibleSDK$MetadataTag;->getValue()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/audible/sdk/AudibleSDK;->getChapterMetadata(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getChapterMetadataInfo(ILcom/audible/sdk/AudibleSDK$MetadataTag;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;,
            Lcom/audible/sdk/AudibleSDKException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1137
    invoke-virtual {p0, p1, p2, v0}, Lcom/audible/sdk/AudibleSDK;->getChapterMetadataInfo(ILcom/audible/sdk/AudibleSDK$MetadataTag;I)I

    move-result p1

    return p1
.end method

.method public getChapterMetadataInfo(ILcom/audible/sdk/AudibleSDK$MetadataTag;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/sdk/AudibleSDKException;,
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 1152
    invoke-virtual {p2}, Lcom/audible/sdk/AudibleSDK$MetadataTag;->getValue()I

    move-result p2

    invoke-direct {p0, p1, p2, p3}, Lcom/audible/sdk/AudibleSDK;->getChapterMetadataInfo(III)I

    move-result p1

    return p1
.end method

.method public native getChapterStartTime(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/sdk/AudibleSDKException;,
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation
.end method

.method public getChapterText(Lcom/audible/sdk/AudibleSDK$FrameInfo;)Ljava/lang/String;
    .locals 7

    .line 1457
    invoke-interface {p1}, Lcom/audible/sdk/AudibleSDK$FrameInfo;->getFrameType()I

    move-result v1

    invoke-interface {p1}, Lcom/audible/sdk/AudibleSDK$FrameInfo;->getTimeStamp()I

    move-result v2

    invoke-interface {p1}, Lcom/audible/sdk/AudibleSDK$FrameInfo;->getFrameNumber()I

    move-result v3

    invoke-interface {p1}, Lcom/audible/sdk/AudibleSDK$FrameInfo;->getFrameSize()I

    move-result v4

    invoke-interface {p1}, Lcom/audible/sdk/AudibleSDK$FrameInfo;->getFrameOffset()I

    move-result v5

    invoke-interface {p1}, Lcom/audible/sdk/AudibleSDK$FrameInfo;->getFrameAccess()I

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/audible/sdk/AudibleSDK;->getChapterText(IIIIII)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCoverArtBytes()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/sdk/AudibleSDKException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1111
    invoke-virtual {p0, v0}, Lcom/audible/sdk/AudibleSDK;->getCoverArtBytes(I)[B

    move-result-object v0

    return-object v0
.end method

.method public native getCoverArtBytes(I)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/sdk/AudibleSDKException;
        }
    .end annotation
.end method

.method public getCoverArtInfo()Lcom/audible/sdk/AudibleSDK$CoverArtInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/sdk/AudibleSDKException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1082
    invoke-virtual {p0, v0}, Lcom/audible/sdk/AudibleSDK;->getCoverArtInfo(I)Lcom/audible/sdk/AudibleSDK$CoverArtInfo;

    move-result-object v0

    return-object v0
.end method

.method public getCoverArtInfo(I)Lcom/audible/sdk/AudibleSDK$CoverArtInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/sdk/AudibleSDKException;
        }
    .end annotation

    .line 1095
    invoke-direct {p0, p1}, Lcom/audible/sdk/AudibleSDK;->coverArtInfo(I)[I

    move-result-object p1

    .line 1096
    new-instance v0, Lcom/audible/sdk/AudibleSDK$CovertArtInfoImpl;

    const/4 v1, 0x0

    aget v1, p1, v1

    int-to-long v1, v1

    const/4 v3, 0x1

    aget p1, p1, v3

    int-to-long v3, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/audible/sdk/AudibleSDK$CovertArtInfoImpl;-><init>(JJ)V

    return-object v0
.end method

.method public native getCurrentChapter()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/sdk/AudibleSDKException;
        }
    .end annotation
.end method

.method public getDRMType()Lcom/audible/sdk/AudibleSDK$DRMType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/sdk/AudibleSDKException;
        }
    .end annotation

    .line 1002
    invoke-direct {p0}, Lcom/audible/sdk/AudibleSDK;->drmType()I

    move-result v0

    invoke-static {v0}, Lcom/audible/sdk/AudibleSDK$DRMType;->getInstance(I)Lcom/audible/sdk/AudibleSDK$DRMType;

    move-result-object v0

    return-object v0
.end method

.method public native getDuration()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/sdk/AudibleSDKException;
        }
    .end annotation
.end method

.method public native getEncodedAudio([B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/sdk/DeviceNotActivatedException;,
            Lcom/audible/sdk/DeviceNotActivatedForThisFileException;,
            Lcom/audible/sdk/AudibleSDKException;
        }
    .end annotation
.end method

.method public getEncodedImage(Lcom/audible/sdk/AudibleSDK$FrameInfo;)[B
    .locals 5

    const/4 v0, 0x0

    .line 1523
    :try_start_0
    invoke-interface {p1}, Lcom/audible/sdk/AudibleSDK$FrameInfo;->getFrameSize()I

    move-result v1

    new-array v1, v1, [B

    .line 1524
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Lcom/audible/sdk/AudibleSDK;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1525
    :try_start_1
    invoke-interface {p1}, Lcom/audible/sdk/AudibleSDK$FrameInfo;->getFrameOffset()I

    move-result p1

    int-to-long v3, p1

    invoke-virtual {v2, v3, v4}, Ljava/io/InputStream;->skip(J)J

    .line 1526
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1533
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1535
    sget-object v0, Lcom/audible/sdk/AudibleSDK;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v1

    :catch_1
    move-exception p1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p1

    move-object v2, v0

    .line 1529
    :goto_1
    :try_start_3
    sget-object v1, Lcom/audible/sdk/AudibleSDK;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_0

    .line 1533
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p1

    .line 1535
    sget-object v1, Lcom/audible/sdk/AudibleSDK;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_2
    return-object v0

    :catchall_1
    move-exception p1

    move-object v0, v2

    :goto_3
    if-eqz v0, :cond_1

    .line 1533
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    .line 1535
    sget-object v1, Lcom/audible/sdk/AudibleSDK;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1538
    :cond_1
    :goto_4
    throw p1
.end method

.method public declared-synchronized getFileName()Ljava/lang/String;
    .locals 5

    monitor-enter p0

    .line 848
    :try_start_0
    iget-wide v0, p0, Lcom/audible/sdk/AudibleSDK;->mNativeHAAXFile:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    .line 849
    iput-object v0, p0, Lcom/audible/sdk/AudibleSDK;->fileName:Ljava/lang/String;

    .line 851
    :cond_0
    iget-object v0, p0, Lcom/audible/sdk/AudibleSDK;->fileName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFileType()Lcom/audible/sdk/AudibleSDK$FileType;
    .locals 1

    .line 989
    invoke-direct {p0}, Lcom/audible/sdk/AudibleSDK;->fileType()I

    move-result v0

    invoke-static {v0}, Lcom/audible/sdk/AudibleSDK$FileType;->getInstance(I)Lcom/audible/sdk/AudibleSDK$FileType;

    move-result-object v0

    return-object v0
.end method

.method public native getImageCount()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/sdk/AudibleSDKException;
        }
    .end annotation
.end method

.method public getImageInfo(I)Lcom/audible/sdk/AudibleSDK$FrameInfo;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/sdk/AudibleSDKException;,
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 1504
    invoke-direct {p0, p1}, Lcom/audible/sdk/AudibleSDK;->imageInfo(I)[I

    move-result-object p1

    .line 1505
    new-instance v7, Lcom/audible/sdk/AudibleSDK$FrameInfoImpl;

    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v0, 0x1

    aget v2, p1, v0

    const/4 v0, 0x2

    aget v3, p1, v0

    const/4 v0, 0x3

    aget v4, p1, v0

    const/4 v0, 0x4

    aget v5, p1, v0

    aget v6, p1, v0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/audible/sdk/AudibleSDK$FrameInfoImpl;-><init>(IIIIII)V

    return-object v7
.end method

.method public getImageQuality()Lcom/audible/sdk/AudibleSDK$ImageQuality;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/sdk/AudibleSDKException;
        }
    .end annotation

    .line 1569
    invoke-direct {p0}, Lcom/audible/sdk/AudibleSDK;->imageQuality()I

    move-result v0

    invoke-static {v0}, Lcom/audible/sdk/AudibleSDK$ImageQuality;->getInstance(I)Lcom/audible/sdk/AudibleSDK$ImageQuality;

    move-result-object v0

    return-object v0
.end method

.method public native getImageStartTime(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/sdk/AudibleSDKException;,
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation
.end method

.method public getLink(Lcom/audible/sdk/AudibleSDK$FrameInfo;)Ljava/lang/String;
    .locals 7

    .line 1488
    invoke-interface {p1}, Lcom/audible/sdk/AudibleSDK$FrameInfo;->getFrameType()I

    move-result v1

    invoke-interface {p1}, Lcom/audible/sdk/AudibleSDK$FrameInfo;->getTimeStamp()I

    move-result v2

    invoke-interface {p1}, Lcom/audible/sdk/AudibleSDK$FrameInfo;->getFrameNumber()I

    move-result v3

    invoke-interface {p1}, Lcom/audible/sdk/AudibleSDK$FrameInfo;->getFrameSize()I

    move-result v4

    invoke-interface {p1}, Lcom/audible/sdk/AudibleSDK$FrameInfo;->getFrameOffset()I

    move-result v5

    invoke-interface {p1}, Lcom/audible/sdk/AudibleSDK$FrameInfo;->getFrameAccess()I

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/audible/sdk/AudibleSDK;->getLink(IIIIII)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public native getLinkCount()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/sdk/AudibleSDKException;
        }
    .end annotation
.end method

.method public getLinkInfo(I)Lcom/audible/sdk/AudibleSDK$FrameInfo;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/sdk/AudibleSDKException;,
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 1473
    invoke-direct {p0, p1}, Lcom/audible/sdk/AudibleSDK;->linkInfo(I)[I

    move-result-object p1

    .line 1474
    new-instance v7, Lcom/audible/sdk/AudibleSDK$FrameInfoImpl;

    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v0, 0x1

    aget v2, p1, v0

    const/4 v0, 0x2

    aget v3, p1, v0

    const/4 v0, 0x3

    aget v4, p1, v0

    const/4 v0, 0x4

    aget v5, p1, v0

    aget v6, p1, v0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/audible/sdk/AudibleSDK$FrameInfoImpl;-><init>(IIIIII)V

    return-object v7
.end method

.method public native getLinkStartTime(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/sdk/AudibleSDKException;,
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation
.end method

.method public native getMaxBitrate()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/sdk/AudibleSDKException;
        }
    .end annotation
.end method

.method public getMetadata(Lcom/audible/sdk/AudibleSDK$MetadataTag;)Ljava/lang/String;
    .locals 0

    .line 1181
    invoke-virtual {p1}, Lcom/audible/sdk/AudibleSDK$MetadataTag;->getValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/audible/sdk/AudibleSDK;->getMetadataByTag(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMetadataByTag(I)Ljava/lang/String;
    .locals 4

    const/16 v0, 0x40

    const/16 v1, 0x75

    const/16 v2, 0x61

    const/16 v3, 0x6c

    .line 1187
    :try_start_0
    invoke-static {v0, v1, v2, v3}, Lcom/audible/sdk/AudibleSDKUtils;->TAG(IIII)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 1188
    invoke-virtual {p0}, Lcom/audible/sdk/AudibleSDK;->getUseralias()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1190
    :cond_0
    invoke-direct {p0, p1}, Lcom/audible/sdk/AudibleSDK;->getMetadata(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1192
    sget-object v0, Lcom/audible/sdk/AudibleSDK;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getMetadataByTagThrow(I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/sdk/AudibleSDKException;
        }
    .end annotation

    const/16 v0, 0x40

    const/16 v1, 0x75

    const/16 v2, 0x61

    const/16 v3, 0x6c

    .line 1173
    invoke-static {v0, v1, v2, v3}, Lcom/audible/sdk/AudibleSDKUtils;->TAG(IIII)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 1174
    invoke-virtual {p0}, Lcom/audible/sdk/AudibleSDK;->getUseralias()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1176
    :cond_0
    invoke-direct {p0, p1}, Lcom/audible/sdk/AudibleSDK;->getMetadata(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMetadataInfo(Lcom/audible/sdk/AudibleSDK$MetadataTag;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/sdk/AudibleSDKException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1052
    invoke-virtual {p0, p1, v0}, Lcom/audible/sdk/AudibleSDK;->getMetadataInfo(Lcom/audible/sdk/AudibleSDK$MetadataTag;I)I

    move-result p1

    return p1
.end method

.method public getMetadataInfo(Lcom/audible/sdk/AudibleSDK$MetadataTag;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/sdk/AudibleSDKException;
        }
    .end annotation

    .line 1067
    invoke-virtual {p1}, Lcom/audible/sdk/AudibleSDK$MetadataTag;->getValue()I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/audible/sdk/AudibleSDK;->getMetadataInfo(II)I

    move-result p1

    return p1
.end method

.method public native getMetadataLocale()I
.end method

.method public native getMetadataLocaleList()[I
.end method

.method public getMetadataThrow(Lcom/audible/sdk/AudibleSDK$MetadataTag;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/sdk/AudibleSDKException;
        }
    .end annotation

    .line 1168
    invoke-virtual {p1}, Lcom/audible/sdk/AudibleSDK$MetadataTag;->getValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/audible/sdk/AudibleSDK;->getMetadataByTag(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public native getNextFrameInfo()Lcom/audible/sdk/AudibleSDK$FrameInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/sdk/AudibleSDKException;
        }
    .end annotation
.end method

.method public getOriginalTitle()Lcom/audible/sdk/AudibleSDK$Title;
    .locals 10

    .line 1266
    invoke-direct {p0}, Lcom/audible/sdk/AudibleSDK;->originalTitle()[I

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1270
    :cond_0
    new-instance v9, Lcom/audible/sdk/AudibleSDK$TitleImpl;

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    aget v3, v0, v3

    const/4 v1, 0x2

    aget v4, v0, v1

    const/4 v1, 0x3

    aget v5, v0, v1

    const/4 v1, 0x4

    aget v6, v0, v1

    const/4 v1, 0x5

    aget v7, v0, v1

    const/4 v1, 0x6

    aget v8, v0, v1

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/audible/sdk/AudibleSDK$TitleImpl;-><init>(ZIIIIII)V

    return-object v9
.end method

.method public native getPCMAudio([BI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/sdk/DeviceNotActivatedException;,
            Lcom/audible/sdk/DeviceNotActivatedForThisFileException;,
            Lcom/audible/sdk/AudibleSDKException;,
            Ljava/io/EOFException;
        }
    .end annotation
.end method

.method public native getPCMAudioAndWriteToTrack([BILjava/lang/Object;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/sdk/DeviceNotActivatedException;,
            Lcom/audible/sdk/DeviceNotActivatedForThisFileException;,
            Lcom/audible/sdk/AudibleSDKException;
        }
    .end annotation
.end method

.method public getPCMSamplesPerCodecFrame()I
    .locals 2

    .line 1825
    invoke-virtual {p0}, Lcom/audible/sdk/AudibleSDK;->getFileType()Lcom/audible/sdk/AudibleSDK$FileType;

    move-result-object v0

    .line 1827
    sget-object v1, Lcom/audible/sdk/AudibleSDK$FileType;->FILE_TYPE_AUDIBLE_FORMAT4:Lcom/audible/sdk/AudibleSDK$FileType;

    if-ne v0, v1, :cond_0

    const/16 v0, 0x240

    goto :goto_0

    :cond_0
    const/16 v0, 0x400

    :goto_0
    return v0
.end method

.method public getPlaybackPosFileName()Ljava/lang/String;
    .locals 1

    .line 874
    iget-object v0, p0, Lcom/audible/sdk/AudibleSDK;->playbackPosFileName:Ljava/lang/String;

    return-object v0
.end method

.method public native getPlaybackPosition()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/sdk/AudibleSDKException;
        }
    .end annotation
.end method

.method public native getSampleRate()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/sdk/AudibleSDKException;
        }
    .end annotation
.end method

.method public getSavedPlaybackPosition()Lcom/audible/sdk/AudibleSDK$PlaybackPosition;
    .locals 4

    .line 1361
    invoke-direct {p0}, Lcom/audible/sdk/AudibleSDK;->savedPlaybackPosition()[I

    move-result-object v0

    .line 1362
    new-instance v1, Lcom/audible/sdk/AudibleSDK$PlaybackPositionImpl;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-direct {v1, v2, v0}, Lcom/audible/sdk/AudibleSDK$PlaybackPositionImpl;-><init>(II)V

    return-object v1
.end method

.method public getUnicodeFormat()Lcom/audible/sdk/AudibleSDK$TextFormat;
    .locals 1

    .line 1795
    invoke-direct {p0}, Lcom/audible/sdk/AudibleSDK;->unicodeFormat()I

    move-result v0

    invoke-static {v0}, Lcom/audible/sdk/AudibleSDK$TextFormat;->getInstance(I)Lcom/audible/sdk/AudibleSDK$TextFormat;

    move-result-object v0

    return-object v0
.end method

.method public native getUseralias()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/sdk/AudibleSDKException;
        }
    .end annotation
.end method

.method public native hasSynchronizedImages()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/sdk/AudibleSDKException;
        }
    .end annotation
.end method

.method public declared-synchronized isFileLoaded()Z
    .locals 5

    monitor-enter p0

    .line 902
    :try_start_0
    iget-wide v0, p0, Lcom/audible/sdk/AudibleSDK;->mNativeHAAXFile:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/audible/sdk/AudibleSDK;->fileName:Ljava/lang/String;

    invoke-static {v0}, Lcom/audible/mobile/util/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized justSetFileName(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 869
    :try_start_0
    iput-object p1, p0, Lcom/audible/sdk/AudibleSDK;->fileName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 870
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public openFile(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lcom/audible/sdk/UnsupportedFileFormatException;,
            Lcom/audible/sdk/AudibleSDKException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 930
    invoke-virtual {p0, p1, v0}, Lcom/audible/sdk/AudibleSDK;->openFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public declared-synchronized openFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lcom/audible/sdk/UnsupportedFileFormatException;,
            Lcom/audible/sdk/AudibleSDKException;
        }
    .end annotation

    monitor-enter p0

    .line 944
    :try_start_0
    iget-object v0, p0, Lcom/audible/sdk/AudibleSDK;->fileName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 945
    sget-object p2, Lcom/audible/sdk/AudibleSDK;->logger:Lorg/slf4j/Logger;

    const-string v0, "File {} was already loaded into this SDK! Ignoring request for file {}"

    iget-object v1, p0, Lcom/audible/sdk/AudibleSDK;->fileName:Ljava/lang/String;

    invoke-interface {p2, v0, v1, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 946
    monitor-exit p0

    return p1

    .line 949
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/audible/sdk/AudibleSDK;->openFileNative(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    iput-object p1, p0, Lcom/audible/sdk/AudibleSDK;->fileName:Ljava/lang/String;

    .line 952
    iput-object p2, p0, Lcom/audible/sdk/AudibleSDK;->playbackPosFileName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    .line 954
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public release()V
    .locals 5

    .line 887
    :try_start_0
    iget-wide v0, p0, Lcom/audible/sdk/AudibleSDK;->mNativeHAAXFile:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 888
    invoke-virtual {p0}, Lcom/audible/sdk/AudibleSDK;->closeFile()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 891
    sget-object v1, Lcom/audible/sdk/AudibleSDK;->logger:Lorg/slf4j/Logger;

    const-string v2, "Error closing file"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public savePlaybackPosition(Lcom/audible/sdk/AudibleSDK$PlaybackPosSavingReason;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/sdk/AudibleSDKException;
        }
    .end annotation

    .line 1347
    invoke-virtual {p1}, Lcom/audible/sdk/AudibleSDK$PlaybackPosSavingReason;->getValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/audible/sdk/AudibleSDK;->savePlaybackPosition(I)Z

    move-result p1

    return p1
.end method

.method public native seek(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/sdk/AudibleSDKException;,
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation
.end method

.method public native seekToChapter(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/sdk/AudibleSDKException;,
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation
.end method

.method public setImageQuality(Lcom/audible/sdk/AudibleSDK$ImageQuality;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/sdk/AudibleSDKException;
        }
    .end annotation

    .line 1555
    invoke-virtual {p1}, Lcom/audible/sdk/AudibleSDK$ImageQuality;->getValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/audible/sdk/AudibleSDK;->setImageQuality(I)Z

    move-result p1

    return p1
.end method

.method public native setMetadataLocale(I)Z
.end method

.method public native setTempo(F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/sdk/AudibleSDKException;
        }
    .end annotation
.end method

.method public setUnicodeFormat(Lcom/audible/sdk/AudibleSDK$TextFormat;)Z
    .locals 0

    .line 1782
    invoke-virtual {p1}, Lcom/audible/sdk/AudibleSDK$TextFormat;->getValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/audible/sdk/AudibleSDK;->setUnicodeFormat(I)Z

    move-result p1

    return p1
.end method

.method public native skipNextFrame()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/sdk/AudibleSDKException;
        }
    .end annotation
.end method

.method public verifyFile()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/sdk/UnsupportedFileFormatException;,
            Lcom/audible/sdk/AudibleSDKException;
        }
    .end annotation

    .line 924
    invoke-direct {p0}, Lcom/audible/sdk/AudibleSDK;->verifyFileNative()Z

    move-result v0

    return v0
.end method
