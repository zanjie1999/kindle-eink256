.class public final Lcom/google/android/gms/internal/ads/zzayj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zza:Ljava/lang/Runnable;

.field private final zzb:Ljava/lang/Object;

.field private zzc:Lcom/google/android/gms/internal/ads/zzaym;

.field private zzd:Landroid/content/Context;

.field private zze:Lcom/google/android/gms/internal/ads/zzayp;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzayf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzayf;-><init>(Lcom/google/android/gms/internal/ads/zzayj;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzayj;->zza:Ljava/lang/Runnable;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzayj;->zzb:Ljava/lang/Object;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzayj;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzayj;->zzb:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzayj;)Lcom/google/android/gms/internal/ads/zzaym;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzayj;->zzc:Lcom/google/android/gms/internal/ads/zzaym;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzayj;Lcom/google/android/gms/internal/ads/zzaym;)Lcom/google/android/gms/internal/ads/zzaym;
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzayj;->zzc:Lcom/google/android/gms/internal/ads/zzaym;

    return-object p1
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/ads/zzayj;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayj;->zzl()V

    return-void
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/ads/zzayj;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayj;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayj;->zzc:Lcom/google/android/gms/internal/ads/zzaym;

    if-nez v1, :cond_0

    .line 6
    monitor-exit v0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayj;->zzc:Lcom/google/android/gms/internal/ads/zzaym;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->isConnecting()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayj;->zzc:Lcom/google/android/gms/internal/ads/zzaym;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->disconnect()V

    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzayj;->zzc:Lcom/google/android/gms/internal/ads/zzaym;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzayj;->zze:Lcom/google/android/gms/internal/ads/zzayp;

    .line 4
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic zzk(Lcom/google/android/gms/internal/ads/zzayj;Lcom/google/android/gms/internal/ads/zzayp;)Lcom/google/android/gms/internal/ads/zzayp;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzayj;->zze:Lcom/google/android/gms/internal/ads/zzayp;

    return-object p1
.end method

.method private final zzl()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayj;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayj;->zzd:Landroid/content/Context;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayj;->zzc:Lcom/google/android/gms/internal/ads/zzaym;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzayh;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzayh;-><init>(Lcom/google/android/gms/internal/ads/zzayj;)V

    .line 4
    new-instance v2, Lcom/google/android/gms/internal/ads/zzayi;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzayi;-><init>(Lcom/google/android/gms/internal/ads/zzayj;)V

    .line 5
    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzayj;->zzi(Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;)Lcom/google/android/gms/internal/ads/zzaym;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzayj;->zzc:Lcom/google/android/gms/internal/ads/zzaym;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->checkAvailabilityAndConnect()V

    .line 7
    monitor-exit v0

    return-void

    .line 2
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final zzd(Landroid/content/Context;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayj;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayj;->zzd:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 2
    monitor-exit v0

    return-void

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzayj;->zzd:Landroid/content/Context;

    .line 4
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbjl;->zzcE:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayj;->zzl()V

    goto :goto_0

    .line 11
    :cond_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbjl;->zzcD:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object p1

    .line 8
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Lcom/google/android/gms/internal/ads/zzayg;

    .line 9
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzayg;-><init>(Lcom/google/android/gms/internal/ads/zzayj;)V

    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzf()Lcom/google/android/gms/internal/ads/zzawx;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzawx;->zzb(Lcom/google/android/gms/internal/ads/zzaww;)V

    .line 11
    :cond_3
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zze()V
    .locals 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbjl;->zzcF:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayj;->zzb:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayj;->zzl()V

    .line 5
    sget-object v1, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfla;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzayj;->zza:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v1, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfla;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzayj;->zza:Ljava/lang/Runnable;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbjl;->zzcG:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v3

    .line 7
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 8
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    return-void
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzayn;)Lcom/google/android/gms/internal/ads/zzayk;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayj;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayj;->zze:Lcom/google/android/gms/internal/ads/zzayp;

    if-nez v1, :cond_0

    .line 2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzayk;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzayk;-><init>()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayj;->zzc:Lcom/google/android/gms/internal/ads/zzaym;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaym;->zzp()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayj;->zze:Lcom/google/android/gms/internal/ads/zzayp;

    .line 4
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzf(Lcom/google/android/gms/internal/ads/zzayn;)Lcom/google/android/gms/internal/ads/zzayk;

    move-result-object p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object p1

    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayj;->zze:Lcom/google/android/gms/internal/ads/zzayp;

    .line 5
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzayp;->zze(Lcom/google/android/gms/internal/ads/zzayn;)Lcom/google/android/gms/internal/ads/zzayk;

    move-result-object p1
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v0

    return-object p1

    :catch_0
    move-exception p1

    const-string v1, "Unable to call into cache service."

    .line 6
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    new-instance p1, Lcom/google/android/gms/internal/ads/zzayk;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzayk;-><init>()V

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 8
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzayn;)J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayj;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayj;->zze:Lcom/google/android/gms/internal/ads/zzayp;

    const-wide/16 v2, -0x2

    if-nez v1, :cond_0

    .line 2
    monitor-exit v0

    return-wide v2

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayj;->zzc:Lcom/google/android/gms/internal/ads/zzaym;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaym;->zzp()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayj;->zze:Lcom/google/android/gms/internal/ads/zzayp;

    .line 4
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzg(Lcom/google/android/gms/internal/ads/zzayn;)J

    move-result-wide v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-wide v1

    :catch_0
    move-exception p1

    const-string v1, "Unable to call into cache service."

    .line 5
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    :cond_1
    monitor-exit v0

    return-wide v2

    :catchall_0
    move-exception p1

    .line 7
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method protected final declared-synchronized zzi(Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;)Lcom/google/android/gms/internal/ads/zzaym;
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaym;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayj;->zzd:Landroid/content/Context;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzq()Lcom/google/android/gms/ads/internal/util/zzby;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/util/zzby;->zza()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/google/android/gms/internal/ads/zzaym;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
