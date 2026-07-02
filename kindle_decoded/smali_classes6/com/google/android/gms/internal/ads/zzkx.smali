.class public final Lcom/google/android/gms/internal/ads/zzkx;
.super Lcom/google/android/gms/internal/ads/zzag;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private zza:Ljava/io/RandomAccessFile;

.field private zzb:Landroid/net/Uri;

.field private zzc:J

.field private zzd:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzag;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final zzg([BII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzkw;
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzkx;->zzc:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkx;->zza:Ljava/io/RandomAccessFile;

    sget v3, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    int-to-long v3, p3

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p1, :cond_2

    iget-wide p2, p0, Lcom/google/android/gms/internal/ads/zzkx;->zzc:J

    int-to-long v0, p1

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzkx;->zzc:J

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzag;->zzd(I)V

    :cond_2
    return p1

    :catch_0
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzkw;

    const/16 p3, 0x7d0

    .line 2
    invoke-direct {p2, p1, p3}, Lcom/google/android/gms/internal/ads/zzkw;-><init>(Ljava/lang/Throwable;I)V

    throw p2
.end method

.method public final zzh(Lcom/google/android/gms/internal/ads/zzan;)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzkw;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzan;->zza:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkx;->zzb:Landroid/net/Uri;

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzag;->zzb(Lcom/google/android/gms/internal/ads/zzan;)V

    const/4 v1, 0x1

    const/16 v2, 0x7d0

    const/16 v3, 0x7d6

    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    .line 3
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    const-string v7, "r"

    invoke-direct {v4, v5, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzkx;->zza:Ljava/io/RandomAccessFile;

    .line 4
    :try_start_1
    iget-wide v7, p1, Lcom/google/android/gms/internal/ads/zzan;->zzf:J

    invoke-virtual {v4, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 5
    iget-wide v3, p1, Lcom/google/android/gms/internal/ads/zzan;->zzg:J

    const-wide/16 v7, -0x1

    cmp-long v0, v3, v7

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkx;->zza:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    iget-wide v7, p1, Lcom/google/android/gms/internal/ads/zzan;->zzf:J

    sub-long/2addr v3, v7

    :cond_0
    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzkx;->zzc:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const-wide/16 v7, 0x0

    cmp-long v0, v3, v7

    if-ltz v0, :cond_1

    .line 7
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzkx;->zzd:Z

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzag;->zzc(Lcom/google/android/gms/internal/ads/zzan;)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzkx;->zzc:J

    return-wide v0

    .line 5
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzkw;

    const/16 v0, 0x7d8

    .line 7
    invoke-direct {p1, v6, v6, v0}, Lcom/google/android/gms/internal/ads/zzkw;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p1

    :catch_0
    move-exception p1

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/ads/zzkw;

    .line 6
    invoke-direct {v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzkw;-><init>(Ljava/lang/Throwable;I)V

    throw v0

    .line 9
    :cond_2
    :try_start_2
    throw v6
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p1

    .line 11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzkw;

    .line 10
    invoke-direct {v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzkw;-><init>(Ljava/lang/Throwable;I)V

    throw v0

    :catch_2
    move-exception p1

    .line 14
    new-instance v0, Lcom/google/android/gms/internal/ads/zzkw;

    .line 11
    invoke-direct {v0, p1, v3}, Lcom/google/android/gms/internal/ads/zzkw;-><init>(Ljava/lang/Throwable;I)V

    throw v0

    :catch_3
    move-exception p1

    .line 12
    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzkw;

    .line 15
    sget v1, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    const/16 v2, 0x15

    const/16 v4, 0x7d5

    if-lt v1, v2, :cond_3

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzkv;->zza(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/16 v3, 0x7d5

    .line 16
    :goto_0
    invoke-direct {v0, p1, v3}, Lcom/google/android/gms/internal/ads/zzkw;-><init>(Ljava/lang/Throwable;I)V

    throw v0

    .line 12
    :cond_4
    new-instance v2, Lcom/google/android/gms/internal/ads/zzkw;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 13
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    invoke-virtual {v0}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    const-string v0, "uri has query and/or fragment, which are not supported. Did you call Uri.parse() on a string containing \'?\' or \'#\'? Use Uri.fromFile(new File(path)) to avoid this. path=%s,query=%s,fragment=%s"

    .line 14
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3ec

    invoke-direct {v2, v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzkw;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
.end method

.method public final zzi()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkx;->zzb:Landroid/net/Uri;

    return-object v0
.end method

.method public final zzj()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzkw;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkx;->zzb:Landroid/net/Uri;

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkx;->zza:Ljava/io/RandomAccessFile;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkx;->zza:Ljava/io/RandomAccessFile;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkx;->zzd:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzkx;->zzd:Z

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzag;->zze()V

    :cond_1
    return-void

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_1
    new-instance v3, Lcom/google/android/gms/internal/ads/zzkw;

    const/16 v4, 0x7d0

    .line 2
    invoke-direct {v3, v2, v4}, Lcom/google/android/gms/internal/ads/zzkw;-><init>(Ljava/lang/Throwable;I)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkx;->zza:Ljava/io/RandomAccessFile;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkx;->zzd:Z

    if-nez v0, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzkx;->zzd:Z

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzag;->zze()V

    .line 4
    :goto_1
    throw v2
.end method
