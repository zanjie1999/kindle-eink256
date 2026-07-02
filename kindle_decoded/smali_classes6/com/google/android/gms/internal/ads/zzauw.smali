.class public final Lcom/google/android/gms/internal/ads/zzauw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field public zza:[B

.field private zzb:I

.field private zzc:I

.field private zzd:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzauw;->zza:[B

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzauw;->zzd:I

    return-void
.end method


# virtual methods
.method public final zza(I)I
    .locals 11

    shr-int/lit8 v0, p1, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x8

    const/4 v5, 0x1

    const/16 v6, 0xff

    if-ge v2, v0, :cond_1

    .line 1
    iget v7, p0, Lcom/google/android/gms/internal/ads/zzauw;->zzc:I

    if-eqz v7, :cond_0

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzauw;->zza:[B

    iget v9, p0, Lcom/google/android/gms/internal/ads/zzauw;->zzb:I

    aget-byte v10, v8, v9

    and-int/2addr v10, v6

    shl-int/2addr v10, v7

    add-int/2addr v9, v5

    aget-byte v8, v8, v9

    and-int/2addr v8, v6

    sub-int/2addr v4, v7

    ushr-int v4, v8, v4

    or-int/2addr v4, v10

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzauw;->zza:[B

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzauw;->zzb:I

    .line 2
    aget-byte v4, v4, v7

    :goto_1
    add-int/lit8 p1, p1, -0x8

    and-int/2addr v4, v6

    shl-int/2addr v4, p1

    or-int/2addr v3, v4

    .line 1
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzauw;->zzb:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzauw;->zzb:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-lez p1, :cond_4

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzauw;->zzc:I

    add-int/2addr v0, p1

    rsub-int/lit8 p1, p1, 0x8

    shr-int p1, v6, p1

    int-to-byte p1, p1

    if-le v0, v4, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzauw;->zza:[B

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzauw;->zzb:I

    add-int/lit8 v8, v7, 0x1

    .line 3
    aget-byte v7, v2, v7

    and-int/2addr v7, v6

    add-int/lit8 v9, v0, -0x8

    shl-int/2addr v7, v9

    aget-byte v2, v2, v8

    and-int/2addr v2, v6

    rsub-int/lit8 v6, v0, 0x10

    shr-int/2addr v2, v6

    or-int/2addr v2, v7

    and-int/2addr p1, v2

    or-int/2addr p1, v3

    iput v8, p0, Lcom/google/android/gms/internal/ads/zzauw;->zzb:I

    goto :goto_2

    .line 5
    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzauw;->zza:[B

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzauw;->zzb:I

    .line 4
    aget-byte v2, v2, v7

    and-int/2addr v2, v6

    rsub-int/lit8 v6, v0, 0x8

    shr-int/2addr v2, v6

    and-int/2addr p1, v2

    or-int/2addr p1, v3

    if-ne v0, v4, :cond_3

    add-int/2addr v7, v5

    iput v7, p0, Lcom/google/android/gms/internal/ads/zzauw;->zzb:I

    :cond_3
    :goto_2
    move v3, p1

    .line 3
    rem-int/2addr v0, v4

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzauw;->zzc:I

    :cond_4
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzauw;->zzb:I

    if-ltz p1, :cond_6

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzauw;->zzc:I

    if-ltz v0, :cond_6

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzauw;->zzd:I

    if-lt p1, v2, :cond_5

    if-ne p1, v2, :cond_6

    if-nez v0, :cond_6

    :cond_5
    const/4 v1, 0x1

    .line 5
    :cond_6
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaup;->zzd(Z)V

    return v3
.end method
