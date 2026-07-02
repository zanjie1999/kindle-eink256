.class Lcom/amazon/dcp/sso/IRequestAuthenticationMethod$Stub$Proxy;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/dcp/sso/IRequestAuthenticationMethod;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/dcp/sso/IRequestAuthenticationMethod$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/amazon/dcp/sso/IRequestAuthenticationMethod;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iput-object p1, p0, Lcom/amazon/dcp/sso/IRequestAuthenticationMethod$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/amazon/dcp/sso/IRequestAuthenticationMethod$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getAuthenticationParametersForRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;[B)Lcom/amazon/dcp/sso/ReturnValueOrError;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p4

    .line 248
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    .line 249
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v10

    :try_start_0
    const-string v1, "com.amazon.dcp.sso.IRequestAuthenticationMethod"

    .line 252
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move-object v2, p1

    .line 253
    invoke-virtual {v9, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v3, p2

    .line 254
    invoke-virtual {v9, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v4, p3

    .line 255
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    invoke-virtual {v0, v9, v5}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 261
    :cond_0
    invoke-virtual {v9, v5}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    move-object/from16 v6, p5

    .line 263
    invoke-virtual {v9, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v7, p6

    .line 264
    invoke-virtual {v9, v7}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    move-object/from16 v8, p7

    .line 265
    invoke-virtual {v9, v8}, Landroid/os/Parcel;->writeByteArray([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v11, p0

    .line 266
    :try_start_1
    iget-object v12, v11, Lcom/amazon/dcp/sso/IRequestAuthenticationMethod$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v12, v1, v9, v10, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 267
    invoke-static {}, Lcom/amazon/dcp/sso/IRequestAuthenticationMethod$Stub;->getDefaultImpl()Lcom/amazon/dcp/sso/IRequestAuthenticationMethod;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 268
    invoke-static {}, Lcom/amazon/dcp/sso/IRequestAuthenticationMethod$Stub;->getDefaultImpl()Lcom/amazon/dcp/sso/IRequestAuthenticationMethod;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Lcom/amazon/dcp/sso/IRequestAuthenticationMethod;->getAuthenticationParametersForRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;[B)Lcom/amazon/dcp/sso/ReturnValueOrError;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 279
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    .line 280
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    return-object v0

    .line 270
    :cond_1
    :try_start_2
    invoke-virtual {v10}, Landroid/os/Parcel;->readException()V

    .line 271
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 272
    sget-object v0, Lcom/amazon/dcp/sso/ReturnValueOrError;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/dcp/sso/ReturnValueOrError;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 279
    :goto_1
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    .line 280
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v11, p0

    .line 279
    :goto_2
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    .line 280
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 281
    throw v0
.end method

.method public getAuthenticationParametersForRequestByDirectedId(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;[B)Lcom/amazon/dcp/sso/ReturnValueOrError;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p3

    .line 339
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v8

    .line 340
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    :try_start_0
    const-string v1, "com.amazon.dcp.sso.IRequestAuthenticationMethod"

    .line 343
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move-object v2, p1

    .line 344
    invoke-virtual {v8, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v3, p2

    .line 345
    invoke-virtual {v8, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    .line 347
    invoke-virtual {v8, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 348
    invoke-virtual {p3, v8, v1}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 351
    :cond_0
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    move-object/from16 v5, p4

    .line 353
    invoke-virtual {v8, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v6, p5

    .line 354
    invoke-virtual {v8, v6}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    move-object/from16 v7, p6

    .line 355
    invoke-virtual {v8, v7}, Landroid/os/Parcel;->writeByteArray([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v10, p0

    .line 356
    :try_start_1
    iget-object v4, v10, Lcom/amazon/dcp/sso/IRequestAuthenticationMethod$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v11, 0x4

    invoke-interface {v4, v11, v8, v9, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 357
    invoke-static {}, Lcom/amazon/dcp/sso/IRequestAuthenticationMethod$Stub;->getDefaultImpl()Lcom/amazon/dcp/sso/IRequestAuthenticationMethod;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 358
    invoke-static {}, Lcom/amazon/dcp/sso/IRequestAuthenticationMethod$Stub;->getDefaultImpl()Lcom/amazon/dcp/sso/IRequestAuthenticationMethod;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/amazon/dcp/sso/IRequestAuthenticationMethod;->getAuthenticationParametersForRequestByDirectedId(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;[B)Lcom/amazon/dcp/sso/ReturnValueOrError;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 369
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 370
    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    return-object v0

    .line 360
    :cond_1
    :try_start_2
    invoke-virtual {v9}, Landroid/os/Parcel;->readException()V

    .line 361
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 362
    sget-object v0, Lcom/amazon/dcp/sso/ReturnValueOrError;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/dcp/sso/ReturnValueOrError;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 369
    :goto_1
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 370
    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v10, p0

    .line 369
    :goto_2
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 370
    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    .line 371
    throw v0
.end method

.method public signCorpus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Lcom/amazon/dcp/sso/ReturnValueOrError;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 286
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 287
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.amazon.dcp.sso.IRequestAuthenticationMethod"

    .line 290
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 291
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 292
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 293
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 294
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 295
    iget-object v2, p0, Lcom/amazon/dcp/sso/IRequestAuthenticationMethod$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 296
    invoke-static {}, Lcom/amazon/dcp/sso/IRequestAuthenticationMethod$Stub;->getDefaultImpl()Lcom/amazon/dcp/sso/IRequestAuthenticationMethod;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 297
    invoke-static {}, Lcom/amazon/dcp/sso/IRequestAuthenticationMethod$Stub;->getDefaultImpl()Lcom/amazon/dcp/sso/IRequestAuthenticationMethod;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/amazon/dcp/sso/IRequestAuthenticationMethod;->signCorpus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Lcom/amazon/dcp/sso/ReturnValueOrError;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 309
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 299
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 300
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 301
    sget-object p1, Lcom/amazon/dcp/sso/ReturnValueOrError;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/dcp/sso/ReturnValueOrError;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 308
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 309
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 308
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 309
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 310
    throw p1
.end method

.method public signCorpusByDirectedId(Ljava/lang/String;Ljava/lang/String;[B)Lcom/amazon/dcp/sso/ReturnValueOrError;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 376
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 377
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.amazon.dcp.sso.IRequestAuthenticationMethod"

    .line 380
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 381
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 382
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 383
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 384
    iget-object v2, p0, Lcom/amazon/dcp/sso/IRequestAuthenticationMethod$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 385
    invoke-static {}, Lcom/amazon/dcp/sso/IRequestAuthenticationMethod$Stub;->getDefaultImpl()Lcom/amazon/dcp/sso/IRequestAuthenticationMethod;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 386
    invoke-static {}, Lcom/amazon/dcp/sso/IRequestAuthenticationMethod$Stub;->getDefaultImpl()Lcom/amazon/dcp/sso/IRequestAuthenticationMethod;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/amazon/dcp/sso/IRequestAuthenticationMethod;->signCorpusByDirectedId(Ljava/lang/String;Ljava/lang/String;[B)Lcom/amazon/dcp/sso/ReturnValueOrError;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 398
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 388
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 389
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 390
    sget-object p1, Lcom/amazon/dcp/sso/ReturnValueOrError;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/dcp/sso/ReturnValueOrError;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 397
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 398
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 397
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 398
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 399
    throw p1
.end method
