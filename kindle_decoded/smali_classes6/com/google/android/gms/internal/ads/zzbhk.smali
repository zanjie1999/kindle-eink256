.class final Lcom/google/android/gms/internal/ads/zzbhk;
.super Lcom/google/android/gms/internal/ads/zzbes;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbhl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbhl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhk;->zza:Lcom/google/android/gms/internal/ads/zzbhl;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbes;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhk;->zza:Lcom/google/android/gms/internal/ads/zzbhl;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbhl;->zza(Lcom/google/android/gms/internal/ads/zzbhl;)Lcom/google/android/gms/ads/VideoController;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhk;->zza:Lcom/google/android/gms/internal/ads/zzbhl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbhl;->zzx()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/VideoController;->zza(Lcom/google/android/gms/internal/ads/zzbhc;)V

    .line 2
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzbes;->onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V

    return-void
.end method

.method public final onAdLoaded()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhk;->zza:Lcom/google/android/gms/internal/ads/zzbhl;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbhl;->zza(Lcom/google/android/gms/internal/ads/zzbhl;)Lcom/google/android/gms/ads/VideoController;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhk;->zza:Lcom/google/android/gms/internal/ads/zzbhl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbhl;->zzx()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/VideoController;->zza(Lcom/google/android/gms/internal/ads/zzbhc;)V

    .line 2
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzbes;->onAdLoaded()V

    return-void
.end method
