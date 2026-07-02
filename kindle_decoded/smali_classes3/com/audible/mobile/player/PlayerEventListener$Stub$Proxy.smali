.class Lcom/audible/mobile/player/PlayerEventListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "PlayerEventListener.java"

# interfaces
.implements Lcom/audible/mobile/player/PlayerEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/player/PlayerEventListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    iput-object p1, p0, Lcom/audible/mobile/player/PlayerEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/audible/mobile/player/PlayerEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public onBuffering()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 659
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 660
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.audible.mobile.player.PlayerEventListener"

    .line 662
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 663
    iget-object v2, p0, Lcom/audible/mobile/player/PlayerEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 664
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 667
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 668
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 667
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 668
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 669
    throw v2
.end method

.method public onBufferingUpdate(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 620
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 621
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.audible.mobile.player.PlayerEventListener"

    .line 623
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 624
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 625
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 626
    iget-object p1, p0, Lcom/audible/mobile/player/PlayerEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xf

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 627
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 630
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 631
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 630
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 631
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 632
    throw p1
.end method

.method public onCompletion(Lcom/audible/mobile/player/AudioDataSource;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 488
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 489
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.audible.mobile.player.PlayerEventListener"

    .line 491
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 493
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 494
    invoke-virtual {p1, v0, v2}, Lcom/audible/mobile/player/AudioDataSource;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 497
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 499
    :goto_0
    iget-object p1, p0, Lcom/audible/mobile/player/PlayerEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 500
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 503
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 504
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 503
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 504
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 505
    throw p1
.end method

.method public onContentUpdated(Lcom/audible/mobile/player/PlayerStatusSnapshot;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 357
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 358
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.audible.mobile.player.PlayerEventListener"

    .line 360
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 362
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 363
    invoke-virtual {p1, v0, v2}, Lcom/audible/mobile/player/PlayerStatusSnapshot;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 366
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 368
    :goto_0
    iget-object p1, p0, Lcom/audible/mobile/player/PlayerEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 369
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 373
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 372
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 373
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 374
    throw p1
.end method

.method public onDestroy()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 452
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 453
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.audible.mobile.player.PlayerEventListener"

    .line 455
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 456
    iget-object v2, p0, Lcom/audible/mobile/player/PlayerEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 457
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 461
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 460
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 461
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 462
    throw v2
.end method

.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 541
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 542
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.audible.mobile.player.PlayerEventListener"

    .line 544
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 545
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 546
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 547
    iget-object p1, p0, Lcom/audible/mobile/player/PlayerEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xc

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 548
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 551
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 552
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 551
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 552
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 553
    throw p1
.end method

.method public onLicenseAcquired()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 676
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 677
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.audible.mobile.player.PlayerEventListener"

    .line 679
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 680
    iget-object v2, p0, Lcom/audible/mobile/player/PlayerEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 681
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 684
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 685
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 684
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 685
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 686
    throw v2
.end method

.method public onLicenseFailure(Lcom/audible/mobile/player/AudioDataSource;Lcom/audible/mobile/player/AuthorizationErrorSource;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 696
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 697
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.audible.mobile.player.PlayerEventListener"

    .line 699
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 701
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 702
    invoke-virtual {p1, v0, v3}, Lcom/audible/mobile/player/AudioDataSource;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 705
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-eqz p2, :cond_1

    .line 708
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 709
    invoke-virtual {p2, v0, v3}, Lcom/audible/mobile/player/AuthorizationErrorSource;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 712
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 714
    :goto_1
    iget-object p1, p0, Lcom/audible/mobile/player/PlayerEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x13

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 715
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 718
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 719
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 718
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 719
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 720
    throw p1
.end method

.method public onListenerRegistered(Lcom/audible/mobile/player/PlayerStatusSnapshot;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 305
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 306
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.audible.mobile.player.PlayerEventListener"

    .line 308
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 310
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 311
    invoke-virtual {p1, v0, v3}, Lcom/audible/mobile/player/PlayerStatusSnapshot;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 314
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 316
    :goto_0
    iget-object p1, p0, Lcom/audible/mobile/player/PlayerEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 317
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 321
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 320
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 321
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 322
    throw p1
.end method

.method public onMaxAvailableTimeUpdate(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 641
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 642
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.audible.mobile.player.PlayerEventListener"

    .line 644
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 645
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 646
    iget-object p1, p0, Lcom/audible/mobile/player/PlayerEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 647
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 650
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 651
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 650
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 651
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 652
    throw p1
.end method

.method public onNewContent(Lcom/audible/mobile/player/PlayerStatusSnapshot;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 331
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 332
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.audible.mobile.player.PlayerEventListener"

    .line 334
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 336
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 337
    invoke-virtual {p1, v0, v2}, Lcom/audible/mobile/player/PlayerStatusSnapshot;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 340
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 342
    :goto_0
    iget-object p1, p0, Lcom/audible/mobile/player/PlayerEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 343
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 347
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 346
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 347
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 348
    throw p1
.end method

.method public onPause()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 418
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 419
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.audible.mobile.player.PlayerEventListener"

    .line 421
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 422
    iget-object v2, p0, Lcom/audible/mobile/player/PlayerEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 423
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 426
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 427
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 426
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 427
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 428
    throw v2
.end method

.method public onPlay()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 401
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 402
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.audible.mobile.player.PlayerEventListener"

    .line 404
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 405
    iget-object v2, p0, Lcom/audible/mobile/player/PlayerEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 406
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 410
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 409
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 410
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 411
    throw v2
.end method

.method public onPlaybackPositionChange(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 383
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 384
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.audible.mobile.player.PlayerEventListener"

    .line 386
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 387
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 388
    iget-object p1, p0, Lcom/audible/mobile/player/PlayerEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 389
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 393
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 392
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 393
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 394
    throw p1
.end method

.method public onReady(Lcom/audible/mobile/player/PlayerStatusSnapshot;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 729
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 730
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.audible.mobile.player.PlayerEventListener"

    .line 732
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 734
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 735
    invoke-virtual {p1, v0, v2}, Lcom/audible/mobile/player/PlayerStatusSnapshot;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 738
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 740
    :goto_0
    iget-object p1, p0, Lcom/audible/mobile/player/PlayerEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 741
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 744
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 745
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 744
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 745
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 746
    throw p1
.end method

.method public onReset(Lcom/audible/mobile/player/AudioDataSource;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 514
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 515
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.audible.mobile.player.PlayerEventListener"

    .line 517
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 519
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 520
    invoke-virtual {p1, v0, v2}, Lcom/audible/mobile/player/AudioDataSource;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 523
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 525
    :goto_0
    iget-object p1, p0, Lcom/audible/mobile/player/PlayerEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 526
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 529
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 530
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 529
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 530
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 531
    throw p1
.end method

.method public onSeekComplete()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 469
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 470
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.audible.mobile.player.PlayerEventListener"

    .line 472
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 473
    iget-object v2, p0, Lcom/audible/mobile/player/PlayerEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 474
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 477
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 478
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 477
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 478
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 479
    throw v2
.end method

.method public onStop()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 435
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 436
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.audible.mobile.player.PlayerEventListener"

    .line 438
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 439
    iget-object v2, p0, Lcom/audible/mobile/player/PlayerEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 440
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 444
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 443
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 444
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 445
    throw v2
.end method

.method public onTempoChanged(Lcom/audible/mobile/player/NarrationSpeed;Lcom/audible/mobile/player/NarrationSpeed;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 563
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 564
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.audible.mobile.player.PlayerEventListener"

    .line 566
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 568
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 569
    invoke-virtual {p1, v0, v3}, Lcom/audible/mobile/player/NarrationSpeed;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 572
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-eqz p2, :cond_1

    .line 575
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 576
    invoke-virtual {p2, v0, v3}, Lcom/audible/mobile/player/NarrationSpeed;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 579
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 581
    :goto_1
    iget-object p1, p0, Lcom/audible/mobile/player/PlayerEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xd

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 582
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 585
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 586
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 585
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 586
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 587
    throw p1
.end method

.method public onVolumeChanged(FF)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 597
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 598
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.audible.mobile.player.PlayerEventListener"

    .line 600
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 601
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 602
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 603
    iget-object p1, p0, Lcom/audible/mobile/player/PlayerEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xe

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 604
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 607
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 608
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 607
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 608
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 609
    throw p1
.end method
