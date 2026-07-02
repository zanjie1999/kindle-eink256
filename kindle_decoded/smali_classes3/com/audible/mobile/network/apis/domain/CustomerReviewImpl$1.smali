.class Lcom/audible/mobile/network/apis/domain/CustomerReviewImpl$1;
.super Ljava/lang/Object;
.source "CustomerReviewImpl.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/network/apis/domain/CustomerReviewImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/audible/mobile/network/apis/domain/CustomerReviewImpl;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/audible/mobile/network/apis/domain/CustomerReviewImpl;
    .locals 1

    .line 35
    new-instance v0, Lcom/audible/mobile/network/apis/domain/CustomerReviewImpl;

    invoke-direct {v0, p1}, Lcom/audible/mobile/network/apis/domain/CustomerReviewImpl;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lcom/audible/mobile/network/apis/domain/CustomerReviewImpl$1;->createFromParcel(Landroid/os/Parcel;)Lcom/audible/mobile/network/apis/domain/CustomerReviewImpl;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/audible/mobile/network/apis/domain/CustomerReviewImpl;
    .locals 0

    .line 39
    new-array p1, p1, [Lcom/audible/mobile/network/apis/domain/CustomerReviewImpl;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lcom/audible/mobile/network/apis/domain/CustomerReviewImpl$1;->newArray(I)[Lcom/audible/mobile/network/apis/domain/CustomerReviewImpl;

    move-result-object p1

    return-object p1
.end method
