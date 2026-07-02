.class final Lcom/google/android/gms/internal/ads/zzfsa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final zza:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation
.end field

.field final zzb:Lcom/google/android/gms/internal/ads/zzfrz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzfrz<",
            "-TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Future;Lcom/google/android/gms/internal/ads/zzfrz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "TV;>;",
            "Lcom/google/android/gms/internal/ads/zzfrz<",
            "-TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfsa;->zza:Ljava/util/concurrent/Future;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfsa;->zzb:Lcom/google/android/gms/internal/ads/zzfrz;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsa;->zza:Ljava/util/concurrent/Future;

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzfte;

    if-eqz v1, :cond_1

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzfte;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzftf;->zza(Lcom/google/android/gms/internal/ads/zzfte;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfsa;->zzb:Lcom/google/android/gms/internal/ads/zzfrz;

    .line 8
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzfrz;->zza(Ljava/lang/Throwable;)V

    return-void

    .line 3
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsa;->zza:Ljava/util/concurrent/Future;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfsd;->zzq(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfsa;->zzb:Lcom/google/android/gms/internal/ads/zzfrz;

    .line 7
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzfrz;->zzb(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 6
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfsa;->zzb:Lcom/google/android/gms/internal/ads/zzfrz;

    .line 5
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzfrz;->zza(Ljava/lang/Throwable;)V

    return-void

    :catch_2
    move-exception v0

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfsa;->zzb:Lcom/google/android/gms/internal/ads/zzfrz;

    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzfrz;->zza(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfls;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzflr;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfsa;->zzb:Lcom/google/android/gms/internal/ads/zzfrz;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzflr;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzflr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzflr;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
