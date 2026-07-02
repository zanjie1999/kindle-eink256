.class public final Lcom/google/android/gms/internal/ads/zzayx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzaym;

.field private zzb:Z

.field private final zzc:Landroid/content/Context;

.field private final zzd:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzayx;->zzd:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzayx;->zzc:Landroid/content/Context;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzayx;)Lcom/google/android/gms/internal/ads/zzaym;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzayx;->zza:Lcom/google/android/gms/internal/ads/zzaym;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzayx;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzayx;->zzb:Z

    return p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzayx;Z)Z
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzayx;->zzb:Z

    return p1
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzayx;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzayx;->zzd:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/ads/zzayx;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayx;->zzd:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayx;->zza:Lcom/google/android/gms/internal/ads/zzaym;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    .line 1
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->disconnect()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzayx;->zza:Lcom/google/android/gms/internal/ads/zzaym;

    .line 2
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method final zze(Lcom/google/android/gms/internal/ads/zzayn;)Ljava/util/concurrent/Future;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzayn;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/google/android/gms/internal/ads/zzayz;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzayr;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzayr;-><init>(Lcom/google/android/gms/internal/ads/zzayx;)V

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzayv;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzayv;-><init>(Lcom/google/android/gms/internal/ads/zzayx;Lcom/google/android/gms/internal/ads/zzayn;Lcom/google/android/gms/internal/ads/zzchl;)V

    .line 3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzayw;

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/internal/ads/zzayw;-><init>(Lcom/google/android/gms/internal/ads/zzayx;Lcom/google/android/gms/internal/ads/zzchl;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzayx;->zzd:Ljava/lang/Object;

    monitor-enter v2

    .line 4
    :try_start_0
    new-instance v3, Lcom/google/android/gms/internal/ads/zzaym;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzayx;->zzc:Landroid/content/Context;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzq()Lcom/google/android/gms/ads/internal/util/zzby;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/ads/internal/util/zzby;->zza()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, v4, v5, v1, p1}, Lcom/google/android/gms/internal/ads/zzaym;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;)V

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzayx;->zza:Lcom/google/android/gms/internal/ads/zzaym;

    .line 6
    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/BaseGmsClient;->checkAvailabilityAndConnect()V

    .line 7
    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
