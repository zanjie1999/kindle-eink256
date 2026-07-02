.class public final Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;
.super Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
.source "ApicFrame.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final description:Ljava/lang/String;

.field public final mimeType:Ljava/lang/String;

.field public final pictureData:[B

.field public final pictureType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 83
    new-instance v0, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const-string v0, "APIC"

    .line 44
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;->mimeType:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;->description:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;->pictureType:I

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;->pictureData:[B

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

    if-eqz p1, :cond_3

    .line 56
    const-class v2, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 59
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;

    .line 60
    iget v2, p0, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;->pictureType:I

    iget v3, p1, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;->pictureType:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;->mimeType:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;->mimeType:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;->description:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;->description:Ljava/lang/String;

    .line 61
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;->pictureData:[B

    iget-object p1, p1, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;->pictureData:[B

    .line 62
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 68
    iget v0, p0, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;->pictureType:I

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 69
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;->mimeType:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 70
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;->description:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    .line 71
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;->pictureData:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 77
    iget-object p2, p0, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;->mimeType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget-object p2, p0, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;->description:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget p2, p0, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;->pictureType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    iget-object p2, p0, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;->pictureData:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
