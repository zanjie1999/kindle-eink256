.class final Lcom/google/android/gms/internal/ads/zzfcd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfcc;


# instance fields
.field private final zza:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/google/android/gms/internal/ads/zzfcm;",
            "Lcom/google/android/gms/internal/ads/zzfcb;",
            ">;"
        }
    .end annotation
.end field

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfcj;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfcf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfcj;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzfcj;->zzd:I

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfcd;->zza:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfcd;->zzb:Lcom/google/android/gms/internal/ads/zzfcj;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfcf;

    .line 2
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzfcf;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfcd;->zzc:Lcom/google/android/gms/internal/ads/zzfcf;

    return-void
.end method

.method private final zzf()V
    .locals 7

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfcj;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbjl;->zzeG:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfcd;->zzb:Lcom/google/android/gms/internal/ads/zzfcj;

    .line 5
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfcj;->zzb:Lcom/google/android/gms/internal/ads/zzfcg;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " PoolCollection"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfcd;->zzc:Lcom/google/android/gms/internal/ads/zzfcf;

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfcf;->zzg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfcd;->zza:Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    add-int/lit8 v3, v3, 0x1

    .line 9
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ". "

    .line 10
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "#"

    .line 12
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzfcm;

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzfcm;->hashCode()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "    "

    .line 14
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    .line 15
    :goto_1
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzfcb;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzfcb;->zzc()I

    move-result v6

    if-ge v5, v6, :cond_0

    const-string v6, "[O]"

    .line 16
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 17
    :cond_0
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzfcb;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzfcb;->zzc()I

    move-result v5

    :goto_2
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzfcd;->zzb:Lcom/google/android/gms/internal/ads/zzfcj;

    iget v6, v6, Lcom/google/android/gms/internal/ads/zzfcj;->zzd:I

    if-ge v5, v6, :cond_1

    const-string v6, "[ ]"

    .line 18
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    const-string v5, "\n"

    .line 19
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzfcb;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfcb;->zzg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    :goto_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfcd;->zzb:Lcom/google/android/gms/internal/ads/zzfcj;

    .line 22
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzfcj;->zzc:I

    if-ge v3, v1, :cond_3

    add-int/lit8 v3, v3, 0x1

    .line 23
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".\n"

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzd(Ljava/lang/String;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzfcm;)Lcom/google/android/gms/internal/ads/zzfcl;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzfcm;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzfcl<",
            "**>;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfcd;->zza:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfcb;

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfcb;->zzb()Lcom/google/android/gms/internal/ads/zzfcl;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfcd;->zzc:Lcom/google/android/gms/internal/ads/zzfcf;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfcf;->zzb()V

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfcb;->zzh()Lcom/google/android/gms/internal/ads/zzfcz;

    move-result-object p1

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzazu;->zza()Lcom/google/android/gms/internal/ads/zzazo;

    move-result-object v1

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzazn;->zza()Lcom/google/android/gms/internal/ads/zzazm;

    move-result-object v2

    const/4 v3, 0x2

    .line 7
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzazm;->zzd(I)Lcom/google/android/gms/internal/ads/zzazm;

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzazr;->zza()Lcom/google/android/gms/internal/ads/zzazq;

    move-result-object v3

    iget-boolean v4, p1, Lcom/google/android/gms/internal/ads/zzfcz;->zza:Z

    .line 9
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzazq;->zza(Z)Lcom/google/android/gms/internal/ads/zzazq;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzfcz;->zzb:I

    .line 10
    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/zzazq;->zzb(I)Lcom/google/android/gms/internal/ads/zzazq;

    .line 11
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzazm;->zzb(Lcom/google/android/gms/internal/ads/zzazq;)Lcom/google/android/gms/internal/ads/zzazm;

    .line 12
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzazo;->zza(Lcom/google/android/gms/internal/ads/zzazm;)Lcom/google/android/gms/internal/ads/zzazo;

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgfw;->zzah()Lcom/google/android/gms/internal/ads/zzgga;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzazu;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfcl;->zza:Lcom/google/android/gms/internal/ads/zzdal;

    .line 14
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdal;->zzP()Lcom/google/android/gms/internal/ads/zzcyj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcyj;->zze()Lcom/google/android/gms/internal/ads/zzdgh;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzdgh;->zzc(Lcom/google/android/gms/internal/ads/zzazu;)V

    .line 15
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfcd;->zzf()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfcd;->zzc:Lcom/google/android/gms/internal/ads/zzfcf;

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfcf;->zza()V

    .line 17
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfcd;->zzf()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 15
    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzb(Lcom/google/android/gms/internal/ads/zzfcm;Lcom/google/android/gms/internal/ads/zzfcl;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzfcm;",
            "Lcom/google/android/gms/internal/ads/zzfcl<",
            "**>;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfcd;->zza:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfcb;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzj()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p2, Lcom/google/android/gms/internal/ads/zzfcl;->zzd:J

    const/4 v1, 0x2

    if-nez v0, :cond_c

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfcb;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfcd;->zzb:Lcom/google/android/gms/internal/ads/zzfcj;

    .line 3
    iget v3, v2, Lcom/google/android/gms/internal/ads/zzfcj;->zzd:I

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzfcj;->zze:I

    mul-int/lit16 v2, v2, 0x3e8

    invoke-direct {v0, v3, v2}, Lcom/google/android/gms/internal/ads/zzfcb;-><init>(II)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfcd;->zza:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfcd;->zzb:Lcom/google/android/gms/internal/ads/zzfcj;

    iget v4, v3, Lcom/google/android/gms/internal/ads/zzfcj;->zzc:I

    if-ne v2, v4, :cond_b

    .line 5
    iget v2, v3, Lcom/google/android/gms/internal/ads/zzfcj;->zzg:I

    add-int/lit8 v3, v2, -0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_a

    const-wide v5, 0x7fffffffffffffffL

    if-eqz v3, :cond_6

    const/4 v2, 0x1

    if-eq v3, v2, :cond_3

    if-eq v3, v1, :cond_0

    goto/16 :goto_3

    .line 38
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfcd;->zza:Ljava/util/concurrent/ConcurrentHashMap;

    .line 16
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const v3, 0x7fffffff

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 17
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzfcb;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzfcb;->zzf()I

    move-result v6

    if-ge v6, v3, :cond_1

    .line 18
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzfcb;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfcb;->zzf()I

    move-result v3

    .line 19
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzfcm;

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_9

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfcd;->zza:Ljava/util/concurrent/ConcurrentHashMap;

    .line 20
    invoke-virtual {v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 10
    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfcd;->zza:Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 12
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/zzfcb;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzfcb;->zze()J

    move-result-wide v7

    cmp-long v9, v7, v5

    if-gez v9, :cond_4

    .line 13
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzfcb;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfcb;->zze()J

    move-result-wide v4

    .line 14
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzfcm;

    move-wide v5, v4

    move-object v4, v3

    goto :goto_1

    :cond_5
    if-eqz v4, :cond_9

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfcd;->zza:Ljava/util/concurrent/ConcurrentHashMap;

    .line 15
    invoke-virtual {v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 20
    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfcd;->zza:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/zzfcb;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzfcb;->zzd()J

    move-result-wide v7

    cmp-long v9, v7, v5

    if-gez v9, :cond_7

    .line 8
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzfcb;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfcb;->zzd()J

    move-result-wide v4

    .line 9
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzfcm;

    move-wide v5, v4

    move-object v4, v3

    goto :goto_2

    :cond_8
    if-eqz v4, :cond_9

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfcd;->zza:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    invoke-virtual {v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_9
    :goto_3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfcd;->zzc:Lcom/google/android/gms/internal/ads/zzfcf;

    .line 21
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfcf;->zzd()V

    goto :goto_4

    .line 5
    :cond_a
    throw v4

    .line 21
    :cond_b
    :goto_4
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfcd;->zza:Ljava/util/concurrent/ConcurrentHashMap;

    .line 22
    invoke-virtual {v2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfcd;->zzc:Lcom/google/android/gms/internal/ads/zzfcf;

    .line 23
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfcf;->zzc()V

    .line 24
    :cond_c
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzfcb;->zza(Lcom/google/android/gms/internal/ads/zzfcl;)Z

    move-result p1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfcd;->zzc:Lcom/google/android/gms/internal/ads/zzfcf;

    .line 25
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfcf;->zze()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfcd;->zzc:Lcom/google/android/gms/internal/ads/zzfcf;

    .line 26
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfcf;->zzf()Lcom/google/android/gms/internal/ads/zzfce;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfcb;->zzh()Lcom/google/android/gms/internal/ads/zzfcz;

    move-result-object v0

    if-eqz p2, :cond_d

    .line 27
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzazu;->zza()Lcom/google/android/gms/internal/ads/zzazo;

    move-result-object v3

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzazn;->zza()Lcom/google/android/gms/internal/ads/zzazm;

    move-result-object v4

    .line 29
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzazm;->zzd(I)Lcom/google/android/gms/internal/ads/zzazm;

    .line 30
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzazt;->zza()Lcom/google/android/gms/internal/ads/zzazs;

    move-result-object v1

    iget-boolean v5, v2, Lcom/google/android/gms/internal/ads/zzfce;->zza:Z

    .line 31
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzazs;->zza(Z)Lcom/google/android/gms/internal/ads/zzazs;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzfce;->zzb:Z

    .line 32
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzazs;->zzb(Z)Lcom/google/android/gms/internal/ads/zzazs;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfcz;->zzb:I

    .line 33
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzazs;->zzc(I)Lcom/google/android/gms/internal/ads/zzazs;

    .line 34
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzazm;->zzc(Lcom/google/android/gms/internal/ads/zzazs;)Lcom/google/android/gms/internal/ads/zzazm;

    .line 35
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzazo;->zza(Lcom/google/android/gms/internal/ads/zzazm;)Lcom/google/android/gms/internal/ads/zzazo;

    .line 36
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgfw;->zzah()Lcom/google/android/gms/internal/ads/zzgga;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzazu;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfcl;->zza:Lcom/google/android/gms/internal/ads/zzdal;

    .line 37
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzdal;->zzP()Lcom/google/android/gms/internal/ads/zzcyj;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzcyj;->zze()Lcom/google/android/gms/internal/ads/zzdgh;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzdgh;->zzd(Lcom/google/android/gms/internal/ads/zzazu;)V

    .line 38
    :cond_d
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfcd;->zzf()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzc(Lcom/google/android/gms/internal/ads/zzfcm;)Z
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfcd;->zza:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfcb;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfcb;->zzc()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfcd;->zzb:Lcom/google/android/gms/internal/ads/zzfcj;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzfcj;->zzd:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge p1, v1, :cond_0

    monitor-exit p0

    return v0

    :cond_0
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :cond_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzbdg;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbdr;)Lcom/google/android/gms/internal/ads/zzfcm;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcbn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfcd;->zzb:Lcom/google/android/gms/internal/ads/zzfcj;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfcj;->zza:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzcbn;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcbn;->zza()Lcom/google/android/gms/internal/ads/zzcbo;

    move-result-object v0

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzcbo;->zzk:I

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfcn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfcd;->zzb:Lcom/google/android/gms/internal/ads/zzfcj;

    .line 2
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzfcj;->zzf:Ljava/lang/String;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzfcn;-><init>(Lcom/google/android/gms/internal/ads/zzbdg;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzbdr;)V

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzfcj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfcd;->zzb:Lcom/google/android/gms/internal/ads/zzfcj;

    return-object v0
.end method
