.class public final Lcom/google/android/exoplayer2/decoder/CryptoInfo;
.super Ljava/lang/Object;
.source "CryptoInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/decoder/CryptoInfo$PatternHolderV24;
    }
.end annotation


# instance fields
.field public clearBlocks:I

.field public encryptedBlocks:I

.field private final frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

.field public iv:[B

.field public key:[B

.field public mode:I

.field public numBytesOfClearData:[I

.field public numBytesOfEncryptedData:[I

.field public numSubSamples:I

.field private final patternHolder:Lcom/google/android/exoplayer2/decoder/CryptoInfo$PatternHolderV24;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-lt v0, v2, :cond_0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->newFrameworkCryptoInfoV16()Landroid/media/MediaCodec$CryptoInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    .line 66
    sget v2, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_1

    new-instance v2, Lcom/google/android/exoplayer2/decoder/CryptoInfo$PatternHolderV24;

    invoke-direct {v2, v0, v1}, Lcom/google/android/exoplayer2/decoder/CryptoInfo$PatternHolderV24;-><init>(Landroid/media/MediaCodec$CryptoInfo;Lcom/google/android/exoplayer2/decoder/CryptoInfo$1;)V

    move-object v1, v2

    :cond_1
    iput-object v1, p0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->patternHolder:Lcom/google/android/exoplayer2/decoder/CryptoInfo$PatternHolderV24;

    return-void
.end method

.method private newFrameworkCryptoInfoV16()Landroid/media/MediaCodec$CryptoInfo;
    .locals 1

    .line 103
    new-instance v0, Landroid/media/MediaCodec$CryptoInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$CryptoInfo;-><init>()V

    return-object v0
.end method

.method private updateFrameworkCryptoInfoV16()V
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    iget v1, p0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->numSubSamples:I

    iput v1, v0, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    .line 111
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->numBytesOfClearData:[I

    iput-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 112
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->numBytesOfEncryptedData:[I

    iput-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    .line 113
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->key:[B

    iput-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    .line 114
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->iv:[B

    iput-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    .line 115
    iget v1, p0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->mode:I

    iput v1, v0, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    .line 116
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 117
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->patternHolder:Lcom/google/android/exoplayer2/decoder/CryptoInfo$PatternHolderV24;

    iget v1, p0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->encryptedBlocks:I

    iget v2, p0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->clearBlocks:I

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/decoder/CryptoInfo$PatternHolderV24;->access$100(Lcom/google/android/exoplayer2/decoder/CryptoInfo$PatternHolderV24;II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getFrameworkCryptoInfoV16()Landroid/media/MediaCodec$CryptoInfo;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    return-object v0
.end method

.method public set(I[I[I[B[BIII)V
    .locals 0

    .line 74
    iput p1, p0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->numSubSamples:I

    .line 75
    iput-object p2, p0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->numBytesOfClearData:[I

    .line 76
    iput-object p3, p0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->numBytesOfEncryptedData:[I

    .line 77
    iput-object p4, p0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->key:[B

    .line 78
    iput-object p5, p0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->iv:[B

    .line 79
    iput p6, p0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->mode:I

    .line 80
    iput p7, p0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->encryptedBlocks:I

    .line 81
    iput p8, p0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->clearBlocks:I

    .line 82
    sget p1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 p2, 0x10

    if-lt p1, p2, :cond_0

    .line 83
    invoke-direct {p0}, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->updateFrameworkCryptoInfoV16()V

    :cond_0
    return-void
.end method
