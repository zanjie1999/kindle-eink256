.class final Lcom/amazon/ea/reviews/data/PublishedReviewActivityData$1;
.super Ljava/lang/Object;
.source "PublishedReviewActivityData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ea/reviews/data/PublishedReviewActivityData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/amazon/ea/reviews/data/PublishedReviewActivityData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/amazon/ea/reviews/data/PublishedReviewActivityData;
    .locals 3

    .line 41
    const-class v0, Lcom/amazon/ea/reviews/data/BookInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amazon/ea/reviews/data/BookInfo;

    .line 42
    const-class v1, Lcom/amazon/ea/reviews/data/Review;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/amazon/ea/reviews/data/Review;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 44
    new-instance v2, Lcom/amazon/ea/reviews/data/PublishedReviewActivityData;

    invoke-direct {v2, v0, v1, p1}, Lcom/amazon/ea/reviews/data/PublishedReviewActivityData;-><init>(Lcom/amazon/ea/reviews/data/BookInfo;Lcom/amazon/ea/reviews/data/Review;Ljava/lang/String;)V

    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/amazon/ea/reviews/data/PublishedReviewActivityData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/amazon/ea/reviews/data/PublishedReviewActivityData;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/amazon/ea/reviews/data/PublishedReviewActivityData;
    .locals 0

    .line 49
    new-array p1, p1, [Lcom/amazon/ea/reviews/data/PublishedReviewActivityData;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/amazon/ea/reviews/data/PublishedReviewActivityData$1;->newArray(I)[Lcom/amazon/ea/reviews/data/PublishedReviewActivityData;

    move-result-object p1

    return-object p1
.end method
