.class public final Lcom/google/android/exoplayer2/metadata/id3/ChapterTocFrame;
.super Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
.source "ChapterTocFrame.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/exoplayer2/metadata/id3/ChapterTocFrame;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final children:[Ljava/lang/String;

.field public final elementId:Ljava/lang/String;

.field public final isOrdered:Z

.field public final isRoot:Z

.field private final subFrames:[Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 109
    new-instance v0, Lcom/google/android/exoplayer2/metadata/id3/ChapterTocFrame$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/metadata/id3/ChapterTocFrame$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/metadata/id3/ChapterTocFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    const-string v0, "CTOC"

    .line 46
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterTocFrame;->elementId:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterTocFrame;->isRoot:Z

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterTocFrame;->isOrdered:Z

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterTocFrame;->children:[Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 52
    new-array v1, v0, [Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    iput-object v1, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterTocFrame;->subFrames:[Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    :goto_2
    if-ge v2, v0, :cond_2

    .line 54
    iget-object v1, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterTocFrame;->subFrames:[Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    const-class v3, Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
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

    .line 77
    const-class v2, Lcom/google/android/exoplayer2/metadata/id3/ChapterTocFrame;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 80
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/metadata/id3/ChapterTocFrame;

    .line 81
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterTocFrame;->isRoot:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/metadata/id3/ChapterTocFrame;->isRoot:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterTocFrame;->isOrdered:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/metadata/id3/ChapterTocFrame;->isOrdered:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterTocFrame;->elementId:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/metadata/id3/ChapterTocFrame;->elementId:Ljava/lang/String;

    .line 83
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterTocFrame;->children:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/metadata/id3/ChapterTocFrame;->children:[Ljava/lang/String;

    .line 84
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterTocFrame;->subFrames:[Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    iget-object p1, p1, Lcom/google/android/exoplayer2/metadata/id3/ChapterTocFrame;->subFrames:[Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    .line 85
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

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
    .locals 2

    .line 91
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterTocFrame;->isRoot:Z

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 92
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterTocFrame;->isOrdered:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 93
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterTocFrame;->elementId:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v1, v0

    return v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 99
    iget-object p2, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterTocFrame;->elementId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterTocFrame;->isRoot:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 101
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterTocFrame;->isOrdered:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 102
    iget-object p2, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterTocFrame;->children:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 103
    iget-object p2, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterTocFrame;->subFrames:[Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 104
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterTocFrame;->subFrames:[Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 105
    aget-object v1, v1, v0

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
