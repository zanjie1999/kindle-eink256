.class public final Lcom/google/android/gms/internal/ads/zzdbp;
.super Lcom/google/android/gms/internal/ads/zzdgm;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdbg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdgm<",
        "Lcom/google/android/gms/internal/ads/zzdbg;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzdbg;"
    }
.end annotation


# instance fields
.field private final zzb:Ljava/util/concurrent/ScheduledExecutorService;

.field private zzc:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private zzd:Z

.field private final zze:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdbo;Ljava/util/Set;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdbo;",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/zzdih<",
            "Lcom/google/android/gms/internal/ads/zzdbg;",
            ">;>;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzdgm;-><init>(Ljava/util/Set;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzdbp;->zzd:Z

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdbp;->zzb:Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbjl;->zzgX:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object p4

    invoke-virtual {p4, p2}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object p2

    .line 2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzdbp;->zze:Z

    .line 4
    invoke-virtual {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzdgm;->zzi(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzbcz;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdbh;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzdbh;-><init>(Lcom/google/android/gms/internal/ads/zzbcz;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdgm;->zzk(Lcom/google/android/gms/internal/ads/zzdgl;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzdkm;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdbp;->zze:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdbp;->zzd:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbp;->zzc:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdbi;

    .line 2
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzdbi;-><init>(Lcom/google/android/gms/internal/ads/zzdkm;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdgm;->zzk(Lcom/google/android/gms/internal/ads/zzdgl;)V

    return-void
.end method

.method public final declared-synchronized zzc()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdbp;->zze:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbp;->zzc:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzd()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdbj;->zza:Lcom/google/android/gms/internal/ads/zzdgl;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdgm;->zzk(Lcom/google/android/gms/internal/ads/zzdgl;)V

    return-void
.end method

.method public final zze()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdbp;->zze:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbjl;->zzgY:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdbp;->zzb:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdbk;

    .line 3
    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzdbk;-><init>(Lcom/google/android/gms/internal/ads/zzdbp;)V

    int-to-long v3, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 4
    invoke-interface {v1, v2, v3, v4, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbp;->zzc:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method final synthetic zzf()V
    .locals 2

    .line 1
    monitor-enter p0

    :try_start_0
    const-string v0, "Timeout waiting for show call succeed to be called."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzf(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdkm;

    const-string v1, "Timeout for show call succeed."

    .line 2
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdkm;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdbp;->zzb(Lcom/google/android/gms/internal/ads/zzdkm;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdbp;->zzd:Z

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
