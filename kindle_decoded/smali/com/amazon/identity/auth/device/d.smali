.class public final Lcom/amazon/identity/auth/device/d;
.super Ljava/lang/Object;
.source "DCP"


# direct methods
.method public static b(Lcom/amazon/identity/auth/device/api/Callback;)Landroid/accounts/AccountAuthenticatorResponse;
    .locals 2

    .line 21
    new-instance v0, Landroid/accounts/AccountAuthenticatorResponse;

    .line 1036
    new-instance v1, Lcom/amazon/identity/auth/device/d$1;

    invoke-direct {v1, p0}, Lcom/amazon/identity/auth/device/d$1;-><init>(Lcom/amazon/identity/auth/device/api/Callback;)V

    .line 1028
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p0

    .line 1029
    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v1, 0x0

    .line 1030
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 21
    invoke-direct {v0, p0}, Landroid/accounts/AccountAuthenticatorResponse;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method
