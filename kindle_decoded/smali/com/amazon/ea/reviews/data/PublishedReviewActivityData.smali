.class public Lcom/amazon/ea/reviews/data/PublishedReviewActivityData;
.super Ljava/lang/Object;
.source "PublishedReviewActivityData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/ea/reviews/data/PublishedReviewActivityData;",
            ">;"
        }
    .end annotation
.end field

.field private static final INTENT_EXTRA_BUNDLE:Ljava/lang/String; = "REVIEW_BOOK_ACTIVITY_BUNDLE"

.field private static final INT_EXTRA_BUNDLE_DATA:Ljava/lang/String; = "REVIEW_BOOK_ACTIVITY_BUNDLE_DATA"


# instance fields
.field public final bookInfo:Lcom/amazon/ea/reviews/data/BookInfo;

.field public final metricsTag:Ljava/lang/String;

.field public final review:Lcom/amazon/ea/reviews/data/Review;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lcom/amazon/ea/reviews/data/PublishedReviewActivityData$1;

    invoke-direct {v0}, Lcom/amazon/ea/reviews/data/PublishedReviewActivityData$1;-><init>()V

    sput-object v0, Lcom/amazon/ea/reviews/data/PublishedReviewActivityData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/ea/reviews/data/BookInfo;Lcom/amazon/ea/reviews/data/Review;Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/amazon/ea/reviews/data/PublishedReviewActivityData;->bookInfo:Lcom/amazon/ea/reviews/data/BookInfo;

    .line 55
    iput-object p2, p0, Lcom/amazon/ea/reviews/data/PublishedReviewActivityData;->review:Lcom/amazon/ea/reviews/data/Review;

    .line 56
    iput-object p3, p0, Lcom/amazon/ea/reviews/data/PublishedReviewActivityData;->metricsTag:Ljava/lang/String;

    return-void
.end method

.method public static createInstance(Landroid/content/Intent;)Lcom/amazon/ea/reviews/data/PublishedReviewActivityData;
    .locals 1

    const-string v0, "REVIEW_BOOK_ACTIVITY_BUNDLE"

    .line 27
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "REVIEW_BOOK_ACTIVITY_BUNDLE_DATA"

    .line 31
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/amazon/ea/reviews/data/PublishedReviewActivityData;

    return-object p0
.end method


# virtual methods
.method public addToIntent(Landroid/content/Intent;)V
    .locals 2

    .line 66
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "REVIEW_BOOK_ACTIVITY_BUNDLE_DATA"

    .line 67
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "REVIEW_BOOK_ACTIVITY_BUNDLE"

    .line 68
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-void
.end method

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

    .line 84
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/amazon/ea/reviews/data/PublishedReviewActivityData;

    if-eq v2, v3, :cond_2

    return v1

    .line 87
    :cond_2
    check-cast p1, Lcom/amazon/ea/reviews/data/PublishedReviewActivityData;

    .line 88
    iget-object v2, p0, Lcom/amazon/ea/reviews/data/PublishedReviewActivityData;->bookInfo:Lcom/amazon/ea/reviews/data/BookInfo;

    iget-object v3, p1, Lcom/amazon/ea/reviews/data/PublishedReviewActivityData;->bookInfo:Lcom/amazon/ea/reviews/data/BookInfo;

    invoke-static {v2, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amazon/ea/reviews/data/PublishedReviewActivityData;->review:Lcom/amazon/ea/reviews/data/Review;

    iget-object v3, p1, Lcom/amazon/ea/reviews/data/PublishedReviewActivityData;->review:Lcom/amazon/ea/reviews/data/Review;

    invoke-static {v2, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amazon/ea/reviews/data/PublishedReviewActivityData;->metricsTag:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/ea/reviews/data/PublishedReviewActivityData;->metricsTag:Ljava/lang/String;

    .line 89
    invoke-static {v2, p1}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 94
    iget-object v1, p0, Lcom/amazon/ea/reviews/data/PublishedReviewActivityData;->bookInfo:Lcom/amazon/ea/reviews/data/BookInfo;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/reviews/data/PublishedReviewActivityData;->review:Lcom/amazon/ea/reviews/data/Review;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/reviews/data/PublishedReviewActivityData;->metricsTag:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/amazon/ea/guava/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/amazon/ea/reviews/data/PublishedReviewActivityData;->bookInfo:Lcom/amazon/ea/reviews/data/BookInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 100
    iget-object v0, p0, Lcom/amazon/ea/reviews/data/PublishedReviewActivityData;->review:Lcom/amazon/ea/reviews/data/Review;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 101
    iget-object p2, p0, Lcom/amazon/ea/reviews/data/PublishedReviewActivityData;->metricsTag:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
