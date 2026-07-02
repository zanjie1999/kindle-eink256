.class final Lcom/amazon/ea/reviews/data/Review$1;
.super Ljava/lang/Object;
.source "Review.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ea/reviews/data/Review;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/amazon/ea/reviews/data/Review;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/amazon/ea/reviews/data/Review;
    .locals 11

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long p1, v7, v9

    if-lez p1, :cond_0

    .line 73
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1, v7, v8}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move-object v7, p1

    .line 76
    new-instance p1, Lcom/amazon/ea/reviews/data/Review;

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/amazon/ea/reviews/data/Review;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lcom/amazon/ea/reviews/data/Review$1;->createFromParcel(Landroid/os/Parcel;)Lcom/amazon/ea/reviews/data/Review;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/amazon/ea/reviews/data/Review;
    .locals 0

    .line 81
    new-array p1, p1, [Lcom/amazon/ea/reviews/data/Review;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lcom/amazon/ea/reviews/data/Review$1;->newArray(I)[Lcom/amazon/ea/reviews/data/Review;

    move-result-object p1

    return-object p1
.end method
