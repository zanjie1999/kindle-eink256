.class public final Lcom/google/android/gms/internal/ads/zzctq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzawd;
.implements Lcom/google/android/gms/internal/ads/zzdbx;
.implements Lcom/google/android/gms/ads/internal/overlay/zzo;
.implements Lcom/google/android/gms/internal/ads/zzdbw;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzctl;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzctm;

.field private final zzc:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/zzcml;",
            ">;"
        }
    .end annotation
.end field

.field private final zzd:Lcom/google/android/gms/internal/ads/zzbus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzbus<",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private final zze:Ljava/util/concurrent/Executor;

.field private final zzf:Lcom/google/android/gms/common/util/Clock;

.field private final zzg:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzctp;

.field private zzi:Z

.field private zzj:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbup;Lcom/google/android/gms/internal/ads/zzctm;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzctl;Lcom/google/android/gms/common/util/Clock;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzctq;->zzc:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    .line 2
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzctq;->zzg:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzctp;

    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzctp;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzctq;->zzh:Lcom/google/android/gms/internal/ads/zzctp;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzctq;->zzi:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 4
    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzctq;->zzj:Ljava/lang/ref/WeakReference;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzctq;->zza:Lcom/google/android/gms/internal/ads/zzctl;

    .line 5
    sget-object p4, Lcom/google/android/gms/internal/ads/zzbud;->zza:Lcom/google/android/gms/internal/ads/zzbua;

    const-string v0, "google.afma.activeView.handleUpdate"

    .line 6
    invoke-virtual {p1, v0, p4, p4}, Lcom/google/android/gms/internal/ads/zzbup;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbtz;Lcom/google/android/gms/internal/ads/zzbty;)Lcom/google/android/gms/internal/ads/zzbus;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzctq;->zzd:Lcom/google/android/gms/internal/ads/zzbus;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzctq;->zzb:Lcom/google/android/gms/internal/ads/zzctm;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzctq;->zze:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzctq;->zzf:Lcom/google/android/gms/common/util/Clock;

    return-void
.end method

.method private final zzl()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctq;->zzc:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcml;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzctq;->zza:Lcom/google/android/gms/internal/ads/zzctl;

    .line 2
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzctl;->zze(Lcom/google/android/gms/internal/ads/zzcml;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctq;->zza:Lcom/google/android/gms/internal/ads/zzctl;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzctl;->zzf()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized zza(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzctq;->zzh:Lcom/google/android/gms/internal/ads/zzctp;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzctp;->zzb:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzctq;->zzh()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzb(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzctq;->zzh:Lcom/google/android/gms/internal/ads/zzctp;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzctp;->zzb:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzctq;->zzh()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzbo(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzctq;->zzh:Lcom/google/android/gms/internal/ads/zzctp;

    const-string v0, "u"

    iput-object v0, p1, Lcom/google/android/gms/internal/ads/zzctp;->zze:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzctq;->zzh()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzctq;->zzl()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzctq;->zzi:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzbp()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized zzbq()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctq;->zzh:Lcom/google/android/gms/internal/ads/zzctp;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzctp;->zzb:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzctq;->zzh()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzbr()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctq;->zzh:Lcom/google/android/gms/internal/ads/zzctp;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzctp;->zzb:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzctq;->zzh()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzbs(I)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized zzc(Lcom/google/android/gms/internal/ads/zzawc;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctq;->zzh:Lcom/google/android/gms/internal/ads/zzctp;

    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/zzawc;->zzj:Z

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzctp;->zza:Z

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzctp;->zzf:Lcom/google/android/gms/internal/ads/zzawc;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzctq;->zzh()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzd()V
    .locals 0

    return-void
.end method

.method public final zze()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized zzg()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctq;->zzg:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctq;->zza:Lcom/google/android/gms/internal/ads/zzctl;

    .line 2
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzctl;->zzc(Lcom/google/android/gms/internal/ads/zzctq;)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzctq;->zzh()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzh()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctq;->zzj:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzctq;->zzi:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctq;->zzg:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctq;->zzh:Lcom/google/android/gms/internal/ads/zzctp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzctq;->zzf:Lcom/google/android/gms/common/util/Clock;

    .line 4
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzctp;->zzd:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctq;->zzb:Lcom/google/android/gms/internal/ads/zzctm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzctq;->zzh:Lcom/google/android/gms/internal/ads/zzctp;

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzctm;->zza(Lcom/google/android/gms/internal/ads/zzctp;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzctq;->zzc:Ljava/util/Set;

    .line 6
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzcml;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzctq;->zze:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzcto;

    .line 7
    invoke-direct {v4, v2, v0}, Lcom/google/android/gms/internal/ads/zzcto;-><init>(Lcom/google/android/gms/internal/ads/zzcml;Lorg/json/JSONObject;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzctq;->zzd:Lcom/google/android/gms/internal/ads/zzbus;

    .line 8
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbus;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v0

    const-string v1, "ActiveViewListener.callActiveViewJs"

    .line 9
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzchj;->zzb(Lcom/google/android/gms/internal/ads/zzfsm;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "Failed to call ActiveViewJS"

    .line 10
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/zze;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    .line 9
    :cond_1
    monitor-exit p0

    return-void

    .line 2
    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzctq;->zzi()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzi()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzctq;->zzl()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzctq;->zzi:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzj(Lcom/google/android/gms/internal/ads/zzcml;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctq;->zzc:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctq;->zza:Lcom/google/android/gms/internal/ads/zzctl;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzctl;->zzd(Lcom/google/android/gms/internal/ads/zzcml;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzk(Ljava/lang/Object;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzctq;->zzj:Ljava/lang/ref/WeakReference;

    return-void
.end method
