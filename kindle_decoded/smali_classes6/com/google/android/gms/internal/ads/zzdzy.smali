.class public final Lcom/google/android/gms/internal/ads/zzdzy;
.super Lcom/google/android/gms/internal/ads/zzeaa;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzeaa;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzq()Lcom/google/android/gms/ads/internal/util/zzby;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/zzby;->zza()Landroid/os/Looper;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcau;

    invoke-direct {v1, p1, v0, p0, p0}, Lcom/google/android/gms/internal/ads/zzcau;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzeaa;->zzf:Lcom/google/android/gms/internal/ads/zzcau;

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeaa;->zzb:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzeaa;->zzd:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzeaa;->zzd:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeaa;->zzf:Lcom/google/android/gms/internal/ads/zzcau;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcau;->zzp()Lcom/google/android/gms/internal/ads/zzcbb;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeaa;->zze:Lcom/google/android/gms/internal/ads/zzcbj;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzdzz;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzdzz;-><init>(Lcom/google/android/gms/internal/ads/zzeaa;)V

    .line 2
    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcbb;->zze(Lcom/google/android/gms/internal/ads/zzcbj;Lcom/google/android/gms/internal/ads/zzcbf;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 3
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzg()Lcom/google/android/gms/internal/ads/zzcge;

    move-result-object v2

    const-string v3, "RemoteAdRequestClientTask.onConnected"

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzcge;->zzk(Ljava/lang/Throwable;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeaa;->zza:Lcom/google/android/gms/internal/ads/zzchl;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzeap;

    .line 4
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzeap;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzchl;->zzd(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 6
    :catch_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeaa;->zza:Lcom/google/android/gms/internal/ads/zzchl;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzeap;

    .line 5
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzeap;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzchl;->zzd(Ljava/lang/Throwable;)Z

    .line 6
    :cond_0
    :goto_0
    monitor-exit p1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    const-string p1, "Cannot connect to remote service, fallback to local instance."

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzd(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeaa;->zza:Lcom/google/android/gms/internal/ads/zzchl;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzeap;

    const/4 v1, 0x1

    .line 2
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzeap;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzchl;->zzd(Ljava/lang/Throwable;)Z

    return-void
.end method
