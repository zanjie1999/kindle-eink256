.class final Lcom/google/android/gms/internal/ads/zzfwf;
.super Lcom/google/android/gms/internal/ads/zzfts;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzfts<",
        "Lcom/google/android/gms/internal/ads/zzfzp;",
        "Lcom/google/android/gms/internal/ads/zzfzv;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfwg;Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzfts;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzghi;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfzp;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfzp;->zza()Lcom/google/android/gms/internal/ads/zzfzs;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfwp;->zza(Lcom/google/android/gms/internal/ads/zzfzs;)V

    return-void
.end method

.method public final bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzgex;)Lcom/google/android/gms/internal/ads/zzghi;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzggm;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgfm;->zza()Lcom/google/android/gms/internal/ads/zzgfm;

    move-result-object v0

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzfzp;->zzc(Lcom/google/android/gms/internal/ads/zzgex;Lcom/google/android/gms/internal/ads/zzgfm;)Lcom/google/android/gms/internal/ads/zzfzp;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzghi;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfzp;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfzp;->zza()Lcom/google/android/gms/internal/ads/zzfzs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfzs;->zza()Lcom/google/android/gms/internal/ads/zzgab;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgab;->zzg()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfwp;->zzc(I)I

    move-result v0

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgcz;->zzd(I)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgcz;->zzc(Ljava/security/spec/ECParameterSpec;)Ljava/security/KeyPair;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/ECPublicKey;

    .line 6
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/ECPrivateKey;

    .line 7
    invoke-interface {v1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v1

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfzy;->zzg()Lcom/google/android/gms/internal/ads/zzfzx;

    move-result-object v2

    const/4 v3, 0x0

    .line 9
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfzx;->zza(I)Lcom/google/android/gms/internal/ads/zzfzx;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfzp;->zza()Lcom/google/android/gms/internal/ads/zzfzs;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzfzx;->zzb(Lcom/google/android/gms/internal/ads/zzfzs;)Lcom/google/android/gms/internal/ads/zzfzx;

    .line 11
    invoke-virtual {v1}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgex;->zzt([B)Lcom/google/android/gms/internal/ads/zzgex;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzfzx;->zzc(Lcom/google/android/gms/internal/ads/zzgex;)Lcom/google/android/gms/internal/ads/zzfzx;

    .line 12
    invoke-virtual {v1}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgex;->zzt([B)Lcom/google/android/gms/internal/ads/zzgex;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzfzx;->zzd(Lcom/google/android/gms/internal/ads/zzgex;)Lcom/google/android/gms/internal/ads/zzfzx;

    .line 13
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgfw;->zzah()Lcom/google/android/gms/internal/ads/zzgga;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfzy;

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfzv;->zzf()Lcom/google/android/gms/internal/ads/zzfzu;

    move-result-object v1

    .line 15
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzfzu;->zza(I)Lcom/google/android/gms/internal/ads/zzfzu;

    .line 16
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfzu;->zzb(Lcom/google/android/gms/internal/ads/zzfzy;)Lcom/google/android/gms/internal/ads/zzfzu;

    .line 17
    invoke-interface {v0}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgex;->zzt([B)Lcom/google/android/gms/internal/ads/zzgex;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfzu;->zzc(Lcom/google/android/gms/internal/ads/zzgex;)Lcom/google/android/gms/internal/ads/zzfzu;

    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgfw;->zzah()Lcom/google/android/gms/internal/ads/zzgga;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfzv;

    return-object p1
.end method

.method public final zze()Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzftr<",
            "Lcom/google/android/gms/internal/ads/zzfzp;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "AES128_GCM"

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzftq;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzftp;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfwg;->zzk()[B

    move-result-object v6

    const/4 v2, 0x4

    const/4 v3, 0x5

    const/4 v4, 0x3

    const/4 v7, 0x1

    .line 3
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzfwg;->zzl(IIILcom/google/android/gms/internal/ads/zzftp;[BI)Lcom/google/android/gms/internal/ads/zzftr;

    move-result-object v2

    const-string v3, "ECIES_P256_HKDF_HMAC_SHA256_AES128_GCM"

    .line 4
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzftq;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzftp;

    move-result-object v7

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfwg;->zzk()[B

    move-result-object v8

    const/4 v4, 0x4

    const/4 v5, 0x5

    const/4 v6, 0x3

    const/4 v9, 0x3

    .line 6
    invoke-static/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzfwg;->zzl(IIILcom/google/android/gms/internal/ads/zzftp;[BI)Lcom/google/android/gms/internal/ads/zzftr;

    move-result-object v2

    const-string v3, "ECIES_P256_HKDF_HMAC_SHA256_AES128_GCM_RAW"

    .line 7
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzftq;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzftp;

    move-result-object v7

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfwg;->zzk()[B

    move-result-object v8

    const/4 v6, 0x4

    const/4 v9, 0x1

    .line 9
    invoke-static/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzfwg;->zzl(IIILcom/google/android/gms/internal/ads/zzftp;[BI)Lcom/google/android/gms/internal/ads/zzftr;

    move-result-object v2

    const-string v3, "ECIES_P256_COMPRESSED_HKDF_HMAC_SHA256_AES128_GCM"

    .line 10
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzftq;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzftp;

    move-result-object v7

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfwg;->zzk()[B

    move-result-object v8

    const/4 v9, 0x3

    .line 12
    invoke-static/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzfwg;->zzl(IIILcom/google/android/gms/internal/ads/zzftp;[BI)Lcom/google/android/gms/internal/ads/zzftr;

    move-result-object v2

    const-string v3, "ECIES_P256_COMPRESSED_HKDF_HMAC_SHA256_AES128_GCM_RAW"

    .line 13
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzftq;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzftp;

    move-result-object v7

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfwg;->zzk()[B

    move-result-object v8

    .line 15
    invoke-static/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzfwg;->zzl(IIILcom/google/android/gms/internal/ads/zzftp;[BI)Lcom/google/android/gms/internal/ads/zzftr;

    move-result-object v1

    const-string v2, "ECIES_P256_HKDF_HMAC_SHA256_AES128_GCM_COMPRESSED_WITHOUT_PREFIX"

    .line 16
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AES128_CTR_HMAC_SHA256"

    .line 17
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzftq;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzftp;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfwg;->zzk()[B

    move-result-object v6

    const/4 v2, 0x4

    const/4 v3, 0x5

    const/4 v4, 0x3

    const/4 v7, 0x1

    .line 18
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzfwg;->zzl(IIILcom/google/android/gms/internal/ads/zzftp;[BI)Lcom/google/android/gms/internal/ads/zzftr;

    move-result-object v2

    const-string v3, "ECIES_P256_HKDF_HMAC_SHA256_AES128_CTR_HMAC_SHA256"

    .line 19
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzftq;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzftp;

    move-result-object v7

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfwg;->zzk()[B

    move-result-object v8

    const/4 v4, 0x4

    const/4 v5, 0x5

    const/4 v6, 0x3

    .line 21
    invoke-static/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzfwg;->zzl(IIILcom/google/android/gms/internal/ads/zzftp;[BI)Lcom/google/android/gms/internal/ads/zzftr;

    move-result-object v2

    const-string v3, "ECIES_P256_HKDF_HMAC_SHA256_AES128_CTR_HMAC_SHA256_RAW"

    .line 22
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzftq;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzftp;

    move-result-object v7

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfwg;->zzk()[B

    move-result-object v8

    const/4 v6, 0x4

    const/4 v9, 0x1

    .line 24
    invoke-static/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzfwg;->zzl(IIILcom/google/android/gms/internal/ads/zzftp;[BI)Lcom/google/android/gms/internal/ads/zzftr;

    move-result-object v2

    const-string v3, "ECIES_P256_COMPRESSED_HKDF_HMAC_SHA256_AES128_CTR_HMAC_SHA256"

    .line 25
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzftq;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzftp;

    move-result-object v7

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfwg;->zzk()[B

    move-result-object v8

    const/4 v9, 0x3

    .line 27
    invoke-static/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzfwg;->zzl(IIILcom/google/android/gms/internal/ads/zzftp;[BI)Lcom/google/android/gms/internal/ads/zzftr;

    move-result-object v1

    const-string v2, "ECIES_P256_COMPRESSED_HKDF_HMAC_SHA256_AES128_CTR_HMAC_SHA256_RAW"

    .line 28
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
