.class public final Lcom/google/android/gms/internal/ads/zzcjx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzatz;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzauo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzauo<",
            "Lcom/google/android/gms/internal/ads/zzatz;",
            ">;"
        }
    .end annotation
.end field

.field private final zzb:Landroid/content/Context;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzatz;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzcjw;

.field private final zze:Ljava/lang/String;

.field private final zzf:I

.field private final zzg:Z

.field private zzh:Ljava/io/InputStream;

.field private zzi:Z

.field private zzj:Landroid/net/Uri;

.field private volatile zzk:Lcom/google/android/gms/internal/ads/zzayn;

.field private zzl:Z

.field private zzm:Z

.field private zzn:Z

.field private zzo:Z

.field private zzp:J

.field private zzq:Lcom/google/android/gms/internal/ads/zzfsm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final zzr:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzatz;Ljava/lang/String;ILcom/google/android/gms/internal/ads/zzauo;Lcom/google/android/gms/internal/ads/zzcjw;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/zzatz;",
            "Ljava/lang/String;",
            "I",
            "Lcom/google/android/gms/internal/ads/zzauo<",
            "Lcom/google/android/gms/internal/ads/zzatz;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzcjw;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzb:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzc:Lcom/google/android/gms/internal/ads/zzatz;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zza:Lcom/google/android/gms/internal/ads/zzauo;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzd:Lcom/google/android/gms/internal/ads/zzcjw;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zze:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzf:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzl:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzm:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzn:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzo:Z

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzp:J

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 p2, -0x1

    invoke-direct {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzr:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzq:Lcom/google/android/gms/internal/ads/zzfsm;

    .line 2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbjl;->zzbl:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzg:Z

    return-void
.end method

.method private final zzl(Lcom/google/android/gms/internal/ads/zzaub;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zza:Lcom/google/android/gms/internal/ads/zzauo;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcki;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzcki;->zzR(Lcom/google/android/gms/internal/ads/zzatz;Lcom/google/android/gms/internal/ads/zzaub;)V

    :cond_0
    return-void
.end method

.method private final zzm()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzg:Z

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

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzn:Z

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

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzo:Z

    if-nez v0, :cond_3

    return v2

    :cond_3
    return v1
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzaub;)J
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "ms"

    const-string v1, "Cache connection took "

    .line 1
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzi:Z

    if-nez v2, :cond_9

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzi:Z

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzaub;->zza:Landroid/net/Uri;

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzj:Landroid/net/Uri;

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzg:Z

    if-nez v3, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcjx;->zzl(Lcom/google/android/gms/internal/ads/zzaub;)V

    :cond_0
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzaub;->zza:Landroid/net/Uri;

    .line 3
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzayn;->zza(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzayn;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzk:Lcom/google/android/gms/internal/ads/zzayn;

    .line 4
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbjl;->zzcI:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v3

    .line 4
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzk:Lcom/google/android/gms/internal/ads/zzayn;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzk:Lcom/google/android/gms/internal/ads/zzayn;

    iget-wide v7, p1, Lcom/google/android/gms/internal/ads/zzaub;->zzc:J

    .line 6
    iput-wide v7, v3, Lcom/google/android/gms/internal/ads/zzayn;->zzh:J

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzk:Lcom/google/android/gms/internal/ads/zzayn;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zze:Ljava/lang/String;

    .line 7
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzfmi;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/google/android/gms/internal/ads/zzayn;->zzi:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzk:Lcom/google/android/gms/internal/ads/zzayn;

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzf:I

    .line 8
    iput v7, v3, Lcom/google/android/gms/internal/ads/zzayn;->zzj:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzk:Lcom/google/android/gms/internal/ads/zzayn;

    .line 9
    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/zzayn;->zzg:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbjl;->zzcK:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v3

    .line 11
    check-cast v3, Ljava/lang/Long;

    goto :goto_0

    .line 38
    :cond_1
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbjl;->zzcJ:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v3

    .line 13
    check-cast v3, Ljava/lang/Long;

    .line 9
    :goto_0
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 14
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzj()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v9

    .line 15
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzw()Lcom/google/android/gms/internal/ads/zzayy;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzb:Landroid/content/Context;

    iget-object v11, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzk:Lcom/google/android/gms/internal/ads/zzayn;

    invoke-static {v3, v11}, Lcom/google/android/gms/internal/ads/zzayy;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzayn;)Ljava/util/concurrent/Future;

    move-result-object v3

    const/16 v11, 0x2c

    :try_start_0
    sget-object v12, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 16
    invoke-interface {v3, v7, v8, v12}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/zzayz;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    :try_start_1
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzayz;->zzc()Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzl:Z

    .line 18
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzayz;->zzd()Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzn:Z

    .line 19
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzayz;->zzf()Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzo:Z

    .line 20
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzayz;->zze()J

    move-result-wide v12

    iput-wide v12, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzp:J

    .line 21
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcjx;->zzm()Z

    move-result v8

    if-nez v8, :cond_3

    .line 22
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzayz;->zzb()Ljava/io/InputStream;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzh:Ljava/io/InputStream;

    iget-boolean v7, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzg:Z

    if-eqz v7, :cond_2

    .line 23
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcjx;->zzl(Lcom/google/android/gms/internal/ads/zzaub;)V
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    :cond_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzj()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v9

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzd:Lcom/google/android/gms/internal/ads/zzcjw;

    .line 27
    invoke-interface {p1, v2, v6, v7}, Lcom/google/android/gms/internal/ads/zzcjw;->zza(ZJ)V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzm:Z

    new-instance p1, Ljava/lang/StringBuilder;

    .line 28
    invoke-direct {p1, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    return-wide v4

    .line 26
    :cond_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzj()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v9

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzd:Lcom/google/android/gms/internal/ads/zzcjw;

    .line 27
    invoke-interface {v5, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzcjw;->zza(ZJ)V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzm:Z

    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
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

    .line 24
    :goto_1
    :try_start_2
    invoke-interface {v3, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 25
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 26
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzj()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v9

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzd:Lcom/google/android/gms/internal/ads/zzcjw;

    .line 27
    invoke-interface {v5, v4, v2, v3}, Lcom/google/android/gms/internal/ads/zzcjw;->zza(ZJ)V

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzm:Z

    new-instance v4, Ljava/lang/StringBuilder;

    .line 28
    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    goto :goto_3

    :catch_3
    const/4 v4, 0x0

    .line 29
    :goto_2
    :try_start_3
    invoke-interface {v3, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 26
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzj()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v9

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzd:Lcom/google/android/gms/internal/ads/zzcjw;

    .line 27
    invoke-interface {v5, v4, v2, v3}, Lcom/google/android/gms/internal/ads/zzcjw;->zza(ZJ)V

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzm:Z

    new-instance v4, Ljava/lang/StringBuilder;

    .line 28
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

    .line 26
    :goto_5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzj()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v9

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzd:Lcom/google/android/gms/internal/ads/zzcjw;

    .line 27
    invoke-interface {v5, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzcjw;->zza(ZJ)V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzm:Z

    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 30
    throw p1

    .line 13
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzk:Lcom/google/android/gms/internal/ads/zzayn;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzk:Lcom/google/android/gms/internal/ads/zzayn;

    iget-wide v7, p1, Lcom/google/android/gms/internal/ads/zzaub;->zzc:J

    .line 31
    iput-wide v7, v0, Lcom/google/android/gms/internal/ads/zzayn;->zzh:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzk:Lcom/google/android/gms/internal/ads/zzayn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zze:Ljava/lang/String;

    .line 32
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfmi;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzayn;->zzi:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzk:Lcom/google/android/gms/internal/ads/zzayn;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzf:I

    .line 33
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzayn;->zzj:I

    .line 34
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzi()Lcom/google/android/gms/internal/ads/zzayj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzk:Lcom/google/android/gms/internal/ads/zzayn;

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

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzl:Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayk;->zzg()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzn:Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayk;->zze()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzo:Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayk;->zzf()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzp:J

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzm:Z

    .line 35
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcjx;->zzm()Z

    move-result v1

    if-nez v1, :cond_7

    .line 39
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayk;->zzb()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzh:Ljava/io/InputStream;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzg:Z

    if-eqz v0, :cond_6

    .line 40
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcjx;->zzl(Lcom/google/android/gms/internal/ads/zzaub;)V

    :cond_6
    return-wide v4

    .line 28
    :cond_7
    :goto_7
    iput-boolean v6, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzm:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzk:Lcom/google/android/gms/internal/ads/zzayn;

    if-eqz v0, :cond_8

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaub;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzk:Lcom/google/android/gms/internal/ads/zzayn;

    .line 36
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzayn;->zza:Ljava/lang/String;

    .line 37
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzaub;->zzb:J

    iget-wide v6, p1, Lcom/google/android/gms/internal/ads/zzaub;->zzc:J

    iget-wide v8, p1, Lcom/google/android/gms/internal/ads/zzaub;->zzd:J

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/internal/ads/zzaub;-><init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V

    move-object p1, v0

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzc:Lcom/google/android/gms/internal/ads/zzatz;

    .line 38
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzatz;->zza(Lcom/google/android/gms/internal/ads/zzaub;)J

    move-result-wide v0

    return-wide v0

    .line 1
    :cond_9
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Attempt to open an already open CacheDataSource."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzb([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzi:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzh:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzc:Lcom/google/android/gms/internal/ads/zzatz;

    .line 3
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzatz;->zzb([BII)I

    move-result p1

    .line 2
    :goto_0
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzg:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzh:Ljava/io/InputStream;

    if-eqz p2, :cond_2

    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zza:Lcom/google/android/gms/internal/ads/zzauo;

    if-eqz p2, :cond_2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzcki;

    .line 4
    invoke-virtual {p2, p0, p1}, Lcom/google/android/gms/internal/ads/zzcki;->zzS(Lcom/google/android/gms/internal/ads/zzatz;I)V

    :cond_2
    return p1

    .line 1
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Attempt to read closed CacheDataSource."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzc()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzj:Landroid/net/Uri;

    return-object v0
.end method

.method public final zzd()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzi:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzi:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzj:Landroid/net/Uri;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzh:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzh:Ljava/io/InputStream;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzc:Lcom/google/android/gms/internal/ads/zzatz;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzatz;->zzd()V

    return-void

    .line 1
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempt to close an already closed CacheDataSource."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zze()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzl:Z

    return v0
.end method

.method public final zzf()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzm:Z

    return v0
.end method

.method public final zzg()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzn:Z

    return v0
.end method

.method public final zzh()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzo:Z

    return v0
.end method

.method public final zzi()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzp:J

    return-wide v0
.end method

.method public final zzj()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzk:Lcom/google/android/gms/internal/ads/zzayn;

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzr:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzr:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzq:Lcom/google/android/gms/internal/ads/zzfsm;

    if-nez v0, :cond_2

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzchg;->zza:Lcom/google/android/gms/internal/ads/zzfsn;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcjv;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzcjv;-><init>(Lcom/google/android/gms/internal/ads/zzcjx;)V

    .line 4
    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/zzfsn;->zzb(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzq:Lcom/google/android/gms/internal/ads/zzfsm;

    .line 5
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzq:Lcom/google/android/gms/internal/ads/zzfsm;

    .line 6
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_3

    return-wide v1

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzr:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzq:Lcom/google/android/gms/internal/ads/zzfsm;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzr:Ljava/util/concurrent/atomic/AtomicLong;

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

.method final synthetic zzk()Ljava/lang/Long;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzi()Lcom/google/android/gms/internal/ads/zzayj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzk:Lcom/google/android/gms/internal/ads/zzayn;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzayj;->zzg(Lcom/google/android/gms/internal/ads/zzayn;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
