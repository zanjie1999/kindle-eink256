.class abstract Lcom/google/android/gms/internal/ads/zzfnd;
.super Lcom/google/android/gms/internal/ads/zzfng;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzfng<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private transient zza:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field private transient zzb:I


# direct methods
.method protected constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfng;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfnd;->zza:Ljava/util/Map;

    return-void

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 2
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzfnd;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfnd;->zza:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/ads/zzfnd;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzfnd;->zzb:I

    return p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/ads/zzfnd;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfnd;->zzb:I

    return p1
.end method

.method static synthetic zzm(Lcom/google/android/gms/internal/ads/zzfnd;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfnd;->zza:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 2
    :goto_0
    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result p1

    .line 4
    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfnd;->zzb:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfnd;->zzb:I

    :cond_0
    return-void

    .line 5
    :cond_1
    throw v1
.end method


# virtual methods
.method zza(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;)",
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method

.method zzb(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Collection<",
            "TV;>;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method

.method abstract zzc()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end method

.method public final zzg()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfnd;->zzb:I

    return v0
.end method

.method public final zzh(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfnd;->zza:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfnd;->zzc()Ljava/util/Collection;

    move-result-object v0

    .line 3
    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzfnd;->zzb:I

    add-int/2addr p2, v1

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzfnd;->zzb:I

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfnd;->zza:Ljava/util/Map;

    .line 4
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "New Collection violated the Collection spec"

    .line 5
    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 6
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzfnd;->zzb:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfnd;->zzb:I

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final zzi()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfnd;->zza:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 2
    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfnd;->zza:Ljava/util/Map;

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfnd;->zzb:I

    return-void
.end method

.method final zzj(Ljava/lang/Object;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzfna;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/List<",
            "TV;>;",
            "Lcom/google/android/gms/internal/ads/zzfna;",
            ")",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p2, Ljava/util/RandomAccess;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfmw;

    .line 2
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzfmw;-><init>(Lcom/google/android/gms/internal/ads/zzfnd;Ljava/lang/Object;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzfna;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfnc;

    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzfnc;-><init>(Lcom/google/android/gms/internal/ads/zzfnd;Ljava/lang/Object;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzfna;)V

    :goto_0
    return-object v0
.end method

.method zzk()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    const/4 v0, 0x0

    throw v0
.end method

.method final zzl()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfnd;->zza:Ljava/util/Map;

    instance-of v1, v0, Ljava/util/NavigableMap;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfmv;

    .line 2
    check-cast v0, Ljava/util/NavigableMap;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzfmv;-><init>(Lcom/google/android/gms/internal/ads/zzfnd;Ljava/util/NavigableMap;)V

    return-object v1

    .line 3
    :cond_0
    instance-of v1, v0, Ljava/util/SortedMap;

    if-eqz v1, :cond_1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfmy;

    .line 4
    check-cast v0, Ljava/util/SortedMap;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzfmy;-><init>(Lcom/google/android/gms/internal/ads/zzfnd;Ljava/util/SortedMap;)V

    return-object v1

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfmt;

    .line 5
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzfmt;-><init>(Lcom/google/android/gms/internal/ads/zzfnd;Ljava/util/Map;)V

    return-object v1
.end method

.method final zzn()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfnf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfnf;-><init>(Lcom/google/android/gms/internal/ads/zzfng;)V

    return-object v0
.end method

.method final zzo()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfmn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfmn;-><init>(Lcom/google/android/gms/internal/ads/zzfnd;)V

    return-object v0
.end method

.method zzp()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    const/4 v0, 0x0

    throw v0
.end method

.method final zzq()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfnd;->zza:Ljava/util/Map;

    instance-of v1, v0, Ljava/util/NavigableMap;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfmu;

    .line 2
    check-cast v0, Ljava/util/NavigableMap;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzfmu;-><init>(Lcom/google/android/gms/internal/ads/zzfnd;Ljava/util/NavigableMap;)V

    return-object v1

    .line 3
    :cond_0
    instance-of v1, v0, Ljava/util/SortedMap;

    if-eqz v1, :cond_1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfmx;

    .line 4
    check-cast v0, Ljava/util/SortedMap;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzfmx;-><init>(Lcom/google/android/gms/internal/ads/zzfnd;Ljava/util/SortedMap;)V

    return-object v1

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfmq;

    .line 5
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzfmq;-><init>(Lcom/google/android/gms/internal/ads/zzfnd;Ljava/util/Map;)V

    return-object v1
.end method
