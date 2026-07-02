.class abstract Lcom/google/android/gms/internal/ads/zzfrd;
.super Lcom/google/android/gms/internal/ads/zzfri;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<InputT:",
        "Ljava/lang/Object;",
        "OutputT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzfri<",
        "TOutputT;>;"
    }
.end annotation


# static fields
.field private static final zza:Ljava/util/logging/Logger;


# instance fields
.field private zzb:Lcom/google/android/gms/internal/ads/zzfoe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzfoe<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "+TInputT;>;>;"
        }
    .end annotation
.end field

.field private final zzc:Z

.field private final zzd:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzfrd;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfrd;->zza:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfoe;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzfoe<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "+TInputT;>;>;ZZ)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfri;-><init>(I)V

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfrd;->zzb:Lcom/google/android/gms/internal/ads/zzfoe;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzfrd;->zzc:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzfrd;->zzd:Z

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method private final zzJ(Ljava/lang/Throwable;)V
    .locals 1

    if-eqz p1, :cond_3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfrd;->zzc:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfqw;->zzq(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfri;->zzG()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzfrd;->zzM(Ljava/util/Set;Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfrd;->zzK(Ljava/lang/Throwable;)V

    return-void

    .line 3
    :cond_1
    :goto_0
    instance-of v0, p1, Ljava/lang/Error;

    if-eqz v0, :cond_2

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfrd;->zzK(Ljava/lang/Throwable;)V

    :cond_2
    return-void

    :cond_3
    const/4 p1, 0x0

    .line 6
    throw p1
.end method

.method private static zzK(Ljava/lang/Throwable;)V
    .locals 7

    .line 1
    instance-of v0, p0, Ljava/lang/Error;

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    const-string v0, "Got more than one input Future failure. Logging failures after the first"

    goto :goto_0

    :cond_0
    const-string v0, "Input Future failed with Error"

    :goto_0
    move-object v5, v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfrd;->zza:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "com.google.common.util.concurrent.AggregateFuture"

    const-string v4, "log"

    move-object v6, p0

    .line 2
    invoke-virtual/range {v1 .. v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final zzL(ILjava/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Future<",
            "+TInputT;>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzfsd;->zzq(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfrd;->zzz(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfrd;->zzJ(Ljava/lang/Throwable;)V

    return-void

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfrd;->zzJ(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static zzM(Ljava/util/Set;Ljava/lang/Throwable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/lang/Throwable;",
            ")Z"
        }
    .end annotation

    :goto_0
    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzfrd;Lcom/google/android/gms/internal/ads/zzfoe;)Lcom/google/android/gms/internal/ads/zzfoe;
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfrd;->zzb:Lcom/google/android/gms/internal/ads/zzfoe;

    return-object p1
.end method

.method static synthetic zzx(Lcom/google/android/gms/internal/ads/zzfrd;ILjava/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Future<",
            "+TInputT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfrd;->zzL(ILjava/util/concurrent/Future;)V

    return-void
.end method

.method static synthetic zzy(Lcom/google/android/gms/internal/ads/zzfrd;Lcom/google/android/gms/internal/ads/zzfoe;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzfoe<",
            "+",
            "Ljava/util/concurrent/Future<",
            "+TInputT;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfri;->zzH()I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "Less than 0 remaining futures"

    .line 2
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzflx;->zzb(ZLjava/lang/Object;)V

    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfoe;->zza()Lcom/google/android/gms/internal/ads/zzfql;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 4
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzfrd;->zzL(ILjava/util/concurrent/Future;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfri;->zzI()V

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfrd;->zzA()V

    const/4 p1, 0x2

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfrd;->zzB(I)V

    :cond_3
    return-void
.end method


# virtual methods
.method abstract zzA()V
.end method

.method zzB(I)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfrd;->zzb:Lcom/google/android/gms/internal/ads/zzfoe;

    return-void
.end method

.method final zzb()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfrd;->zzb:Lcom/google/android/gms/internal/ads/zzfoe;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfrd;->zzA()V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfrd;->zzc:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfrd;->zzb:Lcom/google/android/gms/internal/ads/zzfoe;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfoe;->zza()Lcom/google/android/gms/internal/ads/zzfql;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzfsm;

    add-int/lit8 v3, v1, 0x1

    new-instance v4, Lcom/google/android/gms/internal/ads/zzfrb;

    .line 5
    invoke-direct {v4, p0, v2, v1}, Lcom/google/android/gms/internal/ads/zzfrb;-><init>(Lcom/google/android/gms/internal/ads/zzfrd;Lcom/google/android/gms/internal/ads/zzfsm;I)V

    .line 6
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfrr;->zza:Lcom/google/android/gms/internal/ads/zzfrr;

    .line 5
    invoke-interface {v2, v4, v1}, Lcom/google/android/gms/internal/ads/zzfsm;->zze(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    move v1, v3

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfrd;->zzd:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfrd;->zzb:Lcom/google/android/gms/internal/ads/zzfoe;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfrc;

    .line 7
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzfrc;-><init>(Lcom/google/android/gms/internal/ads/zzfrd;Lcom/google/android/gms/internal/ads/zzfoe;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfrd;->zzb:Lcom/google/android/gms/internal/ads/zzfoe;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfoe;->zza()Lcom/google/android/gms/internal/ads/zzfql;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzfsm;

    .line 9
    sget-object v3, Lcom/google/android/gms/internal/ads/zzfrr;->zza:Lcom/google/android/gms/internal/ads/zzfrr;

    .line 10
    invoke-interface {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzfsm;->zze(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method protected final zzc()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfrd;->zzb:Lcom/google/android/gms/internal/ads/zzfoe;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "futures="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2
    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzfqw;->zzc()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final zzd()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfrd;->zzb:Lcom/google/android/gms/internal/ads/zzfoe;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzfrd;->zzB(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfqw;->isCancelled()Z

    move-result v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfqw;->zzo()Z

    move-result v1

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfoe;->zza()Lcom/google/android/gms/internal/ads/zzfql;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    .line 5
    invoke-interface {v2, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_1

    :cond_1
    return-void
.end method

.method final zzw(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfqw;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfqw;->zzu()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzfrd;->zzM(Ljava/util/Set;Ljava/lang/Throwable;)Z

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method abstract zzz(ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITInputT;)V"
        }
    .end annotation
.end method
