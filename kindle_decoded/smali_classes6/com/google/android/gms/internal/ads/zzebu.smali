.class public final Lcom/google/android/gms/internal/ads/zzebu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfdw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzfdw<",
        "Lcom/google/android/gms/internal/ads/zzebs;",
        "Lcom/google/android/gms/internal/ads/zzebt;",
        ">;"
    }
.end annotation


# instance fields
.field protected final zza:Landroid/content/Context;

.field protected final zzb:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcbv;I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzebu;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzebu;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "Received error HTTP response code: "

    .line 1
    move-object/from16 v2, p1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzebs;

    .line 2
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzebs;->zza:Ljava/lang/String;

    iget v11, v2, Lcom/google/android/gms/internal/ads/zzebs;->zzb:I

    iget-object v12, v2, Lcom/google/android/gms/internal/ads/zzebs;->zzc:Ljava/util/Map;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzebs;->zzd:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzj()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v13

    const/4 v15, 0x1

    :try_start_0
    new-instance v10, Lcom/google/android/gms/internal/ads/zzebt;

    invoke-direct {v10}, Lcom/google/android/gms/internal/ads/zzebt;-><init>()V

    const-string v4, "SDK version: "

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzebu;->zzb:Ljava/lang/String;

    .line 4
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 5
    :cond_0
    new-instance v5, Ljava/lang/String;

    .line 4
    invoke-direct {v5, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    :goto_0
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzcgt;->zzh(Ljava/lang/String;)V

    const-string v4, "AdRequestServiceImpl: Sending request: "

    .line 5
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 38
    :cond_1
    new-instance v5, Ljava/lang/String;

    .line 5
    invoke-direct {v5, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    :goto_1
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzcgt;->zzd(Ljava/lang/String;)V

    .line 6
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/HashMap;

    .line 7
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const/4 v9, 0x0

    const/16 v16, 0x0

    .line 8
    :goto_2
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    .line 9
    move-object v8, v4

    check-cast v8, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 10
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    move-result-object v4

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzebu;->zza:Landroid/content/Context;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzebu;->zzb:Ljava/lang/String;
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzdym; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    const/4 v7, 0x0

    const/16 v17, 0x0

    move-object/from16 p1, v8

    move/from16 v9, v17

    move-object/from16 v18, v10

    move v10, v11

    .line 11
    :try_start_2
    invoke-virtual/range {v4 .. v10}, Lcom/google/android/gms/ads/internal/util/zzs;->zzf(Landroid/content/Context;Ljava/lang/String;ZLjava/net/HttpURLConnection;ZI)V

    .line 12
    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 13
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzdym; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-object/from16 v7, p1

    :try_start_3
    invoke-virtual {v7, v6, v5}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 p1, v7

    goto :goto_3

    :cond_2
    move-object/from16 v7, p1

    .line 14
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    if-lez v4, :cond_3

    .line 15
    sget-object v4, Lcom/google/android/gms/internal/ads/zzfll;->zzc:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    .line 16
    invoke-virtual {v7, v15}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 17
    array-length v6, v4

    invoke-virtual {v7, v6}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V
    :try_end_3
    .catch Lcom/google/android/gms/internal/ads/zzdym; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 18
    :try_start_4
    new-instance v6, Ljava/io/BufferedOutputStream;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 19
    :try_start_5
    invoke-virtual {v6, v4}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 20
    :try_start_6
    invoke-static {v6}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v5, v6

    goto :goto_4

    :catchall_1
    move-exception v0

    :goto_4
    invoke-static {v5}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 39
    throw v0

    .line 21
    :cond_3
    :goto_5
    new-instance v4, Lcom/google/android/gms/internal/ads/zzcgs;

    .line 22
    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/ads/zzcgs;-><init>(Ljava/lang/String;)V

    .line 23
    sget-object v6, Lcom/google/android/gms/internal/ads/zzfll;->zzc:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    invoke-virtual {v4, v7, v6}, Lcom/google/android/gms/internal/ads/zzcgs;->zza(Ljava/net/HttpURLConnection;[B)V

    .line 24
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    .line 25
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v8

    .line 26
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 27
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 28
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 29
    invoke-interface {v3, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 30
    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6

    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    .line 31
    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v3, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x0

    goto :goto_6

    .line 32
    :cond_5
    invoke-virtual {v4, v7, v6}, Lcom/google/android/gms/internal/ads/zzcgs;->zzc(Ljava/net/HttpURLConnection;I)V
    :try_end_6
    .catch Lcom/google/android/gms/internal/ads/zzdym; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    move-object/from16 v5, v18

    :try_start_7
    iput v6, v5, Lcom/google/android/gms/internal/ads/zzebt;->zza:I

    iput-object v3, v5, Lcom/google/android/gms/internal/ads/zzebt;->zzb:Ljava/util/Map;

    const-string v8, ""

    iput-object v8, v5, Lcom/google/android/gms/internal/ads/zzebt;->zzc:Ljava/lang/String;
    :try_end_7
    .catch Lcom/google/android/gms/internal/ads/zzdym; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    const/16 v8, 0xc8

    const/16 v9, 0x12c

    if-lt v6, v8, :cond_9

    if-ge v6, v9, :cond_9

    :try_start_8
    new-instance v2, Ljava/io/InputStreamReader;

    .line 46
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 47
    :try_start_9
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x2000

    .line 48
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v3, 0x800

    new-array v3, v3, [C

    .line 49
    :goto_7
    invoke-virtual {v2, v3}, Ljava/io/InputStreamReader;->read([C)I

    move-result v6

    const/4 v8, -0x1

    if-eq v6, v8, :cond_6

    const/4 v8, 0x0

    .line 50
    invoke-virtual {v0, v3, v8, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 51
    :try_start_a
    invoke-static {v2}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 53
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzcgs;->zze(Ljava/lang/String;)V

    iput-object v0, v5, Lcom/google/android/gms/internal/ads/zzebt;->zzc:Ljava/lang/String;

    .line 54
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbjl;->zzdN:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 55
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v0

    .line 54
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdym;

    const/4 v2, 0x3

    .line 57
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzdym;-><init>(I)V

    throw v0

    .line 56
    :cond_8
    :goto_8
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzj()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v13

    iput-wide v2, v5, Lcom/google/android/gms/internal/ads/zzebt;->zzd:J
    :try_end_a
    .catch Lcom/google/android/gms/internal/ads/zzdym; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 38
    :goto_9
    :try_start_b
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    goto/16 :goto_d

    :catchall_2
    move-exception v0

    goto :goto_a

    :catchall_3
    move-exception v0

    const/4 v2, 0x0

    .line 51
    :goto_a
    :try_start_c
    invoke-static {v2}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 52
    throw v0

    :cond_9
    const/4 v8, 0x0

    if-lt v6, v9, :cond_c

    const/16 v4, 0x190

    if-ge v6, v4, :cond_c

    const-string v4, "Location"

    .line 33
    invoke-virtual {v7, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 34
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 43
    new-instance v6, Ljava/net/URL;

    .line 35
    invoke-direct {v6, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    add-int/lit8 v4, v16, 0x1

    .line 36
    sget-object v9, Lcom/google/android/gms/internal/ads/zzbjl;->zzdt:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 37
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v9

    .line 36
    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9
    :try_end_c
    .catch Lcom/google/android/gms/internal/ads/zzdym; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    if-gt v4, v9, :cond_a

    .line 38
    :try_start_d
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    move/from16 v16, v4

    move-object v10, v5

    move-object v4, v6

    const/4 v9, 0x0

    goto/16 :goto_2

    :cond_a
    :try_start_e
    const-string v0, "Too many redirects."

    .line 44
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzi(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdym;

    const-string v2, "Too many redirects"

    .line 45
    invoke-direct {v0, v15, v2}, Lcom/google/android/gms/internal/ads/zzdym;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_b
    const-string v0, "No location header to follow redirect."

    .line 42
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzi(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdym;

    const-string v2, "No location header to follow redirect"

    .line 43
    invoke-direct {v0, v15, v2}, Lcom/google/android/gms/internal/ads/zzdym;-><init>(ILjava/lang/String;)V

    throw v0

    .line 52
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2e

    .line 40
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzcgt;->zzi(Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdym;

    new-instance v4, Ljava/lang/StringBuilder;

    .line 41
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v15, v0}, Lcom/google/android/gms/internal/ads/zzdym;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_e
    .catch Lcom/google/android/gms/internal/ads/zzdym; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    :catch_0
    move-exception v0

    goto :goto_c

    :catch_1
    move-exception v0

    goto :goto_b

    :catchall_4
    move-exception v0

    move-object/from16 v7, p1

    goto :goto_e

    :catch_2
    move-exception v0

    move-object/from16 v7, p1

    :goto_b
    move-object/from16 v5, v18

    goto :goto_c

    :catchall_5
    move-exception v0

    move-object v7, v8

    goto :goto_e

    :catch_3
    move-exception v0

    move-object v7, v8

    move-object v5, v10

    .line 58
    :goto_c
    :try_start_f
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbjl;->zzfW:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 59
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v2

    .line 58
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 60
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzj()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v13

    iput-wide v2, v5, Lcom/google/android/gms/internal/ads/zzebt;->zzd:J

    goto/16 :goto_9

    :goto_d
    return-object v5

    .line 61
    :cond_d
    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    :catchall_6
    move-exception v0

    .line 38
    :goto_e
    :try_start_10
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 62
    throw v0
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_4

    :catch_4
    move-exception v0

    .line 63
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Error while connecting to ad server: "

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_f

    .line 61
    :cond_e
    new-instance v2, Ljava/lang/String;

    .line 63
    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 64
    :goto_f
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzcgt;->zzi(Ljava/lang/String;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzdym;

    .line 65
    invoke-direct {v3, v15, v2, v0}, Lcom/google/android/gms/internal/ads/zzdym;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
