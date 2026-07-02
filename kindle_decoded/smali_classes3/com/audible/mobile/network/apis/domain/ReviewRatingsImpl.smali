.class public Lcom/audible/mobile/network/apis/domain/ReviewRatingsImpl;
.super Ljava/lang/Object;
.source "ReviewRatingsImpl.java"

# interfaces
.implements Lcom/audible/mobile/network/apis/domain/ReviewRatings;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/audible/mobile/network/apis/domain/ReviewRatingsImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final overallRating:I

.field private final performanceRating:I

.field private final storyRating:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/audible/mobile/network/apis/domain/ReviewRatingsImpl$1;

    invoke-direct {v0}, Lcom/audible/mobile/network/apis/domain/ReviewRatingsImpl$1;-><init>()V

    sput-object v0, Lcom/audible/mobile/network/apis/domain/ReviewRatingsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Parcel must not be null."

    .line 38
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/audible/mobile/network/apis/domain/ReviewRatingsImpl;->overallRating:I

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/audible/mobile/network/apis/domain/ReviewRatingsImpl;->performanceRating:I

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/audible/mobile/network/apis/domain/ReviewRatingsImpl;->storyRating:I

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

    if-eqz p1, :cond_5

    .line 63
    const-class v2, Lcom/audible/mobile/network/apis/domain/ReviewRatingsImpl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 66
    :cond_1
    check-cast p1, Lcom/audible/mobile/network/apis/domain/ReviewRatingsImpl;

    .line 68
    iget v2, p0, Lcom/audible/mobile/network/apis/domain/ReviewRatingsImpl;->overallRating:I

    iget v3, p1, Lcom/audible/mobile/network/apis/domain/ReviewRatingsImpl;->overallRating:I

    if-eq v2, v3, :cond_2

    return v1

    .line 71
    :cond_2
    iget v2, p0, Lcom/audible/mobile/network/apis/domain/ReviewRatingsImpl;->performanceRating:I

    iget v3, p1, Lcom/audible/mobile/network/apis/domain/ReviewRatingsImpl;->performanceRating:I

    if-eq v2, v3, :cond_3

    return v1

    .line 74
    :cond_3
    iget v2, p0, Lcom/audible/mobile/network/apis/domain/ReviewRatingsImpl;->storyRating:I

    iget p1, p1, Lcom/audible/mobile/network/apis/domain/ReviewRatingsImpl;->storyRating:I

    if-eq v2, p1, :cond_4

    return v1

    :cond_4
    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 88
    iget p2, p0, Lcom/audible/mobile/network/apis/domain/ReviewRatingsImpl;->overallRating:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget p2, p0, Lcom/audible/mobile/network/apis/domain/ReviewRatingsImpl;->performanceRating:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget p2, p0, Lcom/audible/mobile/network/apis/domain/ReviewRatingsImpl;->storyRating:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
