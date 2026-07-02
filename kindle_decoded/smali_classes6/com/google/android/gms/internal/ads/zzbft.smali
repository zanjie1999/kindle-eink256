.class public abstract Lcom/google/android/gms/internal/ads/zzbft;
.super Lcom/google/android/gms/internal/ads/zzadk;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbfu;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.client.IAppEventListener"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzadk;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static zzd(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzbfu;
    .locals 2

    const-string v0, "com.google.android.gms.ads.internal.client.IAppEventListener"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzbfu;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbfu;

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbfs;

    .line 4
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbfs;-><init>(Landroid/os/IBinder;)V

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

    const/4 p4, 0x1

    if-ne p1, p4, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbfu;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return p4

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
