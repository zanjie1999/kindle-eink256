.class public abstract Lcom/google/android/gms/internal/ads/zzbql;
.super Lcom/google/android/gms/internal/ads/zzadk;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbqm;


# direct methods
.method public static zzc(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzbqm;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.h5.client.IH5AdsEventListener"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzbqm;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbqm;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbqk;

    .line 4
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbqk;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
