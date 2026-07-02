.class public final Lcom/google/android/gms/internal/ads/zzfsd;
.super Lcom/google/android/gms/internal/ads/zzfsf;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# direct methods
.method public static zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(TV;)",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "TV;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/google/android/gms/internal/ads/zzfsh;->zza:Lcom/google/android/gms/internal/ads/zzfsm;

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfsh;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfsh;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static zzb()Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfsh;->zza:Lcom/google/android/gms/internal/ads/zzfsm;

    return-object v0
.end method

.method public static zzc(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "TV;>;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfsg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfsg;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    .line 2
    throw p0
.end method

.method public static zzd(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TO;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "TO;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzftb;

    .line 2
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzftb;-><init>(Ljava/util/concurrent/Callable;)V

    .line 3
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static zze(Lcom/google/android/gms/internal/ads/zzfrj;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzfrj<",
            "TO;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "TO;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzftb;

    .line 2
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzftb;-><init>(Lcom/google/android/gms/internal/ads/zzfrj;)V

    .line 3
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static zzf(Lcom/google/android/gms/internal/ads/zzfsm;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzfln;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "+TV;>;",
            "Ljava/lang/Class<",
            "TX;>;",
            "Lcom/google/android/gms/internal/ads/zzfln<",
            "-TX;+TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfqu;

    .line 2
    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfqu;-><init>(Lcom/google/android/gms/internal/ads/zzfsm;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzfln;)V

    .line 3
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/zzfst;->zzc(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzfqw;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzfsm;->zze(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static zzg(Lcom/google/android/gms/internal/ads/zzfsm;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzfrk;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "+TV;>;",
            "Ljava/lang/Class<",
            "TX;>;",
            "Lcom/google/android/gms/internal/ads/zzfrk<",
            "-TX;+TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfqt;

    .line 2
    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfqt;-><init>(Lcom/google/android/gms/internal/ads/zzfsm;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzfrk;)V

    .line 3
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/zzfst;->zzc(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzfqw;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzfsm;->zze(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static zzh(Lcom/google/android/gms/internal/ads/zzfsm;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "TV;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "TV;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzfsy;->zzy(Lcom/google/android/gms/internal/ads/zzfsm;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p0

    return-object p0
.end method

.method public static zzi(Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzfrk;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "TI;>;",
            "Lcom/google/android/gms/internal/ads/zzfrk<",
            "-TI;+TO;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "TO;>;"
        }
    .end annotation

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzfra;->zzc:I

    if-eqz p2, :cond_0

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfqy;

    .line 2
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzfqy;-><init>(Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzfrk;)V

    .line 3
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzfst;->zzc(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzfqw;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzfsm;->zze(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    .line 4
    throw p0
.end method

.method public static zzj(Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzfln;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "TI;>;",
            "Lcom/google/android/gms/internal/ads/zzfln<",
            "-TI;+TO;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "TO;>;"
        }
    .end annotation

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzfra;->zzc:I

    if-eqz p1, :cond_0

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfqz;

    .line 2
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzfqz;-><init>(Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzfln;)V

    .line 3
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzfst;->zzc(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzfqw;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzfsm;->zze(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    .line 4
    throw p0
.end method

.method public static zzk(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "+TV;>;>;)",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "Ljava/util/List<",
            "TV;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfrl;

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfoj;->zzo(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzfrl;-><init>(Lcom/google/android/gms/internal/ads/zzfoe;Z)V

    return-object v0
.end method

.method public static varargs zzl([Lcom/google/android/gms/internal/ads/zzfsm;)Lcom/google/android/gms/internal/ads/zzfsb;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">([",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "+TV;>;)",
            "Lcom/google/android/gms/internal/ads/zzfsb<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfsb;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfoj;->zzq([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/gms/internal/ads/zzfsb;-><init>(ZLcom/google/android/gms/internal/ads/zzfoj;Lcom/google/android/gms/internal/ads/zzfsc;)V

    return-object v0
.end method

.method public static zzm(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfsb;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "+TV;>;>;)",
            "Lcom/google/android/gms/internal/ads/zzfsb<",
            "TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfsb;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfoj;->zzo(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/gms/internal/ads/zzfsb;-><init>(ZLcom/google/android/gms/internal/ads/zzfoj;Lcom/google/android/gms/internal/ads/zzfsc;)V

    return-object v0
.end method

.method public static varargs zzn([Lcom/google/android/gms/internal/ads/zzfsm;)Lcom/google/android/gms/internal/ads/zzfsb;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">([",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "+TV;>;)",
            "Lcom/google/android/gms/internal/ads/zzfsb<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfsb;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfoj;->zzq([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/gms/internal/ads/zzfsb;-><init>(ZLcom/google/android/gms/internal/ads/zzfoj;Lcom/google/android/gms/internal/ads/zzfsc;)V

    return-object v0
.end method

.method public static zzo(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfsb;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "+TV;>;>;)",
            "Lcom/google/android/gms/internal/ads/zzfsb<",
            "TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfsb;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfoj;->zzo(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/gms/internal/ads/zzfsb;-><init>(ZLcom/google/android/gms/internal/ads/zzfoj;Lcom/google/android/gms/internal/ads/zzfsc;)V

    return-object v0
.end method

.method public static zzp(Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzfrz;Ljava/util/concurrent/Executor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "TV;>;",
            "Lcom/google/android/gms/internal/ads/zzfrz<",
            "-TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfsa;

    .line 1
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzfsa;-><init>(Ljava/util/concurrent/Future;Lcom/google/android/gms/internal/ads/zzfrz;)V

    invoke-interface {p0, v0, p2}, Lcom/google/android/gms/internal/ads/zzfsm;->zze(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 2
    throw p0
.end method

.method public static zzq(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzftd;->zza(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "Future was expected to be done: %s"

    .line 3
    invoke-static {p0, v1}, Lcom/google/android/gms/internal/ads/zzfmi;->zzd(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static zzr(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzftd;->zza(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 3
    instance-of v0, p0, Ljava/lang/Error;

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfrs;

    .line 4
    check-cast p0, Ljava/lang/Error;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfrs;-><init>(Ljava/lang/Error;)V

    throw v0

    .line 1
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzftc;

    .line 5
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzftc;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
