.class public final Lcom/audible/mobile/network/models/common/RatingDistribution;
.super Ljava/lang/Object;
.source "RatingDistribution.kt"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/mobile/network/models/common/RatingDistribution$Creator;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final averageRating:D

.field private final numFiveStarRatings:J

.field private final numFourStarRatings:J

.field private final numOneStarRatings:J

.field private final numRatings:J

.field private final numThreeStarRatings:J

.field private final numTwoStarRatings:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/audible/mobile/network/models/common/RatingDistribution$Creator;

    invoke-direct {v0}, Lcom/audible/mobile/network/models/common/RatingDistribution$Creator;-><init>()V

    sput-object v0, Lcom/audible/mobile/network/models/common/RatingDistribution;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 17

    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const/16 v15, 0x7f

    const/16 v16, 0x0

    invoke-direct/range {v0 .. v16}, Lcom/audible/mobile/network/models/common/RatingDistribution;-><init>(JDJJJJJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(JDJJJJJ)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/audible/mobile/network/models/common/RatingDistribution;->numRatings:J

    iput-wide p3, p0, Lcom/audible/mobile/network/models/common/RatingDistribution;->averageRating:D

    iput-wide p5, p0, Lcom/audible/mobile/network/models/common/RatingDistribution;->numFiveStarRatings:J

    iput-wide p7, p0, Lcom/audible/mobile/network/models/common/RatingDistribution;->numFourStarRatings:J

    iput-wide p9, p0, Lcom/audible/mobile/network/models/common/RatingDistribution;->numThreeStarRatings:J

    iput-wide p11, p0, Lcom/audible/mobile/network/models/common/RatingDistribution;->numTwoStarRatings:J

    iput-wide p13, p0, Lcom/audible/mobile/network/models/common/RatingDistribution;->numOneStarRatings:J

    return-void
.end method

.method public synthetic constructor <init>(JDJJJJJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 15

    and-int/lit8 v0, p15, 0x1

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    move-wide v3, v1

    goto :goto_0

    :cond_0
    move-wide/from16 v3, p1

    :goto_0
    and-int/lit8 v0, p15, 0x2

    if-eqz v0, :cond_1

    const-wide/16 v5, 0x0

    goto :goto_1

    :cond_1
    move-wide/from16 v5, p3

    :goto_1
    and-int/lit8 v0, p15, 0x4

    if-eqz v0, :cond_2

    move-wide v7, v1

    goto :goto_2

    :cond_2
    move-wide/from16 v7, p5

    :goto_2
    and-int/lit8 v0, p15, 0x8

    if-eqz v0, :cond_3

    move-wide v9, v1

    goto :goto_3

    :cond_3
    move-wide/from16 v9, p7

    :goto_3
    and-int/lit8 v0, p15, 0x10

    if-eqz v0, :cond_4

    move-wide v11, v1

    goto :goto_4

    :cond_4
    move-wide/from16 v11, p9

    :goto_4
    and-int/lit8 v0, p15, 0x20

    if-eqz v0, :cond_5

    move-wide v13, v1

    goto :goto_5

    :cond_5
    move-wide/from16 v13, p11

    :goto_5
    and-int/lit8 v0, p15, 0x40

    if-eqz v0, :cond_6

    goto :goto_6

    :cond_6
    move-wide/from16 v1, p13

    :goto_6
    move-object/from16 p1, p0

    move-wide/from16 p2, v3

    move-wide/from16 p4, v5

    move-wide/from16 p6, v7

    move-wide/from16 p8, v9

    move-wide/from16 p10, v11

    move-wide/from16 p12, v13

    move-wide/from16 p14, v1

    .line 29
    invoke-direct/range {p1 .. p15}, Lcom/audible/mobile/network/models/common/RatingDistribution;-><init>(JDJJJJJ)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/audible/mobile/network/models/common/RatingDistribution;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/audible/mobile/network/models/common/RatingDistribution;

    iget-wide v0, p0, Lcom/audible/mobile/network/models/common/RatingDistribution;->numRatings:J

    iget-wide v2, p1, Lcom/audible/mobile/network/models/common/RatingDistribution;->numRatings:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lcom/audible/mobile/network/models/common/RatingDistribution;->averageRating:D

    iget-wide v2, p1, Lcom/audible/mobile/network/models/common/RatingDistribution;->averageRating:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/audible/mobile/network/models/common/RatingDistribution;->numFiveStarRatings:J

    iget-wide v2, p1, Lcom/audible/mobile/network/models/common/RatingDistribution;->numFiveStarRatings:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lcom/audible/mobile/network/models/common/RatingDistribution;->numFourStarRatings:J

    iget-wide v2, p1, Lcom/audible/mobile/network/models/common/RatingDistribution;->numFourStarRatings:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lcom/audible/mobile/network/models/common/RatingDistribution;->numThreeStarRatings:J

    iget-wide v2, p1, Lcom/audible/mobile/network/models/common/RatingDistribution;->numThreeStarRatings:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lcom/audible/mobile/network/models/common/RatingDistribution;->numTwoStarRatings:J

    iget-wide v2, p1, Lcom/audible/mobile/network/models/common/RatingDistribution;->numTwoStarRatings:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lcom/audible/mobile/network/models/common/RatingDistribution;->numOneStarRatings:J

    iget-wide v2, p1, Lcom/audible/mobile/network/models/common/RatingDistribution;->numOneStarRatings:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 7

    iget-wide v0, p0, Lcom/audible/mobile/network/models/common/RatingDistribution;->numRatings:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v3, p0, Lcom/audible/mobile/network/models/common/RatingDistribution;->averageRating:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v0, v3

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v3, p0, Lcom/audible/mobile/network/models/common/RatingDistribution;->numFiveStarRatings:J

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v0, v3

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v3, p0, Lcom/audible/mobile/network/models/common/RatingDistribution;->numFourStarRatings:J

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v0, v3

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v3, p0, Lcom/audible/mobile/network/models/common/RatingDistribution;->numThreeStarRatings:J

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v0, v3

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v3, p0, Lcom/audible/mobile/network/models/common/RatingDistribution;->numTwoStarRatings:J

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v0, v3

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v3, p0, Lcom/audible/mobile/network/models/common/RatingDistribution;->numOneStarRatings:J

    ushr-long v5, v3, v2

    xor-long v2, v3, v5

    long-to-int v0, v2

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RatingDistribution(numRatings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/audible/mobile/network/models/common/RatingDistribution;->numRatings:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", averageRating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/audible/mobile/network/models/common/RatingDistribution;->averageRating:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", numFiveStarRatings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/audible/mobile/network/models/common/RatingDistribution;->numFiveStarRatings:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", numFourStarRatings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/audible/mobile/network/models/common/RatingDistribution;->numFourStarRatings:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", numThreeStarRatings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/audible/mobile/network/models/common/RatingDistribution;->numThreeStarRatings:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", numTwoStarRatings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/audible/mobile/network/models/common/RatingDistribution;->numTwoStarRatings:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", numOneStarRatings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/audible/mobile/network/models/common/RatingDistribution;->numOneStarRatings:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/audible/mobile/network/models/common/RatingDistribution;->numRatings:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/audible/mobile/network/models/common/RatingDistribution;->averageRating:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/audible/mobile/network/models/common/RatingDistribution;->numFiveStarRatings:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/audible/mobile/network/models/common/RatingDistribution;->numFourStarRatings:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/audible/mobile/network/models/common/RatingDistribution;->numThreeStarRatings:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/audible/mobile/network/models/common/RatingDistribution;->numTwoStarRatings:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/audible/mobile/network/models/common/RatingDistribution;->numOneStarRatings:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
