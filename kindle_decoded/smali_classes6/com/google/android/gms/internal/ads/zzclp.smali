.class public final Lcom/google/android/gms/internal/ads/zzclp;
.super Lcom/google/android/gms/internal/ads/zzag;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzaj;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzclo;

.field private final zzd:Ljava/lang/String;

.field private final zze:I

.field private final zzf:Z

.field private zzg:Ljava/io/InputStream;

.field private zzh:Z

.field private zzi:Landroid/net/Uri;

.field private volatile zzj:Lcom/google/android/gms/internal/ads/zzayn;

.field private zzk:Z

.field private zzl:Z

.field private zzm:Z

.field private zzn:Z

.field private zzo:J

.field private zzp:Lcom/google/android/gms/internal/ads/zzfsm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final zzq:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaj;Ljava/lang/String;ILcom/google/android/gms/internal/ads/zzay;Lcom/google/android/gms/internal/ads/zzclo;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzag;-><init>(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzclp;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzb:Lcom/google/android/gms/internal/ads/zzaj;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzc:Lcom/google/android/gms/internal/ads/zzclo;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzd:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzclp;->zze:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzk:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzl:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzm:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzn:Z

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzo:J

    .line 2
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 p2, -0x1

    invoke-direct {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzq:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzp:Lcom/google/android/gms/internal/ads/zzfsm;

    .line 3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbjl;->zzbl:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzf:Z

    .line 5
    invoke-virtual {p0, p5}, Lcom/google/android/gms/internal/ads/zzag;->zza(Lcom/google/android/gms/internal/ads/zzay;)V

    return-void
.end method

.method private final zzr()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzf:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbjl;->zzcL:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzm:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbjl;->zzcM:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzn:Z

    if-nez v0, :cond_3

    return v2

    :cond_3
    return v1
.end method


# virtual methods
.method public final zzg([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzh:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzg:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzb:Lcom/google/android/gms/internal/ads/zzaj;

    .line 3
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzah;->zzg([BII)I

    move-result p1

    .line 2
    :goto_0
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzf:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzg:Ljava/io/InputStream;

    if-eqz p2, :cond_2

    .line 4
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzag;->zzd(I)V

    :cond_2
    return p1

    .line 1
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Attempt to read closed GcacheDataSource."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzh(Lcom/google/android/gms/internal/ads/zzan;)J
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "ms"

    const-string v1, "Cache connection took "

    .line 1
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzh:Z

    if-nez v2, :cond_9

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzh:Z

    .line 2
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzan;->zza:Landroid/net/Uri;

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzi:Landroid/net/Uri;

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzf:Z

    if-nez v3, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzag;->zzc(Lcom/google/android/gms/internal/ads/zzan;)V

    .line 4
    :cond_0
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzan;->zza:Landroid/net/Uri;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzayn;->zza(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzayn;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzj:Lcom/google/android/gms/internal/ads/zzayn;

    .line 5
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbjl;->zzcI:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v3

    .line 5
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzj:Lcom/google/android/gms/internal/ads/zzayn;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzj:Lcom/google/android/gms/internal/ads/zzayn;

    .line 7
    iget-wide v7, p1, Lcom/google/android/gms/internal/ads/zzan;->zzf:J

    iput-wide v7, v3, Lcom/google/android/gms/internal/ads/zzayn;->zzh:J

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzj:Lcom/google/android/gms/internal/ads/zzayn;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzd:Ljava/lang/String;

    .line 8
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzfmi;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/google/android/gms/internal/ads/zzayn;->zzi:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzj:Lcom/google/android/gms/internal/ads/zzayn;

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzclp;->zze:I

    .line 9
    iput v7, v3, Lcom/google/android/gms/internal/ads/zzayn;->zzj:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzj:Lcom/google/android/gms/internal/ads/zzayn;

    .line 10
    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/zzayn;->zzg:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbjl;->zzcK:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v3

    .line 12
    check-cast v3, Ljava/lang/Long;

    goto :goto_0

    .line 39
    :cond_1
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbjl;->zzcJ:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v3

    .line 14
    check-cast v3, Ljava/lang/Long;

    .line 10
    :goto_0
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 15
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzj()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v9

    .line 16
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzw()Lcom/google/android/gms/internal/ads/zzayy;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzclp;->zza:Landroid/content/Context;

    iget-object v11, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzj:Lcom/google/android/gms/internal/ads/zzayn;

    invoke-static {v3, v11}, Lcom/google/android/gms/internal/ads/zzayy;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzayn;)Ljava/util/concurrent/Future;

    move-result-object v3

    const/16 v11, 0x2c

    :try_start_0
    sget-object v12, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 17
    invoke-interface {v3, v7, v8, v12}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/zzayz;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 18
    :try_start_1
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzayz;->zzc()Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzk:Z

    .line 19
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzayz;->zzd()Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzm:Z

    .line 20
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzayz;->zzf()Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzn:Z

    .line 21
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzayz;->zze()J

    move-result-wide v12

    iput-wide v12, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzo:J

    .line 22
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzclp;->zzr()Z

    move-result v8

    if-nez v8, :cond_3

    .line 23
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzayz;->zzb()Ljava/io/InputStream;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzg:Ljava/io/InputStream;

    iget-boolean v7, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzf:Z

    if-eqz v7, :cond_2

    .line 24
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzag;->zzc(Lcom/google/android/gms/internal/ads/zzan;)V
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    :cond_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzj()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v9

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzc:Lcom/google/android/gms/internal/ads/zzclo;

    .line 28
    invoke-interface {p1, v2, v6, v7}, Lcom/google/android/gms/internal/ads/zzclo;->zza(ZJ)V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzl:Z

    new-instance p1, Ljava/lang/StringBuilder;

    .line 29
    invoke-direct {p1, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    return-wide v4

    .line 27
    :cond_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzj()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v9

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzc:Lcom/google/android/gms/internal/ads/zzclo;

    .line 28
    invoke-interface {v5, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzclo;->zza(ZJ)V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzl:Z

    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_0
    const/4 v4, 0x1

    goto :goto_1

    :catch_1
    const/4 v4, 0x1

    goto :goto_2

    :catchall_1
    move-exception p1

    const/4 v2, 0x0

    goto :goto_5

    :catch_2
    const/4 v4, 0x0

    .line 25
    :goto_1
    :try_start_2
    invoke-interface {v3, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 26
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 27
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzj()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v9

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzc:Lcom/google/android/gms/internal/ads/zzclo;

    .line 28
    invoke-interface {v5, v4, v2, v3}, Lcom/google/android/gms/internal/ads/zzclo;->zza(ZJ)V

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzl:Z

    new-instance v4, Ljava/lang/StringBuilder;

    .line 29
    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    goto :goto_3

    :catch_3
    const/4 v4, 0x0

    .line 30
    :goto_2
    :try_start_3
    invoke-interface {v3, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 27
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzj()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v9

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzc:Lcom/google/android/gms/internal/ads/zzclo;

    .line 28
    invoke-interface {v5, v4, v2, v3}, Lcom/google/android/gms/internal/ads/zzclo;->zza(ZJ)V

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzl:Z

    new-instance v4, Ljava/lang/StringBuilder;

    .line 29
    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_3
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    goto/16 :goto_7

    :catchall_2
    move-exception p1

    move v2, v4

    .line 27
    :goto_5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzj()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v9

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzc:Lcom/google/android/gms/internal/ads/zzclo;

    .line 28
    invoke-interface {v5, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzclo;->zza(ZJ)V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzl:Z

    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 31
    throw p1

    .line 14
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzj:Lcom/google/android/gms/internal/ads/zzayn;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzj:Lcom/google/android/gms/internal/ads/zzayn;

    .line 32
    iget-wide v7, p1, Lcom/google/android/gms/internal/ads/zzan;->zzf:J

    iput-wide v7, v0, Lcom/google/android/gms/internal/ads/zzayn;->zzh:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzj:Lcom/google/android/gms/internal/ads/zzayn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzd:Ljava/lang/String;

    .line 33
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfmi;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzayn;->zzi:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzj:Lcom/google/android/gms/internal/ads/zzayn;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzclp;->zze:I

    .line 34
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzayn;->zzj:I

    .line 35
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzi()Lcom/google/android/gms/internal/ads/zzayj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzj:Lcom/google/android/gms/internal/ads/zzayn;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzayj;->zzf(Lcom/google/android/gms/internal/ads/zzayn;)Lcom/google/android/gms/internal/ads/zzayk;

    move-result-object v0

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayk;->zza()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayk;->zzd()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzk:Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayk;->zzg()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzm:Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayk;->zze()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzn:Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayk;->zzf()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzo:J

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzl:Z

    .line 36
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzclp;->zzr()Z

    move-result v1

    if-nez v1, :cond_7

    .line 40
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayk;->zzb()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzg:Ljava/io/InputStream;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzf:Z

    if-eqz v0, :cond_6

    .line 41
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzag;->zzc(Lcom/google/android/gms/internal/ads/zzan;)V

    :cond_6
    return-wide v4

    .line 29
    :cond_7
    :goto_7
    iput-boolean v6, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzl:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzj:Lcom/google/android/gms/internal/ads/zzayn;

    if-eqz v0, :cond_8

    new-instance v0, Lcom/google/android/gms/internal/ads/zzan;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzj:Lcom/google/android/gms/internal/ads/zzayn;

    .line 37
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzayn;->zza:Ljava/lang/String;

    .line 38
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzan;->zzc:[B

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzan;->zze:J

    iget-wide v6, p1, Lcom/google/android/gms/internal/ads/zzan;->zzf:J

    iget-wide v8, p1, Lcom/google/android/gms/internal/ads/zzan;->zzg:J

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzan;->zzh:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v10, 0x0

    iget v11, p1, Lcom/google/android/gms/internal/ads/zzan;->zzi:I

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/internal/ads/zzan;-><init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V

    move-object p1, v0

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzb:Lcom/google/android/gms/internal/ads/zzaj;

    .line 39
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzaj;->zzh(Lcom/google/android/gms/internal/ads/zzan;)J

    move-result-wide v0

    return-wide v0

    .line 1
    :cond_9
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Attempt to open an already open GcacheDataSource."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzi()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzi:Landroid/net/Uri;

    return-object v0
.end method

.method public final zzj()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzh:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzh:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzi:Landroid/net/Uri;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzf:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzg:Ljava/io/InputStream;

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzg:Ljava/io/InputStream;

    if-eqz v2, :cond_2

    .line 2
    invoke-static {v2}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzg:Ljava/io/InputStream;

    goto :goto_0

    .line 4
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzb:Lcom/google/android/gms/internal/ads/zzaj;

    .line 3
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaj;->zzj()V

    :goto_0
    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzag;->zze()V

    :cond_3
    return-void

    .line 1
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempt to close an already closed GcacheDataSource."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzk()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzk:Z

    return v0
.end method

.method public final zzl()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzl:Z

    return v0
.end method

.method public final zzm()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzm:Z

    return v0
.end method

.method public final zzn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzn:Z

    return v0
.end method

.method public final zzo()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzo:J

    return-wide v0
.end method

.method public final zzp()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzj:Lcom/google/android/gms/internal/ads/zzayn;

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzq:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzq:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzp:Lcom/google/android/gms/internal/ads/zzfsm;

    if-nez v0, :cond_2

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzchg;->zza:Lcom/google/android/gms/internal/ads/zzfsn;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcln;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzcln;-><init>(Lcom/google/android/gms/internal/ads/zzclp;)V

    .line 4
    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/zzfsn;->zzb(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzp:Lcom/google/android/gms/internal/ads/zzfsm;

    .line 5
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzp:Lcom/google/android/gms/internal/ads/zzfsm;

    .line 6
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_3

    return-wide v1

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzq:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzp:Lcom/google/android/gms/internal/ads/zzfsm;

    .line 7
    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzq:Ljava/util/concurrent/atomic/AtomicLong;

    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0

    :catch_0
    return-wide v1

    :catchall_0
    move-exception v0

    .line 5
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method final synthetic zzq()Ljava/lang/Long;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzi()Lcom/google/android/gms/internal/ads/zzayj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzj:Lcom/google/android/gms/internal/ads/zzayn;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzayj;->zzg(Lcom/google/android/gms/internal/ads/zzayn;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
