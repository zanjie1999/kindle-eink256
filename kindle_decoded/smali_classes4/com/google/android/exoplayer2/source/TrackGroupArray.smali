.class public final Lcom/google/android/exoplayer2/source/TrackGroupArray;
.super Ljava/lang/Object;
.source "TrackGroupArray.java"


# static fields
.field public static final EMPTY:Lcom/google/android/exoplayer2/source/TrackGroupArray;


# instance fields
.field private hashCode:I

.field public final length:I

.field private final trackGroups:[Lcom/google/android/exoplayer2/source/TrackGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    sput-object v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->EMPTY:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-void
.end method

.method public varargs constructor <init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->trackGroups:[Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 46
    array-length p1, p1

    iput p1, p0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

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

    .line 87
    const-class v2, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 90
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 91
    iget v2, p0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    iget v3, p1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->trackGroups:[Lcom/google/android/exoplayer2/source/TrackGroup;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->trackGroups:[Lcom/google/android/exoplayer2/source/TrackGroup;

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

.method public get(I)Lcom/google/android/exoplayer2/source/TrackGroup;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->trackGroups:[Lcom/google/android/exoplayer2/source/TrackGroup;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->hashCode:I

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->trackGroups:[Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->hashCode:I

    .line 79
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->hashCode:I

    return v0
.end method

.method public indexOf(Lcom/google/android/exoplayer2/source/TrackGroup;)I
    .locals 2

    const/4 v0, 0x0

    .line 66
    :goto_0
    iget v1, p0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v0, v1, :cond_1

    .line 67
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->trackGroups:[Lcom/google/android/exoplayer2/source/TrackGroup;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method
