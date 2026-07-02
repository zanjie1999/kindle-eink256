.class public final Lcom/google/android/gms/internal/ads/zzdac;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdbc;
.implements Lcom/google/android/gms/internal/ads/zzdhz;
.implements Lcom/google/android/gms/internal/ads/zzdfx;
.implements Lcom/google/android/gms/internal/ads/zzdbs;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdbu;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzezz;

.field private final zzc:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzd:Ljava/util/concurrent/Executor;

.field private final zze:Lcom/google/android/gms/internal/ads/zzfsu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzfsu<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private zzf:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdbu;Lcom/google/android/gms/internal/ads/zzezz;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfsu;->zza()Lcom/google/android/gms/internal/ads/zzfsu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdac;->zze:Lcom/google/android/gms/internal/ads/zzfsu;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdac;->zza:Lcom/google/android/gms/internal/ads/zzdbu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdac;->zzb:Lcom/google/android/gms/internal/ads/zzezz;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdac;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdac;->zzd:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdac;)Lcom/google/android/gms/internal/ads/zzdbu;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdac;->zza:Lcom/google/android/gms/internal/ads/zzdbu;

    return-object p0
.end method


# virtual methods
.method public final zzb()V
    .locals 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbjl;->zzba:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdac;->zzb:Lcom/google/android/gms/internal/ads/zzezz;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzezz;->zzU:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzezz;->zzq:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdac;->zza:Lcom/google/android/gms/internal/ads/zzdbu;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdbu;->zza()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdac;->zze:Lcom/google/android/gms/internal/ads/zzfsu;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdab;

    .line 4
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdab;-><init>(Lcom/google/android/gms/internal/ads/zzdac;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdac;->zzd:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfsd;->zzp(Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzfrz;Ljava/util/concurrent/Executor;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdac;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdaa;

    .line 5
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdaa;-><init>(Lcom/google/android/gms/internal/ads/zzdac;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdac;->zzb:Lcom/google/android/gms/internal/ads/zzezz;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzezz;->zzq:I

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 6
    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdac;->zzf:Ljava/util/concurrent/ScheduledFuture;

    :cond_1
    return-void
.end method

.method public final declared-synchronized zzc()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdac;->zze:Lcom/google/android/gms/internal/ads/zzfsu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfqw;->isDone()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdac;->zzf:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdac;->zze:Lcom/google/android/gms/internal/ads/zzfsu;

    .line 3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfsu;->zzp(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzd()V
    .locals 0

    return-void
.end method

.method public final zze()V
    .locals 0

    return-void
.end method

.method final synthetic zzf()V
    .locals 2

    .line 1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdac;->zze:Lcom/google/android/gms/internal/ads/zzfsu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfqw;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdac;->zze:Lcom/google/android/gms/internal/ads/zzfsu;

    const/4 v1, 0x1

    .line 3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfsu;->zzp(Ljava/lang/Object;)Z

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzh()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdac;->zzb:Lcom/google/android/gms/internal/ads/zzezz;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzezz;->zzU:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdac;->zza:Lcom/google/android/gms/internal/ads/zzdbu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdbu;->zza()V

    return-void
.end method

.method public final zzi()V
    .locals 0

    return-void
.end method

.method public final zzj()V
    .locals 0

    return-void
.end method

.method public final zzk(Lcom/google/android/gms/internal/ads/zzcbz;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final zzl()V
    .locals 0

    return-void
.end method

.method public final zzm()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized zzn(Lcom/google/android/gms/internal/ads/zzbcz;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdac;->zze:Lcom/google/android/gms/internal/ads/zzfsu;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfqw;->isDone()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdac;->zzf:Ljava/util/concurrent/ScheduledFuture;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 2
    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdac;->zze:Lcom/google/android/gms/internal/ads/zzfsu;

    new-instance v0, Ljava/lang/Exception;

    .line 3
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfsu;->zzq(Ljava/lang/Throwable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
