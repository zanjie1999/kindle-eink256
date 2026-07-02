.class public final Lcom/google/android/gms/internal/ads/zzfkz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzfkw;

.field private static volatile zzb:Lcom/google/android/gms/internal/ads/zzfkw;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfkx;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzfkx;-><init>(Lcom/google/android/gms/internal/ads/zzfky;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfkz;->zza:Lcom/google/android/gms/internal/ads/zzfkw;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfkz;->zzb:Lcom/google/android/gms/internal/ads/zzfkw;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzfkw;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfkz;->zzb:Lcom/google/android/gms/internal/ads/zzfkw;

    return-object v0
.end method
