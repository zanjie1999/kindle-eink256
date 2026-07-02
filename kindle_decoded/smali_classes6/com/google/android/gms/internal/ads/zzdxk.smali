.class public final Lcom/google/android/gms/internal/ads/zzdxk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private zza:Z

.field private zzb:Z

.field private zzc:Z

.field private final zzd:J

.field private final zze:Lcom/google/android/gms/internal/ads/zzchl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzchl<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final zzf:Landroid/content/Context;

.field private final zzg:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final zzh:Lcom/google/android/gms/internal/ads/zzdtf;

.field private final zzi:Ljava/util/concurrent/Executor;

.field private final zzj:Ljava/util/concurrent/Executor;

.field private final zzk:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzl:Lcom/google/android/gms/internal/ads/zzdvr;

.field private final zzm:Lcom/google/android/gms/internal/ads/zzcgz;

.field private final zzn:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzbrl;",
            ">;"
        }
    .end annotation
.end field

.field private final zzo:Lcom/google/android/gms/internal/ads/zzdht;

.field private zzp:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Landroid/content/Context;Ljava/lang/ref/WeakReference;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzdtf;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzdvr;Lcom/google/android/gms/internal/ads/zzcgz;Lcom/google/android/gms/internal/ads/zzdht;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/content/Context;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/internal/ads/zzdtf;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lcom/google/android/gms/internal/ads/zzdvr;",
            "Lcom/google/android/gms/internal/ads/zzcgz;",
            "Lcom/google/android/gms/internal/ads/zzdht;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zza:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zzb:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zzc:Z

    new-instance v1, Lcom/google/android/gms/internal/ads/zzchl;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzchl;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zze:Lcom/google/android/gms/internal/ads/zzchl;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zzn:Ljava/util/Map;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zzp:Z

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zzh:Lcom/google/android/gms/internal/ads/zzdtf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zzf:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zzg:Ljava/lang/ref/WeakReference;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zzi:Ljava/util/concurrent/Executor;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zzk:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zzj:Ljava/util/concurrent/Executor;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zzl:Lcom/google/android/gms/internal/ads/zzdvr;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zzm:Lcom/google/android/gms/internal/ads/zzcgz;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zzo:Lcom/google/android/gms/internal/ads/zzdht;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzj()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zzd:J

    const-string p1, "com.google.android.gms.ads.MobileAds"

    const-string p2, ""

    .line 4
    invoke-direct {p0, p1, v0, p2, v0}, Lcom/google/android/gms/internal/ads/zzdxk;->zzu(Ljava/lang/String;ZLjava/lang/String;I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdxk;Z)Z
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zzc:Z

    return p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzdxk;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zzd:J

    return-wide v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzdxk;)Lcom/google/android/gms/internal/ads/zzchl;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zze:Lcom/google/android/gms/internal/ads/zzchl;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzdxk;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zzi:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/ads/zzdxk;)Lcom/google/android/gms/internal/ads/zzdvr;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zzl:Lcom/google/android/gms/internal/ads/zzdvr;

    return-object p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/ads/zzdxk;)Lcom/google/android/gms/internal/ads/zzdht;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zzo:Lcom/google/android/gms/internal/ads/zzdht;

    return-object p0
.end method

