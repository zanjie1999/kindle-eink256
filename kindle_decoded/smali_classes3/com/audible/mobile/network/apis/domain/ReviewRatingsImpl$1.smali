.class Lcom/audible/mobile/network/apis/domain/ReviewRatingsImpl$1;
.super Ljava/lang/Object;
.source "ReviewRatingsImpl.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/network/apis/domain/ReviewRatingsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/audible/mobile/network/apis/domain/ReviewRatingsImpl;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/audible/mobile/network/apis/domain/ReviewRatingsImpl;
    .locals 1

    .line 22
    new-instance v0, Lcom/audible/mobile/network/apis/domain/ReviewRatingsImpl;

    invoke-direct {v0, p1}, Lcom/audible/mobile/network/apis/domain/ReviewRatingsImpl;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lcom/audible/mobile/network/apis/domain/ReviewRatingsImpl$1;->createFromParcel(Landroid/os/Parcel;)Lcom/audible/mobile/network/apis/domain/ReviewRatingsImpl;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/audible/mobile/network/apis/domain/ReviewRatingsImpl;
    .locals 0

    .line 26
    new-array p1, p1, [Lcom/audible/mobile/network/apis/domain/ReviewRatingsImpl;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lcom/audible/mobile/network/apis/domain/ReviewRatingsImpl$1;->newArray(I)[Lcom/audible/mobile/network/apis/domain/ReviewRatingsImpl;

    move-result-object p1

    return-object p1
.end method
