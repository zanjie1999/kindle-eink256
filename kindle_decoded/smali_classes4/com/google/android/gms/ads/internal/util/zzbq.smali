.class public final Lcom/google/android/gms/ads/internal/util/zzbq;
.super Lcom/google/android/gms/internal/ads/zzwc;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzwc<",
        "Lcom/google/android/gms/internal/ads/zzvy;",
        ">;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzchl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzchl<",
            "Lcom/google/android/gms/internal/ads/zzvy;",
            ">;"
        }
    .end annotation
.end field

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcgs;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzchl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzchl<",
            "Lcom/google/android/gms/internal/ads/zzvy;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance p2, Lcom/google/android/gms/ads/internal/util/zzbp;

    invoke-direct {p2, p3}, Lcom/google/android/gms/ads/internal/util/zzbp;-><init>(Lcom/google/android/gms/internal/ads/zzchl;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzwc;-><init>(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzwg;)V

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/util/zzbq;->zza:Lcom/google/android/gms/internal/ads/zzchl;

    .line 2
    new-instance p2, Lcom/google/android/gms/internal/ads/zzcgs;

    const/4 p3, 0x0

    .line 3
    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/ads/zzcgs;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/util/zzbq;->zzb:Lcom/google/android/gms/internal/ads/zzcgs;

    const-string v0, "GET"

    .line 4
    invoke-virtual {p2, p1, v0, p3, p3}, Lcom/google/android/gms/internal/ads/zzcgs;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V

    return-void
.end method


# virtual methods
.method protected final zzs(Lcom/google/android/gms/internal/ads/zzvy;)Lcom/google/android/gms/internal/ads/zzwi;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzvy;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzwi<",
            "Lcom/google/android/gms/internal/ads/zzvy;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzwz;->zza(Lcom/google/android/gms/internal/ads/zzvy;)Lcom/google/android/gms/internal/ads/zzvl;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzwi;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzvl;)Lcom/google/android/gms/internal/ads/zzwi;

    move-result-object p1

    return-object p1
.end method

.method protected final bridge synthetic zzt(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzvy;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzbq;->zzb:Lcom/google/android/gms/internal/ads/zzcgs;

    .line 2
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzvy;->zzc:Ljava/util/Map;

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzvy;->zza:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcgs;->zzd(Ljava/util/Map;I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzbq;->zzb:Lcom/google/android/gms/internal/ads/zzcgs;

    .line 3
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzvy;->zzb:[B

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcgs;->zzj()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcgs;->zzf([B)V

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzbq;->zza:Lcom/google/android/gms/internal/ads/zzchl;

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzchl;->zzc(Ljava/lang/Object;)Z

    return-void
.end method
