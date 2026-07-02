.class public final Lcom/google/android/gms/internal/ads/zzpx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zznx;


# instance fields
.field private final zzb:J

.field private final zzc:Lcom/google/android/gms/internal/ads/zznx;


# direct methods
.method public constructor <init>(JLcom/google/android/gms/internal/ads/zznx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzpx;->zzb:J

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzpx;->zzc:Lcom/google/android/gms/internal/ads/zznx;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzpx;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzpx;->zzb:J

    return-wide v0
.end method


# virtual methods
.method public final zzB(II)Lcom/google/android/gms/internal/ads/zzox;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpx;->zzc:Lcom/google/android/gms/internal/ads/zznx;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zznx;->zzB(II)Lcom/google/android/gms/internal/ads/zzox;

    move-result-object p1

    return-object p1
.end method

.method public final zzC()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpx;->zzc:Lcom/google/android/gms/internal/ads/zznx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zznx;->zzC()V

    return-void
.end method

.method public final zzD(Lcom/google/android/gms/internal/ads/zzot;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpx;->zzc:Lcom/google/android/gms/internal/ads/zznx;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzpw;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzpw;-><init>(Lcom/google/android/gms/internal/ads/zzpx;Lcom/google/android/gms/internal/ads/zzot;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zznx;->zzD(Lcom/google/android/gms/internal/ads/zzot;)V

    return-void
.end method
