.class final Lcom/amazon/ea/reviews/data/BookInfo$1;
.super Ljava/lang/Object;
.source "BookInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ea/reviews/data/BookInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/amazon/ea/reviews/data/BookInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/amazon/ea/reviews/data/BookInfo;
    .locals 4

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 30
    new-instance v3, Lcom/amazon/ea/reviews/data/BookInfo;

    invoke-direct {v3, v0, v1, v2, p1}, Lcom/amazon/ea/reviews/data/BookInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/amazon/ea/reviews/data/BookInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/amazon/ea/reviews/data/BookInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/amazon/ea/reviews/data/BookInfo;
    .locals 0

    .line 35
    new-array p1, p1, [Lcom/amazon/ea/reviews/data/BookInfo;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/amazon/ea/reviews/data/BookInfo$1;->newArray(I)[Lcom/amazon/ea/reviews/data/BookInfo;

    move-result-object p1

    return-object p1
.end method
