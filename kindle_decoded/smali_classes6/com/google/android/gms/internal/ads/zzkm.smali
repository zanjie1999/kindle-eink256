.class public final Lcom/google/android/gms/internal/ads/zzkm;
.super Lcom/google/android/gms/internal/ads/zzag;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zza:Landroid/content/ContentResolver;

.field private zzb:Landroid/net/Uri;

.field private zzc:Landroid/content/res/AssetFileDescriptor;

.field private zzd:Ljava/io/FileInputStream;

.field private zze:J

.field private zzf:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzag;-><init>(Z)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkm;->zza:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public final zzg([BII)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzkl;
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzkm;->zze:J

    const-wide/16 v2, 0x0

    const/4 v4, -0x1

    cmp-long v5, v0, v2

    if-eqz v5, :cond_4

    const-wide/16 v2, -0x1

    cmp-long v5, v0, v2

    if-eqz v5, :cond_1

    int-to-long v5, p3

    :try_start_0
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkm;->zzd:Ljava/io/FileInputStream;

    .line 2
    sget v1, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/FileInputStream;->read([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, v4, :cond_2

    return v4

    :cond_2
    iget-wide p2, p0, Lcom/google/android/gms/internal/ads/zzkm;->zze:J

    cmp-long v0, p2, v2

    if-eqz v0, :cond_3

    int-to-long v0, p1

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzkm;->zze:J

    .line 4
    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzag;->zzd(I)V

    return p1

    :catch_0
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzkl;

    const/16 p3, 0x7d0

    .line 3
    invoke-direct {p2, p1, p3}, Lcom/google/android/gms/internal/ads/zzkl;-><init>(Ljava/io/IOException;I)V

    throw p2

    :cond_4
    return v4
.end method

.method public final zzh(Lcom/google/android/gms/internal/ads/zzan;)J
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzkl;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    :try_start_0
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzan;->zza:Landroid/net/Uri;

    iput-object v4, v1, Lcom/google/android/gms/internal/ads/zzkm;->zzb:Landroid/net/Uri;

    .line 2
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzag;->zzb(Lcom/google/android/gms/internal/ads/zzan;)V

    const-string v5, "content"

    .line 3
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzan;->zza:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Landroid/os/Bundle;

    .line 4
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 5
    sget v6, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    const/16 v7, 0x1f

    if-lt v6, v7, :cond_0

    .line 6
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzkk;->zza(Landroid/os/Bundle;)V

    :cond_0
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzkm;->zza:Landroid/content/ContentResolver;

    const-string v7, "*/*"

    .line 7
    invoke-virtual {v6, v4, v7, v5}, Landroid/content/ContentResolver;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v5

    goto :goto_0

    .line 20
    :cond_1
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzkm;->zza:Landroid/content/ContentResolver;

    const-string v6, "r"

    .line 8
    invoke-virtual {v5, v4, v6}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v5

    .line 7
    :goto_0
    iput-object v5, v1, Lcom/google/android/gms/internal/ads/zzkm;->zzc:Landroid/content/res/AssetFileDescriptor;

    if-eqz v5, :cond_c

    .line 10
    invoke-virtual {v5}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v6

    new-instance v4, Ljava/io/FileInputStream;

    .line 11
    invoke-virtual {v5}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v4, v1, Lcom/google/android/gms/internal/ads/zzkm;->zzd:Ljava/io/FileInputStream;

    const/16 v8, 0x7d8

    const/4 v9, 0x0

    const-wide/16 v10, -0x1

    cmp-long v12, v6, v10

    if-eqz v12, :cond_3

    .line 12
    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzan;->zzf:J

    cmp-long v15, v13, v6

    if-gtz v15, :cond_2

    goto :goto_1

    .line 29
    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzkl;

    .line 27
    invoke-direct {v0, v9, v8}, Lcom/google/android/gms/internal/ads/zzkl;-><init>(Ljava/io/IOException;I)V

    throw v0

    .line 13
    :cond_3
    :goto_1
    invoke-virtual {v5}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v13

    .line 14
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzan;->zzf:J

    add-long/2addr v2, v13

    .line 15
    invoke-virtual {v4, v2, v3}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v2

    sub-long/2addr v2, v13

    .line 16
    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzan;->zzf:J

    cmp-long v16, v2, v13

    if-nez v16, :cond_b

    const-wide/16 v13, 0x0

    if-nez v12, :cond_6

    .line 18
    invoke-virtual {v4}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 19
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    cmp-long v6, v3, v13

    if-nez v6, :cond_4

    iput-wide v10, v1, Lcom/google/android/gms/internal/ads/zzkm;->zze:J

    move-wide v3, v10

    goto :goto_2

    .line 20
    :cond_4
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v6

    sub-long/2addr v3, v6

    iput-wide v3, v1, Lcom/google/android/gms/internal/ads/zzkm;->zze:J

    cmp-long v2, v3, v13

    if-ltz v2, :cond_5

    goto :goto_2

    .line 27
    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzkl;

    .line 21
    invoke-direct {v0, v9, v8}, Lcom/google/android/gms/internal/ads/zzkl;-><init>(Ljava/io/IOException;I)V

    throw v0

    :cond_6
    sub-long v3, v6, v2

    .line 20
    iput-wide v3, v1, Lcom/google/android/gms/internal/ads/zzkm;->zze:J
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzkl; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    cmp-long v2, v3, v13

    if-ltz v2, :cond_a

    .line 22
    :goto_2
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzan;->zzg:J

    cmp-long v2, v5, v10

    if-eqz v2, :cond_8

    cmp-long v2, v3, v10

    if-eqz v2, :cond_7

    .line 23
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    :cond_7
    iput-wide v5, v1, Lcom/google/android/gms/internal/ads/zzkm;->zze:J

    :cond_8
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzkm;->zzf:Z

    .line 24
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzag;->zzc(Lcom/google/android/gms/internal/ads/zzan;)V

    .line 25
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzan;->zzg:J

    cmp-long v0, v2, v10

    if-eqz v0, :cond_9

    return-wide v2

    :cond_9
    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/zzkm;->zze:J

    return-wide v2

    .line 21
    :cond_a
    :try_start_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzkl;

    .line 26
    invoke-direct {v0, v9, v8}, Lcom/google/android/gms/internal/ads/zzkl;-><init>(Ljava/io/IOException;I)V

    throw v0

    .line 16
    :cond_b
    new-instance v0, Lcom/google/android/gms/internal/ads/zzkl;

    .line 17
    invoke-direct {v0, v9, v8}, Lcom/google/android/gms/internal/ads/zzkl;-><init>(Ljava/io/IOException;I)V

    throw v0

    .line 7
    :cond_c
    new-instance v0, Lcom/google/android/gms/internal/ads/zzkl;

    new-instance v2, Ljava/io/IOException;

    .line 9
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x24

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Could not open file descriptor for: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzkl; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v3, 0x7d0

    :try_start_2
    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzkl;-><init>(Ljava/io/IOException;I)V

    throw v0
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzkl; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    const/16 v3, 0x7d0

    .line 30
    :goto_3
    new-instance v2, Lcom/google/android/gms/internal/ads/zzkl;

    .line 28
    instance-of v4, v0, Ljava/io/FileNotFoundException;

    const/4 v5, 0x1

    if-eq v5, v4, :cond_d

    goto :goto_4

    :cond_d
    const/16 v3, 0x7d5

    .line 29
    :goto_4
    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzkl;-><init>(Ljava/io/IOException;I)V

    throw v2

    :catch_2
    move-exception v0

    .line 30
    throw v0
.end method

.method public final zzi()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkm;->zzb:Landroid/net/Uri;

    return-object v0
.end method

.method public final zzj()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzkl;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkm;->zzb:Landroid/net/Uri;

    const/16 v1, 0x7d0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzkm;->zzd:Ljava/io/FileInputStream;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkm;->zzd:Ljava/io/FileInputStream;

    :try_start_1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzkm;->zzc:Landroid/content/res/AssetFileDescriptor;

    if-eqz v3, :cond_1

    .line 3
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkm;->zzc:Landroid/content/res/AssetFileDescriptor;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkm;->zzf:Z

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzkm;->zzf:Z

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzag;->zze()V

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v3

    .line 7
    :try_start_2
    new-instance v4, Lcom/google/android/gms/internal/ads/zzkl;

    .line 4
    invoke-direct {v4, v3, v1}, Lcom/google/android/gms/internal/ads/zzkl;-><init>(Ljava/io/IOException;I)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkm;->zzc:Landroid/content/res/AssetFileDescriptor;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkm;->zzf:Z

    if-eqz v0, :cond_3

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzkm;->zzf:Z

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzag;->zze()V

    .line 6
    :cond_3
    throw v1

    :catchall_1
    move-exception v3

    goto :goto_1

    :catch_1
    move-exception v3

    .line 5
    :try_start_3
    new-instance v4, Lcom/google/android/gms/internal/ads/zzkl;

    .line 2
    invoke-direct {v4, v3, v1}, Lcom/google/android/gms/internal/ads/zzkl;-><init>(Ljava/io/IOException;I)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkm;->zzd:Ljava/io/FileInputStream;

    :try_start_4
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzkm;->zzc:Landroid/content/res/AssetFileDescriptor;

    if-eqz v4, :cond_4

    .line 3
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_4
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkm;->zzc:Landroid/content/res/AssetFileDescriptor;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkm;->zzf:Z

    if-eqz v0, :cond_5

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzkm;->zzf:Z

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzag;->zze()V

    .line 7
    :cond_5
    throw v3

    :catchall_2
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v3

    .line 6
    :try_start_5
    new-instance v4, Lcom/google/android/gms/internal/ads/zzkl;

    .line 4
    invoke-direct {v4, v3, v1}, Lcom/google/android/gms/internal/ads/zzkl;-><init>(Ljava/io/IOException;I)V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkm;->zzc:Landroid/content/res/AssetFileDescriptor;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkm;->zzf:Z

    if-nez v0, :cond_6

    goto :goto_3

    .line 6
    :cond_6
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzkm;->zzf:Z

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzag;->zze()V

    .line 6
    :goto_3
    throw v1
.end method
