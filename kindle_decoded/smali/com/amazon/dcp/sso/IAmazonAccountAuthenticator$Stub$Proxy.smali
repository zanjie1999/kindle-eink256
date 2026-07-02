.class Lcom/amazon/dcp/sso/IAmazonAccountAuthenticator$Stub$Proxy;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/dcp/sso/IAmazonAccountAuthenticator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/dcp/sso/IAmazonAccountAuthenticator$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/amazon/dcp/sso/IAmazonAccountAuthenticator;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object p1, p0, Lcom/amazon/dcp/sso/IAmazonAccountAuthenticator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/amazon/dcp/sso/IAmazonAccountAuthenticator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public callGetCredentialsWebservice(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;[BLcom/amazon/dcp/sso/IWebserviceCallback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 205
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 206
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.amazon.dcp.sso.IAmazonAccountAuthenticator"

    .line 208
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 210
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    invoke-virtual {p1, v0, v3}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 214
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 218
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    if-eqz p5, :cond_1

    .line 219
    invoke-interface {p5}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 220
    iget-object v4, p0, Lcom/amazon/dcp/sso/IAmazonAccountAuthenticator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v4, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 221
    invoke-static {}, Lcom/amazon/dcp/sso/IAmazonAccountAuthenticator$Stub;->getDefaultImpl()Lcom/amazon/dcp/sso/IAmazonAccountAuthenticator;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 222
    invoke-static {}, Lcom/amazon/dcp/sso/IAmazonAccountAuthenticator$Stub;->getDefaultImpl()Lcom/amazon/dcp/sso/IAmazonAccountAuthenticator;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-interface/range {v3 .. v8}, Lcom/amazon/dcp/sso/IAmazonAccountAuthenticator;->callGetCredentialsWebservice(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;[BLcom/amazon/dcp/sso/IWebserviceCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 229
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 225
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 228
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 229
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 230
    throw p1
.end method
