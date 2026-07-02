.class final Lcom/google/android/gms/internal/ads/zzpv;
.super Lcom/google/android/gms/internal/ads/zzoi;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zza:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zznv;J)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzoi;-><init>(Lcom/google/android/gms/internal/ads/zznv;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zznv;->zzn()J

    move-result-wide v0

    cmp-long p1, v0, p2

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakt;->zza(Z)V

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzpv;->zza:J

    return-void
.end method


# virtual methods
.method public final zzm()J
    .locals 4

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzoi;->zzm()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzpv;->zza:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final zzn()J
    .locals 4

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzoi;->zzn()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzpv;->zza:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final zzo()J
    .locals 4

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzoi;->zzo()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzpv;->zza:J

    sub-long/2addr v0, v2

    return-wide v0
.end method
