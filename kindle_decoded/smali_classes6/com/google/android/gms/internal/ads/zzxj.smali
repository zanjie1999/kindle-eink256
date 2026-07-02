.class public final Lcom/google/android/gms/internal/ads/zzxj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# direct methods
.method public static zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzwq;)Lcom/google/android/gms/internal/ads/zzwf;
    .locals 3

    .line 1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzwr;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzxd;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzxd;-><init>(Lcom/google/android/gms/internal/ads/zzxc;Ljavax/net/ssl/SSLSocketFactory;)V

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzwr;-><init>(Lcom/google/android/gms/internal/ads/zzwq;)V

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzxi;

    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzxi;-><init>(Landroid/content/Context;)V

    new-instance p0, Lcom/google/android/gms/internal/ads/zzwf;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzwy;

    const/high16 v2, 0x500000

    .line 4
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzwy;-><init>(Lcom/google/android/gms/internal/ads/zzwx;I)V

    const/4 v0, 0x4

    .line 5
    invoke-direct {p0, v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzwf;-><init>(Lcom/google/android/gms/internal/ads/zzvm;Lcom/google/android/gms/internal/ads/zzvv;I)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzwf;->zza()V

    return-object p0
.end method
