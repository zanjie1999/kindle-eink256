.class public final Lcom/google/android/gms/internal/ads/zzrr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# direct methods
.method public static zza([B)Ljava/util/UUID;
    .locals 9

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzamf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzamf;-><init>([B)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zze()I

    move-result p0

    const/4 v1, 0x0

    const/16 v2, 0x20

    if-ge p0, v2, :cond_0

    :goto_0
    move-object p0, v1

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    .line 2
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v2

    const v3, 0x70737368    # 3.013775E29f

    if-eq v2, v3, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzqx;->zze(I)I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    const/16 v0, 0x25

    .line 6
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unsupported pssh version: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PsshAtomUtil"

    .line 7
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    new-instance v4, Ljava/util/UUID;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzx()J

    move-result-wide v5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzx()J

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Ljava/util/UUID;-><init>(JJ)V

    if-ne v2, v3, :cond_4

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzB()I

    move-result v3

    mul-int/lit8 v3, v3, 0x10

    .line 10
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    .line 11
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzB()I

    move-result v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result v5

    if-eq v3, v5, :cond_5

    goto :goto_0

    :cond_5
    new-array v5, v3, [B

    .line 12
    invoke-virtual {v0, v5, p0, v3}, Lcom/google/android/gms/internal/ads/zzamf;->zzm([BII)V

    new-instance p0, Lcom/google/android/gms/internal/ads/zzrq;

    .line 13
    invoke-direct {p0, v4, v2, v5}, Lcom/google/android/gms/internal/ads/zzrq;-><init>(Ljava/util/UUID;I[B)V

    :goto_1
    if-nez p0, :cond_6

    return-object v1

    .line 1
    :cond_6
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzrq;->zza(Lcom/google/android/gms/internal/ads/zzrq;)Ljava/util/UUID;

    move-result-object p0

    return-object p0
.end method
