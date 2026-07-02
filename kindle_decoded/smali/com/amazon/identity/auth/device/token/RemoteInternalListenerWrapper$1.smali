.class final Lcom/amazon/identity/auth/device/token/RemoteInternalListenerWrapper$1;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/token/RemoteInternalListenerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/amazon/identity/auth/device/token/RemoteInternalListenerWrapper;",
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
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/token/RemoteInternalListenerWrapper$1;->d(Landroid/os/Parcel;)Lcom/amazon/identity/auth/device/token/RemoteInternalListenerWrapper;

    move-result-object p1

    return-object p1
.end method

.method public d(Landroid/os/Parcel;)Lcom/amazon/identity/auth/device/token/RemoteInternalListenerWrapper;
    .locals 1

    .line 37
    new-instance v0, Lcom/amazon/identity/auth/device/token/RemoteInternalListenerWrapper;

    invoke-direct {v0, p1}, Lcom/amazon/identity/auth/device/token/RemoteInternalListenerWrapper;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public n(I)[Lcom/amazon/identity/auth/device/token/RemoteInternalListenerWrapper;
    .locals 0

    .line 43
    new-array p1, p1, [Lcom/amazon/identity/auth/device/token/RemoteInternalListenerWrapper;

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/token/RemoteInternalListenerWrapper$1;->n(I)[Lcom/amazon/identity/auth/device/token/RemoteInternalListenerWrapper;

    move-result-object p1

    return-object p1
.end method
