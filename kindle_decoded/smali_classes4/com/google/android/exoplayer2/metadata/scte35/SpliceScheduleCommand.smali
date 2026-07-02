.class public final Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand;
.super Lcom/google/android/exoplayer2/metadata/scte35/SpliceCommand;
.source "SpliceScheduleCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;,
        Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final events:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 211
    new-instance v0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 182
    invoke-direct {p0}, Lcom/google/android/exoplayer2/metadata/scte35/SpliceCommand;-><init>()V

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 184
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 186
    invoke-static {p1}, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->access$300(Landroid/os/Parcel;)Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 188
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand;->events:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$1;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 204
    iget-object p2, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand;->events:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    .line 205
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 207
    iget-object v1, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand;->events:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;

    invoke-static {v1, p1}, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->access$500(Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;Landroid/os/Parcel;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
