.class final Lcom/google/android/gms/internal/ads/zzpw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzot;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzot;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzpx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzpx;Lcom/google/android/gms/internal/ads/zzot;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpw;->zzb:Lcom/google/android/gms/internal/ads/zzpx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzpw;->zza:Lcom/google/android/gms/internal/ads/zzot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zze()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpw;->zza:Lcom/google/android/gms/internal/ads/zzot;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzot;->zze()Z

    move-result v0

    return v0
.end method

.method public final zzf(J)Lcom/google/android/gms/internal/ads/zzor;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpw;->zza:Lcom/google/android/gms/internal/ads/zzot;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzot;->zzf(J)Lcom/google/android/gms/internal/ads/zzor;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzor;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzou;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzor;->zza:Lcom/google/android/gms/internal/ads/zzou;

    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/zzou;->zzb:J

    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zzou;->zzc:J

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpw;->zzb:Lcom/google/android/gms/internal/ads/zzpx;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzpx;->zza(Lcom/google/android/gms/internal/ads/zzpx;)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 2
    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzou;-><init>(JJ)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzou;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzor;->zzb:Lcom/google/android/gms/internal/ads/zzou;

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzou;->zzb:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzou;->zzc:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpw;->zzb:Lcom/google/android/gms/internal/ads/zzpx;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzpx;->zza(Lcom/google/android/gms/internal/ads/zzpx;)J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzou;-><init>(JJ)V

    invoke-direct {p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzor;-><init>(Lcom/google/android/gms/internal/ads/zzou;Lcom/google/android/gms/internal/ads/zzou;)V

    return-object p2
.end method

.method public final zzg()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpw;->zza:Lcom/google/android/gms/internal/ads/zzot;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzot;->zzg()J

    move-result-wide v0

    return-wide v0
.end method
