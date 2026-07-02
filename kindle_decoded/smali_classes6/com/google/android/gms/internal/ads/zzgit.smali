.class public final Lcom/google/android/gms/internal/ads/zzgit;
.super Ljava/util/AbstractList;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Lcom/google/android/gms/internal/ads/zzggs;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Lcom/google/android/gms/internal/ads/zzggs;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzggs;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzggs;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgit;->zza:Lcom/google/android/gms/internal/ads/zzggs;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzgit;)Lcom/google/android/gms/internal/ads/zzggs;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzgit;->zza:Lcom/google/android/gms/internal/ads/zzggs;

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgit;->zza:Lcom/google/android/gms/internal/ads/zzggs;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzggr;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzggr;->zzd(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgis;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgis;-><init>(Lcom/google/android/gms/internal/ads/zzgit;)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgir;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgir;-><init>(Lcom/google/android/gms/internal/ads/zzgit;I)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgit;->zza:Lcom/google/android/gms/internal/ads/zzggs;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzgex;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final zzg(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgit;->zza:Lcom/google/android/gms/internal/ads/zzggs;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzggs;->zzg(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zzh()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgit;->zza:Lcom/google/android/gms/internal/ads/zzggs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzggs;->zzh()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final zzi()Lcom/google/android/gms/internal/ads/zzggs;
    .locals 0

    return-object p0
.end method
