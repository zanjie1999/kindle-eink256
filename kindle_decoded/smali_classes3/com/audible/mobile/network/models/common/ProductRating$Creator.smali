.class public final Lcom/audible/mobile/network/models/common/ProductRating$Creator;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/network/models/common/ProductRating;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Creator"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 5

    const-string v0, "in"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/audible/mobile/network/models/common/ProductRating;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    sget-object v2, Lcom/audible/mobile/network/models/common/RatingDistribution;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/audible/mobile/network/models/common/RatingDistribution;

    sget-object v3, Lcom/audible/mobile/network/models/common/RatingDistribution;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/audible/mobile/network/models/common/RatingDistribution;

    sget-object v4, Lcom/audible/mobile/network/models/common/RatingDistribution;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/mobile/network/models/common/RatingDistribution;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/audible/mobile/network/models/common/ProductRating;-><init>(ILcom/audible/mobile/network/models/common/RatingDistribution;Lcom/audible/mobile/network/models/common/RatingDistribution;Lcom/audible/mobile/network/models/common/RatingDistribution;)V

    return-object v0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p1, p1, [Lcom/audible/mobile/network/models/common/ProductRating;

    return-object p1
.end method
