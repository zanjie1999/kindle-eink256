.class final Lcom/google/android/gms/internal/ads/zzboj;
.super Lcom/google/android/gms/internal/ads/zzbnk;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbol;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbol;Lcom/google/android/gms/internal/ads/zzboi;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzboj;->zza:Lcom/google/android/gms/internal/ads/zzbol;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbnk;-><init>()V

    return-void
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/internal/ads/zzbnb;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzboj;->zza:Lcom/google/android/gms/internal/ads/zzbol;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbol;->zzb(Lcom/google/android/gms/internal/ads/zzbol;)Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomClickListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzboj;->zza:Lcom/google/android/gms/internal/ads/zzbol;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbol;->zzb(Lcom/google/android/gms/internal/ads/zzbol;)Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzboj;->zza:Lcom/google/android/gms/internal/ads/zzbol;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzbol;->zze(Lcom/google/android/gms/internal/ads/zzbol;Lcom/google/android/gms/internal/ads/zzbnb;)Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;

    move-result-object p1

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomClickListener;->onCustomClick(Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;Ljava/lang/String;)V

    return-void
.end method
