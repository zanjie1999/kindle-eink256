.class final Lcom/amazon/identity/auth/device/api/FederatedAuthConfig$1;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/api/FederatedAuthConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/amazon/identity/auth/device/api/FederatedAuthConfig;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/amazon/identity/auth/device/api/FederatedAuthConfig;
    .locals 4

    .line 27
    new-instance v0, Lcom/amazon/identity/auth/device/api/FederatedAuthConfig;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 30
    invoke-static {}, Lcom/amazon/identity/auth/device/api/FederatedAuthConfig$IdentityProvider;->values()[Lcom/amazon/identity/auth/device/api/FederatedAuthConfig$IdentityProvider;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    aget-object p1, v3, p1

    invoke-direct {v0, v1, v2, p1}, Lcom/amazon/identity/auth/device/api/FederatedAuthConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/FederatedAuthConfig$IdentityProvider;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/api/FederatedAuthConfig$1;->createFromParcel(Landroid/os/Parcel;)Lcom/amazon/identity/auth/device/api/FederatedAuthConfig;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/amazon/identity/auth/device/api/FederatedAuthConfig;
    .locals 0

    .line 37
    new-array p1, p1, [Lcom/amazon/identity/auth/device/api/FederatedAuthConfig;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/api/FederatedAuthConfig$1;->newArray(I)[Lcom/amazon/identity/auth/device/api/FederatedAuthConfig;

    move-result-object p1

    return-object p1
.end method
