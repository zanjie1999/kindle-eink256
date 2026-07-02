.class final Lcom/amazon/identity/auth/device/api/AccountStatusPolicy$1;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/api/AccountStatusPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/amazon/identity/auth/device/api/AccountStatusPolicy;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/amazon/identity/auth/device/api/AccountStatusPolicy;
    .locals 2

    .line 44
    new-instance v0, Lcom/amazon/identity/auth/device/api/AccountStatusPolicy;

    invoke-static {}, Lcom/amazon/identity/auth/device/api/AccountStatusPolicy$Policy;->values()[Lcom/amazon/identity/auth/device/api/AccountStatusPolicy$Policy;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    aget-object p1, v1, p1

    invoke-direct {v0, p1}, Lcom/amazon/identity/auth/device/api/AccountStatusPolicy;-><init>(Lcom/amazon/identity/auth/device/api/AccountStatusPolicy$Policy;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/api/AccountStatusPolicy$1;->createFromParcel(Landroid/os/Parcel;)Lcom/amazon/identity/auth/device/api/AccountStatusPolicy;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/amazon/identity/auth/device/api/AccountStatusPolicy;
    .locals 0

    .line 50
    new-array p1, p1, [Lcom/amazon/identity/auth/device/api/AccountStatusPolicy;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/api/AccountStatusPolicy$1;->newArray(I)[Lcom/amazon/identity/auth/device/api/AccountStatusPolicy;

    move-result-object p1

    return-object p1
.end method
