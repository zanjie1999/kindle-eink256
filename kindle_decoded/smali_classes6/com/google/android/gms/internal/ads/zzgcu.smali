.class public final Lcom/google/android/gms/internal/ads/zzgcu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzftk;


# instance fields
.field private final zza:Ljava/security/interfaces/ECPrivateKey;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgcw;

.field private final zzc:Ljava/lang/String;

.field private final zzd:[B

.field private final zze:Lcom/google/android/gms/internal/ads/zzgct;


# direct methods
.method public constructor <init>(Ljava/security/interfaces/ECPrivateKey;[BLjava/lang/String;ILcom/google/android/gms/internal/ads/zzgct;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgcu;->zza:Ljava/security/interfaces/ECPrivateKey;

    new-instance p4, Lcom/google/android/gms/internal/ads/zzgcw;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/ads/zzgcw;-><init>(Ljava/security/interfaces/ECPrivateKey;)V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzgcu;->zzb:Lcom/google/android/gms/internal/ads/zzgcw;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgcu;->zzd:[B

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgcu;->zzc:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzgcu;->zze:Lcom/google/android/gms/internal/ads/zzgct;

    return-void
.end method
