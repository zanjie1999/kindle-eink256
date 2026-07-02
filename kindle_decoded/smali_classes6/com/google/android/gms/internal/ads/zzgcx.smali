.class public final Lcom/google/android/gms/internal/ads/zzgcx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgdk;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgdk;


# direct methods
.method public constructor <init>([B[B)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzgdk;->zza([BII)Lcom/google/android/gms/internal/ads/zzgdk;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgcx;->zza:Lcom/google/android/gms/internal/ads/zzgdk;

    array-length p1, p2

    .line 2
    invoke-static {p2, v1, p1}, Lcom/google/android/gms/internal/ads/zzgdk;->zza([BII)Lcom/google/android/gms/internal/ads/zzgdk;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgcx;->zzb:Lcom/google/android/gms/internal/ads/zzgdk;

    return-void
.end method


# virtual methods
.method public final zza()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgcx;->zza:Lcom/google/android/gms/internal/ads/zzgdk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgdk;->zzb()[B

    move-result-object v0

    return-object v0
.end method

.method public final zzb()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgcx;->zzb:Lcom/google/android/gms/internal/ads/zzgdk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgdk;->zzb()[B

    move-result-object v0

    return-object v0
.end method
