.class final Lcom/google/android/gms/internal/ads/zzfvz;
.super Lcom/google/android/gms/internal/ads/zzfts;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzfts<",
        "Lcom/google/android/gms/internal/ads/zzfzb;",
        "Lcom/google/android/gms/internal/ads/zzfyy;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfwa;Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzfts;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzghi;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfzb;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfzb;->zza()I

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfzb;->zza()I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "invalid key size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". Valid keys must have 64 bytes."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
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

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzfzb;->zzc(Lcom/google/android/gms/internal/ads/zzgex;Lcom/google/android/gms/internal/ads/zzgfm;)Lcom/google/android/gms/internal/ads/zzfzb;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzghi;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfzb;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyy;->zze()Lcom/google/android/gms/internal/ads/zzfyx;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfzb;->zza()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgds;->zza(I)[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgex;->zzt([B)Lcom/google/android/gms/internal/ads/zzgex;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfyx;->zzb(Lcom/google/android/gms/internal/ads/zzgex;)Lcom/google/android/gms/internal/ads/zzfyx;

    const/4 p1, 0x0

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfyx;->zza(I)Lcom/google/android/gms/internal/ads/zzfyx;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgfw;->zzah()Lcom/google/android/gms/internal/ads/zzgga;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfyy;

    return-object p1
.end method

.method public final zze()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzftr<",
            "Lcom/google/android/gms/internal/ads/zzfzb;",
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

    new-instance v1, Lcom/google/android/gms/internal/ads/zzftr;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfzb;->zzd()Lcom/google/android/gms/internal/ads/zzfza;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfza;->zza(I)Lcom/google/android/gms/internal/ads/zzfza;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgfw;->zzah()Lcom/google/android/gms/internal/ads/zzgga;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzfzb;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzftr;-><init>(Ljava/lang/Object;I)V

    const-string v2, "AES256_SIV"

    .line 3
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzftr;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfzb;->zzd()Lcom/google/android/gms/internal/ads/zzfza;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfza;->zza(I)Lcom/google/android/gms/internal/ads/zzfza;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgfw;->zzah()Lcom/google/android/gms/internal/ads/zzgga;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzfzb;

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzftr;-><init>(Ljava/lang/Object;I)V

    const-string v2, "AES256_SIV_RAW"

    .line 5
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
