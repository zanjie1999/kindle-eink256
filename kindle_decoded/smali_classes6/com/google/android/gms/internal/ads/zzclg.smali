.class public final Lcom/google/android/gms/internal/ads/zzclg;
.super Lcom/google/android/gms/internal/ads/zzcla;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzauo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzcla;",
        "Lcom/google/android/gms/internal/ads/zzauo<",
        "Lcom/google/android/gms/internal/ads/zzatz;",
        ">;"
    }
.end annotation


# instance fields
.field private zzd:Ljava/lang/String;

.field private final zze:Lcom/google/android/gms/internal/ads/zzcja;

.field private zzf:Z

.field private final zzg:Lcom/google/android/gms/internal/ads/zzclf;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzckl;

.field private zzi:Ljava/nio/ByteBuffer;

.field private zzj:Z

.field private final zzk:Ljava/lang/Object;

.field private final zzl:Ljava/lang/String;

.field private final zzm:I

.field private zzn:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcjb;Lcom/google/android/gms/internal/ads/zzcja;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcla;-><init>(Lcom/google/android/gms/internal/ads/zzcjb;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzclg;->zze:Lcom/google/android/gms/internal/ads/zzcja;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzclf;

    .line 2
    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzclf;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzclg;->zzg:Lcom/google/android/gms/internal/ads/zzclf;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzckl;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzckl;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzclg;->zzh:Lcom/google/android/gms/internal/ads/zzckl;

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzclg;->zzk:Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcjb;->zzn()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzclg;->zzl:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcjb;->zzp()I

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzclg;->zzm:I

    return-void
.end method

.method protected static final zzt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzcgm;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "cache:"

    if-eqz v0, :cond_0

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method private final zzu()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclg;->zzg:Lcom/google/android/gms/internal/ads/zzclf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzclf;->zza()J

    move-result-wide v0

    long-to-int v6, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclg;->zzh:Lcom/google/android/gms/internal/ads/zzckl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzclg;->zzi:Ljava/nio/ByteBuffer;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzckl;->zza(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    long-to-int v1, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclg;->zzi:Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    int-to-float v0, v1

    int-to-float v2, v5

    int-to-float v3, v6

    div-float/2addr v2, v3

    mul-float v0, v0, v2

    .line 4
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v2, 0x1

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v11, 0x0

    .line 5
    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcis;->zzP()I

    move-result v12

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcis;->zzQ()I

    move-result v13

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzclg;->zzd:Ljava/lang/String;

    .line 7
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzclg;->zzt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    int-to-long v7, v0

    int-to-long v9, v1

    move-object v2, p0

    .line 8
    invoke-virtual/range {v2 .. v13}, Lcom/google/android/gms/internal/ads/zzcla;->zzo(Ljava/lang/String;Ljava/lang/String;IIJJZII)V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclg;->zzd:Ljava/lang/String;

    return-object v0
.end method

.method public final zzb()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzclg;->zzn:Z

    return v0
.end method

.method public final zzc()Ljava/nio/ByteBuffer;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclg;->zzk:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzclg;->zzi:Ljava/nio/ByteBuffer;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzclg;->zzj:Z

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzclg;->zzj:Z

    :cond_0
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzclg;->zzf:Z

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclg;->zzi:Ljava/nio/ByteBuffer;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final zzd(Ljava/lang/String;)Z
    .locals 25

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    .line 1
    iput-object v10, v9, Lcom/google/android/gms/internal/ads/zzclg;->zzd:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzclg;->zzt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    .line 2
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaud;

    iget-object v2, v9, Lcom/google/android/gms/internal/ads/zzcla;->zzb:Ljava/lang/String;

    iget-object v1, v9, Lcom/google/android/gms/internal/ads/zzclg;->zze:Lcom/google/android/gms/internal/ads/zzcja;

    iget v5, v1, Lcom/google/android/gms/internal/ads/zzcja;->zzd:I

    const/4 v3, 0x0

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzcja;->zzf:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, v0

    move-object/from16 v4, p0

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzaud;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzauz;Lcom/google/android/gms/internal/ads/zzauo;IIZLcom/google/android/gms/internal/ads/zzauh;)V

    iget-object v1, v9, Lcom/google/android/gms/internal/ads/zzclg;->zze:Lcom/google/android/gms/internal/ads/zzcja;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzcja;->zzj:Z

    if-eqz v1, :cond_0

    new-instance v8, Lcom/google/android/gms/internal/ads/zzcjx;

    iget-object v2, v9, Lcom/google/android/gms/internal/ads/zzcla;->zza:Landroid/content/Context;

    iget-object v4, v9, Lcom/google/android/gms/internal/ads/zzclg;->zzl:Ljava/lang/String;

    iget v5, v9, Lcom/google/android/gms/internal/ads/zzclg;->zzm:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v8

    move-object v3, v0

    .line 3
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzcjx;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzatz;Ljava/lang/String;ILcom/google/android/gms/internal/ads/zzauo;Lcom/google/android/gms/internal/ads/zzcjw;)V

    move-object v0, v8

    .line 4
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaub;

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, -0x1

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object v14, v1

    .line 5
    invoke-direct/range {v14 .. v24}, Lcom/google/android/gms/internal/ads/zzaub;-><init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V

    .line 6
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzatz;->zza(Lcom/google/android/gms/internal/ads/zzaub;)J

    iget-object v1, v9, Lcom/google/android/gms/internal/ads/zzcla;->zzc:Ljava/lang/ref/WeakReference;

    .line 7
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcjb;

    if-eqz v1, :cond_1

    .line 8
    invoke-interface {v1, v11, v9}, Lcom/google/android/gms/internal/ads/zzcjb;->zzu(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcla;)V

    .line 9
    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzj()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    .line 10
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    .line 11
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbjl;->zzt:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v4

    .line 11
    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v6, Lcom/google/android/gms/internal/ads/zzbjl;->zzs:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v6

    .line 14
    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v8, v9, Lcom/google/android/gms/internal/ads/zzclg;->zze:Lcom/google/android/gms/internal/ads/zzcja;

    iget v8, v8, Lcom/google/android/gms/internal/ads/zzcja;->zzc:I

    .line 15
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    iput-object v8, v9, Lcom/google/android/gms/internal/ads/zzclg;->zzi:Ljava/nio/ByteBuffer;

    const/16 v8, 0x2000

    new-array v14, v8, [B

    move-wide v15, v2

    :goto_0
    iget-object v13, v9, Lcom/google/android/gms/internal/ads/zzclg;->zzi:Ljava/nio/ByteBuffer;

    .line 16
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v13

    invoke-static {v13, v8}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 17
    invoke-interface {v0, v14, v12, v13}, Lcom/google/android/gms/internal/ads/zzatz;->zzb([BII)I

    move-result v13

    const/4 v8, -0x1

    if-ne v13, v8, :cond_2

    const/4 v8, 0x1

    iput-boolean v8, v9, Lcom/google/android/gms/internal/ads/zzclg;->zzn:Z

    iget-object v0, v9, Lcom/google/android/gms/internal/ads/zzclg;->zzh:Lcom/google/android/gms/internal/ads/zzckl;

    iget-object v1, v9, Lcom/google/android/gms/internal/ads/zzclg;->zzi:Ljava/nio/ByteBuffer;

    .line 23
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzckl;->zza(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    long-to-int v1, v0

    int-to-long v0, v1

    .line 24
    invoke-virtual {v9, v10, v11, v0, v1}, Lcom/google/android/gms/internal/ads/zzcla;->zzq(Ljava/lang/String;Ljava/lang/String;J)V

    :goto_1
    const/4 v1, 0x1

    goto :goto_3

    :cond_2
    iget-object v8, v9, Lcom/google/android/gms/internal/ads/zzclg;->zzk:Ljava/lang/Object;

    monitor-enter v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iget-boolean v12, v9, Lcom/google/android/gms/internal/ads/zzclg;->zzf:Z

    if-nez v12, :cond_3

    iget-object v12, v9, Lcom/google/android/gms/internal/ads/zzclg;->zzi:Ljava/nio/ByteBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v20, v11

    const/4 v11, 0x0

    .line 18
    :try_start_2
    invoke-virtual {v12, v14, v11, v13}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_2

    :cond_3
    move-object/from16 v20, v11

    .line 19
    :goto_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v8, v9, Lcom/google/android/gms/internal/ads/zzclg;->zzi:Ljava/nio/ByteBuffer;

    .line 20
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    if-gtz v8, :cond_4

    .line 25
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzclg;->zzu()V

    goto :goto_1

    :goto_3
    return v1

    :cond_4
    iget-boolean v8, v9, Lcom/google/android/gms/internal/ads/zzclg;->zzf:Z

    if-nez v8, :cond_7

    .line 21
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v11

    sub-long v21, v11, v15

    cmp-long v8, v21, v4

    if-ltz v8, :cond_5

    .line 22
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzclg;->zzu()V

    move-wide v15, v11

    :cond_5
    sub-long/2addr v11, v2

    const-wide/16 v21, 0x3e8

    mul-long v21, v21, v6

    cmp-long v8, v11, v21

    if-gtz v8, :cond_6

    move-object/from16 v11, v20

    const/16 v8, 0x2000

    const/4 v12, 0x0

    goto :goto_0

    :cond_6
    const-string v1, "downloadTimeout"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x31

    .line 27
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Timeout exceeded. Limit: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " sec"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    goto :goto_6

    :cond_7
    :try_start_5
    const-string v1, "externalAbort"
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 25
    :try_start_6
    new-instance v0, Ljava/io/IOException;

    iget-object v2, v9, Lcom/google/android/gms/internal/ads/zzclg;->zzi:Ljava/nio/ByteBuffer;

    .line 26
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x23

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Precache abort at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catch_1
    move-exception v0

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object/from16 v20, v11

    .line 19
    :goto_4
    :try_start_7
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    :catch_2
    move-exception v0

    move-object/from16 v20, v11

    :goto_5
    const-string v1, "error"

    .line 28
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 29
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    add-int/2addr v3, v6

    add-int/2addr v3, v4

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x22

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Failed to preload url "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Exception: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzcgt;->zzi(Ljava/lang/String;)V

    move-object/from16 v2, v20

    .line 31
    invoke-virtual {v9, v10, v2, v1, v0}, Lcom/google/android/gms/internal/ads/zzcla;->zzr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1
.end method

.method public final bridge synthetic zzj(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzaub;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzclg;->zzg:Lcom/google/android/gms/internal/ads/zzclf;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaud;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzclf;->zzb(Lcom/google/android/gms/internal/ads/zzaud;)V

    return-void
.end method

.method public final bridge synthetic zzk(Ljava/lang/Object;I)V
    .locals 0

    return-void
.end method

.method public final zzm()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzclg;->zzf:Z

    return-void
.end method
