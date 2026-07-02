.class public Lcom/audible/mobile/network/apis/domain/ReviewContentScoresImpl;
.super Ljava/lang/Object;
.source "ReviewContentScoresImpl.java"

# interfaces
.implements Lcom/audible/mobile/network/apis/domain/ReviewContentScores;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/audible/mobile/network/apis/domain/ReviewContentScoresImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final contentQuality:I

.field private final numHelpfulVotes:J

.field private final numUnhelpfulVotes:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/audible/mobile/network/apis/domain/ReviewContentScoresImpl$1;

    invoke-direct {v0}, Lcom/audible/mobile/network/apis/domain/ReviewContentScoresImpl$1;-><init>()V

    sput-object v0, Lcom/audible/mobile/network/apis/domain/ReviewContentScoresImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Parcel must not be null."

    .line 39
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/audible/mobile/network/apis/domain/ReviewContentScoresImpl;->contentQuality:I

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/audible/mobile/network/apis/domain/ReviewContentScoresImpl;->numHelpfulVotes:J

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/audible/mobile/network/apis/domain/ReviewContentScoresImpl;->numUnhelpfulVotes:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 64
    const-class v2, Lcom/audible/mobile/network/apis/domain/ReviewContentScoresImpl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 67
    :cond_1
    check-cast p1, Lcom/audible/mobile/network/apis/domain/ReviewContentScoresImpl;

    .line 69
    iget v2, p0, Lcom/audible/mobile/network/apis/domain/ReviewContentScoresImpl;->contentQuality:I

    iget v3, p1, Lcom/audible/mobile/network/apis/domain/ReviewContentScoresImpl;->contentQuality:I

    if-eq v2, v3, :cond_2

    return v1

    .line 72
    :cond_2
    iget-wide v2, p0, Lcom/audible/mobile/network/apis/domain/ReviewContentScoresImpl;->numHelpfulVotes:J

    iget-wide v4, p1, Lcom/audible/mobile/network/apis/domain/ReviewContentScoresImpl;->numHelpfulVotes:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    return v1

    .line 75
    :cond_3
    iget-wide v2, p0, Lcom/audible/mobile/network/apis/domain/ReviewContentScoresImpl;->numUnhelpfulVotes:J

    iget-wide v4, p1, Lcom/audible/mobile/network/apis/domain/ReviewContentScoresImpl;->numUnhelpfulVotes:J

    cmp-long p1, v2, v4

    if-eqz p1, :cond_4

    return v1

    :cond_4
    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 89
    iget p2, p0, Lcom/audible/mobile/network/apis/domain/ReviewContentScoresImpl;->contentQuality:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget-wide v0, p0, Lcom/audible/mobile/network/apis/domain/ReviewContentScoresImpl;->numHelpfulVotes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 91
    iget-wide v0, p0, Lcom/audible/mobile/network/apis/domain/ReviewContentScoresImpl;->numUnhelpfulVotes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
