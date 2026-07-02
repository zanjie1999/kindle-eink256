.class public final Lcom/google/android/gms/internal/ads/zzflc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# direct methods
.method public static zza(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/Task<",
            "TV;>;)",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "TV;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfsu;->zza()Lcom/google/android/gms/internal/ads/zzfsu;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfst;->zza()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzflb;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzflb;-><init>(Lcom/google/android/gms/internal/ads/zzfsu;)V

    .line 3
    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-object v0
.end method
