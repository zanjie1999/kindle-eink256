.class public final Lcom/google/android/gms/internal/ads/zzach;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzabr;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzyj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzabr;Lcom/google/android/gms/internal/ads/zzyj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzach;->zza:Lcom/google/android/gms/internal/ads/zzabr;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzach;->zzb:Lcom/google/android/gms/internal/ads/zzyj;

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzach;->zza:Lcom/google/android/gms/internal/ads/zzabr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabr;->zzo()Ljava/util/concurrent/Future;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzach;->zza:Lcom/google/android/gms/internal/ads/zzabr;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabr;->zzo()Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzach;->zza:Lcom/google/android/gms/internal/ads/zzabr;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabr;->zzn()Lcom/google/android/gms/internal/ads/zzyz;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzach;->zzb:Lcom/google/android/gms/internal/ads/zzyj;

    .line 4
    monitor-enter v1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzggm; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzach;->zzb:Lcom/google/android/gms/internal/ads/zzyj;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgeg;->zzao()[B

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgfm;->zza()Lcom/google/android/gms/internal/ads/zzgfm;

    move-result-object v3

    const/4 v4, 0x0

    .line 6
    array-length v5, v0

    .line 5
    invoke-virtual {v2, v0, v4, v5, v3}, Lcom/google/android/gms/internal/ads/zzgfw;->zzaj([BIILcom/google/android/gms/internal/ads/zzgfm;)Lcom/google/android/gms/internal/ads/zzgfw;

    .line 7
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzggm; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
