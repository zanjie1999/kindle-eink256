.class public final Lcom/google/android/gms/ads/internal/util/zzbr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# static fields
.field private static zzb:Lcom/google/android/gms/internal/ads/zzwf;

.field private static final zzc:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/util/zzbr;->zzc:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/ads/internal/util/zzbj;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/util/zzbj;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :goto_0
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzbr;->zzc:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/ads/internal/util/zzbr;->zzb:Lcom/google/android/gms/internal/ads/zzwf;

    if-nez v1, :cond_2

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbjl;->zza(Landroid/content/Context;)V

    .line 3
    invoke-static {}, Lcom/google/android/gms/common/util/ClientLibraryUtils;->isPackageSide()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbjl;->zzcQ:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzba;->zzb(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzwf;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 5
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzxj;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzwq;)Lcom/google/android/gms/internal/ads/zzwf;

    move-result-object p1

    .line 6
    :goto_1
    sput-object p1, Lcom/google/android/gms/ads/internal/util/zzbr;->zzb:Lcom/google/android/gms/internal/ads/zzwf;

    .line 7
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "Lcom/google/android/gms/internal/ads/zzvy;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzchl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzchl;-><init>()V

    sget-object v1, Lcom/google/android/gms/ads/internal/util/zzbr;->zzb:Lcom/google/android/gms/internal/ads/zzwf;

    new-instance v2, Lcom/google/android/gms/ads/internal/util/zzbq;

    const/4 v3, 0x0

    .line 2
    invoke-direct {v2, p1, v3, v0}, Lcom/google/android/gms/ads/internal/util/zzbq;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzchl;)V

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzwf;->zzb(Lcom/google/android/gms/internal/ads/zzwc;)Lcom/google/android/gms/internal/ads/zzwc;

    return-object v0
.end method

.method public final zzb(ILjava/lang/String;Ljava/util/Map;[B)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p2

    .line 1
    new-instance v10, Lcom/google/android/gms/ads/internal/util/zzbo;

    const/4 v1, 0x0

    invoke-direct {v10, v1}, Lcom/google/android/gms/ads/internal/util/zzbo;-><init>(Lcom/google/android/gms/ads/internal/util/zzbn;)V

    new-instance v6, Lcom/google/android/gms/ads/internal/util/zzbk;

    move-object v11, p0

    .line 2
    invoke-direct {v6, p0, v0, v10}, Lcom/google/android/gms/ads/internal/util/zzbk;-><init>(Lcom/google/android/gms/ads/internal/util/zzbr;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/zzbo;)V

    .line 3
    new-instance v12, Lcom/google/android/gms/internal/ads/zzcgs;

    invoke-direct {v12, v1}, Lcom/google/android/gms/internal/ads/zzcgs;-><init>(Ljava/lang/String;)V

    new-instance v13, Lcom/google/android/gms/ads/internal/util/zzbl;

    move-object v1, v13

    move-object v2, p0

    move v3, p1

    move-object/from16 v4, p2

    move-object v5, v10

    move-object/from16 v7, p4

    move-object/from16 v8, p3

    move-object v9, v12

    .line 4
    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/ads/internal/util/zzbl;-><init>(Lcom/google/android/gms/ads/internal/util/zzbr;ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzwh;Lcom/google/android/gms/internal/ads/zzwg;[BLjava/util/Map;Lcom/google/android/gms/internal/ads/zzcgs;)V

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcgs;->zzj()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "GET"

    .line 6
    invoke-virtual {v13}, Lcom/google/android/gms/ads/internal/util/zzbl;->zzn()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v13}, Lcom/google/android/gms/ads/internal/util/zzbl;->zzo()[B

    move-result-object v3

    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcgs;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzvk; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzi(Ljava/lang/String;)V

    .line 6
    :cond_0
    :goto_0
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzbr;->zzb:Lcom/google/android/gms/internal/ads/zzwf;

    .line 8
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzwf;->zzb(Lcom/google/android/gms/internal/ads/zzwc;)Lcom/google/android/gms/internal/ads/zzwc;

    return-object v10
.end method
