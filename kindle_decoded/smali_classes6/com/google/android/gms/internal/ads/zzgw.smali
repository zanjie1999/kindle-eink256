.class final Lcom/google/android/gms/internal/ads/zzgw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaj;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzaj;

.field private final zzb:I

.field private final zzc:Lcom/google/android/gms/internal/ads/zzgv;

.field private final zzd:[B

.field private zze:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaj;ILcom/google/android/gms/internal/ads/zzgv;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lez p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzakt;->zza(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgw;->zza:Lcom/google/android/gms/internal/ads/zzaj;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzgw;->zzb:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgw;->zzc:Lcom/google/android/gms/internal/ads/zzgv;

    new-array p1, v0, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgw;->zzd:[B

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzgw;->zze:I

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzay;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgw;->zza:Lcom/google/android/gms/internal/ads/zzaj;

    .line 1
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzaj;->zza(Lcom/google/android/gms/internal/ads/zzay;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public final zzf()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgw;->zza:Lcom/google/android/gms/internal/ads/zzaj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaj;->zzf()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final zzg([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgw;->zze:I

    const/4 v1, -0x1

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgw;->zza:Lcom/google/android/gms/internal/ads/zzaj;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgw;->zzd:[B

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzah;->zzg([BII)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgw;->zzd:[B

    aget-byte v0, v0, v4

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    goto :goto_3

    .line 5
    :cond_1
    new-array v2, v0, [B

    move v3, v0

    :goto_0
    if-lez v3, :cond_3

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzgw;->zza:Lcom/google/android/gms/internal/ads/zzaj;

    .line 2
    invoke-interface {v5, v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzah;->zzg([BII)I

    move-result v5

    if-eq v5, v1, :cond_2

    add-int/2addr v4, v5

    sub-int/2addr v3, v5

    goto :goto_0

    :cond_2
    :goto_1
    return v1

    :cond_3
    :goto_2
    if-lez v0, :cond_4

    add-int/lit8 v3, v0, -0x1

    .line 3
    aget-byte v4, v2, v3

    if-nez v4, :cond_4

    move v0, v3

    goto :goto_2

    :cond_4
    if-lez v0, :cond_5

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgw;->zzc:Lcom/google/android/gms/internal/ads/zzgv;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzamf;

    .line 4
    invoke-direct {v4, v2, v0}, Lcom/google/android/gms/internal/ads/zzamf;-><init>([BI)V

    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/zzgv;->zza(Lcom/google/android/gms/internal/ads/zzamf;)V

    .line 1
    :cond_5
    :goto_3
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgw;->zzb:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgw;->zze:I

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgw;->zza:Lcom/google/android/gms/internal/ads/zzaj;

    .line 5
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-interface {v2, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzah;->zzg([BII)I

    move-result p1

    if-eq p1, v1, :cond_7

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzgw;->zze:I

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzgw;->zze:I

    :cond_7
    return p1
.end method

.method public final zzh(Lcom/google/android/gms/internal/ads/zzan;)J
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final zzi()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgw;->zza:Lcom/google/android/gms/internal/ads/zzaj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaj;->zzi()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final zzj()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
