.class final Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper$1;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Landroid/os/Parcel;)Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;
    .locals 1

    .line 68
    new-instance v0, Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;

    invoke-direct {v0, p1}, Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper$1;->c(Landroid/os/Parcel;)Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;

    move-result-object p1

    return-object p1
.end method

.method public h(I)[Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;
    .locals 0

    .line 74
    new-array p1, p1, [Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper$1;->h(I)[Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;

    move-result-object p1

    return-object p1
.end method
