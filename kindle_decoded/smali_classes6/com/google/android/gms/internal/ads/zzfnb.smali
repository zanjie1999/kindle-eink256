.class final Lcom/google/android/gms/internal/ads/zzfnb;
.super Lcom/google/android/gms/internal/ads/zzfmz;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field final synthetic zzd:Lcom/google/android/gms/internal/ads/zzfnc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfnc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfnb;->zzd:Lcom/google/android/gms/internal/ads/zzfnc;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfmz;-><init>(Lcom/google/android/gms/internal/ads/zzfna;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfnc;I)V
    .locals 1

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfnb;->zzd:Lcom/google/android/gms/internal/ads/zzfnc;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfna;->zzb:Ljava/util/Collection;

    check-cast v0, Ljava/util/List;

    .line 3
    invoke-interface {v0, p2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfmz;-><init>(Lcom/google/android/gms/internal/ads/zzfna;Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfnb;->zzd:Lcom/google/android/gms/internal/ads/zzfnc;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfmz;->zza()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfmz;->zza:Ljava/util/Iterator;

    .line 3
    check-cast v1, Ljava/util/ListIterator;

    .line 4
    invoke-interface {v1, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfnb;->zzd:Lcom/google/android/gms/internal/ads/zzfnc;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfnc;->zzf:Lcom/google/android/gms/internal/ads/zzfnd;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfnd;->zze(Lcom/google/android/gms/internal/ads/zzfnd;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 5
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzfnd;->zzf(Lcom/google/android/gms/internal/ads/zzfnd;I)I

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfnb;->zzd:Lcom/google/android/gms/internal/ads/zzfnc;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfna;->zzc()V

    :cond_0
    return-void
.end method

.method public final hasPrevious()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfmz;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfmz;->zza:Ljava/util/Iterator;

    .line 2
    check-cast v0, Ljava/util/ListIterator;

    .line 3
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public final nextIndex()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfmz;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfmz;->zza:Ljava/util/Iterator;

    .line 2
    check-cast v0, Ljava/util/ListIterator;

    .line 3
    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfmz;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfmz;->zza:Ljava/util/Iterator;

    .line 2
    check-cast v0, Ljava/util/ListIterator;

    .line 3
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final previousIndex()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfmz;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfmz;->zza:Ljava/util/Iterator;

    .line 2
    check-cast v0, Ljava/util/ListIterator;

    .line 3
    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfmz;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfmz;->zza:Ljava/util/Iterator;

    .line 2
    check-cast v0, Ljava/util/ListIterator;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    return-void
.end method
