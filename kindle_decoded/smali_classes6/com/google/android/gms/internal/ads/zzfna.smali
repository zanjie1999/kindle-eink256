.class Lcom/google/android/gms/internal/ads/zzfna;
.super Ljava/util/AbstractCollection;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field final zza:Ljava/lang/Object;

.field zzb:Ljava/util/Collection;

.field final zzc:Lcom/google/android/gms/internal/ads/zzfna;

.field final zzd:Ljava/util/Collection;

.field final synthetic zze:Lcom/google/android/gms/internal/ads/zzfnd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfnd;Ljava/lang/Object;Ljava/util/Collection;Lcom/google/android/gms/internal/ads/zzfna;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfna;->zze:Lcom/google/android/gms/internal/ads/zzfnd;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfna;->zza:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfna;->zzb:Ljava/util/Collection;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfna;->zzc:Lcom/google/android/gms/internal/ads/zzfna;

    if-nez p4, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p4, Lcom/google/android/gms/internal/ads/zzfna;->zzb:Ljava/util/Collection;

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfna;->zzd:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfna;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfna;->zzb:Ljava/util/Collection;

    .line 2
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfna;->zzb:Ljava/util/Collection;

    .line 3
    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfna;->zze:Lcom/google/android/gms/internal/ads/zzfnd;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfnd;->zze(Lcom/google/android/gms/internal/ads/zzfnd;)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 4
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzfnd;->zzf(Lcom/google/android/gms/internal/ads/zzfnd;I)I

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfna;->zzc()V

    return v3

    :cond_0
    return p1
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 4

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfna;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfna;->zzb:Ljava/util/Collection;

    .line 3
    invoke-interface {v1, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfna;->zzb:Ljava/util/Collection;

    .line 4
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfna;->zze:Lcom/google/android/gms/internal/ads/zzfnd;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfnd;->zze(Lcom/google/android/gms/internal/ads/zzfnd;)I

    move-result v3

    sub-int/2addr v1, v0

    add-int/2addr v3, v1

    .line 5
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzfnd;->zzf(Lcom/google/android/gms/internal/ads/zzfnd;I)I

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfna;->zzc()V

    const/4 p1, 0x1

    :cond_1
    return p1
.end method

.method public final clear()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfna;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfna;->zzb:Ljava/util/Collection;

    .line 2
    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfna;->zze:Lcom/google/android/gms/internal/ads/zzfnd;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfnd;->zze(Lcom/google/android/gms/internal/ads/zzfnd;)I

    move-result v2

    sub-int/2addr v2, v0

    .line 3
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzfnd;->zzf(Lcom/google/android/gms/internal/ads/zzfnd;I)I

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfna;->zzb()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfna;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfna;->zzb:Ljava/util/Collection;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfna;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfna;->zzb:Ljava/util/Collection;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfna;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfna;->zzb:Ljava/util/Collection;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfna;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfna;->zzb:Ljava/util/Collection;

    .line 2
    invoke-interface {v0}, Ljava/util/Collection;->hashCode()I

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfna;->zza()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfmz;

    .line 2
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfmz;-><init>(Lcom/google/android/gms/internal/ads/zzfna;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfna;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfna;->zzb:Ljava/util/Collection;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfna;->zze:Lcom/google/android/gms/internal/ads/zzfnd;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfnd;->zze(Lcom/google/android/gms/internal/ads/zzfnd;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfnd;->zzf(Lcom/google/android/gms/internal/ads/zzfnd;I)I

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfna;->zzb()V

    :cond_0
    return p1
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfna;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfna;->zzb:Ljava/util/Collection;

    .line 3
    invoke-interface {v1, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfna;->zzb:Ljava/util/Collection;

    .line 4
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfna;->zze:Lcom/google/android/gms/internal/ads/zzfnd;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfnd;->zze(Lcom/google/android/gms/internal/ads/zzfnd;)I

    move-result v3

    sub-int/2addr v1, v0

    add-int/2addr v3, v1

    .line 5
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzfnd;->zzf(Lcom/google/android/gms/internal/ads/zzfnd;I)I

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfna;->zzb()V

    :cond_1
    return p1
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfna;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfna;->zzb:Ljava/util/Collection;

    .line 2
    invoke-interface {v1, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfna;->zzb:Ljava/util/Collection;

    .line 3
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfna;->zze:Lcom/google/android/gms/internal/ads/zzfnd;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfnd;->zze(Lcom/google/android/gms/internal/ads/zzfnd;)I

    move-result v3

    sub-int/2addr v1, v0

    add-int/2addr v3, v1

    .line 4
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzfnd;->zzf(Lcom/google/android/gms/internal/ads/zzfnd;I)I

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfna;->zzb()V

    :cond_0
    return p1

    :cond_1
    const/4 p1, 0x0

    .line 6
    throw p1
.end method

.method public final size()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfna;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfna;->zzb:Ljava/util/Collection;

    .line 2
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfna;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfna;->zzb:Ljava/util/Collection;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final zza()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfna;->zzc:Lcom/google/android/gms/internal/ads/zzfna;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfna;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfna;->zzc:Lcom/google/android/gms/internal/ads/zzfna;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfna;->zzb:Ljava/util/Collection;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfna;->zzd:Ljava/util/Collection;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    .line 2
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfna;->zzb:Ljava/util/Collection;

    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfna;->zze:Lcom/google/android/gms/internal/ads/zzfnd;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfnd;->zzd(Lcom/google/android/gms/internal/ads/zzfnd;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfna;->zza:Ljava/lang/Object;

    .line 4
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_2

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfna;->zzb:Ljava/util/Collection;

    :cond_2
    :goto_0
    return-void
.end method

.method final zzb()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfna;->zzc:Lcom/google/android/gms/internal/ads/zzfna;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfna;->zzb()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfna;->zzb:Ljava/util/Collection;

    .line 2
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfna;->zze:Lcom/google/android/gms/internal/ads/zzfnd;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfnd;->zzd(Lcom/google/android/gms/internal/ads/zzfnd;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfna;->zza:Ljava/lang/Object;

    .line 3
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method final zzc()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfna;->zzc:Lcom/google/android/gms/internal/ads/zzfna;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfna;->zzc()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfna;->zze:Lcom/google/android/gms/internal/ads/zzfnd;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfnd;->zzd(Lcom/google/android/gms/internal/ads/zzfnd;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfna;->zza:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfna;->zzb:Ljava/util/Collection;

    .line 2
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
