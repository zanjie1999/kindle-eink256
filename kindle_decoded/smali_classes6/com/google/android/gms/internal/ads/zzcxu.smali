.class public final Lcom/google/android/gms/internal/ads/zzcxu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zza:Ljava/util/concurrent/Executor;

.field private final zzb:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfsm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "Lcom/google/android/gms/internal/ads/zzcxn;",
            ">;"
        }
    .end annotation
.end field

.field private volatile zzd:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzfsm;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "Lcom/google/android/gms/internal/ads/zzcxn;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcxu;->zzd:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcxu;->zza:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcxu;->zzb:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcxu;->zzc:Lcom/google/android/gms/internal/ads/zzfsm;

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzcxu;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzfrz;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzcxg;",
            ">;>;",
            "Lcom/google/android/gms/internal/ads/zzfrz<",
            "Lcom/google/android/gms/internal/ads/zzcxg;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfsd;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v0

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfsm;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcxp;

    .line 5
    invoke-direct {v2, p2}, Lcom/google/android/gms/internal/ads/zzcxp;-><init>(Lcom/google/android/gms/internal/ads/zzfrz;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcxu;->zza:Ljava/util/concurrent/Executor;

    const-class v4, Ljava/lang/Throwable;

    .line 6
    invoke-static {v0, v4, v2, v3}, Lcom/google/android/gms/internal/ads/zzfsd;->zzg(Lcom/google/android/gms/internal/ads/zzfsm;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzfrk;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcxq;

    .line 7
    invoke-direct {v2, p0, p2, v1}, Lcom/google/android/gms/internal/ads/zzcxq;-><init>(Lcom/google/android/gms/internal/ads/zzcxu;Lcom/google/android/gms/internal/ads/zzfrz;Lcom/google/android/gms/internal/ads/zzfsm;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcxu;->zza:Ljava/util/concurrent/Executor;

    .line 8
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzfsd;->zzi(Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzfrk;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcxt;

    .line 9
    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/internal/ads/zzcxt;-><init>(Lcom/google/android/gms/internal/ads/zzcxu;Lcom/google/android/gms/internal/ads/zzfrz;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcxu;->zza:Ljava/util/concurrent/Executor;

    invoke-static {v0, p1, p0}, Lcom/google/android/gms/internal/ads/zzfsd;->zzp(Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzfrz;Ljava/util/concurrent/Executor;)V

    return-void

    .line 1
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcxu;->zza:Ljava/util/concurrent/Executor;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzcxo;

    .line 2
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzcxo;-><init>(Lcom/google/android/gms/internal/ads/zzfrz;)V

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzcxu;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzchg;->zze:Lcom/google/android/gms/internal/ads/zzfsn;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcxr;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcxr;-><init>(Lcom/google/android/gms/internal/ads/zzcxu;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfrz;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzfrz<",
            "Lcom/google/android/gms/internal/ads/zzcxg;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxu;->zzc:Lcom/google/android/gms/internal/ads/zzfsm;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcxs;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzcxs;-><init>(Lcom/google/android/gms/internal/ads/zzcxu;Lcom/google/android/gms/internal/ads/zzfrz;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcxu;->zza:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzfsd;->zzp(Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzfrz;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final zzc()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcxu;->zzd:Z

    return v0
.end method

.method final synthetic zze()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcxu;->zzd:Z

    return-void
.end method

.method final synthetic zzf(Lcom/google/android/gms/internal/ads/zzfrz;Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzcxg;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 1
    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/ads/zzfrz;->zzb(Ljava/lang/Object;)V

    .line 2
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzblj;->zzb:Lcom/google/android/gms/internal/ads/zzbkn;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbkn;->zze()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcxu;->zzb:Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    invoke-static {p2, v0, v1, p1, p3}, Lcom/google/android/gms/internal/ads/zzfsd;->zzh(Lcom/google/android/gms/internal/ads/zzfsm;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    return-object p1
.end method