.method static synthetic zzk(Lcom/google/android/gms/internal/ads/zzdxk;Ljava/lang/String;)V
    .locals 18

    move-object/from16 v8, p0

    const-string v9, "data"

    .line 1
    :try_start_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "initializer_settings"

    .line 3
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "config"

    .line 4
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 5
    invoke-virtual {v11}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v12

    .line 6
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v13, Ljava/lang/Object;

    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    new-instance v14, Lcom/google/android/gms/internal/ads/zzchl;

    .line 8
    invoke-direct {v14}, Lcom/google/android/gms/internal/ads/zzchl;-><init>()V

    .line 9
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbjl;->zzbj:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v1

    .line 11
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, v8, Lcom/google/android/gms/internal/ads/zzdxk;->zzk:Ljava/util/concurrent/ScheduledExecutorService;

    .line 12
    invoke-static {v14, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzfsd;->zzh(Lcom/google/android/gms/internal/ads/zzfsm;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v15

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzdxk;->zzl:Lcom/google/android/gms/internal/ads/zzdvr;

    .line 13
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzdvr;->zza(Ljava/lang/String;)V

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzdxk;->zzo:Lcom/google/android/gms/internal/ads/zzdht;

    .line 14
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzdht;->zza(Ljava/lang/String;)V

    .line 15
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzj()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v16

    new-instance v6, Lcom/google/android/gms/internal/ads/zzdxd;

    move-object v1, v6

    move-object/from16 v2, p0

    move-object v3, v13

    move-object v4, v14

    move-object v5, v0

    move-object/from16 p1, v12

    move-object v12, v6

    move-wide/from16 v6, v16

    .line 16
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzdxd;-><init>(Lcom/google/android/gms/internal/ads/zzdxk;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzchl;Ljava/lang/String;J)V

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzdxk;->zzi:Ljava/util/concurrent/Executor;

    invoke-interface {v15, v12, v1}, Lcom/google/android/gms/internal/ads/zzfsm;->zze(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 17
    invoke-interface {v10, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/google/android/gms/internal/ads/zzdxj;

    move-object v1, v12

    move-object/from16 v2, p0

    move-object v3, v13

    move-object v4, v0

    move-wide/from16 v5, v16

    move-object v7, v14

    .line 18
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzdxj;-><init>(Lcom/google/android/gms/internal/ads/zzdxk;Ljava/lang/Object;Ljava/lang/String;JLcom/google/android/gms/internal/ads/zzchl;)V

    .line 19
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v5, Ljava/util/ArrayList;

    .line 20
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    const-string v7, ""

    if-eqz v1, :cond_1

    .line 21
    :try_start_1
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v3, 0x0

    .line 22
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 23
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v6, "format"

    .line 24
    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 25
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    new-instance v13, Landroid/os/Bundle;

    .line 26
    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    if-eqz v4, :cond_0

    .line 27
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v14

    .line 28
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 29
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 30
    invoke-virtual {v4, v15, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v15, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 31
    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/ads/zzbrv;

    invoke-direct {v2, v6, v13}, Lcom/google/android/gms/internal/ads/zzbrv;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    :cond_1
    const/4 v1, 0x0

    .line 32
    :try_start_2
    invoke-direct {v8, v0, v1, v7, v1}, Lcom/google/android/gms/internal/ads/zzdxk;->zzu(Ljava/lang/String;ZLjava/lang/String;I)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzdxk;->zzh:Lcom/google/android/gms/internal/ads/zzdtf;

    new-instance v2, Lorg/json/JSONObject;

    .line 33
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzdtf;->zzb(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzfbi;

    move-result-object v3

    iget-object v13, v8, Lcom/google/android/gms/internal/ads/zzdxk;->zzj:Ljava/util/concurrent/Executor;

    new-instance v14, Lcom/google/android/gms/internal/ads/zzdxf;

    move-object v1, v14

    move-object/from16 v2, p0

    move-object v4, v12

    move-object v6, v0

    .line 34
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzdxf;-><init>(Lcom/google/android/gms/internal/ads/zzdxk;Lcom/google/android/gms/internal/ads/zzfbi;Lcom/google/android/gms/internal/ads/zzbrp;Ljava/util/List;Ljava/lang/String;)V

    invoke-interface {v13, v14}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Lcom/google/android/gms/internal/ads/zzfaw; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_1
    :try_start_4
    const-string v0, "Failed to create Adapter."

    .line 35
    invoke-interface {v12, v0}, Lcom/google/android/gms/internal/ads/zzbrp;->zzf(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_3
    move-object/from16 v12, p1

    goto/16 :goto_0

    :catch_2
    move-exception v0

    .line 36
    :try_start_5
    invoke-static {v7, v0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 37
    :cond_2
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzfsd;->zzm(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfsb;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdxe;

    invoke-direct {v1, v8}, Lcom/google/android/gms/internal/ads/zzdxe;-><init>(Lcom/google/android/gms/internal/ads/zzdxk;)V

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzdxk;->zzi:Ljava/util/concurrent/Executor;

    .line 38
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfsb;->zza(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfsm;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3

    return-void

    :catch_3
    move-exception v0

    const-string v1, "Malformed CLD response"

    .line 39
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/zze;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic zzl(Lcom/google/android/gms/internal/ads/zzdxk;Ljava/lang/String;ZLjava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzdxk;->zzu(Ljava/lang/String;ZLjava/lang/String;I)V

    return-void
.end method

.method private final declared-synchronized zzt()Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzg()Lcom/google/android/gms/internal/ads/zzcge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcge;->zzp()Lcom/google/android/gms/ads/internal/util/zzg;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/util/zzg;->zzn()Lcom/google/android/gms/internal/ads/zzcfz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcfz;->zzd()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfsd;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzchl;

    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzchl;-><init>()V

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzg()Lcom/google/android/gms/internal/ads/zzcge;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcge;->zzp()Lcom/google/android/gms/ads/internal/util/zzg;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdxb;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzdxb;-><init>(Lcom/google/android/gms/internal/ads/zzdxk;Lcom/google/android/gms/internal/ads/zzchl;)V

    .line 6
    invoke-interface {v1, v2}, Lcom/google/android/gms/ads/internal/util/zzg;->zzp(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final zzu(Ljava/lang/String;ZLjava/lang/String;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zzn:Ljava/util/Map;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbrl;

    invoke-direct {v1, p1, p2, p4, p3}, Lcom/google/android/gms/internal/ads/zzbrl;-><init>(Ljava/lang/String;ZILjava/lang/String;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final zzg()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zzp:Z

    return-void
.end method

.method public final zzh(Lcom/google/android/gms/internal/ads/zzbrs;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zze:Lcom/google/android/gms/internal/ads/zzchl;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdwz;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzdwz;-><init>(Lcom/google/android/gms/internal/ads/zzdxk;Lcom/google/android/gms/internal/ads/zzbrs;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zzj:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzchl;->zze(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final zzi()V
    .locals 6

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzblc;->zza:Lcom/google/android/gms/internal/ads/zzbkn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbkn;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zzm:Lcom/google/android/gms/internal/ads/zzcgz;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzcgz;->zzc:I

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbjl;->zzbi:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v2

    .line 3
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v0, v2, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zzp:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zza:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zza:Z

    if-eqz v0, :cond_2

    .line 6
    monitor-exit p0

    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zzl:Lcom/google/android/gms/internal/ads/zzdvr;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdvr;->zzd()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zzo:Lcom/google/android/gms/internal/ads/zzdht;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdht;->zzd()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zze:Lcom/google/android/gms/internal/ads/zzchl;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdxa;

    .line 9
    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzdxa;-><init>(Lcom/google/android/gms/internal/ads/zzdxk;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zzi:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzchl;->zze(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zza:Z

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdxk;->zzt()Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zzk:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdxc;

    .line 11
    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzdxc;-><init>(Lcom/google/android/gms/internal/ads/zzdxk;)V

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbjl;->zzbk:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v3

    .line 13
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 14
    invoke-interface {v1, v2, v3, v4, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdxi;

    .line 15
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdxi;-><init>(Lcom/google/android/gms/internal/ads/zzdxk;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zzi:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfsd;->zzp(Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzfrz;Ljava/util/concurrent/Executor;)V

    .line 16
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zza:Z

    if-nez v0, :cond_4

    const/4 v0, 0x0

    const-string v2, "com.google.android.gms.ads.MobileAds"

    const-string v3, ""

    .line 4
    invoke-direct {p0, v2, v1, v3, v0}, Lcom/google/android/gms/internal/ads/zzdxk;->zzu(Ljava/lang/String;ZLjava/lang/String;I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zze:Lcom/google/android/gms/internal/ads/zzchl;

    .line 5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzchl;->zzc(Ljava/lang/Object;)Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zza:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zzb:Z

    :cond_4
    return-void
.end method

.method public final zzj()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzbrl;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zzn:Ljava/util/Map;

    .line 2
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zzn:Ljava/util/Map;

    .line 3
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzbrl;

    .line 4
    new-instance v4, Lcom/google/android/gms/internal/ads/zzbrl;

    iget-boolean v5, v3, Lcom/google/android/gms/internal/ads/zzbrl;->zzb:Z

    iget v6, v3, Lcom/google/android/gms/internal/ads/zzbrl;->zzc:I

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzbrl;->zzd:Ljava/lang/String;

    invoke-direct {v4, v2, v5, v6, v3}, Lcom/google/android/gms/internal/ads/zzbrl;-><init>(Ljava/lang/String;ZILjava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final zzm()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zzb:Z

    return v0
.end method

.method final synthetic zzn(Lcom/google/android/gms/internal/ads/zzfbi;Lcom/google/android/gms/internal/ads/zzbrp;Ljava/util/List;Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zzg:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zzf:Landroid/content/Context;

    :goto_0
    invoke-virtual {p1, v0, p2, p3}, Lcom/google/android/gms/internal/ads/zzfbi;->zzy(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbrp;Ljava/util/List;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzfaw; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 3
    :catch_0
    :try_start_1
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x4a

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Failed to initialize adapter. "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not implement the initialize() method."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzbrp;->zzf(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    const-string p2, ""

    .line 4
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method final synthetic zzo()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zze:Lcom/google/android/gms/internal/ads/zzchl;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzchl;->zzc(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    return-object v0
.end method

.method final synthetic zzp(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzchl;Ljava/lang/String;J)V
    .locals 3

    .line 1
    monitor-enter p1

    :try_start_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzchl;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Timeout."

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzj()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    sub-long/2addr v1, p4

    long-to-int p4, v1

    const/4 p5, 0x0

    .line 3
    invoke-direct {p0, p3, p5, v0, p4}, Lcom/google/android/gms/internal/ads/zzdxk;->zzu(Ljava/lang/String;ZLjava/lang/String;I)V

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zzl:Lcom/google/android/gms/internal/ads/zzdvr;

    const-string v0, "timeout"

    .line 4
    invoke-virtual {p4, p3, v0}, Lcom/google/android/gms/internal/ads/zzdvr;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zzo:Lcom/google/android/gms/internal/ads/zzdht;

    const-string v0, "timeout"

    .line 5
    invoke-virtual {p4, p3, v0}, Lcom/google/android/gms/internal/ads/zzdht;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzchl;->zzc(Ljava/lang/Object;)Z

    .line 7
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method final synthetic zzq()V
    .locals 7

    .line 1
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zzc:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const-string v0, "com.google.android.gms.ads.MobileAds"

    const/4 v1, 0x0

    const-string v2, "Timeout."

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzj()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zzd:J

    sub-long/2addr v3, v5

    long-to-int v4, v3

    .line 3
    invoke-direct {p0, v0, v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzdxk;->zzu(Ljava/lang/String;ZLjava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zze:Lcom/google/android/gms/internal/ads/zzchl;

    new-instance v1, Ljava/lang/Exception;

    .line 4
    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzchl;->zzd(Ljava/lang/Throwable;)Z

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final synthetic zzr(Lcom/google/android/gms/internal/ads/zzchl;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zzi:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdxg;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzdxg;-><init>(Lcom/google/android/gms/internal/ads/zzdxk;Lcom/google/android/gms/internal/ads/zzchl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method final synthetic zzs()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zzl:Lcom/google/android/gms/internal/ads/zzdvr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdvr;->zze()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zzo:Lcom/google/android/gms/internal/ads/zzdht;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdht;->zze()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zzb:Z

    return-void
.end method
