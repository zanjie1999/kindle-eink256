.class public final Lcom/google/android/gms/internal/ads/zzcxv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfal;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzezz;

.field private final zzc:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzezz;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcxv;->zza:Lcom/google/android/gms/internal/ads/zzfal;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcxv;->zzb:Lcom/google/android/gms/internal/ads/zzezz;

    if-nez p3, :cond_0

    const-string p3, "com.google.ads.mediation.admob.AdMobAdapter"

    :cond_0
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcxv;->zzc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzfal;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxv;->zza:Lcom/google/android/gms/internal/ads/zzfal;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzezz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxv;->zzb:Lcom/google/android/gms/internal/ads/zzezz;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzfac;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxv;->zza:Lcom/google/android/gms/internal/ads/zzfal;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfal;->zzb:Lcom/google/android/gms/internal/ads/zzfak;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfak;->zzb:Lcom/google/android/gms/internal/ads/zzfac;

    return-object v0
.end method

.method public final zzd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxv;->zzc:Ljava/lang/String;

    return-object v0
.end method
