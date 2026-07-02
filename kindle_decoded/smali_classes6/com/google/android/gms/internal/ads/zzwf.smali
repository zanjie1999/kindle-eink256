.class public final Lcom/google/android/gms/internal/ads/zzwf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zza:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final zzb:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/zzwc<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final zzc:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lcom/google/android/gms/internal/ads/zzwc<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final zzd:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lcom/google/android/gms/internal/ads/zzwc<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final zze:Lcom/google/android/gms/internal/ads/zzvm;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzvv;

.field private final zzg:[Lcom/google/android/gms/internal/ads/zzvw;

.field private zzh:Lcom/google/android/gms/internal/ads/zzvo;

.field private final zzi:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzwe;",
            ">;"
        }
    .end annotation
.end field

.field private final zzj:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzwd;",
            ">;"
        }
    .end annotation
.end field

.field private final zzk:Lcom/google/android/gms/internal/ads/zzvt;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzvm;Lcom/google/android/gms/internal/ads/zzvv;I)V
    .locals 2

    .line 1
    new-instance p3, Lcom/google/android/gms/internal/ads/zzvt;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p3, v0}, Lcom/google/android/gms/internal/ads/zzvt;-><init>(Landroid/os/Handler;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->zza:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/HashSet;

    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->zzb:Ljava/util/Set;

    .line 4
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->zzc:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    .line 5
    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->zzd:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->zzi:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->zzj:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwf;->zze:Lcom/google/android/gms/internal/ads/zzvm;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzwf;->zzf:Lcom/google/android/gms/internal/ads/zzvv;

    const/4 p1, 0x4

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzvw;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwf;->zzg:[Lcom/google/android/gms/internal/ads/zzvw;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzwf;->zzk:Lcom/google/android/gms/internal/ads/zzvt;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->zzh:Lcom/google/android/gms/internal/ads/zzvo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzvo;->zzb()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->zzg:[Lcom/google/android/gms/internal/ads/zzvw;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_2

    aget-object v3, v0, v2

    if-eqz v3, :cond_1

    .line 2
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzvw;->zza()V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzvo;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzwf;->zzc:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzwf;->zzd:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzwf;->zze:Lcom/google/android/gms/internal/ads/zzvm;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzwf;->zzk:Lcom/google/android/gms/internal/ads/zzvt;

    const/4 v9, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzvo;-><init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/google/android/gms/internal/ads/zzvm;Lcom/google/android/gms/internal/ads/zzvt;[B)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->zzh:Lcom/google/android/gms/internal/ads/zzvo;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_1
    if-ge v1, v3, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzvw;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzwf;->zzd:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzwf;->zzf:Lcom/google/android/gms/internal/ads/zzvv;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzwf;->zze:Lcom/google/android/gms/internal/ads/zzvm;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzwf;->zzk:Lcom/google/android/gms/internal/ads/zzvt;

    const/4 v9, 0x0

    move-object v4, v0

    .line 5
    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzvw;-><init>(Ljava/util/concurrent/BlockingQueue;Lcom/google/android/gms/internal/ads/zzvv;Lcom/google/android/gms/internal/ads/zzvm;Lcom/google/android/gms/internal/ads/zzvt;[B)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzwf;->zzg:[Lcom/google/android/gms/internal/ads/zzvw;

    aput-object v0, v2, v1

    .line 6
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzwc;)Lcom/google/android/gms/internal/ads/zzwc;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzwc<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/ads/zzwc<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzwc;->zzg(Lcom/google/android/gms/internal/ads/zzwf;)Lcom/google/android/gms/internal/ads/zzwc;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->zzb:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwf;->zzb:Ljava/util/Set;

    .line 2
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->zza:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzwc;->zzh(I)Lcom/google/android/gms/internal/ads/zzwc;

    const-string v0, "add-to-queue"

    .line 6
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzwc;->zzd(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzwf;->zzd(Lcom/google/android/gms/internal/ads/zzwc;I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->zzc:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 8
    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    return-object p1

    :catchall_0
    move-exception p1

    .line 3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method final zzc(Lcom/google/android/gms/internal/ads/zzwc;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzwc<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->zzb:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwf;->zzb:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwf;->zzi:Ljava/util/List;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->zzi:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzwe;

    .line 4
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzwe;->zza()V

    goto :goto_0

    .line 5
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x5

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzwf;->zzd(Lcom/google/android/gms/internal/ads/zzwc;I)V

    return-void

    :catchall_0
    move-exception p1

    .line 5
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method final zzd(Lcom/google/android/gms/internal/ads/zzwc;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzwc<",
            "*>;I)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwf;->zzj:Ljava/util/List;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzwf;->zzj:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzwd;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzwd;->zza()V

    goto :goto_0

    .line 3
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
