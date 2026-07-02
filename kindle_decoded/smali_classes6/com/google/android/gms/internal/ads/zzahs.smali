.class public final Lcom/google/android/gms/internal/ads/zzahs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzahr;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzahq;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzaku;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzaiq;

.field private zze:I

.field private zzf:Ljava/lang/Object;

.field private final zzg:Landroid/os/Looper;

.field private final zzh:I

.field private zzi:Z

.field private zzj:Z

.field private zzk:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzahq;Lcom/google/android/gms/internal/ads/zzahr;Lcom/google/android/gms/internal/ads/zzaiq;ILcom/google/android/gms/internal/ads/zzaku;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzb:Lcom/google/android/gms/internal/ads/zzahq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzahs;->zza:Lcom/google/android/gms/internal/ads/zzahr;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzd:Lcom/google/android/gms/internal/ads/zzaiq;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzg:Landroid/os/Looper;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzc:Lcom/google/android/gms/internal/ads/zzaku;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzh:I

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzahr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahs;->zza:Lcom/google/android/gms/internal/ads/zzahr;

    return-object v0
.end method

.method public final zzb(I)Lcom/google/android/gms/internal/ads/zzahs;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzi:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakt;->zzd(Z)V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzahs;->zze:I

    return-object p0
.end method

.method public final zzc()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzahs;->zze:I

    return v0
.end method

.method public final zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzahs;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzi:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakt;->zzd(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzf:Ljava/lang/Object;

    return-object p0
.end method

.method public final zze()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzf:Ljava/lang/Object;

    return-object v0
.end method

.method public final zzf()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzg:Landroid/os/Looper;

    return-object v0
.end method

.method public final zzg()Lcom/google/android/gms/internal/ads/zzahs;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzi:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakt;->zzd(Z)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzi:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzb:Lcom/google/android/gms/internal/ads/zzahq;

    .line 2
    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzahq;->zzi(Lcom/google/android/gms/internal/ads/zzahs;)V

    return-object p0
.end method

.method public final declared-synchronized zzh()Z
    .locals 1

    monitor-enter p0

    monitor-exit p0

    const/4 v0, 0x0

    return v0
.end method

.method public final declared-synchronized zzi(Z)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzj:Z

    or-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzj:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzk:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzj(J)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzi:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakt;->zzd(Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzg:Landroid/os/Looper;

    .line 2
    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    if-eq p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakt;->zzd(Z)V

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    const-wide/16 v0, 0x7d0

    add-long/2addr p1, v0

    :goto_1
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzk:Z

    if-nez v2, :cond_2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 4
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v0, p1, v0

    goto :goto_1

    .line 6
    :cond_1
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    const-string p2, "Message delivery timed out."

    invoke-direct {p1, p2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_2
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzj:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
