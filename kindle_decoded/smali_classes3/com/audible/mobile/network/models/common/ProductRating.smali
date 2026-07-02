.class public final Lcom/audible/mobile/network/models/common/ProductRating;
.super Ljava/lang/Object;
.source "ProductRating.kt"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/mobile/network/models/common/ProductRating$Creator;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final overallDistribution:Lcom/audible/mobile/network/models/common/RatingDistribution;

.field private final performanceDistribution:Lcom/audible/mobile/network/models/common/RatingDistribution;

.field private final reviewsCount:I

.field private final storyDistribution:Lcom/audible/mobile/network/models/common/RatingDistribution;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/audible/mobile/network/models/common/ProductRating$Creator;

    invoke-direct {v0}, Lcom/audible/mobile/network/models/common/ProductRating$Creator;-><init>()V

    sput-object v0, Lcom/audible/mobile/network/models/common/ProductRating;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/audible/mobile/network/models/common/ProductRating;-><init>(ILcom/audible/mobile/network/models/common/RatingDistribution;Lcom/audible/mobile/network/models/common/RatingDistribution;Lcom/audible/mobile/network/models/common/RatingDistribution;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ILcom/audible/mobile/network/models/common/RatingDistribution;Lcom/audible/mobile/network/models/common/RatingDistribution;Lcom/audible/mobile/network/models/common/RatingDistribution;)V
    .locals 1

    const-string v0, "overallDistribution"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "performanceDistribution"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storyDistribution"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/audible/mobile/network/models/common/ProductRating;->reviewsCount:I

    iput-object p2, p0, Lcom/audible/mobile/network/models/common/ProductRating;->overallDistribution:Lcom/audible/mobile/network/models/common/RatingDistribution;

    iput-object p3, p0, Lcom/audible/mobile/network/models/common/ProductRating;->performanceDistribution:Lcom/audible/mobile/network/models/common/RatingDistribution;

    iput-object p4, p0, Lcom/audible/mobile/network/models/common/ProductRating;->storyDistribution:Lcom/audible/mobile/network/models/common/RatingDistribution;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/audible/mobile/network/models/common/RatingDistribution;Lcom/audible/mobile/network/models/common/RatingDistribution;Lcom/audible/mobile/network/models/common/RatingDistribution;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 21

    and-int/lit8 v0, p5, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move/from16 v0, p1

    :goto_0
    and-int/lit8 v1, p5, 0x2

    if-eqz v1, :cond_1

    .line 14
    new-instance v1, Lcom/audible/mobile/network/models/common/RatingDistribution;

    move-object v2, v1

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x7f

    const/16 v18, 0x0

    invoke-direct/range {v2 .. v18}, Lcom/audible/mobile/network/models/common/RatingDistribution;-><init>(JDJJJJJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_1

    :cond_1
    move-object/from16 v1, p2

    :goto_1
    and-int/lit8 v2, p5, 0x4

    if-eqz v2, :cond_2

    .line 17
    new-instance v2, Lcom/audible/mobile/network/models/common/RatingDistribution;

    move-object v3, v2

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x7f

    const/16 v19, 0x0

    invoke-direct/range {v3 .. v19}, Lcom/audible/mobile/network/models/common/RatingDistribution;-><init>(JDJJJJJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_2

    :cond_2
    move-object/from16 v2, p3

    :goto_2
    and-int/lit8 v3, p5, 0x8

    if-eqz v3, :cond_3

    .line 20
    new-instance v3, Lcom/audible/mobile/network/models/common/RatingDistribution;

    move-object v4, v3

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x7f

    const/16 v20, 0x0

    invoke-direct/range {v4 .. v20}, Lcom/audible/mobile/network/models/common/RatingDistribution;-><init>(JDJJJJJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v4, p0

    goto :goto_3

    :cond_3
    move-object/from16 v4, p0

    move-object/from16 v3, p4

    :goto_3
    invoke-direct {v4, v0, v1, v2, v3}, Lcom/audible/mobile/network/models/common/ProductRating;-><init>(ILcom/audible/mobile/network/models/common/RatingDistribution;Lcom/audible/mobile/network/models/common/RatingDistribution;Lcom/audible/mobile/network/models/common/RatingDistribution;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/audible/mobile/network/models/common/ProductRating;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/audible/mobile/network/models/common/ProductRating;

    iget v0, p0, Lcom/audible/mobile/network/models/common/ProductRating;->reviewsCount:I

    iget v1, p1, Lcom/audible/mobile/network/models/common/ProductRating;->reviewsCount:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/audible/mobile/network/models/common/ProductRating;->overallDistribution:Lcom/audible/mobile/network/models/common/RatingDistribution;

    iget-object v1, p1, Lcom/audible/mobile/network/models/common/ProductRating;->overallDistribution:Lcom/audible/mobile/network/models/common/RatingDistribution;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/audible/mobile/network/models/common/ProductRating;->performanceDistribution:Lcom/audible/mobile/network/models/common/RatingDistribution;

    iget-object v1, p1, Lcom/audible/mobile/network/models/common/ProductRating;->performanceDistribution:Lcom/audible/mobile/network/models/common/RatingDistribution;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/audible/mobile/network/models/common/ProductRating;->storyDistribution:Lcom/audible/mobile/network/models/common/RatingDistribution;

    iget-object p1, p1, Lcom/audible/mobile/network/models/common/ProductRating;->storyDistribution:Lcom/audible/mobile/network/models/common/RatingDistribution;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

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
    .locals 3

    iget v0, p0, Lcom/audible/mobile/network/models/common/ProductRating;->reviewsCount:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/audible/mobile/network/models/common/ProductRating;->overallDistribution:Lcom/audible/mobile/network/models/common/RatingDistribution;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/audible/mobile/network/models/common/RatingDistribution;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/audible/mobile/network/models/common/ProductRating;->performanceDistribution:Lcom/audible/mobile/network/models/common/RatingDistribution;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/audible/mobile/network/models/common/RatingDistribution;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/audible/mobile/network/models/common/ProductRating;->storyDistribution:Lcom/audible/mobile/network/models/common/RatingDistribution;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/audible/mobile/network/models/common/RatingDistribution;->hashCode()I

    move-result v2

    :cond_2
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProductRating(reviewsCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/audible/mobile/network/models/common/ProductRating;->reviewsCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", overallDistribution="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/mobile/network/models/common/ProductRating;->overallDistribution:Lcom/audible/mobile/network/models/common/RatingDistribution;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", performanceDistribution="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/mobile/network/models/common/ProductRating;->performanceDistribution:Lcom/audible/mobile/network/models/common/RatingDistribution;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", storyDistribution="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/mobile/network/models/common/ProductRating;->storyDistribution:Lcom/audible/mobile/network/models/common/RatingDistribution;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p0, Lcom/audible/mobile/network/models/common/ProductRating;->reviewsCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/audible/mobile/network/models/common/ProductRating;->overallDistribution:Lcom/audible/mobile/network/models/common/RatingDistribution;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p2, p0, Lcom/audible/mobile/network/models/common/ProductRating;->performanceDistribution:Lcom/audible/mobile/network/models/common/RatingDistribution;

    invoke-interface {p2, p1, v0}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p2, p0, Lcom/audible/mobile/network/models/common/ProductRating;->storyDistribution:Lcom/audible/mobile/network/models/common/RatingDistribution;

    invoke-interface {p2, p1, v0}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
