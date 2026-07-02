.class public final Lcom/google/android/gms/internal/ads/zzeuv;
.super Lcom/google/android/gms/internal/ads/zzbfm;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzz;
.implements Lcom/google/android/gms/internal/ads/zzaxq;
.implements Lcom/google/android/gms/internal/ads/zzddb;


# instance fields
.field protected zza:Lcom/google/android/gms/internal/ads/zzcuq;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcoj;

.field private final zzc:Landroid/content/Context;

.field private final zzd:Landroid/view/ViewGroup;

.field private zze:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final zzf:Ljava/lang/String;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzeup;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzevv;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzcgz;

.field private zzj:J

.field private zzk:Lcom/google/android/gms/internal/ads/zzcuc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcoj;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzeup;Lcom/google/android/gms/internal/ads/zzevv;Lcom/google/android/gms/internal/ads/zzcgz;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbfm;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeuv;->zze:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzeuv;->zzj:J

    new-instance v0, Landroid/widget/FrameLayout;

    .line 3
    invoke-direct {v0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeuv;->zzd:Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeuv;->zzb:Lcom/google/android/gms/internal/ads/zzcoj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeuv;->zzc:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeuv;->zzf:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeuv;->zzg:Lcom/google/android/gms/internal/ads/zzeup;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzeuv;->zzh:Lcom/google/android/gms/internal/ads/zzevv;

    .line 4
    invoke-virtual {p5, p0}, Lcom/google/android/gms/internal/ads/zzevv;->zzj(Lcom/google/android/gms/internal/ads/zzddb;)V

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzeuv;->zzi:Lcom/google/android/gms/internal/ads/zzcgz;

    return-void
.end method

.method private final declared-synchronized zzT(I)V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeuv;->zze:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeuv;->zza:Lcom/google/android/gms/internal/ads/zzcuq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcuq;->zzk()Lcom/google/android/gms/internal/ads/zzaya;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeuv;->zzh:Lcom/google/android/gms/internal/ads/zzevv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeuv;->zza:Lcom/google/android/gms/internal/ads/zzcuq;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcuq;->zzk()Lcom/google/android/gms/internal/ads/zzaya;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzevv;->zzr(Lcom/google/android/gms/internal/ads/zzaya;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeuv;->zzh:Lcom/google/android/gms/internal/ads/zzevv;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzevv;->zzp()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeuv;->zzd:Landroid/view/ViewGroup;

    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeuv;->zzk:Lcom/google/android/gms/internal/ads/zzcuc;

    if-eqz v0, :cond_1

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzf()Lcom/google/android/gms/internal/ads/zzawx;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzawx;->zzc(Lcom/google/android/gms/internal/ads/zzaww;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeuv;->zza:Lcom/google/android/gms/internal/ads/zzcuq;

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzeuv;->zzj:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzj()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzeuv;->zzj:J

    sub-long v2, v0, v2

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeuv;->zza:Lcom/google/android/gms/internal/ads/zzcuq;

    .line 8
    invoke-virtual {v0, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzcuq;->zzi(JI)V

    .line 9
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeuv;->zzj()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 7
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzeuv;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzeuv;->zzd:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzeuv;)Lcom/google/android/gms/internal/ads/zzevv;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzeuv;->zzh:Lcom/google/android/gms/internal/ads/zzevv;

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/ads/zzeuv;)Lcom/google/android/gms/internal/ads/zzcgz;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzeuv;->zzi:Lcom/google/android/gms/internal/ads/zzcgz;

    return-object p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/ads/zzeuv;Lcom/google/android/gms/internal/ads/zzcuq;)Lcom/google/android/gms/ads/internal/overlay/zzq;
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcuq;->zzf()Z

    move-result p1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbjl;->zzdn:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzp;

    .line 4
    invoke-direct {v1}, Lcom/google/android/gms/ads/internal/overlay/zzp;-><init>()V

    const/16 v2, 0x32

    iput v2, v1, Lcom/google/android/gms/ads/internal/overlay/zzp;->zzd:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v3, p1, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    move v4, v0

    :goto_0
    iput v4, v1, Lcom/google/android/gms/ads/internal/overlay/zzp;->zza:I

    if-eq v3, p1, :cond_1

    move v2, v0

    :cond_1
    iput v2, v1, Lcom/google/android/gms/ads/internal/overlay/zzp;->zzb:I

    iput v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzp;->zzc:I

    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/zzq;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeuv;->zzc:Landroid/content/Context;

    .line 5
    invoke-direct {p1, v0, v1, p0}, Lcom/google/android/gms/ads/internal/overlay/zzq;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/zzp;Lcom/google/android/gms/ads/internal/overlay/zzz;)V

    return-object p1
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/ads/zzeuv;)Lcom/google/android/gms/internal/ads/zzbdl;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeuv;->zzc:Landroid/content/Context;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzeuv;->zza:Lcom/google/android/gms/internal/ads/zzcuq;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcuq;->zza()Lcom/google/android/gms/internal/ads/zzfaa;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 2
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzfav;->zzb(Landroid/content/Context;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzbdl;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized zzA()Lcom/google/android/gms/internal/ads/zzbgz;
    .locals 1

    monitor-enter p0

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized zzB()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeuv;->zzf:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzC()Lcom/google/android/gms/internal/ads/zzbfu;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzD()Lcom/google/android/gms/internal/ads/zzbfa;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized zzE(Lcom/google/android/gms/internal/ads/zzbkg;)V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final zzF(Lcom/google/android/gms/internal/ads/zzbex;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized zzG(Z)V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized zzH()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeuv;->zzg:Lcom/google/android/gms/internal/ads/zzeup;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzevf;->zzb()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzI(Lcom/google/android/gms/internal/ads/zzccf;)V
    .locals 0

    return-void
.end method

.method public final zzJ(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final zzK(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized zzL()Lcom/google/android/gms/internal/ads/zzbhc;
    .locals 1

    monitor-enter p0

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized zzM(Lcom/google/android/gms/internal/ads/zzbis;)V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final zzN(Lcom/google/android/gms/internal/ads/zzbhg;)V
    .locals 0

    return-void
.end method

.method public final zzO(Lcom/google/android/gms/internal/ads/zzbdr;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeuv;->zzg:Lcom/google/android/gms/internal/ads/zzeup;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzevf;->zzi(Lcom/google/android/gms/internal/ads/zzbdr;)V

    return-void
.end method

.method public final zzP(Lcom/google/android/gms/internal/ads/zzaxz;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeuv;->zzh:Lcom/google/android/gms/internal/ads/zzevv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzevv;->zzh(Lcom/google/android/gms/internal/ads/zzaxz;)V

    return-void
.end method

.method public final zzQ(Z)V
    .locals 0

    return-void
.end method

.method public final zzR()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeuv;->zza:Lcom/google/android/gms/internal/ads/zzcuq;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzj()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzeuv;->zzj:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeuv;->zza:Lcom/google/android/gms/internal/ads/zzcuq;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcuq;->zzc()I

    move-result v0

    if-gtz v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcuc;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeuv;->zzb:Lcom/google/android/gms/internal/ads/zzcoj;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcoj;->zzf()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzj()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcuc;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/common/util/Clock;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzeuv;->zzk:Lcom/google/android/gms/internal/ads/zzcuc;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzeus;

    .line 4
    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzeus;-><init>(Lcom/google/android/gms/internal/ads/zzeuv;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzcuc;->zzb(ILjava/lang/Runnable;)V

    return-void
.end method

.method final synthetic zzS()V
    .locals 1

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzeuv;->zzT(I)V

    return-void
.end method

.method public final zzX(Lcom/google/android/gms/internal/ads/zzbgw;)V
    .locals 0

    return-void
.end method

.method public final zzY(Lcom/google/android/gms/internal/ads/zzbdg;Lcom/google/android/gms/internal/ads/zzbfd;)V
    .locals 0

    return-void
.end method

.method public final zzZ(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0

    return-void
.end method

.method public final zza()V
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzeuv;->zzT(I)V

    return-void
.end method

.method public final zzaa(Lcom/google/android/gms/internal/ads/zzbgb;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized zzab(Lcom/google/android/gms/internal/ads/zzbfy;)V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final zzd()V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzeuv;->zzT(I)V

    return-void
.end method

.method public final zzg()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzber;->zza()Lcom/google/android/gms/internal/ads/zzcgm;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcgm;->zzp()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzeuv;->zzT(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeuv;->zzb:Lcom/google/android/gms/internal/ads/zzcoj;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcoj;->zze()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzeur;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzeur;-><init>(Lcom/google/android/gms/internal/ads/zzeuv;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzi()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1

    const-string v0, "getAdFrame must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeuv;->zzd:Landroid/view/ViewGroup;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized zzj()V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "destroy must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeuv;->zza:Lcom/google/android/gms/internal/ads/zzcuq;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcxg;->zzT()V
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

.method public final zzk()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final declared-synchronized zzl(Lcom/google/android/gms/internal/ads/zzbdg;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "loadAd must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeuv;->zzc:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzs;->zzK(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzbdg;->zzs:Lcom/google/android/gms/internal/ads/zzbcx;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Failed to load the ad because app ID is missing."

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzf(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeuv;->zzh:Lcom/google/android/gms/internal/ads/zzevv;

    const/4 v0, 0x4

    const/4 v2, 0x0

    .line 7
    invoke-static {v0, v2, v2}, Lcom/google/android/gms/internal/ads/zzfbm;->zzd(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzbcz;)Lcom/google/android/gms/internal/ads/zzbcz;

    move-result-object v0

    .line 8
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzevv;->zzbD(Lcom/google/android/gms/internal/ads/zzbcz;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    .line 3
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeuv;->zzH()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    monitor-exit p0

    return v1

    :cond_2
    :try_start_2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeuv;->zze:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzeut;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzeut;-><init>(Lcom/google/android/gms/internal/ads/zzeuv;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeuv;->zzg:Lcom/google/android/gms/internal/ads/zzeup;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeuv;->zzf:Ljava/lang/String;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzeuu;

    .line 5
    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzeuu;-><init>(Lcom/google/android/gms/internal/ads/zzeuv;)V

    invoke-virtual {v1, p1, v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzevf;->zza(Lcom/google/android/gms/internal/ads/zzbdg;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzelw;Lcom/google/android/gms/internal/ads/zzelx;)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzm()V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "pause must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzn()V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "resume must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzo(Lcom/google/android/gms/internal/ads/zzbfa;)V
    .locals 0

    return-void
.end method

.method public final zzp(Lcom/google/android/gms/internal/ads/zzbfu;)V
    .locals 0

    return-void
.end method

.method public final zzq(Lcom/google/android/gms/internal/ads/zzbfr;)V
    .locals 0

    return-void
.end method

.method public final zzr()Landroid/os/Bundle;
    .locals 1

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final zzs()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized zzt()V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized zzu()Lcom/google/android/gms/internal/ads/zzbdl;
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "getAdSize must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeuv;->zza:Lcom/google/android/gms/internal/ads/zzcuq;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeuv;->zzc:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcuq;->zza()Lcom/google/android/gms/internal/ads/zzfaa;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzfav;->zzb(Landroid/content/Context;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzbdl;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzv(Lcom/google/android/gms/internal/ads/zzbdl;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    const-string p1, "setAdSize must be called on the main UI thread."

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzw(Lcom/google/android/gms/internal/ads/zzbzz;)V
    .locals 0

    return-void
.end method

.method public final zzx(Lcom/google/android/gms/internal/ads/zzcac;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized zzy()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized zzz()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method
