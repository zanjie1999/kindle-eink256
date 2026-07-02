.class final Lcom/google/android/gms/internal/ads/zzfqw$zzh;
.super Lcom/google/android/gms/internal/ads/zzfqw$zza;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfqw$zze;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfqw$zza;-><init>(Lcom/google/android/gms/internal/ads/zzfqw$zze;)V

    return-void
.end method


# virtual methods
.method final zza(Lcom/google/android/gms/internal/ads/zzfqw$zzl;Ljava/lang/Thread;)V
    .locals 0

    iput-object p2, p1, Lcom/google/android/gms/internal/ads/zzfqw$zzl;->thread:Ljava/lang/Thread;

    return-void
.end method

.method final zzb(Lcom/google/android/gms/internal/ads/zzfqw$zzl;Lcom/google/android/gms/internal/ads/zzfqw$zzl;)V
    .locals 0

    iput-object p2, p1, Lcom/google/android/gms/internal/ads/zzfqw$zzl;->next:Lcom/google/android/gms/internal/ads/zzfqw$zzl;

    return-void
.end method

.method final zzc(Lcom/google/android/gms/internal/ads/zzfqw;Lcom/google/android/gms/internal/ads/zzfqw$zzl;Lcom/google/android/gms/internal/ads/zzfqw$zzl;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzfqw<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/zzfqw$zzl;",
            "Lcom/google/android/gms/internal/ads/zzfqw$zzl;",
            ")Z"
        }
    .end annotation

    .line 1
    monitor-enter p1

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfqw;->zzl(Lcom/google/android/gms/internal/ads/zzfqw;)Lcom/google/android/gms/internal/ads/zzfqw$zzl;

    move-result-object v0

    if-ne v0, p2, :cond_0

    .line 2
    invoke-static {p1, p3}, Lcom/google/android/gms/internal/ads/zzfqw;->zzm(Lcom/google/android/gms/internal/ads/zzfqw;Lcom/google/android/gms/internal/ads/zzfqw$zzl;)Lcom/google/android/gms/internal/ads/zzfqw$zzl;

    .line 3
    monitor-exit p1

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_0
    monitor-exit p1

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p2

    .line 5
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method final zzd(Lcom/google/android/gms/internal/ads/zzfqw;Lcom/google/android/gms/internal/ads/zzfqw$zzd;Lcom/google/android/gms/internal/ads/zzfqw$zzd;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzfqw<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/zzfqw$zzd;",
            "Lcom/google/android/gms/internal/ads/zzfqw$zzd;",
            ")Z"
        }
    .end annotation

    .line 1
    monitor-enter p1

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfqw;->zzj(Lcom/google/android/gms/internal/ads/zzfqw;)Lcom/google/android/gms/internal/ads/zzfqw$zzd;

    move-result-object v0

    if-ne v0, p2, :cond_0

    .line 2
    invoke-static {p1, p3}, Lcom/google/android/gms/internal/ads/zzfqw;->zzk(Lcom/google/android/gms/internal/ads/zzfqw;Lcom/google/android/gms/internal/ads/zzfqw$zzd;)Lcom/google/android/gms/internal/ads/zzfqw$zzd;

    .line 3
    monitor-exit p1

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_0
    monitor-exit p1

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p2

    .line 5
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method final zze(Lcom/google/android/gms/internal/ads/zzfqw;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzfqw<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfqw;->zzh(Lcom/google/android/gms/internal/ads/zzfqw;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_0

    .line 3
    invoke-static {p1, p3}, Lcom/google/android/gms/internal/ads/zzfqw;->zzi(Lcom/google/android/gms/internal/ads/zzfqw;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    monitor-exit p1

    const/4 p1, 0x1

    return p1

    .line 5
    :cond_0
    monitor-exit p1

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p2

    .line 6
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
