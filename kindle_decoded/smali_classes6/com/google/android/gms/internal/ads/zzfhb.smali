.class public final Lcom/google/android/gms/internal/ads/zzfhb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfhd;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfhc;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfhd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfhd;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhb;->zza:Lcom/google/android/gms/internal/ads/zzfhd;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfhc;

    .line 2
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzfhc;-><init>(Lcom/google/android/gms/internal/ads/zzfha;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzfhb;->zzb:Lcom/google/android/gms/internal/ads/zzfhc;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzfha;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhb;->zzb:Lcom/google/android/gms/internal/ads/zzfhc;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzfha;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhb;->zza:Lcom/google/android/gms/internal/ads/zzfhd;

    return-object v0
.end method
