.class public Lcom/amazon/ea/reviews/data/Review;
.super Ljava/lang/Object;
.source "Review.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/ea/reviews/data/Review;",
            ">;"
        }
    .end annotation
.end field

.field private static final NEW_REVIEW_STATE:Ljava/lang/String; = "NEW_REVIEW"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private asin:Ljava/lang/String;

.field private rating:I

.field private reviewId:Ljava/lang/String;

.field private reviewState:Ljava/lang/String;

.field private reviewText:Ljava/lang/String;

.field private reviewTitle:Ljava/lang/String;

.field private timeStamp:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    new-instance v0, Lcom/amazon/ea/reviews/data/Review$1;

    invoke-direct {v0}, Lcom/amazon/ea/reviews/data/Review$1;-><init>()V

    sput-object v0, Lcom/amazon/ea/reviews/data/Review;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 100
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/amazon/ea/reviews/data/Review;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput p1, p0, Lcom/amazon/ea/reviews/data/Review;->rating:I

    .line 122
    iput-object p2, p0, Lcom/amazon/ea/reviews/data/Review;->asin:Ljava/lang/String;

    const-string p1, ""

    if-nez p3, :cond_0

    move-object p3, p1

    .line 123
    :cond_0
    iput-object p3, p0, Lcom/amazon/ea/reviews/data/Review;->reviewTitle:Ljava/lang/String;

    if-nez p4, :cond_1

    move-object p4, p1

    .line 124
    :cond_1
    iput-object p4, p0, Lcom/amazon/ea/reviews/data/Review;->reviewText:Ljava/lang/String;

    .line 125
    iput-object p5, p0, Lcom/amazon/ea/reviews/data/Review;->reviewState:Ljava/lang/String;

    .line 126
    iput-object p6, p0, Lcom/amazon/ea/reviews/data/Review;->reviewId:Ljava/lang/String;

    .line 127
    iput-object p7, p0, Lcom/amazon/ea/reviews/data/Review;->timeStamp:Ljava/util/Date;

    return-void
.end method

.method public static createFromSidecarCommunityReview(Ljava/lang/String;Lcom/amazon/ea/sidecar/def/data/CommunityReviewData;)Lcom/amazon/ea/reviews/data/Review;
    .locals 11

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 34
    :cond_0
    new-instance v8, Lcom/amazon/ea/reviews/data/Review;

    iget v1, p1, Lcom/amazon/ea/sidecar/def/data/CommunityReviewData;->rating:I

    iget-object v3, p1, Lcom/amazon/ea/sidecar/def/data/CommunityReviewData;->title:Ljava/lang/String;

    iget-object v4, p1, Lcom/amazon/ea/sidecar/def/data/CommunityReviewData;->text:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p1, Lcom/amazon/ea/sidecar/def/data/CommunityReviewData;->id:Ljava/lang/String;

    new-instance v7, Ljava/util/Date;

    iget-wide v9, p1, Lcom/amazon/ea/sidecar/def/data/CommunityReviewData;->submissionDateMs:J

    invoke-direct {v7, v9, v10}, Ljava/util/Date;-><init>(J)V

    move-object v0, v8

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, Lcom/amazon/ea/reviews/data/Review;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    return-object v8
.end method

