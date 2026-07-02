.class public final Lcom/google/android/gms/internal/ads/zzamn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private zza:J

.field private zzb:J

.field private zzc:J

.field private final zzd:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/ThreadLocal;

    invoke-direct {p1}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamn;->zzd:Ljava/lang/ThreadLocal;

    const-wide/16 p1, 0x0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzamn;->zzd(J)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized zza()J
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzamn;->zza:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    const-wide v2, 0x7ffffffffffffffeL

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-wide v0

    :cond_1
    :goto_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzb()J
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzamn;->zzc:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzamn;->zzb:J

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamn;->zza()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzc()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzamn;->zzb:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzd(J)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzamn;->zza:J

    const-wide v0, 0x7fffffffffffffffL

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, p1, v0

    if-nez v4, :cond_0

    const-wide/16 p1, 0x0

    goto :goto_0

    :cond_0
    move-wide p1, v2

    :goto_0
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzamn;->zzb:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzamn;->zzc:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zze(J)J
    .locals 12

    monitor-enter p0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 1
    monitor-exit p0

    return-wide v0

    :cond_0
    :try_start_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzamn;->zzc:J

    const-wide/32 v4, 0xf4240

    const-wide/32 v6, 0x15f90

    cmp-long v8, v2, v0

    if-eqz v8, :cond_1

    mul-long v2, v2, v6

    div-long/2addr v2, v4

    const-wide v0, 0x100000000L

    add-long/2addr v0, v2

    const-wide v8, 0x200000000L

    div-long/2addr v0, v8

    const-wide/16 v10, -0x1

    add-long/2addr v10, v0

    mul-long v10, v10, v8

    add-long/2addr v10, p1

    mul-long v0, v0, v8

    add-long/2addr p1, v0

    sub-long v0, v10, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    sub-long v2, p1, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    cmp-long v8, v0, v2

    if-gez v8, :cond_1

    move-wide p1, v10

    :cond_1
    mul-long p1, p1, v4

    div-long/2addr p1, v6

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzamn;->zzf(J)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzf(J)J
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzamn;->zzb:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzamn;->zza:J

    const-wide v2, 0x7ffffffffffffffeL

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamn;->zzd:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1

    :cond_1
    :goto_0
    sub-long/2addr v0, p1

    .line 1
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzamn;->zzb:J

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_2
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzamn;->zzc:J

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzamn;->zzb:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-long/2addr p1, v0

    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
