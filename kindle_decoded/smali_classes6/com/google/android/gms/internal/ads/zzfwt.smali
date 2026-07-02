.class final Lcom/google/android/gms/internal/ads/zzfwt;
.super Lcom/google/android/gms/internal/ads/zzfts;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzfts<",
        "Lcom/google/android/gms/internal/ads/zzfxi;",
        "Lcom/google/android/gms/internal/ads/zzfxf;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfwu;Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzfts;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzghi;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfxi;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfxi;->zzc()Lcom/google/android/gms/internal/ads/zzfxl;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfwu;->zzk(Lcom/google/android/gms/internal/ads/zzfxl;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfxi;->zza()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfwu;->zzl(I)V

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

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzfxi;->zzd(Lcom/google/android/gms/internal/ads/zzgex;Lcom/google/android/gms/internal/ads/zzgfm;)Lcom/google/android/gms/internal/ads/zzfxi;

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
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfxi;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfxf;->zzf()Lcom/google/android/gms/internal/ads/zzfxe;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfxe;->zza(I)Lcom/google/android/gms/internal/ads/zzfxe;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfxi;->zza()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgds;->zza(I)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgex;->zzt([B)Lcom/google/android/gms/internal/ads/zzgex;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfxe;->zzb(Lcom/google/android/gms/internal/ads/zzgex;)Lcom/google/android/gms/internal/ads/zzfxe;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfxi;->zzc()Lcom/google/android/gms/internal/ads/zzfxl;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfxe;->zzc(Lcom/google/android/gms/internal/ads/zzfxl;)Lcom/google/android/gms/internal/ads/zzfxe;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgfw;->zzah()Lcom/google/android/gms/internal/ads/zzgga;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfxf;

    return-object p1
.end method

.method public final zze()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzftr<",
            "Lcom/google/android/gms/internal/ads/zzfxi;",
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
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfxi;->zze()Lcom/google/android/gms/internal/ads/zzfxh;

    move-result-object v2

    const/16 v3, 0x20

    .line 3
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfxh;->zza(I)Lcom/google/android/gms/internal/ads/zzfxh;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfxl;->zzc()Lcom/google/android/gms/internal/ads/zzfxk;

    move-result-object v4

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzfxk;->zza(I)Lcom/google/android/gms/internal/ads/zzfxk;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgfw;->zzah()Lcom/google/android/gms/internal/ads/zzgga;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzfxl;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzfxh;->zzb(Lcom/google/android/gms/internal/ads/zzfxl;)Lcom/google/android/gms/internal/ads/zzfxh;

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgfw;->zzah()Lcom/google/android/gms/internal/ads/zzgga;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzfxi;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzftr;-><init>(Ljava/lang/Object;I)V

    const-string v2, "AES_CMAC"

    .line 6
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzftr;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfxi;->zze()Lcom/google/android/gms/internal/ads/zzfxh;

    move-result-object v2

    .line 8
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfxh;->zza(I)Lcom/google/android/gms/internal/ads/zzfxh;

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfxl;->zzc()Lcom/google/android/gms/internal/ads/zzfxk;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzfxk;->zza(I)Lcom/google/android/gms/internal/ads/zzfxk;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzgfw;->zzah()Lcom/google/android/gms/internal/ads/zzgga;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzfxl;

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzfxh;->zzb(Lcom/google/android/gms/internal/ads/zzfxl;)Lcom/google/android/gms/internal/ads/zzfxh;

    .line 10
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgfw;->zzah()Lcom/google/android/gms/internal/ads/zzgga;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzfxi;

    invoke-direct {v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzftr;-><init>(Ljava/lang/Object;I)V

    const-string v2, "AES256_CMAC"

    .line 11
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzftr;

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfxi;->zze()Lcom/google/android/gms/internal/ads/zzfxh;

    move-result-object v2

    .line 13
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfxh;->zza(I)Lcom/google/android/gms/internal/ads/zzfxh;

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfxl;->zzc()Lcom/google/android/gms/internal/ads/zzfxk;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzfxk;->zza(I)Lcom/google/android/gms/internal/ads/zzfxk;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgfw;->zzah()Lcom/google/android/gms/internal/ads/zzgga;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzfxl;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfxh;->zzb(Lcom/google/android/gms/internal/ads/zzfxl;)Lcom/google/android/gms/internal/ads/zzfxh;

    .line 15
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgfw;->zzah()Lcom/google/android/gms/internal/ads/zzgga;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzfxi;

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzftr;-><init>(Ljava/lang/Object;I)V

    const-string v2, "AES256_CMAC_RAW"

    .line 16
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
