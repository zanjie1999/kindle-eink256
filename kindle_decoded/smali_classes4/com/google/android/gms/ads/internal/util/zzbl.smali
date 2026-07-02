.class final Lcom/google/android/gms/ads/internal/util/zzbl;
.super Lcom/google/android/gms/internal/ads/zzxh;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field final synthetic zza:[B

.field final synthetic zzb:Ljava/util/Map;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzcgs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/util/zzbr;ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzwh;Lcom/google/android/gms/internal/ads/zzwg;[BLjava/util/Map;Lcom/google/android/gms/internal/ads/zzcgs;)V
    .locals 0

    .line 1
    iput-object p6, p0, Lcom/google/android/gms/ads/internal/util/zzbl;->zza:[B

    iput-object p7, p0, Lcom/google/android/gms/ads/internal/util/zzbl;->zzb:Ljava/util/Map;

    iput-object p8, p0, Lcom/google/android/gms/ads/internal/util/zzbl;->zzc:Lcom/google/android/gms/internal/ads/zzcgs;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/google/android/gms/internal/ads/zzxh;-><init>(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzwh;Lcom/google/android/gms/internal/ads/zzwg;)V

    return-void
.end method


# virtual methods
.method public final zzn()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzvk;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzbl;->zzb:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final zzo()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzvk;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzbl;->zza:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method protected final bridge synthetic zzt(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzxh;->zzz(Ljava/lang/String;)V

    return-void
.end method

.method protected final zzz(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzbl;->zzc:Lcom/google/android/gms/internal/ads/zzcgs;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcgs;->zze(Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzxh;->zzz(Ljava/lang/String;)V

    return-void
.end method
