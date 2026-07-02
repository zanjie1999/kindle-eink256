.class Lcom/amazon/dcp/sso/ISubAuthenticator$Stub$Proxy;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/dcp/sso/ISubAuthenticator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/dcp/sso/ISubAuthenticator$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/amazon/dcp/sso/ISubAuthenticator;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p1, p0, Lcom/amazon/dcp/sso/ISubAuthenticator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/amazon/dcp/sso/ISubAuthenticator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getAccountRemovalAllowed(Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 190
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 191
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.amazon.dcp.sso.ISubAuthenticator"

    .line 193
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 194
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 195
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 197
    iget-object v2, p0, Lcom/amazon/dcp/sso/ISubAuthenticator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 198
    invoke-static {}, Lcom/amazon/dcp/sso/ISubAuthenticator$Stub;->getDefaultImpl()Lcom/amazon/dcp/sso/ISubAuthenticator;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 199
    invoke-static {}, Lcom/amazon/dcp/sso/ISubAuthenticator$Stub;->getDefaultImpl()Lcom/amazon/dcp/sso/ISubAuthenticator;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/amazon/dcp/sso/ISubAuthenticator;->getAccountRemovalAllowed(Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 206
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 202
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 205
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 206
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 207
    throw p1
.end method

.method public getAuthToken(Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/dcp/sso/IAmazonAccountAuthenticator;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p5

    .line 160
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v8

    .line 161
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    :try_start_0
    const-string v1, "com.amazon.dcp.sso.ISubAuthenticator"

    .line 163
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 164
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move-object v3, p2

    .line 165
    invoke-virtual {v8, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v4, p3

    .line 166
    invoke-virtual {v8, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v5, p4

    .line 167
    invoke-virtual {v8, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_1

    .line 169
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    invoke-virtual {v0, v8, v6}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 173
    :cond_1
    invoke-virtual {v8, v6}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    if-eqz p6, :cond_2

    .line 175
    invoke-interface/range {p6 .. p6}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_2
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v10, p0

    .line 176
    :try_start_1
    iget-object v1, v10, Lcom/amazon/dcp/sso/ISubAuthenticator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v1, v2, v8, v9, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 177
    invoke-static {}, Lcom/amazon/dcp/sso/ISubAuthenticator$Stub;->getDefaultImpl()Lcom/amazon/dcp/sso/ISubAuthenticator;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 178
    invoke-static {}, Lcom/amazon/dcp/sso/ISubAuthenticator$Stub;->getDefaultImpl()Lcom/amazon/dcp/sso/ISubAuthenticator;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/amazon/dcp/sso/ISubAuthenticator;->getAuthToken(Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/dcp/sso/IAmazonAccountAuthenticator;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    :goto_2
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 185
    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 181
    :cond_3
    :try_start_2
    invoke-virtual {v9}, Landroid/os/Parcel;->readException()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v10, p0

    .line 184
    :goto_3
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 185
    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    .line 186
    throw v0
.end method

.method public updateAuthToken(Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/dcp/sso/IAmazonAccountAuthenticator;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p5

    .line 211
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v8

    .line 212
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    :try_start_0
    const-string v1, "com.amazon.dcp.sso.ISubAuthenticator"

    .line 214
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 215
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move-object v3, p2

    .line 216
    invoke-virtual {v8, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v4, p3

    .line 217
    invoke-virtual {v8, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v5, p4

    .line 218
    invoke-virtual {v8, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v6, 0x1

    .line 220
    invoke-virtual {v8, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    invoke-virtual {v0, v8, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 224
    :cond_1
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    if-eqz p6, :cond_2

    .line 226
    invoke-interface/range {p6 .. p6}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_2
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v10, p0

    .line 227
    :try_start_1
    iget-object v1, v10, Lcom/amazon/dcp/sso/ISubAuthenticator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v6, 0x3

    invoke-interface {v1, v6, v8, v9, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 228
    invoke-static {}, Lcom/amazon/dcp/sso/ISubAuthenticator$Stub;->getDefaultImpl()Lcom/amazon/dcp/sso/ISubAuthenticator;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 229
    invoke-static {}, Lcom/amazon/dcp/sso/ISubAuthenticator$Stub;->getDefaultImpl()Lcom/amazon/dcp/sso/ISubAuthenticator;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/amazon/dcp/sso/ISubAuthenticator;->updateAuthToken(Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/dcp/sso/IAmazonAccountAuthenticator;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
    :goto_2
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 236
    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 232
    :cond_3
    :try_start_2
    invoke-virtual {v9}, Landroid/os/Parcel;->readException()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v10, p0

    .line 235
    :goto_3
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 236
    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    .line 237
    throw v0
.end method
