.class public final Lcom/google/android/gms/internal/ads/zzdrr;
.super Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdmm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdmm;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdrr;->zza:Lcom/google/android/gms/internal/ads/zzdmm;

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzdmm;)Lcom/google/android/gms/internal/ads/zzbhf;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdmm;->zzw()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzo()Lcom/google/android/gms/internal/ads/zzbhf;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method


# virtual methods
.method public final onVideoEnd()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrr;->zza:Lcom/google/android/gms/internal/ads/zzdmm;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdrr;->zza(Lcom/google/android/gms/internal/ads/zzdmm;)Lcom/google/android/gms/internal/ads/zzbhf;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbhf;->zzh()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Unable to call onVideoEnd()"

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzj(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onVideoPause()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrr;->zza:Lcom/google/android/gms/internal/ads/zzdmm;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdrr;->zza(Lcom/google/android/gms/internal/ads/zzdmm;)Lcom/google/android/gms/internal/ads/zzbhf;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbhf;->zzg()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Unable to call onVideoEnd()"

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzj(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onVideoStart()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrr;->zza:Lcom/google/android/gms/internal/ads/zzdmm;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdrr;->zza(Lcom/google/android/gms/internal/ads/zzdmm;)Lcom/google/android/gms/internal/ads/zzbhf;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbhf;->zze()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Unable to call onVideoEnd()"

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzj(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
