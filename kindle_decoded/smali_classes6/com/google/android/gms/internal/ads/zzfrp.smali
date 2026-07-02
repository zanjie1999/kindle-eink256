.class abstract Lcom/google/android/gms/internal/ads/zzfrp;
.super Lcom/google/android/gms/internal/ads/zzfsl;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzfsl<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final zza:Ljava/util/concurrent/Executor;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfrq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfrq;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfrp;->zzb:Lcom/google/android/gms/internal/ads/zzfrq;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfsl;-><init>()V

    if-eqz p2, :cond_0

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfrp;->zza:Ljava/util/concurrent/Executor;

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method abstract zzb(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method final zzd()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfrp;->zzb:Lcom/google/android/gms/internal/ads/zzfrq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfqw;->isDone()Z

    move-result v0

    return v0
.end method

.method final zze()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfrp;->zza:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfrp;->zzb:Lcom/google/android/gms/internal/ads/zzfrq;

    .line 2
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzfqw;->zzq(Ljava/lang/Throwable;)Z

    return-void
.end method

.method final zzf(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfrp;->zzb:Lcom/google/android/gms/internal/ads/zzfrq;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfrq;->zzJ(Lcom/google/android/gms/internal/ads/zzfrq;Lcom/google/android/gms/internal/ads/zzfrp;)Lcom/google/android/gms/internal/ads/zzfrp;

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfrp;->zzb(Ljava/lang/Object;)V

    return-void
.end method

.method final zzg(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfrp;->zzb:Lcom/google/android/gms/internal/ads/zzfrq;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfrq;->zzJ(Lcom/google/android/gms/internal/ads/zzfrq;Lcom/google/android/gms/internal/ads/zzfrp;)Lcom/google/android/gms/internal/ads/zzfrp;

    .line 2
    instance-of v0, p1, Ljava/util/concurrent/ExecutionException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfrp;->zzb:Lcom/google/android/gms/internal/ads/zzfrq;

    .line 3
    check-cast p1, Ljava/util/concurrent/ExecutionException;

    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfqw;->zzq(Ljava/lang/Throwable;)Z

    return-void

    .line 4
    :cond_0
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfrp;->zzb:Lcom/google/android/gms/internal/ads/zzfrq;

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfqw;->cancel(Z)Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfrp;->zzb:Lcom/google/android/gms/internal/ads/zzfrq;

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfqw;->zzq(Ljava/lang/Throwable;)Z

    return-void
.end method
