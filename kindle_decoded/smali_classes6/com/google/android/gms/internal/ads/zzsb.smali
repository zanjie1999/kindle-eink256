.class final Lcom/google/android/gms/internal/ads/zzsb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzsh;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzoh;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzog;

.field private zzc:J

.field private zzd:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzoh;Lcom/google/android/gms/internal/ads/zzog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsb;->zza:Lcom/google/android/gms/internal/ads/zzoh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzsb;->zzb:Lcom/google/android/gms/internal/ads/zzog;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzsb;->zzc:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzsb;->zzd:J

    return-void
.end method


# virtual methods
.method public final zza(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzsb;->zzc:J

    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zznv;)J
    .locals 6

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsb;->zzd:J

    const-wide/16 v2, -0x1

    const-wide/16 v4, 0x0

    cmp-long p1, v0, v4

    if-ltz p1, :cond_0

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzsb;->zzd:J

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    neg-long v0, v0

    return-wide v0

    :cond_0
    return-wide v2
.end method

.method public final zzf(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsb;->zzb:Lcom/google/android/gms/internal/ads/zzog;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzog;->zza:[J

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1, v1}, Lcom/google/android/gms/internal/ads/zzamq;->zzD([JJZZ)I

    move-result p1

    .line 2
    aget-wide p1, v0, p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzsb;->zzd:J

    return-void
.end method

.method public final zzg()Lcom/google/android/gms/internal/ads/zzot;
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsb;->zzc:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakt;->zzd(Z)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzof;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsb;->zza:Lcom/google/android/gms/internal/ads/zzoh;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzsb;->zzc:J

    .line 2
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzof;-><init>(Lcom/google/android/gms/internal/ads/zzoh;J)V

    return-object v0
.end method
