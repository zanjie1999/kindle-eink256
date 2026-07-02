.class Lcom/google/android/gms/internal/ads/zzfmq;
.super Lcom/google/android/gms/internal/ads/zzfph;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field final transient zza:Ljava/util/Map;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfnd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfnd;Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfmq;->zzb:Lcom/google/android/gms/internal/ads/zzfnd;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfph;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfmq;->zza:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfmq;->zza:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfmq;->zzb:Lcom/google/android/gms/internal/ads/zzfnd;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfnd;->zzd(Lcom/google/android/gms/internal/ads/zzfnd;)Ljava/util/Map;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfmq;->zzb:Lcom/google/android/gms/internal/ads/zzfnd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfnd;->zzi()V

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfmp;

    .line 2
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfmp;-><init>(Lcom/google/android/gms/internal/ads/zzfmq;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfox;->zzb(Ljava/util/Iterator;)V

    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfmq;->zza:Ljava/util/Map;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfmq;->zza:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfmq;->zza:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzfpi;->zza(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfmq;->zzb:Lcom/google/android/gms/internal/ads/zzfnd;

    .line 2
    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzfnd;->zzb(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfmq;->zza:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfmq;->zzb:Lcom/google/android/gms/internal/ads/zzfnd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfng;->zzs()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfmq;->zza:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfmq;->zzb:Lcom/google/android/gms/internal/ads/zzfnd;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfnd;->zzc()Ljava/util/Collection;

    move-result-object v0

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfmq;->zzb:Lcom/google/android/gms/internal/ads/zzfnd;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfnd;->zze(Lcom/google/android/gms/internal/ads/zzfnd;)I

    move-result v2

    .line 4
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzfnd;->zzf(Lcom/google/android/gms/internal/ads/zzfnd;I)I

    .line 5
    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfmq;->zza:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfmq;->zza:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final zza()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfmo;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfmo;-><init>(Lcom/google/android/gms/internal/ads/zzfmq;)V

    return-object v0
.end method

.method final zzb(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry;",
            ")",
            "Ljava/util/Map$Entry;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfmq;->zzb:Lcom/google/android/gms/internal/ads/zzfnd;

    .line 2
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzfnd;->zzb(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfof;

    .line 3
    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzfof;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method
