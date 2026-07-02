.class public final Lcom/google/android/gms/internal/ads/zzlj;
.super Lcom/google/android/gms/internal/ads/zzag;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zza:Landroid/content/res/Resources;

.field private final zzb:Ljava/lang/String;

.field private zzc:Landroid/net/Uri;

.field private zzd:Landroid/content/res/AssetFileDescriptor;

.field private zze:Ljava/io/InputStream;

.field private zzf:J

.field private zzg:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzag;-><init>(Z)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzlj;->zza:Landroid/content/res/Resources;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlj;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzg([BII)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzli;
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzlj;->zzf:J

    const-wide/16 v2, 0x0

    const/4 v4, -0x1

    cmp-long v5, v0, v2

    if-eqz v5, :cond_5

    const/16 v2, 0x7d0

    const-wide/16 v5, -0x1

    cmp-long v3, v0, v5

    if-eqz v3, :cond_1

    int-to-long v7, p3

    :try_start_0
    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlj;->zze:Ljava/io/InputStream;

    .line 2
    sget v1, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, v4, :cond_3

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzlj;->zzf:J

    cmp-long p3, p1, v5

    if-nez p3, :cond_2

    return v4

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzli;

    .line 4
    new-instance p2, Ljava/io/EOFException;

    invoke-direct {p2}, Ljava/io/EOFException;-><init>()V

    const-string p3, "End of stream reached having not read sufficient data."

    invoke-direct {p1, p3, p2, v2}, Lcom/google/android/gms/internal/ads/zzli;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p1

    :cond_3
    iget-wide p2, p0, Lcom/google/android/gms/internal/ads/zzlj;->zzf:J

    cmp-long v0, p2, v5

    if-eqz v0, :cond_4

    int-to-long v0, p1

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzlj;->zzf:J

    .line 5
    :cond_4
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzag;->zzd(I)V

    return p1

    :catch_0
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzli;

    const/4 p3, 0x0

    .line 3
    invoke-direct {p2, p3, p1, v2}, Lcom/google/android/gms/internal/ads/zzli;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p2

    :cond_5
    return v4
.end method

.method public final zzh(Lcom/google/android/gms/internal/ads/zzan;)J
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzli;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzan;->zza:Landroid/net/Uri;

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzlj;->zzc:Landroid/net/Uri;

    .line 2
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "rawresource"

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    const/16 v4, 0x7d5

    const/16 v5, 0x3ec

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v3, :cond_8

    .line 3
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v8, "android.resource"

    invoke-static {v8, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4
    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v6, :cond_1

    .line 5
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v9, "\\d+"

    invoke-virtual {v3, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    .line 43
    :cond_0
    throw v7

    .line 6
    :cond_1
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 7
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    const-string v5, "/"

    .line 8
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 9
    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 10
    :cond_2
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    .line 11
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v5, ""

    goto :goto_0

    :cond_3
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v8, ":"

    invoke-virtual {v5, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 12
    :cond_4
    new-instance v3, Ljava/lang/String;

    .line 11
    invoke-direct {v3, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzlj;->zza:Landroid/content/res/Resources;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzlj;->zzb:Ljava/lang/String;

    const-string v9, "raw"

    .line 12
    invoke-virtual {v5, v3, v9, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_3

    .line 11
    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzli;

    const-string v2, "Resource not found."

    .line 13
    invoke-direct {v0, v2, v7, v4}, Lcom/google/android/gms/internal/ads/zzli;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0

    .line 14
    :cond_6
    throw v7

    .line 37
    :cond_7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzli;

    const-string v2, "URI must either use scheme rawresource or android.resource"

    .line 15
    invoke-direct {v0, v2, v7, v5}, Lcom/google/android/gms/internal/ads/zzli;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0

    .line 16
    :cond_8
    :goto_2
    :try_start_0
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_14

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3

    .line 17
    :goto_3
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzag;->zzb(Lcom/google/android/gms/internal/ads/zzan;)V

    :try_start_1
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzlj;->zza:Landroid/content/res/Resources;

    .line 18
    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    iput-object v3, v1, Lcom/google/android/gms/internal/ads/zzlj;->zzd:Landroid/content/res/AssetFileDescriptor;

    if-eqz v3, :cond_13

    .line 21
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v8

    new-instance v2, Ljava/io/FileInputStream;

    .line 22
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzlj;->zze:Ljava/io/InputStream;

    const/16 v5, 0x7d8

    const-wide/16 v10, -0x1

    cmp-long v12, v8, v10

    if-eqz v12, :cond_a

    .line 23
    :try_start_2
    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzan;->zzf:J

    cmp-long v15, v13, v8

    if-gtz v15, :cond_9

    goto :goto_4

    .line 39
    :cond_9
    new-instance v0, Lcom/google/android/gms/internal/ads/zzli;

    .line 38
    invoke-direct {v0, v7, v7, v5}, Lcom/google/android/gms/internal/ads/zzli;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0

    .line 24
    :cond_a
    :goto_4
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v13

    .line 25
    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzan;->zzf:J

    add-long/2addr v4, v13

    .line 26
    invoke-virtual {v2, v4, v5}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v4

    sub-long/2addr v4, v13

    .line 27
    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzan;->zzf:J

    cmp-long v16, v4, v13

    if-nez v16, :cond_12

    const-wide/16 v13, 0x0

    if-nez v12, :cond_d

    .line 29
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 30
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    cmp-long v8, v4, v13

    if-nez v8, :cond_b

    iput-wide v10, v1, Lcom/google/android/gms/internal/ads/zzlj;->zzf:J

    move-wide v4, v10

    goto :goto_5

    .line 31
    :cond_b
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v8

    sub-long/2addr v4, v8

    iput-wide v4, v1, Lcom/google/android/gms/internal/ads/zzlj;->zzf:J

    cmp-long v2, v4, v13

    if-ltz v2, :cond_c

    goto :goto_5

    .line 38
    :cond_c
    new-instance v0, Lcom/google/android/gms/internal/ads/zzli;

    const/16 v2, 0x7d8

    .line 32
    invoke-direct {v0, v7, v7, v2}, Lcom/google/android/gms/internal/ads/zzli;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0

    :cond_d
    sub-long v4, v8, v4

    .line 31
    iput-wide v4, v1, Lcom/google/android/gms/internal/ads/zzlj;->zzf:J
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzli; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    cmp-long v2, v4, v13

    if-ltz v2, :cond_11

    .line 33
    :goto_5
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzan;->zzg:J

    cmp-long v7, v2, v10

    if-eqz v7, :cond_f

    cmp-long v7, v4, v10

    if-eqz v7, :cond_e

    .line 34
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    :cond_e
    iput-wide v2, v1, Lcom/google/android/gms/internal/ads/zzlj;->zzf:J

    :cond_f
    iput-boolean v6, v1, Lcom/google/android/gms/internal/ads/zzlj;->zzg:Z

    .line 35
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzag;->zzc(Lcom/google/android/gms/internal/ads/zzan;)V

    .line 36
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzan;->zzg:J

    cmp-long v0, v2, v10

    if-eqz v0, :cond_10

    return-wide v2

    :cond_10
    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/zzlj;->zzf:J

    return-wide v2

    .line 32
    :cond_11
    :try_start_3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzak;

    const/16 v2, 0x7d8

    .line 37
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzak;-><init>(I)V

    throw v0

    .line 27
    :cond_12
    new-instance v0, Lcom/google/android/gms/internal/ads/zzli;

    const/16 v2, 0x7d8

    .line 28
    invoke-direct {v0, v7, v7, v2}, Lcom/google/android/gms/internal/ads/zzli;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0
    :try_end_3
    .catch Lcom/google/android/gms/internal/ads/zzli; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    .line 40
    new-instance v2, Lcom/google/android/gms/internal/ads/zzli;

    const/16 v3, 0x7d0

    .line 39
    invoke-direct {v2, v7, v0, v3}, Lcom/google/android/gms/internal/ads/zzli;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2

    :catch_1
    move-exception v0

    .line 40
    throw v0

    .line 18
    :cond_13
    new-instance v0, Lcom/google/android/gms/internal/ads/zzli;

    .line 20
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "Resource is compressed: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x7d0

    invoke-direct {v0, v2, v7, v3}, Lcom/google/android/gms/internal/ads/zzli;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0

    :catch_2
    move-exception v0

    .line 41
    new-instance v2, Lcom/google/android/gms/internal/ads/zzli;

    .line 19
    invoke-direct {v2, v7, v0, v4}, Lcom/google/android/gms/internal/ads/zzli;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2

    .line 41
    :cond_14
    :try_start_4
    throw v7
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3

    .line 43
    :catch_3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzli;

    const-string v2, "Resource identifier must be an integer."

    .line 42
    invoke-direct {v0, v2, v7, v5}, Lcom/google/android/gms/internal/ads/zzli;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0
.end method

.method public final zzi()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlj;->zzc:Landroid/net/Uri;

    return-object v0
.end method

.method public final zzj()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzli;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzlj;->zzc:Landroid/net/Uri;

    const/16 v1, 0x7d0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzlj;->zze:Ljava/io/InputStream;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzlj;->zze:Ljava/io/InputStream;

    :try_start_1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzlj;->zzd:Landroid/content/res/AssetFileDescriptor;

    if-eqz v3, :cond_1

    .line 3
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzlj;->zzd:Landroid/content/res/AssetFileDescriptor;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzlj;->zzg:Z

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzlj;->zzg:Z

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
    new-instance v4, Lcom/google/android/gms/internal/ads/zzli;

    .line 4
    invoke-direct {v4, v0, v3, v1}, Lcom/google/android/gms/internal/ads/zzli;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzlj;->zzd:Landroid/content/res/AssetFileDescriptor;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzlj;->zzg:Z

    if-eqz v0, :cond_3

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzlj;->zzg:Z

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
    new-instance v4, Lcom/google/android/gms/internal/ads/zzli;

    .line 2
    invoke-direct {v4, v0, v3, v1}, Lcom/google/android/gms/internal/ads/zzli;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzlj;->zze:Ljava/io/InputStream;

    :try_start_4
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzlj;->zzd:Landroid/content/res/AssetFileDescriptor;

    if-eqz v4, :cond_4

    .line 3
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_4
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzlj;->zzd:Landroid/content/res/AssetFileDescriptor;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzlj;->zzg:Z

    if-eqz v0, :cond_5

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzlj;->zzg:Z

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
    new-instance v4, Lcom/google/android/gms/internal/ads/zzli;

    .line 4
    invoke-direct {v4, v0, v3, v1}, Lcom/google/android/gms/internal/ads/zzli;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzlj;->zzd:Landroid/content/res/AssetFileDescriptor;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzlj;->zzg:Z

    if-nez v0, :cond_6

    goto :goto_3

    .line 6
    :cond_6
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzlj;->zzg:Z

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzag;->zze()V

    .line 6
    :goto_3
    throw v1
.end method
