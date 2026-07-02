.class public final Lcom/google/android/gms/internal/ads/zzbet;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzbet;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/ads/zzbje;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzbjf;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzbjj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbet;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbet;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbet;->zza:Lcom/google/android/gms/internal/ads/zzbet;

    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbje;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbje;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbjf;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzbjf;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbjj;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzbjj;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbet;->zzb:Lcom/google/android/gms/internal/ads/zzbje;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbet;->zzc:Lcom/google/android/gms/internal/ads/zzbjf;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzbet;->zzd:Lcom/google/android/gms/internal/ads/zzbjj;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzbjf;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbet;->zza:Lcom/google/android/gms/internal/ads/zzbet;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbet;->zzc:Lcom/google/android/gms/internal/ads/zzbjf;

    return-object v0
.end method

.method public static zzb()Lcom/google/android/gms/internal/ads/zzbje;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbet;->zza:Lcom/google/android/gms/internal/ads/zzbet;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbet;->zzb:Lcom/google/android/gms/internal/ads/zzbje;

    return-object v0
.end method

.method public static zzc()Lcom/google/android/gms/internal/ads/zzbjj;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbet;->zza:Lcom/google/android/gms/internal/ads/zzbet;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbet;->zzd:Lcom/google/android/gms/internal/ads/zzbjj;

    return-object v0
.end method
