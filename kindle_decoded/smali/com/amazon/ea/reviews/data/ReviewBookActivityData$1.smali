.class final Lcom/amazon/ea/reviews/data/ReviewBookActivityData$1;
.super Ljava/lang/Object;
.source "ReviewBookActivityData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ea/reviews/data/ReviewBookActivityData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/amazon/ea/reviews/data/ReviewBookActivityData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/amazon/ea/reviews/data/ReviewBookActivityData;
    .locals 12

    .line 62
    const-class v0, Lcom/amazon/ea/reviews/data/BookInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/amazon/ea/reviews/data/BookInfo;

    .line 63
    const-class v0, Lcom/amazon/ea/reviews/data/Review;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/amazon/ea/reviews/data/Review;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 66
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-ne v10, v5, :cond_1

    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    .line 71
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-ne p1, v5, :cond_2

    const/4 v11, 0x1

    goto :goto_2

    :cond_2
    const/4 v11, 0x0

    .line 72
    :goto_2
    new-instance p1, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;

    move-object v1, p1

    move v5, v0

    invoke-direct/range {v1 .. v11}, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;-><init>(Lcom/amazon/ea/reviews/data/BookInfo;Lcom/amazon/ea/reviews/data/Review;Ljava/lang/String;ZIILjava/lang/String;Ljava/lang/String;ZZ)V

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Lcom/amazon/ea/reviews/data/ReviewBookActivityData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/amazon/ea/reviews/data/ReviewBookActivityData;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/amazon/ea/reviews/data/ReviewBookActivityData;
    .locals 0

    .line 78
    new-array p1, p1, [Lcom/amazon/ea/reviews/data/ReviewBookActivityData;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Lcom/amazon/ea/reviews/data/ReviewBookActivityData$1;->newArray(I)[Lcom/amazon/ea/reviews/data/ReviewBookActivityData;

    move-result-object p1

    return-object p1
.end method