.method public static createFromSidecarGrokReview(Ljava/lang/String;Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;)Lcom/amazon/ea/reviews/data/Review;
    .locals 11

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 49
    :cond_0
    new-instance v8, Lcom/amazon/ea/reviews/data/Review;

    iget v1, p1, Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;->rating:I

    iget-object v3, p1, Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;->title:Ljava/lang/String;

    iget-object v4, p1, Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;->text:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p1, Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;->id:Ljava/lang/String;

    new-instance v7, Ljava/util/Date;

    iget-wide v9, p1, Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;->submissionDateMs:J

    invoke-direct {v7, v9, v10}, Ljava/util/Date;-><init>(J)V

    move-object v0, v8

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, Lcom/amazon/ea/reviews/data/Review;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    return-object v8
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

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 143
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/amazon/ea/reviews/data/Review;

    if-eq v2, v3, :cond_2

    return v1

    .line 146
    :cond_2
    check-cast p1, Lcom/amazon/ea/reviews/data/Review;

    .line 147
    iget v2, p0, Lcom/amazon/ea/reviews/data/Review;->rating:I

    iget v3, p1, Lcom/amazon/ea/reviews/data/Review;->rating:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/amazon/ea/reviews/data/Review;->asin:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/ea/reviews/data/Review;->asin:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amazon/ea/reviews/data/Review;->reviewTitle:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/ea/reviews/data/Review;->reviewTitle:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amazon/ea/reviews/data/Review;->reviewText:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/ea/reviews/data/Review;->reviewText:Ljava/lang/String;

    .line 148
    invoke-static {v2, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amazon/ea/reviews/data/Review;->reviewState:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/ea/reviews/data/Review;->reviewState:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amazon/ea/reviews/data/Review;->reviewId:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/ea/reviews/data/Review;->reviewId:Ljava/lang/String;

    .line 149
    invoke-static {v2, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amazon/ea/reviews/data/Review;->timeStamp:Ljava/util/Date;

    iget-object p1, p1, Lcom/amazon/ea/reviews/data/Review;->timeStamp:Ljava/util/Date;

    invoke-static {v2, p1}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAsin()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/amazon/ea/reviews/data/Review;->asin:Ljava/lang/String;

    return-object v0
.end method

.method public getRating()I
    .locals 1

    .line 167
    iget v0, p0, Lcom/amazon/ea/reviews/data/Review;->rating:I

    return v0
.end method

.method public getReviewId()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/amazon/ea/reviews/data/Review;->reviewId:Ljava/lang/String;

    return-object v0
.end method

.method public getReviewState()Ljava/lang/String;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/amazon/ea/reviews/data/Review;->reviewState:Ljava/lang/String;

    return-object v0
.end method

.method public getReviewText()Ljava/lang/String;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/amazon/ea/reviews/data/Review;->reviewText:Ljava/lang/String;

    return-object v0
.end method

.method public getReviewTitle()Ljava/lang/String;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/amazon/ea/reviews/data/Review;->reviewTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeStamp()Ljava/util/Date;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/amazon/ea/reviews/data/Review;->timeStamp:Ljava/util/Date;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    .line 217
    iget v1, p0, Lcom/amazon/ea/reviews/data/Review;->rating:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/reviews/data/Review;->asin:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/reviews/data/Review;->reviewTitle:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/reviews/data/Review;->reviewText:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/reviews/data/Review;->reviewState:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/reviews/data/Review;->reviewId:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/reviews/data/Review;->timeStamp:Ljava/util/Date;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/amazon/ea/guava/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isSubmitted()Z
    .locals 2

    .line 316
    iget-object v0, p0, Lcom/amazon/ea/reviews/data/Review;->reviewState:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "NEW_REVIEW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public setRating(I)V
    .locals 0

    .line 237
    iput p1, p0, Lcom/amazon/ea/reviews/data/Review;->rating:I

    return-void
.end method

.method public setReviewState(Ljava/lang/String;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/amazon/ea/reviews/data/Review;->reviewState:Ljava/lang/String;

    return-void
.end method

.method public setReviewText(Ljava/lang/String;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/amazon/ea/reviews/data/Review;->reviewText:Ljava/lang/String;

    return-void
.end method

.method public setReviewTitle(Ljava/lang/String;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/amazon/ea/reviews/data/Review;->reviewTitle:Ljava/lang/String;

    return-void
.end method

.method public setTimeStamp(Ljava/util/Date;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/amazon/ea/reviews/data/Review;->timeStamp:Ljava/util/Date;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 295
    const-class v0, Lcom/amazon/ea/reviews/data/Review;

    invoke-static {v0}, Lcom/amazon/ea/guava/Objects;->toStringHelper(Ljava/lang/Class;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    move-result-object v0

    iget v1, p0, Lcom/amazon/ea/reviews/data/Review;->rating:I

    const-string/jumbo v2, "rating"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/ea/reviews/data/Review;->asin:Ljava/lang/String;

    const-string v2, "asin"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/ea/reviews/data/Review;->reviewTitle:Ljava/lang/String;

    const-string/jumbo v2, "reviewTitle"

    .line 296
    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/ea/reviews/data/Review;->reviewText:Ljava/lang/String;

    const-string/jumbo v2, "reviewText"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/ea/reviews/data/Review;->reviewState:Ljava/lang/String;

    const-string/jumbo v2, "reviewState"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/ea/reviews/data/Review;->reviewId:Ljava/lang/String;

    const-string/jumbo v2, "reviewId"

    .line 297
    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/ea/reviews/data/Review;->timeStamp:Ljava/util/Date;

    const-string/jumbo v2, "timestamp"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    invoke-virtual {v0}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 302
    iget p2, p0, Lcom/amazon/ea/reviews/data/Review;->rating:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    iget-object p2, p0, Lcom/amazon/ea/reviews/data/Review;->asin:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 304
    iget-object p2, p0, Lcom/amazon/ea/reviews/data/Review;->reviewTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 305
    iget-object p2, p0, Lcom/amazon/ea/reviews/data/Review;->reviewText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 306
    iget-object p2, p0, Lcom/amazon/ea/reviews/data/Review;->reviewState:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 307
    iget-object p2, p0, Lcom/amazon/ea/reviews/data/Review;->reviewId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 308
    iget-object p2, p0, Lcom/amazon/ea/reviews/data/Review;->timeStamp:Ljava/util/Date;

    if-nez p2, :cond_0

    const-wide/16 v0, 0x0

    .line 309
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    .line 311
    :cond_0
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    :goto_0
    return-void
.end method
