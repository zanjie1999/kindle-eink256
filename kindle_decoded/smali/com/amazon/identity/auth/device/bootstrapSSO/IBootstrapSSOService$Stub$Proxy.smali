.class Lcom/amazon/identity/auth/device/bootstrapSSO/IBootstrapSSOService$Stub$Proxy;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/bootstrapSSO/IBootstrapSSOService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/bootstrapSSO/IBootstrapSSOService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/amazon/identity/auth/device/bootstrapSSO/IBootstrapSSOService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/amazon/identity/auth/device/bootstrapSSO/IBootstrapSSOService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/amazon/identity/auth/device/bootstrapSSO/IBootstrapSSOService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public bootstrapForPackage(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 123
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 124
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.amazon.identity.auth.device.bootstrapSSO.IBootstrapSSOService"

    .line 127
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 129
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 133
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    :goto_0
    iget-object v4, p0, Lcom/amazon/identity/auth/device/bootstrapSSO/IBootstrapSSOService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v4, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 136
    invoke-static {}, Lcom/amazon/identity/auth/device/bootstrapSSO/IBootstrapSSOService$Stub;->getDefaultImpl()Lcom/amazon/identity/auth/device/bootstrapSSO/IBootstrapSSOService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 137
    invoke-static {}, Lcom/amazon/identity/auth/device/bootstrapSSO/IBootstrapSSOService$Stub;->getDefaultImpl()Lcom/amazon/identity/auth/device/bootstrapSSO/IBootstrapSSOService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/amazon/identity/auth/device/bootstrapSSO/IBootstrapSSOService;->bootstrapForPackage(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 149
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 139
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 140
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 141
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 148
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 149
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 148
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 149
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 150
    throw p1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.amazon.identity.auth.device.bootstrapSSO.IBootstrapSSOService"

    return-object v0
.end method
