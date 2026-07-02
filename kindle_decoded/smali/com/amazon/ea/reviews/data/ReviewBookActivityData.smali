.class public Lcom/amazon/ea/reviews/data/ReviewBookActivityData;
.super Ljava/lang/Object;
.source "ReviewBookActivityData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/ea/reviews/data/ReviewBookActivityData;",
            ">;"
        }
    .end annotation
.end field

.field private static final INTENT_EXTRA_BUNDLE:Ljava/lang/String; = "REVIEW_BOOK_ACTIVITY_BUNDLE"

.field private static final INT_EXTRA_BUNDLE_DATA:Ljava/lang/String; = "REVIEW_BOOK_ACTIVITY_BUNDLE_DATA"


# instance fields
.field public final bookInfo:Lcom/amazon/ea/reviews/data/BookInfo;

.field public final isGrokWidget:Z

.field public final isNewRating:Z

.field public final lastSubmittedRating:I

.field public final metricsTag:Ljava/lang/String;

.field public final preferredMarketplace:Ljava/lang/String;

.field public final publicName:Ljava/lang/String;

.field public final rating:I

.field public final review:Lcom/amazon/ea/reviews/data/Review;

.field public final shouldSubmitPublicName:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Lcom/amazon/ea/reviews/data/ReviewBookActivityData$1;

    invoke-direct {v0}, Lcom/amazon/ea/reviews/data/ReviewBookActivityData$1;-><init>()V

    sput-object v0, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/ea/reviews/data/BookInfo;Lcom/amazon/ea/reviews/data/Review;Ljava/lang/String;ZIILjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;->bookInfo:Lcom/amazon/ea/reviews/data/BookInfo;

    .line 85
    iput-object p2, p0, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;->review:Lcom/amazon/ea/reviews/data/Review;

    .line 86
    iput-object p3, p0, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;->publicName:Ljava/lang/String;

    .line 87
    iput-boolean p4, p0, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;->shouldSubmitPublicName:Z

    .line 88
    iput p5, p0, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;->rating:I

    .line 89
    iput p6, p0, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;->lastSubmittedRating:I

    .line 90
    iput-object p7, p0, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;->metricsTag:Ljava/lang/String;

    .line 91
    iput-object p8, p0, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;->preferredMarketplace:Ljava/lang/String;

    .line 92
    iput-boolean p9, p0, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;->isNewRating:Z

    .line 93
    iput-boolean p10, p0, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;->isGrokWidget:Z

    return-void
.end method

.method public static createInstance(Landroid/content/Intent;)Lcom/amazon/ea/reviews/data/ReviewBookActivityData;
    .locals 1

    const-string v0, "REVIEW_BOOK_ACTIVITY_BUNDLE"

    .line 41
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "REVIEW_BOOK_ACTIVITY_BUNDLE_DATA"

    .line 45
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;

    return-object p0
.end method

.method public static createInstance(Landroid/os/Bundle;)Lcom/amazon/ea/reviews/data/ReviewBookActivityData;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "REVIEW_BOOK_ACTIVITY_BUNDLE_DATA"

    .line 30
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;

    return-object p0
.end method


# virtual methods
.method public addToBundle(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "REVIEW_BOOK_ACTIVITY_BUNDLE_DATA"

    .line 103
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public addToIntent(Landroid/content/Intent;)V
    .locals 2

    .line 113
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "REVIEW_BOOK_ACTIVITY_BUNDLE_DATA"

    .line 114
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "REVIEW_BOOK_ACTIVITY_BUNDLE"

    .line 115
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

    .line 131
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;

    if-eq v2, v3, :cond_2

    return v1

    .line 134
    :cond_2
    check-cast p1, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;

    .line 135
    iget-object v2, p0, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;->bookInfo:Lcom/amazon/ea/reviews/data/BookInfo;

    iget-object v3, p1, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;->bookInfo:Lcom/amazon/ea/reviews/data/BookInfo;

    invoke-static {v2, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;->review:Lcom/amazon/ea/reviews/data/Review;

    iget-object v3, p1, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;->review:Lcom/amazon/ea/reviews/data/Review;

    invoke-static {v2, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;->publicName:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;->publicName:Ljava/lang/String;

    .line 136
    invoke-static {v2, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;->shouldSubmitPublicName:Z

    .line 137
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p1, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;->shouldSubmitPublicName:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;->rating:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;->rating:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;->lastSubmittedRating:I

    .line 138
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;->lastSubmittedRating:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;->metricsTag:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;->metricsTag:Ljava/lang/String;

    .line 139
    invoke-static {v2, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;->preferredMarketplace:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;->preferredMarketplace:Ljava/lang/String;

    .line 140
    invoke-static {v2, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;->isNewRating:Z

    .line 141
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p1, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;->isNewRating:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;->isGrokWidget:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean p1, p1, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;->isGrokWidget:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

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

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    .line 146
    iget-object v1, p0, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;->bookInfo:Lcom/amazon/ea/reviews/data/BookInfo;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;->review:Lcom/amazon/ea/reviews/data/Review;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;->publicName:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;->shouldSubmitPublicName:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;->rating:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;->lastSubmittedRating:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;->metricsTag:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;->preferredMarketplace:Ljava/lang/String;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;->isNewRating:Z

    .line 147
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;->isGrokWidget:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 146
    invoke-static {v0}, Lcom/amazon/ea/guava/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;->bookInfo:Lcom/amazon/ea/reviews/data/BookInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 153
    iget-object v0, p0, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;->review:Lcom/amazon/ea/reviews/data/Review;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 154
    iget-object p2, p0, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;->publicName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    iget-boolean p2, p0, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;->shouldSubmitPublicName:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    iget p2, p0, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;->rating:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    iget p2, p0, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;->lastSubmittedRating:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget-object p2, p0, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;->metricsTag:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    iget-object p2, p0, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;->preferredMarketplace:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    iget-boolean p2, p0, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;->isNewRating:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    iget-boolean p2, p0, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;->isGrokWidget:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
