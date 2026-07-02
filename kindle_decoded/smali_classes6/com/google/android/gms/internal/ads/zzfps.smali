.class final Lcom/google/android/gms/internal/ads/zzfps;
.super Lcom/google/android/gms/internal/ads/zzfmm;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzfmm<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final transient zza:Lcom/google/android/gms/internal/ads/zzfmj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzfmj<",
            "+",
            "Ljava/util/List<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzfmj;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;",
            "Lcom/google/android/gms/internal/ads/zzfmj<",
            "+",
            "Ljava/util/List<",
            "TV;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfmm;-><init>(Ljava/util/Map;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfps;->zza:Lcom/google/android/gms/internal/ads/zzfmj;

    return-void
.end method


# virtual methods
.method protected final bridge synthetic zzc()Ljava/util/Collection;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfps;->zza:Lcom/google/android/gms/internal/ads/zzfmj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzfmj;->zza()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final zzk()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfnd;->zzl()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method final zzp()Ljava/util/Map;
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

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfnd;->zzq()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
