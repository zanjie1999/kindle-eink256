.class final Lcom/google/android/gms/internal/ads/zzfut;
.super Lcom/google/android/gms/internal/ads/zzfts;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzfts<",
        "Lcom/google/android/gms/internal/ads/zzfxr;",
        "Lcom/google/android/gms/internal/ads/zzfxo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfuu;Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzfts;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzghi;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfxr;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfux;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfux;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfux;->zzh()Lcom/google/android/gms/internal/ads/zzfts;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfxr;->zza()Lcom/google/android/gms/internal/ads/zzfxx;

    move-result-object v1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfuw;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfuw;->zzf(Lcom/google/android/gms/internal/ads/zzfxx;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfwx;

    .line 4
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfwx;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfwx;->zzh()Lcom/google/android/gms/internal/ads/zzfts;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfxr;->zzc()Lcom/google/android/gms/internal/ads/zzgal;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfts;->zzb(Lcom/google/android/gms/internal/ads/zzghi;)V

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfxr;->zza()Lcom/google/android/gms/internal/ads/zzfxx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfxx;->zzc()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgdu;->zza(I)V

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
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzfxr;->zzd(Lcom/google/android/gms/internal/ads/zzgex;Lcom/google/android/gms/internal/ads/zzgfm;)Lcom/google/android/gms/internal/ads/zzfxr;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzghi;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfxr;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfux;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfux;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfxr;->zza()Lcom/google/android/gms/internal/ads/zzfxx;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfuw;->zzg(Lcom/google/android/gms/internal/ads/zzfxx;)Lcom/google/android/gms/internal/ads/zzfxu;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfwx;

    .line 5
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzfwx;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfwx;->zzh()Lcom/google/android/gms/internal/ads/zzfts;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfxr;->zzc()Lcom/google/android/gms/internal/ads/zzgal;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfts;->zzd(Lcom/google/android/gms/internal/ads/zzghi;)Ljava/lang/Object;

    move-result-object p1

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfxo;->zzf()Lcom/google/android/gms/internal/ads/zzfxn;

    move-result-object v1

    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzfxn;->zzb(Lcom/google/android/gms/internal/ads/zzfxu;)Lcom/google/android/gms/internal/ads/zzfxn;

    .line 5
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgai;

    .line 8
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfxn;->zzc(Lcom/google/android/gms/internal/ads/zzgai;)Lcom/google/android/gms/internal/ads/zzfxn;

    const/4 p1, 0x0

    .line 9
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfxn;->zza(I)Lcom/google/android/gms/internal/ads/zzfxn;

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgfw;->zzah()Lcom/google/android/gms/internal/ads/zzgga;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfxo;

    return-object p1
.end method

.method public final zze()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzftr<",
            "Lcom/google/android/gms/internal/ads/zzfxr;",
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

    const/16 v1, 0x10

    const/16 v2, 0x10

    const/16 v3, 0x20

    const/16 v4, 0x10

    const/4 v5, 0x5

    const/4 v6, 0x1

    .line 2
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzfuu;->zzk(IIIIII)Lcom/google/android/gms/internal/ads/zzftr;

    move-result-object v1

    const-string v2, "AES128_CTR_HMAC_SHA256"

    .line 3
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x10

    const/16 v5, 0x20

    const/16 v6, 0x10

    const/4 v7, 0x5

    const/4 v8, 0x3

    .line 4
    invoke-static/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzfuu;->zzk(IIIIII)Lcom/google/android/gms/internal/ads/zzftr;

    move-result-object v1

    const-string v2, "AES128_CTR_HMAC_SHA256_RAW"

    .line 5
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x20

    const/16 v6, 0x20

    const/4 v8, 0x1

    .line 6
    invoke-static/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzfuu;->zzk(IIIIII)Lcom/google/android/gms/internal/ads/zzftr;

    move-result-object v1

    const-string v2, "AES256_CTR_HMAC_SHA256"

    .line 7
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v8, 0x3

    .line 8
    invoke-static/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzfuu;->zzk(IIIIII)Lcom/google/android/gms/internal/ads/zzftr;

    move-result-object v1

    const-string v2, "AES256_CTR_HMAC_SHA256_RAW"

    .line 9
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
