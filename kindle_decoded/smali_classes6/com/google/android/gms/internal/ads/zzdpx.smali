.class final synthetic Lcom/google/android/gms/internal/ads/zzdpx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcnx;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdqd;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcml;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzchk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdqd;Lcom/google/android/gms/internal/ads/zzcml;Lcom/google/android/gms/internal/ads/zzchk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdpx;->zza:Lcom/google/android/gms/internal/ads/zzdqd;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdpx;->zzb:Lcom/google/android/gms/internal/ads/zzcml;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdpx;->zzc:Lcom/google/android/gms/internal/ads/zzchk;

    return-void
.end method


# virtual methods
.method public final zza(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpx;->zza:Lcom/google/android/gms/internal/ads/zzdqd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdpx;->zzb:Lcom/google/android/gms/internal/ads/zzcml;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdpx;->zzc:Lcom/google/android/gms/internal/ads/zzchk;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzdqd;->zzg(Lcom/google/android/gms/internal/ads/zzcml;Lcom/google/android/gms/internal/ads/zzchk;Z)V

    return-void
.end method
