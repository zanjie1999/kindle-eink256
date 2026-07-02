.class public final Lcom/google/android/exoplayer2/video/ColorInfo;
.super Ljava/lang/Object;
.source "ColorInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/exoplayer2/video/ColorInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final colorRange:I

.field public final colorSpace:I

.field public final colorTransfer:I

.field private hashCode:I

.field public final hdrStaticInfo:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 137
    new-instance v0, Lcom/google/android/exoplayer2/video/ColorInfo$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/video/ColorInfo$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/video/ColorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorSpace:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorRange:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorTransfer:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->hdrStaticInfo:[B

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

    if-eqz p1, :cond_3

    .line 90
    const-class v2, Lcom/google/android/exoplayer2/video/ColorInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 93
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/video/ColorInfo;

    .line 94
    iget v2, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorSpace:I

    iget v3, p1, Lcom/google/android/exoplayer2/video/ColorInfo;->colorSpace:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorRange:I

    iget v3, p1, Lcom/google/android/exoplayer2/video/ColorInfo;->colorRange:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorTransfer:I

    iget v3, p1, Lcom/google/android/exoplayer2/video/ColorInfo;->colorTransfer:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->hdrStaticInfo:[B

    iget-object p1, p1, Lcom/google/android/exoplayer2/video/ColorInfo;->hdrStaticInfo:[B

    .line 96
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 110
    iget v0, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->hashCode:I

    if-nez v0, :cond_0

    const/16 v0, 0x20f

    .line 112
    iget v1, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorSpace:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 113
    iget v1, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorRange:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 114
    iget v1, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorTransfer:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 115
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->hdrStaticInfo:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    .line 116
    iput v0, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->hashCode:I

    .line 118
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->hashCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ColorInfo("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorSpace:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorRange:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorTransfer:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->hdrStaticInfo:[B

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 128
    iget p2, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorSpace:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget p2, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorRange:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    iget p2, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorTransfer:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    iget-object p2, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->hdrStaticInfo:[B

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    iget-object p2, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->hdrStaticInfo:[B

    if-eqz p2, :cond_1

    .line 133
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    :cond_1
    return-void
.end method
