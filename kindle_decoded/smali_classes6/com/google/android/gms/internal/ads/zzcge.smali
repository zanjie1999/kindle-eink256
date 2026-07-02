.class public final Lcom/google/android/gms/internal/ads/zzcge;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zza:Ljava/lang/Object;

.field private final zzb:Lcom/google/android/gms/ads/internal/util/zzj;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzcgi;

.field private zzd:Z

.field private zze:Landroid/content/Context;

.field private zzf:Lcom/google/android/gms/internal/ads/zzcgz;

.field private zzg:Lcom/google/android/gms/internal/ads/zzbjq;

.field private zzh:Ljava/lang/Boolean;

.field private final zzi:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzcgc;

.field private final zzk:Ljava/lang/Object;

.field private zzl:Lcom/google/android/gms/internal/ads/zzfsm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcge;->zza:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/ads/internal/util/zzj;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/util/zzj;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcge;->zzb:Lcom/google/android/gms/ads/internal/util/zzj;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcgi;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzber;->zzc()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcge;->zzb:Lcom/google/android/gms/ads/internal/util/zzj;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcgi;-><init>(Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/zzg;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcge;->zzc:Lcom/google/android/gms/internal/ads/zzcgi;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcge;->zzd:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcge;->zzg:Lcom/google/android/gms/internal/ads/zzbjq;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcge;->zzh:Ljava/lang/Boolean;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzcge;->zzi:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcgc;

    .line 4
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzcgc;-><init>(Lcom/google/android/gms/internal/ads/zzcgd;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcge;->zzj:Lcom/google/android/gms/internal/ads/zzcgc;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcge;->zzk:Ljava/lang/Object;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzcge;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcge;->zza:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzcge;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcge;->zze:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzcge;)Lcom/google/android/gms/internal/ads/zzcgz;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcge;->zzf:Lcom/google/android/gms/internal/ads/zzcgz;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzcge;)Lcom/google/android/gms/internal/ads/zzbjq;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcge;->zzg:Lcom/google/android/gms/internal/ads/zzbjq;

    return-object p0
.end method


# virtual methods
.method public final zze()Lcom/google/android/gms/internal/ads/zzbjq;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcge;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcge;->zzg:Lcom/google/android/gms/internal/ads/zzbjq;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzf(Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcge;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcge;->zzh:Ljava/lang/Boolean;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzg()Ljava/lang/Boolean;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcge;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcge;->zzh:Ljava/lang/Boolean;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzh()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcge;->zzj:Lcom/google/android/gms/internal/ads/zzcgc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcgc;->zza()V

    return-void
.end method

.method public final zzi(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcgz;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcge;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcge;->zzd:Z

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcge;->zze:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcge;->zzf:Lcom/google/android/gms/internal/ads/zzcgz;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzf()Lcom/google/android/gms/internal/ads/zzawx;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcge;->zzc:Lcom/google/android/gms/internal/ads/zzcgi;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzawx;->zzb(Lcom/google/android/gms/internal/ads/zzaww;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcge;->zzb:Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcge;->zze:Landroid/content/Context;

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/internal/util/zzj;->zza(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcge;->zze:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcge;->zzf:Lcom/google/android/gms/internal/ads/zzcgz;

    .line 4
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzcar;->zzb(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcgz;)Lcom/google/android/gms/internal/ads/zzcat;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzl()Lcom/google/android/gms/internal/ads/zzbjr;

    .line 6
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbkt;->zzc:Lcom/google/android/gms/internal/ads/zzbkn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbkn;->zze()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CsiReporterFactory: CSI is not enabled. No CSI reporter created."

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0

    .line 14
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbjq;

    .line 8
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzbjq;-><init>()V

    .line 7
    :goto_0
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcge;->zzg:Lcom/google/android/gms/internal/ads/zzbjq;

    if-eqz v1, :cond_1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcgb;

    .line 9
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcgb;-><init>(Lcom/google/android/gms/internal/ads/zzcge;)V

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/util/zzb;->zzc()Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v1

    const-string v2, "AppState.registerCsiReporter"

    .line 11
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzchj;->zza(Lcom/google/android/gms/internal/ads/zzfsm;Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcge;->zzd:Z

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcge;->zzr()Lcom/google/android/gms/internal/ads/zzfsm;

    .line 13
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    move-result-object v0

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzcgz;->zza:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/ads/internal/util/zzs;->zzi(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    return-void

    :catchall_0
    move-exception p1

    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final zzj()Landroid/content/res/Resources;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcge;->zzf:Lcom/google/android/gms/internal/ads/zzcgz;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzcgz;->zzd:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcge;->zze:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcge;->zze:Landroid/content/Context;

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcgx;->zzb(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzcgw; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "Cannot load resource from dynamite apk or local jar"

    .line 4
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzj(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final zzk(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcge;->zze:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcge;->zzf:Lcom/google/android/gms/internal/ads/zzcgz;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzcar;->zzb(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcgz;)Lcom/google/android/gms/internal/ads/zzcat;

    move-result-object v0

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcat;->zzd(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public final zzl(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcge;->zze:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcge;->zzf:Lcom/google/android/gms/internal/ads/zzcgz;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzcar;->zzb(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcgz;)Lcom/google/android/gms/internal/ads/zzcat;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzblf;->zzg:Lcom/google/android/gms/internal/ads/zzbkn;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbkn;->zze()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v1

    .line 3
    invoke-interface {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzcat;->zze(Ljava/lang/Throwable;Ljava/lang/String;F)V

    return-void
.end method

.method public final zzm()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcge;->zzi:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public final zzn()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcge;->zzi:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return-void
.end method

.method public final zzo()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcge;->zzi:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public final zzp()Lcom/google/android/gms/ads/internal/util/zzg;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcge;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcge;->zzb:Lcom/google/android/gms/ads/internal/util/zzj;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzq()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcge;->zze:Landroid/content/Context;

    return-object v0
.end method

.method public final zzr()Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastJellyBean()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcge;->zze:Landroid/content/Context;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbjl;->zzbN:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcge;->zzk:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcge;->zzl:Lcom/google/android/gms/internal/ads/zzfsm;

    if-eqz v1, :cond_1

    .line 5
    monitor-exit v0

    return-object v1

    .line 6
    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/ads/zzchg;->zza:Lcom/google/android/gms/internal/ads/zzfsn;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcga;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzcga;-><init>(Lcom/google/android/gms/internal/ads/zzcge;)V

    .line 7
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzfsn;->zzb(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcge;->zzl:Lcom/google/android/gms/internal/ads/zzfsm;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3
    :cond_2
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfsd;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v0

    return-object v0
.end method

.method public final zzs()Lcom/google/android/gms/internal/ads/zzcgi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcge;->zzc:Lcom/google/android/gms/internal/ads/zzcgi;

    return-object v0
.end method

.method final synthetic zzt()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcge;->zze:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcbx;->zza(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    :try_start_0
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v2

    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v3, 0x1000

    .line 5
    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 7
    :goto_0
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 8
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v4, v4, v2

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_0

    .line 9
    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    return-object v1
.end method
