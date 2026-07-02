.class public abstract Lcom/google/android/gms/internal/ads/zzbzp;
.super Lcom/google/android/gms/internal/ads/zzadk;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbzq;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.overlay.client.IAdOverlay"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzadk;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static zzF(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzbzq;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.overlay.client.IAdOverlay"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzbzq;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbzq;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbzo;

    .line 4
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbzo;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected final zzbz(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 1
    :pswitch_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbzq;->zzf()V

    .line 2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 3
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 4
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzbzq;->zzn(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 6
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzadl;->zzc(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 9
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 10
    :pswitch_3
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbzq;->zzg()Z

    move-result p1

    .line 11
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 12
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzadl;->zzb(Landroid/os/Parcel;Z)V

    goto :goto_0

    .line 13
    :pswitch_4
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbzq;->zze()V

    .line 14
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 15
    :pswitch_5
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbzq;->zzs()V

    .line 16
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 17
    :pswitch_6
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbzq;->zzq()V

    .line 18
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 19
    :pswitch_7
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbzq;->zzp()V

    .line 20
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 5
    :pswitch_8
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 21
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzadl;->zzc(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 22
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzbzq;->zzo(Landroid/os/Bundle;)V

    .line 23
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 24
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzadl;->zze(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 25
    :pswitch_9
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbzq;->zzl()V

    .line 26
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 27
    :pswitch_a
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbzq;->zzk()V

    .line 28
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 29
    :pswitch_b
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbzq;->zzj()V

    .line 30
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 31
    :pswitch_c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 20
    :pswitch_d
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 32
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzadl;->zzc(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 33
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzbzq;->zzh(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_0
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
