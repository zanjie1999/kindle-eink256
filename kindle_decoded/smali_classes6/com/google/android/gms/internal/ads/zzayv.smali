.class final Lcom/google/android/gms/internal/ads/zzayv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzayn;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzchl;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzayx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzayx;Lcom/google/android/gms/internal/ads/zzayn;Lcom/google/android/gms/internal/ads/zzchl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzayv;->zzc:Lcom/google/android/gms/internal/ads/zzayx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzayv;->zza:Lcom/google/android/gms/internal/ads/zzayn;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzayv;->zzb:Lcom/google/android/gms/internal/ads/zzchl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzayv;->zzc:Lcom/google/android/gms/internal/ads/zzayx;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayx;->zzd(Lcom/google/android/gms/internal/ads/zzayx;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayv;->zzc:Lcom/google/android/gms/internal/ads/zzayx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayx;->zzb(Lcom/google/android/gms/internal/ads/zzayx;)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit p1

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayv;->zzc:Lcom/google/android/gms/internal/ads/zzayx;

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzayx;->zzc(Lcom/google/android/gms/internal/ads/zzayx;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayv;->zzc:Lcom/google/android/gms/internal/ads/zzayx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayx;->zza(Lcom/google/android/gms/internal/ads/zzayx;)Lcom/google/android/gms/internal/ads/zzaym;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3
    monitor-exit p1

    return-void

    .line 4
    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/ads/zzchg;->zza:Lcom/google/android/gms/internal/ads/zzfsn;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzays;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzayv;->zza:Lcom/google/android/gms/internal/ads/zzayn;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzayv;->zzb:Lcom/google/android/gms/internal/ads/zzchl;

    invoke-direct {v2, p0, v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzays;-><init>(Lcom/google/android/gms/internal/ads/zzayv;Lcom/google/android/gms/internal/ads/zzaym;Lcom/google/android/gms/internal/ads/zzayn;Lcom/google/android/gms/internal/ads/zzchl;)V

    .line 5
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzfsn;->zza(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayv;->zzb:Lcom/google/android/gms/internal/ads/zzchl;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzayt;

    .line 6
    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/internal/ads/zzayt;-><init>(Lcom/google/android/gms/internal/ads/zzchl;Ljava/util/concurrent/Future;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzchg;->zzf:Lcom/google/android/gms/internal/ads/zzfsn;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzchl;->zze(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 7
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onConnectionSuspended(I)V
    .locals 0

    return-void
.end method
