.class public final Lcom/google/android/gms/internal/ads/zzpc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# direct methods
.method public static zza(I)I
    .locals 1

    const/4 v0, 0x0

    :goto_0
    if-lez p0, :cond_0

    add-int/lit8 v0, v0, 0x1

    ushr-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzamf;ZZ)Lcom/google/android/gms/internal/ads/zzoz;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaha;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    .line 1
    invoke-static {p1, p0, v0}, Lcom/google/android/gms/internal/ads/zzpc;->zzc(ILcom/google/android/gms/internal/ads/zzamf;Z)Z

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzu()J

    move-result-wide v1

    long-to-int p1, v1

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfll;->zzc:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzE(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzu()J

    move-result-wide v1

    long-to-int v3, v1

    .line 5
    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0xf

    :goto_0
    int-to-long v5, v0

    cmp-long v7, v5, v1

    if-gez v7, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzu()J

    move-result-wide v5

    long-to-int v6, v5

    sget-object v5, Lcom/google/android/gms/internal/ads/zzfll;->zzc:Ljava/nio/charset/Charset;

    .line 7
    invoke-virtual {p0, v6, v5}, Lcom/google/android/gms/internal/ads/zzamf;->zzE(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v5

    .line 8
    aput-object v5, v3, v0

    add-int/lit8 v4, v4, 0x4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result p0

    and-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    const-string p1, "framing bit expected to be set"

    .line 11
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzaha;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaha;

    move-result-object p0

    throw p0

    :cond_3
    :goto_1
    new-instance p0, Lcom/google/android/gms/internal/ads/zzoz;

    add-int/lit8 v4, v4, 0x1

    .line 10
    invoke-direct {p0, p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzoz;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    return-object p0
.end method

.method public static zzc(ILcom/google/android/gms/internal/ads/zzamf;Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaha;
        }
    .end annotation

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x7

    if-ge v0, v3, :cond_1

    if-eqz p2, :cond_0

    return v1

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 p2, 0x1d

    .line 1
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "too short header: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0, v2}, Lcom/google/android/gms/internal/ads/zzaha;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaha;

    move-result-object p0

    throw p0

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v0

    if-eq v0, p0, :cond_4

    if-eqz p2, :cond_2

    return v1

    .line 4
    :cond_2
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "expected header type "

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 12
    :cond_3
    new-instance p0, Ljava/lang/String;

    .line 4
    invoke-direct {p0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 5
    :goto_0
    invoke-static {p0, v2}, Lcom/google/android/gms/internal/ads/zzaha;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaha;

    move-result-object p0

    throw p0

    .line 6
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result p0

    const/16 v0, 0x76

    if-ne p0, v0, :cond_6

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result p0

    const/16 v0, 0x6f

    if-ne p0, v0, :cond_6

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result p0

    const/16 v0, 0x72

    if-ne p0, v0, :cond_6

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result p0

    const/16 v0, 0x62

    if-ne p0, v0, :cond_6

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result p0

    const/16 v0, 0x69

    if-ne p0, v0, :cond_6

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result p0

    const/16 p1, 0x73

    if-eq p0, p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 p0, 0x1

    return p0

    :cond_6
    :goto_1
    if-eqz p2, :cond_7

    return v1

    :cond_7
    const-string p0, "expected characters \'vorbis\'"

    .line 12
    invoke-static {p0, v2}, Lcom/google/android/gms/internal/ads/zzaha;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaha;

    move-result-object p0

    throw p0
.end method
