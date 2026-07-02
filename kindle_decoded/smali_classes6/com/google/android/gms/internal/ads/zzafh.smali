.class final Lcom/google/android/gms/internal/ads/zzafh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzahu;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzafp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzafp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzafh;->zza:Lcom/google/android/gms/internal/ads/zzafp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(J)V
    .locals 3

    const-wide/16 v0, 0x7d0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzafh;->zza:Lcom/google/android/gms/internal/ads/zzafp;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzafp;->zzd(Lcom/google/android/gms/internal/ads/zzafp;Z)Z

    :cond_0
    return-void
.end method

.method public final zzb()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafh;->zza:Lcom/google/android/gms/internal/ads/zzafp;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzafp;->zzc(Lcom/google/android/gms/internal/ads/zzafp;)Lcom/google/android/gms/internal/ads/zzalg;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzalg;->zzf(I)Z

    return-void
.end method
