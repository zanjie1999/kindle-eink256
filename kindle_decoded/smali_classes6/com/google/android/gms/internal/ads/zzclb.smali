.class public final Lcom/google/android/gms/internal/ads/zzclb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbpr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzbpr<",
        "Lcom/google/android/gms/internal/ads/zzcjb;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final zzb(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 1
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 3
    :catch_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x27

    add-int/2addr v3, v0

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Precache invalid numeric parameter \'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\': "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzi(Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 16

    move-object/from16 v0, p2

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcjb;

    const/4 v2, 0x3

    .line 2
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzcgt;->zzm(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v3, "google.afma.Notify_dt"

    .line 4
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Precache GMSG: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzcgt;->zzd(Ljava/lang/String;)V

    .line 6
    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzy()Lcom/google/android/gms/internal/ads/zzckt;

    move-result-object v2

    const-string v3, "abort"

    .line 7
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzckt;->zza(Lcom/google/android/gms/internal/ads/zzcjb;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "Precache abort but no precache task running."

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzi(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v3, "src"

    .line 10
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "periodicReportIntervalMs"

    .line 11
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/ads/zzclb;->zzb(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "exoPlayerRenderingIntervalMs"

    .line 12
    invoke-static {v0, v5}, Lcom/google/android/gms/internal/ads/zzclb;->zzb(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "exoPlayerIdleIntervalMs"

    .line 13
    invoke-static {v0, v6}, Lcom/google/android/gms/internal/ads/zzclb;->zzb(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Lcom/google/android/gms/internal/ads/zzcja;

    const-string v8, "flags"

    .line 14
    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {v7, v8}, Lcom/google/android/gms/internal/ads/zzcja;-><init>(Ljava/lang/String;)V

    iget-boolean v8, v7, Lcom/google/android/gms/internal/ads/zzcja;->zzn:Z

    if-eqz v3, :cond_12

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    const-string v12, "demuxed"

    .line 15
    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    if-eqz v12, :cond_4

    .line 16
    :try_start_0
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10, v12}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v14

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    .line 18
    :goto_0
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v15, v13, :cond_2

    .line 19
    invoke-virtual {v10, v15}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v14, v15
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_2
    move-object v10, v14

    goto :goto_2

    :catch_0
    nop

    const-string v10, "Malformed demuxed URL list for precache: "

    .line 50
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_3

    .line 20
    invoke-virtual {v10, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    :cond_3
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v10, v12

    :goto_1
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzcgt;->zzi(Ljava/lang/String;)V

    const/4 v10, 0x0

    :cond_4
    :goto_2
    if-nez v10, :cond_5

    new-array v10, v9, [Ljava/lang/String;

    aput-object v3, v10, v11

    :cond_5
    if-eqz v8, :cond_8

    .line 21
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzckt;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/ads/zzcks;

    .line 22
    iget-object v9, v8, Lcom/google/android/gms/internal/ads/zzcks;->zza:Lcom/google/android/gms/internal/ads/zzcjb;

    if-ne v9, v1, :cond_6

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzcks;->zzd()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    move-object v13, v8

    goto :goto_3

    :cond_7
    const/4 v13, 0x0

    goto :goto_3

    .line 23
    :cond_8
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzckt;->zzb(Lcom/google/android/gms/internal/ads/zzcjb;)Lcom/google/android/gms/internal/ads/zzcks;

    move-result-object v13

    :goto_3
    if-eqz v13, :cond_9

    const-string v0, "Precache task is already running."

    .line 24
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzi(Ljava/lang/String;)V

    return-void

    .line 25
    :cond_9
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcjb;->zzk()Lcom/google/android/gms/ads/internal/zza;

    move-result-object v2

    if-nez v2, :cond_a

    const-string v0, "Precache requires a dependency provider."

    .line 26
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzi(Ljava/lang/String;)V

    return-void

    :cond_a
    const-string v2, "player"

    .line 27
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzclb;->zzb(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_b

    .line 28
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_b
    if-eqz v4, :cond_c

    .line 29
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v1, v4}, Lcom/google/android/gms/internal/ads/zzcjb;->zzo(I)V

    :cond_c
    if-eqz v5, :cond_d

    .line 30
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v1, v4}, Lcom/google/android/gms/internal/ads/zzcjb;->zzB(I)V

    :cond_d
    if-eqz v6, :cond_e

    .line 31
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v1, v4}, Lcom/google/android/gms/internal/ads/zzcjb;->zzC(I)V

    .line 32
    :cond_e
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 33
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcjb;->zzk()Lcom/google/android/gms/ads/internal/zza;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/zza;->zzc:Lcom/google/android/gms/internal/ads/zzckm;

    if-lez v2, :cond_11

    .line 35
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcis;->zzQ()I

    move-result v2

    iget v4, v7, Lcom/google/android/gms/internal/ads/zzcja;->zzh:I

    if-ge v2, v4, :cond_f

    .line 36
    new-instance v2, Lcom/google/android/gms/internal/ads/zzclj;

    invoke-direct {v2, v1, v7}, Lcom/google/android/gms/internal/ads/zzclj;-><init>(Lcom/google/android/gms/internal/ads/zzcjb;Lcom/google/android/gms/internal/ads/zzcja;)V

    goto :goto_4

    .line 49
    :cond_f
    iget v4, v7, Lcom/google/android/gms/internal/ads/zzcja;->zzb:I

    if-ge v2, v4, :cond_10

    .line 37
    new-instance v2, Lcom/google/android/gms/internal/ads/zzclg;

    invoke-direct {v2, v1, v7}, Lcom/google/android/gms/internal/ads/zzclg;-><init>(Lcom/google/android/gms/internal/ads/zzcjb;Lcom/google/android/gms/internal/ads/zzcja;)V

    goto :goto_4

    .line 38
    :cond_10
    new-instance v2, Lcom/google/android/gms/internal/ads/zzcle;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzcle;-><init>(Lcom/google/android/gms/internal/ads/zzcjb;)V

    goto :goto_4

    .line 34
    :cond_11
    new-instance v2, Lcom/google/android/gms/internal/ads/zzcld;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzcld;-><init>(Lcom/google/android/gms/internal/ads/zzcjb;)V

    .line 36
    :goto_4
    new-instance v4, Lcom/google/android/gms/internal/ads/zzcks;

    .line 39
    invoke-direct {v4, v1, v2, v3, v10}, Lcom/google/android/gms/internal/ads/zzcks;-><init>(Lcom/google/android/gms/internal/ads/zzcjb;Lcom/google/android/gms/internal/ads/zzcla;Ljava/lang/String;[Ljava/lang/String;)V

    .line 40
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzcks;->zzc()Lcom/google/android/gms/internal/ads/zzfsm;

    goto :goto_5

    .line 41
    :cond_12
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzckt;->zzb(Lcom/google/android/gms/internal/ads/zzcjb;)Lcom/google/android/gms/internal/ads/zzcks;

    move-result-object v1

    if-eqz v1, :cond_17

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzcks;->zzb:Lcom/google/android/gms/internal/ads/zzcla;

    :goto_5
    const-string v1, "minBufferMs"

    .line 42
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzclb;->zzb(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 43
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzcla;->zzh(I)V

    :cond_13
    const-string v1, "maxBufferMs"

    .line 44
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzclb;->zzb(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 45
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzcla;->zzg(I)V

    :cond_14
    const-string v1, "bufferForPlaybackMs"

    .line 46
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzclb;->zzb(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 47
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzcla;->zzi(I)V

    :cond_15
    const-string v1, "bufferForPlaybackAfterRebufferMs"

    .line 48
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzclb;->zzb(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 49
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzcla;->zzl(I)V

    :cond_16
    return-void

    :cond_17
    const-string v0, "Precache must specify a source."

    .line 50
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzi(Ljava/lang/String;)V

    return-void
.end method
