.class final Lcom/google/android/gms/internal/ads/zzgeq;
.super Lcom/google/android/gms/internal/ads/zzget;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zzc:I

.field private final zzd:I


# direct methods
.method constructor <init>([BII)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzget;-><init>([B)V

    add-int v0, p2, p3

    array-length p1, p1

    .line 2
    invoke-static {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzgex;->zzE(III)I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzgeq;->zzc:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzgeq;->zzd:I

    return-void
.end method


# virtual methods
.method public final zza(I)B
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgeq;->zzd:I

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzgex;->zzD(II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzget;->zza:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgeq;->zzc:I

    add-int/2addr v1, p1

    .line 2
    aget-byte p1, v0, v1

    return p1
.end method

.method final zzb(I)B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzget;->zza:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgeq;->zzc:I

    add-int/2addr v1, p1

    aget-byte p1, v0, v1

    return p1
.end method

.method public final zzc()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgeq;->zzd:I

    return v0
.end method

.method protected final zzd()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgeq;->zzc:I

    return v0
.end method

.method protected final zze([BIII)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzget;->zza:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgeq;->zzc:I

    add-int/2addr v1, p2

    invoke-static {v0, v1, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
