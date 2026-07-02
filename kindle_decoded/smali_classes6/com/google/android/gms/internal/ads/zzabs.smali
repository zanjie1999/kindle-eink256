.class final Lcom/google/android/gms/internal/ads/zzabs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# static fields
.field static zza:Lcom/google/android/gms/internal/ads/zzftl;


# direct methods
.method static zza(Lcom/google/android/gms/internal/ads/zzabr;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabs;->zza:Lcom/google/android/gms/internal/ads/zzftl;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbjl;->zzbQ:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    :cond_1
    const/4 v0, 0x0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const-string v3, "wC9I8kYd+RKAHfQkBEAJYQw7avQUH+U9s6BQ/SJiEcKjDl2sT+FDEb6J3VYVY+ui"

    const-string v4, "FSkZmgTbP/gL1jHU7M+TcfgVpePk57vWMdHk6knGCa4="

    .line 3
    invoke-virtual {p0, v3, v4}, Lcom/google/android/gms/internal/ads/zzabr;->zzq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    new-array v3, v2, [Ljava/lang/Object;

    .line 4
    invoke-virtual {p0, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_a

    .line 5
    :cond_4
    :try_start_0
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzzo;->zzb(Ljava/lang/String;Z)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :try_start_1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzftz;->zza([B)Lcom/google/android/gms/internal/ads/zzftv;

    move-result-object p0

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfwj;->zza:Lcom/google/android/gms/internal/ads/zzgby;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgby;->zza()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzgax;

    .line 9
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgax;->zzc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    .line 10
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgax;->zza()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 11
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgax;->zzf()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 12
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgax;->zzf()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TinkAead"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 13
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgax;->zzf()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TinkMac"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 14
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgax;->zzf()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TinkHybridDecrypt"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 15
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgax;->zzf()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TinkHybridEncrypt"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 16
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgax;->zzf()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TinkPublicKeySign"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 17
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgax;->zzf()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TinkPublicKeyVerify"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 18
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgax;->zzf()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TinkStreamingAead"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 19
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgax;->zzf()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TinkDeterministicAead"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 20
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgax;->zzf()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzfum;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfth;

    move-result-object v4

    .line 21
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzfth;->zza()Lcom/google/android/gms/internal/ads/zzfue;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzfum;->zze(Lcom/google/android/gms/internal/ads/zzfue;)V

    .line 22
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgax;->zzc()Ljava/lang/String;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgax;->zza()Ljava/lang/String;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgax;->zzd()I

    .line 23
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzfth;->zzb()Lcom/google/android/gms/internal/ads/zzftm;

    move-result-object v4

    .line 24
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgax;->zze()Z

    move-result v3

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ads/zzfum;->zzb(Lcom/google/android/gms/internal/ads/zzftm;Z)V

    goto/16 :goto_1

    .line 28
    :cond_6
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Missing catalogue_name."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 27
    :cond_7
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Missing primitive_name."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 26
    :cond_8
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Missing type_url."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 25
    :cond_9
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfwm;->zza(Lcom/google/android/gms/internal/ads/zzftv;)Lcom/google/android/gms/internal/ads/zzftl;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/internal/ads/zzabs;->zza:Lcom/google/android/gms/internal/ads/zzftl;
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p0, :cond_a

    return v1

    :catch_0
    :cond_a
    return v2
.end method
