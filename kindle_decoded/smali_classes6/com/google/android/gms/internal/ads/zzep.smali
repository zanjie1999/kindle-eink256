.class final Lcom/google/android/gms/internal/ads/zzep;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdt;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzer;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzer;Lcom/google/android/gms/internal/ads/zzeq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzep;->zza:Lcom/google/android/gms/internal/ads/zzer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzep;->zza:Lcom/google/android/gms/internal/ads/zzer;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzb(Lcom/google/android/gms/internal/ads/zzer;)Lcom/google/android/gms/internal/ads/zzahu;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzep;->zza:Lcom/google/android/gms/internal/ads/zzer;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzb(Lcom/google/android/gms/internal/ads/zzer;)Lcom/google/android/gms/internal/ads/zzahu;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzahu;->zzb()V

    :cond_0
    return-void
.end method

.method public final zzb(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "MediaCodecAudioRenderer"

    const-string v1, "Audio sink error"

    .line 1
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzaln;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzep;->zza:Lcom/google/android/gms/internal/ads/zzer;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzer;->zza(Lcom/google/android/gms/internal/ads/zzer;)Lcom/google/android/gms/internal/ads/zzdp;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdp;->zzi(Ljava/lang/Exception;)V

    return-void
.end method
