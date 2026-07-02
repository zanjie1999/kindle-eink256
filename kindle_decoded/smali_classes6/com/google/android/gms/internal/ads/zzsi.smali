.class final Lcom/google/android/gms/internal/ads/zzsi;
.super Lcom/google/android/gms/internal/ads/zzsm;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# static fields
.field private static final zza:[B


# instance fields
.field private zzb:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzsi;->zza:[B

    return-void

    :array_0
    .array-data 1
        0x4ft
        0x70t
        0x75t
        0x73t
        0x48t
        0x65t
        0x61t
        0x64t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsm;-><init>()V

    return-void
.end method

.method public static zzd(Lcom/google/android/gms/internal/ads/zzamf;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    new-array v0, v2, [B

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzm([BII)V

    sget-object p0, Lcom/google/android/gms/internal/ads/zzsi;->zza:[B

    .line 2
    invoke-static {v0, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected final zza(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzsm;->zza(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzsi;->zzb:Z

    :cond_0
    return-void
.end method

.method protected final zzb(Lcom/google/android/gms/internal/ads/zzamf;)J
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object p1

    const/4 v0, 0x0

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit8 v1, v0, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_1

    .line 2
    aget-byte p1, p1, v3

    and-int/lit8 v2, p1, 0x3f

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :cond_1
    :goto_0
    const/4 p1, 0x3

    shr-int/2addr v0, p1

    and-int/lit8 v1, v0, 0x3

    const/16 v4, 0x10

    if-lt v0, v4, :cond_2

    const/16 p1, 0x9c4

    shl-int/2addr p1, v1

    goto :goto_1

    :cond_2
    const/16 v4, 0xc

    const/16 v5, 0x2710

    if-lt v0, v4, :cond_3

    and-int/lit8 p1, v1, 0x1

    shl-int p1, v5, p1

    goto :goto_1

    :cond_3
    if-ne v1, p1, :cond_4

    const p1, 0xea60

    goto :goto_1

    :cond_4
    shl-int p1, v5, v1

    :goto_1
    int-to-long v0, v2

    int-to-long v2, p1

    mul-long v0, v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzsm;->zzi(J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected final zzc(Lcom/google/android/gms/internal/ads/zzamf;JLcom/google/android/gms/internal/ads/zzsk;)Z
    .locals 2
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "#3.format"
        }
        result = false
    .end annotation

    .line 1
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzsi;->zzb:Z

    const/4 p3, 0x1

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object p2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzamf;->zze()I

    move-result p1

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    const/16 p2, 0x9

    .line 2
    aget-byte p2, p1, p2

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzop;->zza([B)Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaft;

    .line 4
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaft;-><init>()V

    const-string v1, "audio/opus"

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaft;->zzN(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    and-int/lit16 p2, p2, 0xff

    .line 6
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzaft;->zzaa(I)Lcom/google/android/gms/internal/ads/zzaft;

    const p2, 0xbb80

    .line 7
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzaft;->zzab(I)Lcom/google/android/gms/internal/ads/zzaft;

    .line 8
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaft;->zzP(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzaft;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaft;->zzah()Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object p1

    iput-object p1, p4, Lcom/google/android/gms/internal/ads/zzsk;->zza:Lcom/google/android/gms/internal/ads/zzafv;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzsi;->zzb:Z

    return p3

    .line 10
    :cond_0
    iget-object p2, p4, Lcom/google/android/gms/internal/ads/zzsk;->zza:Lcom/google/android/gms/internal/ads/zzafv;

    if-eqz p2, :cond_2

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result p2

    const p4, 0x4f707573

    const/4 v0, 0x0

    if-ne p2, p4, :cond_1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    .line 12
    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    return p3

    :cond_2
    const/4 p1, 0x0

    .line 13
    throw p1
.end method
