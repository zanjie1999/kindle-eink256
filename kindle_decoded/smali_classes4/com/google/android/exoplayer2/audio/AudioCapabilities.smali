.class public final Lcom/google/android/exoplayer2/audio/AudioCapabilities;
.super Ljava/lang/Object;
.source "AudioCapabilities.java"


# static fields
.field public static final DEFAULT_AUDIO_CAPABILITIES:Lcom/google/android/exoplayer2/audio/AudioCapabilities;


# instance fields
.field private final maxChannelCount:I

.field private final supportedEncodings:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 36
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/audio/AudioCapabilities;-><init>([II)V

    sput-object v0, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->DEFAULT_AUDIO_CAPABILITIES:Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    return-void
.end method

.method constructor <init>([II)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 73
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->supportedEncodings:[I

    .line 74
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [I

    .line 76
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->supportedEncodings:[I

    .line 78
    :goto_0
    iput p2, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->maxChannelCount:I

    return-void
.end method

.method static getCapabilities(Landroid/content/Intent;)Lcom/google/android/exoplayer2/audio/AudioCapabilities;
    .locals 4

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    const-string v1, "android.media.extra.AUDIO_PLUG_STATE"

    .line 53
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    const-string v2, "android.media.extra.ENCODINGS"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v2

    const-string v3, "android.media.extra.MAX_CHANNEL_COUNT"

    .line 57
    invoke-virtual {p0, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    invoke-direct {v1, v2, p0}, Lcom/google/android/exoplayer2/audio/AudioCapabilities;-><init>([II)V

    return-object v1

    .line 54
    :cond_1
    :goto_0
    sget-object p0, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->DEFAULT_AUDIO_CAPABILITIES:Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 103
    :cond_0
    instance-of v1, p1, Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 106
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    .line 107
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->supportedEncodings:[I

    iget-object v3, p1, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->supportedEncodings:[I

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->maxChannelCount:I

    iget p1, p1, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->maxChannelCount:I

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 113
    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->maxChannelCount:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->supportedEncodings:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

.method public supportsEncoding(I)Z
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->supportedEncodings:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioCapabilities[maxChannelCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->maxChannelCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", supportedEncodings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->supportedEncodings:[I

    .line 119
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
