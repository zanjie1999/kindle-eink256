.class public final Lcom/google/android/gms/internal/ads/zzeag;
.super Lcom/google/android/gms/internal/ads/zzeaa;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private zzg:Ljava/lang/String;

.field private zzh:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzeaa;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzeag;->zzh:I

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

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeaa;->zzb:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzeaa;->zzd:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzeaa;->zzd:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzeag;->zzh:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeaa;->zzf:Lcom/google/android/gms/internal/ads/zzcau;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcau;->zzp()Lcom/google/android/gms/internal/ads/zzcbb;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeaa;->zze:Lcom/google/android/gms/internal/ads/zzcbj;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzdzz;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzdzz;-><init>(Lcom/google/android/gms/internal/ads/zzeaa;)V

    .line 4
    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcbb;->zzg(Lcom/google/android/gms/internal/ads/zzcbj;Lcom/google/android/gms/internal/ads/zzcbf;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeaa;->zzf:Lcom/google/android/gms/internal/ads/zzcau;

    .line 1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcau;->zzp()Lcom/google/android/gms/internal/ads/zzcbb;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeag;->zzg:Ljava/lang/String;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzdzz;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzdzz;-><init>(Lcom/google/android/gms/internal/ads/zzeaa;)V

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcbb;->zzh(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcbf;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeaa;->zza:Lcom/google/android/gms/internal/ads/zzchl;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzeap;

    .line 2
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzeap;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzchl;->zzd(Ljava/lang/Throwable;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 5
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzg()Lcom/google/android/gms/internal/ads/zzcge;

    move-result-object v2

    const-string v3, "RemoteUrlAndCacheKeyClientTask.onConnected"

    .line 6
    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzcge;->zzk(Ljava/lang/Throwable;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeaa;->zza:Lcom/google/android/gms/internal/ads/zzchl;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzeap;

    .line 7
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzeap;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzchl;->zzd(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 9
    :catch_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeaa;->zza:Lcom/google/android/gms/internal/ads/zzchl;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzeap;

    .line 8
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzeap;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzchl;->zzd(Ljava/lang/Throwable;)Z

    .line 9
    :cond_2
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

.method public final zzb(Lcom/google/android/gms/internal/ads/zzcbj;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzcbj;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeaa;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzeag;->zzh:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v1, v2, :cond_0

    if-eq v1, v3, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzeap;

    invoke-direct {p1, v3}, Lcom/google/android/gms/internal/ads/zzeap;-><init>(I)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfsd;->zzc(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzeaa;->zzc:Z

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeaa;->zza:Lcom/google/android/gms/internal/ads/zzchl;

    .line 4
    monitor-exit v0

    return-object p1

    :cond_1
    iput v3, p0, Lcom/google/android/gms/internal/ads/zzeag;->zzh:I

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzeaa;->zzc:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeaa;->zze:Lcom/google/android/gms/internal/ads/zzcbj;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeaa;->zzf:Lcom/google/android/gms/internal/ads/zzcau;

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->checkAvailabilityAndConnect()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeaa;->zza:Lcom/google/android/gms/internal/ads/zzchl;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzeae;

    .line 2
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzeae;-><init>(Lcom/google/android/gms/internal/ads/zzeag;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/zzchg;->zzf:Lcom/google/android/gms/internal/ads/zzfsn;

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzchl;->zze(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeaa;->zza:Lcom/google/android/gms/internal/ads/zzchl;

    .line 3
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeaa;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzeag;->zzh:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    if-eq v1, v2, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzeap;

    const/4 v1, 0x2

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzeap;-><init>(I)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfsd;->zzc(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzeaa;->zzc:Z

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeaa;->zza:Lcom/google/android/gms/internal/ads/zzchl;

    .line 4
    monitor-exit v0

    return-object p1

    :cond_1
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzeag;->zzh:I

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzeaa;->zzc:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeag;->zzg:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeaa;->zzf:Lcom/google/android/gms/internal/ads/zzcau;

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->checkAvailabilityAndConnect()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeaa;->zza:Lcom/google/android/gms/internal/ads/zzchl;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzeaf;

    .line 2
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzeaf;-><init>(Lcom/google/android/gms/internal/ads/zzeag;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/zzchg;->zzf:Lcom/google/android/gms/internal/ads/zzfsn;

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzchl;->zze(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeaa;->zza:Lcom/google/android/gms/internal/ads/zzchl;

    .line 3
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
