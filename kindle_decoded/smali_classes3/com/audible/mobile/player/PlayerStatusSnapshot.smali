.class public Lcom/audible/mobile/player/PlayerStatusSnapshot;
.super Ljava/lang/Object;
.source "PlayerStatusSnapshot.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/audible/mobile/player/PlayerStatusSnapshot;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final audioDataSource:Lcom/audible/mobile/player/AudioDataSource;

.field private final currentPosition:I

.field private final duration:I

.field private final maxPositionAvailable:I

.field private final narrationSpeed:Lcom/audible/mobile/player/NarrationSpeed;

.field private final playerState:Lcom/audible/mobile/player/State;

.field private final volume:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/audible/mobile/player/PlayerStatusSnapshot$1;

    invoke-direct {v0}, Lcom/audible/mobile/player/PlayerStatusSnapshot$1;-><init>()V

    sput-object v0, Lcom/audible/mobile/player/PlayerStatusSnapshot;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 9

    .line 50
    const-class v0, Lcom/audible/mobile/player/AudioDataSource;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/audible/mobile/player/AudioDataSource;

    const-class v0, Lcom/audible/mobile/player/State;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/audible/mobile/player/State;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const-class v0, Lcom/audible/mobile/player/NarrationSpeed;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/audible/mobile/player/NarrationSpeed;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    move-object v1, p0

    .line 50
    invoke-direct/range {v1 .. v8}, Lcom/audible/mobile/player/PlayerStatusSnapshot;-><init>(Lcom/audible/mobile/player/AudioDataSource;Lcom/audible/mobile/player/State;IIILcom/audible/mobile/player/NarrationSpeed;F)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/audible/mobile/player/PlayerStatusSnapshot$1;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/audible/mobile/player/PlayerStatusSnapshot;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/audible/mobile/player/AudioDataSource;Lcom/audible/mobile/player/State;IIILcom/audible/mobile/player/NarrationSpeed;F)V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/audible/mobile/player/PlayerStatusSnapshot;->audioDataSource:Lcom/audible/mobile/player/AudioDataSource;

    .line 86
    iput-object p2, p0, Lcom/audible/mobile/player/PlayerStatusSnapshot;->playerState:Lcom/audible/mobile/player/State;

    .line 87
    iput p3, p0, Lcom/audible/mobile/player/PlayerStatusSnapshot;->duration:I

    .line 88
    iput p4, p0, Lcom/audible/mobile/player/PlayerStatusSnapshot;->currentPosition:I

    .line 89
    iput p5, p0, Lcom/audible/mobile/player/PlayerStatusSnapshot;->maxPositionAvailable:I

    .line 90
    iput-object p6, p0, Lcom/audible/mobile/player/PlayerStatusSnapshot;->narrationSpeed:Lcom/audible/mobile/player/NarrationSpeed;

    .line 91
    iput p7, p0, Lcom/audible/mobile/player/PlayerStatusSnapshot;->volume:F

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_a

    .line 192
    const-class v2, Lcom/audible/mobile/player/PlayerStatusSnapshot;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 196
    :cond_1
    check-cast p1, Lcom/audible/mobile/player/PlayerStatusSnapshot;

    .line 198
    iget v2, p0, Lcom/audible/mobile/player/PlayerStatusSnapshot;->currentPosition:I

    iget v3, p1, Lcom/audible/mobile/player/PlayerStatusSnapshot;->currentPosition:I

    if-eq v2, v3, :cond_2

    return v1

    .line 201
    :cond_2
    iget v2, p0, Lcom/audible/mobile/player/PlayerStatusSnapshot;->duration:I

    iget v3, p1, Lcom/audible/mobile/player/PlayerStatusSnapshot;->duration:I

    if-eq v2, v3, :cond_3

    return v1

    .line 204
    :cond_3
    iget v2, p0, Lcom/audible/mobile/player/PlayerStatusSnapshot;->maxPositionAvailable:I

    iget v3, p1, Lcom/audible/mobile/player/PlayerStatusSnapshot;->maxPositionAvailable:I

    if-eq v2, v3, :cond_4

    return v1

    .line 207
    :cond_4
    iget-object v2, p0, Lcom/audible/mobile/player/PlayerStatusSnapshot;->audioDataSource:Lcom/audible/mobile/player/AudioDataSource;

    if-eqz v2, :cond_5

    iget-object v3, p1, Lcom/audible/mobile/player/PlayerStatusSnapshot;->audioDataSource:Lcom/audible/mobile/player/AudioDataSource;

    invoke-virtual {v2, v3}, Lcom/audible/mobile/player/AudioDataSource;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_5
    iget-object v2, p1, Lcom/audible/mobile/player/PlayerStatusSnapshot;->audioDataSource:Lcom/audible/mobile/player/AudioDataSource;

    if-eqz v2, :cond_6

    :goto_0
    return v1

    .line 210
    :cond_6
    iget-object v2, p0, Lcom/audible/mobile/player/PlayerStatusSnapshot;->narrationSpeed:Lcom/audible/mobile/player/NarrationSpeed;

    iget-object v3, p1, Lcom/audible/mobile/player/PlayerStatusSnapshot;->narrationSpeed:Lcom/audible/mobile/player/NarrationSpeed;

    if-eq v2, v3, :cond_7

    return v1

    .line 213
    :cond_7
    iget-object v2, p0, Lcom/audible/mobile/player/PlayerStatusSnapshot;->playerState:Lcom/audible/mobile/player/State;

    iget-object v3, p1, Lcom/audible/mobile/player/PlayerStatusSnapshot;->playerState:Lcom/audible/mobile/player/State;

    if-eq v2, v3, :cond_8

    return v1

    .line 216
    :cond_8
    iget p1, p1, Lcom/audible/mobile/player/PlayerStatusSnapshot;->volume:F

    iget v2, p0, Lcom/audible/mobile/player/PlayerStatusSnapshot;->volume:F

    invoke-static {p1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_9

    return v1

    :cond_9
    return v0

    :cond_a
    :goto_1
    return v1
.end method

.method public getAudioDataSource()Lcom/audible/mobile/player/AudioDataSource;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/audible/mobile/player/PlayerStatusSnapshot;->audioDataSource:Lcom/audible/mobile/player/AudioDataSource;

    return-object v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 123
    iget v0, p0, Lcom/audible/mobile/player/PlayerStatusSnapshot;->currentPosition:I

    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 133
    iget v0, p0, Lcom/audible/mobile/player/PlayerStatusSnapshot;->duration:I

    return v0
.end method

.method public getMaxPositionAvailable()I
    .locals 1

    .line 143
    iget v0, p0, Lcom/audible/mobile/player/PlayerStatusSnapshot;->maxPositionAvailable:I

    return v0
.end method

.method public getNarrationSpeed()Lcom/audible/mobile/player/NarrationSpeed;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/audible/mobile/player/PlayerStatusSnapshot;->narrationSpeed:Lcom/audible/mobile/player/NarrationSpeed;

    return-object v0
.end method

.method public getPlayerState()Lcom/audible/mobile/player/State;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/audible/mobile/player/PlayerStatusSnapshot;->playerState:Lcom/audible/mobile/player/State;

    return-object v0
.end method

.method public getVolume()F
    .locals 1

    .line 165
    iget v0, p0, Lcom/audible/mobile/player/PlayerStatusSnapshot;->volume:F

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 226
    iget-object v0, p0, Lcom/audible/mobile/player/PlayerStatusSnapshot;->audioDataSource:Lcom/audible/mobile/player/AudioDataSource;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/audible/mobile/player/AudioDataSource;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 227
    iget-object v2, p0, Lcom/audible/mobile/player/PlayerStatusSnapshot;->playerState:Lcom/audible/mobile/player/State;

    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 228
    iget v2, p0, Lcom/audible/mobile/player/PlayerStatusSnapshot;->currentPosition:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 229
    iget v2, p0, Lcom/audible/mobile/player/PlayerStatusSnapshot;->duration:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 230
    iget v2, p0, Lcom/audible/mobile/player/PlayerStatusSnapshot;->maxPositionAvailable:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 231
    iget-object v2, p0, Lcom/audible/mobile/player/PlayerStatusSnapshot;->narrationSpeed:Lcom/audible/mobile/player/NarrationSpeed;

    invoke-virtual {v2}, Lcom/audible/mobile/player/NarrationSpeed;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 232
    iget v2, p0, Lcom/audible/mobile/player/PlayerStatusSnapshot;->volume:F

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_1

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlayerStatusSnapshot{audioDataSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/mobile/player/PlayerStatusSnapshot;->audioDataSource:Lcom/audible/mobile/player/AudioDataSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", playerState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/mobile/player/PlayerStatusSnapshot;->playerState:Lcom/audible/mobile/player/State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", currentPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/audible/mobile/player/PlayerStatusSnapshot;->currentPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/audible/mobile/player/PlayerStatusSnapshot;->duration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxPositionAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/audible/mobile/player/PlayerStatusSnapshot;->maxPositionAvailable:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", narrationSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/mobile/player/PlayerStatusSnapshot;->narrationSpeed:Lcom/audible/mobile/player/NarrationSpeed;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", volume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/audible/mobile/player/PlayerStatusSnapshot;->volume:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/audible/mobile/player/PlayerStatusSnapshot;->audioDataSource:Lcom/audible/mobile/player/AudioDataSource;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 178
    iget-object v0, p0, Lcom/audible/mobile/player/PlayerStatusSnapshot;->playerState:Lcom/audible/mobile/player/State;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 179
    iget v0, p0, Lcom/audible/mobile/player/PlayerStatusSnapshot;->duration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    iget v0, p0, Lcom/audible/mobile/player/PlayerStatusSnapshot;->currentPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    iget v0, p0, Lcom/audible/mobile/player/PlayerStatusSnapshot;->maxPositionAvailable:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    iget-object v0, p0, Lcom/audible/mobile/player/PlayerStatusSnapshot;->narrationSpeed:Lcom/audible/mobile/player/NarrationSpeed;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 183
    iget p2, p0, Lcom/audible/mobile/player/PlayerStatusSnapshot;->volume:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
