.class final Lcom/google/android/gms/internal/ads/zzbok;
.super Lcom/google/android/gms/internal/ads/zzbnn;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbol;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbol;Lcom/google/android/gms/internal/ads/zzboi;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbok;->zza:Lcom/google/android/gms/internal/ads/zzbol;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbnn;-><init>()V

    return-void
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/internal/ads/zzbnb;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbok;->zza:Lcom/google/android/gms/internal/ads/zzbol;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbol;->zza(Lcom/google/android/gms/internal/ads/zzbol;)Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomTemplateAdLoadedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbok;->zza:Lcom/google/android/gms/internal/ads/zzbol;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzbol;->zze(Lcom/google/android/gms/internal/ads/zzbol;Lcom/google/android/gms/internal/ads/zzbnb;)Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomTemplateAdLoadedListener;->onCustomTemplateAdLoaded(Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;)V

    return-void
.end method
