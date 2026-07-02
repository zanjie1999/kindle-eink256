.class final Lcom/google/android/gms/internal/ads/zzfwq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgct;


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:I

.field private zzc:Lcom/google/android/gms/internal/ads/zzfym;

.field private zzd:Lcom/google/android/gms/internal/ads/zzfxo;

.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/ads/zzfyy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgau;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgau;->zza()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfwq;->zza:Ljava/lang/String;

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfuo;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgau;->zzc()Lcom/google/android/gms/internal/ads/zzgex;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgfm;->zza()Lcom/google/android/gms/internal/ads/zzgfm;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfyp;->zzc(Lcom/google/android/gms/internal/ads/zzgex;Lcom/google/android/gms/internal/ads/zzgfm;)Lcom/google/android/gms/internal/ads/zzfyp;

    move-result-object v0

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfum;->zzh(Lcom/google/android/gms/internal/ads/zzgau;)Lcom/google/android/gms/internal/ads/zzghi;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfym;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfwq;->zzc:Lcom/google/android/gms/internal/ads/zzfym;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfyp;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfwq;->zzb:I
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzggm; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 7
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "invalid KeyFormat protobuf, expected AesGcmKeyFormat"

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfwq;->zza:Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfuo;->zza:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "invalid KeyFormat protobuf, expected AesCtrHmacAeadKeyFormat"

    if-eqz v0, :cond_1

    .line 9
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgau;->zzc()Lcom/google/android/gms/internal/ads/zzgex;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgfm;->zza()Lcom/google/android/gms/internal/ads/zzgfm;

    move-result-object v2

    .line 10
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzfxr;->zzd(Lcom/google/android/gms/internal/ads/zzgex;Lcom/google/android/gms/internal/ads/zzgfm;)Lcom/google/android/gms/internal/ads/zzfxr;

    move-result-object v0

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfum;->zzh(Lcom/google/android/gms/internal/ads/zzgau;)Lcom/google/android/gms/internal/ads/zzghi;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfxo;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfwq;->zzd:Lcom/google/android/gms/internal/ads/zzfxo;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfxr;->zza()Lcom/google/android/gms/internal/ads/zzfxx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfxx;->zzc()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfwq;->zze:I

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfxr;->zzc()Lcom/google/android/gms/internal/ads/zzgal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgal;->zzc()I

    move-result p1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfwq;->zze:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfwq;->zzb:I
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzggm; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 14
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfwq;->zza:Ljava/lang/String;

    .line 15
    sget-object v2, Lcom/google/android/gms/internal/ads/zzfwb;->zza:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16
    :try_start_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgau;->zzc()Lcom/google/android/gms/internal/ads/zzgex;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgfm;->zza()Lcom/google/android/gms/internal/ads/zzgfm;

    move-result-object v2

    .line 17
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzfzb;->zzc(Lcom/google/android/gms/internal/ads/zzgex;Lcom/google/android/gms/internal/ads/zzgfm;)Lcom/google/android/gms/internal/ads/zzfzb;

    move-result-object v0

    .line 18
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfum;->zzh(Lcom/google/android/gms/internal/ads/zzgau;)Lcom/google/android/gms/internal/ads/zzghi;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfyy;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfwq;->zzf:Lcom/google/android/gms/internal/ads/zzfyy;

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfzb;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfwq;->zzb:I
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzggm; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception p1

    .line 20
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 21
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfwq;->zza:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "unsupported AEAD DEM key type: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 20
    :cond_3
    new-instance v0, Ljava/lang/String;

    .line 21
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfwq;->zzb:I

    return v0
.end method

.method public final zzb([B)Lcom/google/android/gms/internal/ads/zzfwr;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzftg;

    array-length v1, p1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzfwq;->zzb:I

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfwq;->zza:Ljava/lang/String;

    .line 2
    sget-object v2, Lcom/google/android/gms/internal/ads/zzfuo;->zzb:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfym;->zze()Lcom/google/android/gms/internal/ads/zzfyl;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfwq;->zzc:Lcom/google/android/gms/internal/ads/zzfym;

    .line 4
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzgfw;->zzai(Lcom/google/android/gms/internal/ads/zzgga;)Lcom/google/android/gms/internal/ads/zzgfw;

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzfwq;->zzb:I

    .line 5
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgex;->zzs([BII)Lcom/google/android/gms/internal/ads/zzgex;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfyl;->zzb(Lcom/google/android/gms/internal/ads/zzgex;)Lcom/google/android/gms/internal/ads/zzfyl;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgfw;->zzah()Lcom/google/android/gms/internal/ads/zzgga;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfym;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfwr;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfwq;->zza:Ljava/lang/String;

    .line 7
    invoke-static {v2, p1, v0}, Lcom/google/android/gms/internal/ads/zzfum;->zzi(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzghi;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzftg;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzfwr;-><init>(Lcom/google/android/gms/internal/ads/zzftg;)V

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfwq;->zza:Ljava/lang/String;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzfuo;->zza:Ljava/lang/String;

    .line 8
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfwq;->zze:I

    .line 9
    invoke-static {p1, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzfwq;->zze:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzfwq;->zzb:I

    .line 10
    invoke-static {p1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfxu;->zzf()Lcom/google/android/gms/internal/ads/zzfxt;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfwq;->zzd:Lcom/google/android/gms/internal/ads/zzfxo;

    .line 12
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfxo;->zzc()Lcom/google/android/gms/internal/ads/zzfxu;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzgfw;->zzai(Lcom/google/android/gms/internal/ads/zzgga;)Lcom/google/android/gms/internal/ads/zzgfw;

    .line 13
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgex;->zzt([B)Lcom/google/android/gms/internal/ads/zzgex;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzfxt;->zzc(Lcom/google/android/gms/internal/ads/zzgex;)Lcom/google/android/gms/internal/ads/zzfxt;

    .line 14
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgfw;->zzah()Lcom/google/android/gms/internal/ads/zzgga;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfxu;

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgai;->zzf()Lcom/google/android/gms/internal/ads/zzgah;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfwq;->zzd:Lcom/google/android/gms/internal/ads/zzfxo;

    .line 16
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfxo;->zzd()Lcom/google/android/gms/internal/ads/zzgai;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzgfw;->zzai(Lcom/google/android/gms/internal/ads/zzgga;)Lcom/google/android/gms/internal/ads/zzgfw;

    .line 17
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgex;->zzt([B)Lcom/google/android/gms/internal/ads/zzgex;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzgah;->zzc(Lcom/google/android/gms/internal/ads/zzgex;)Lcom/google/android/gms/internal/ads/zzgah;

    .line 18
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgfw;->zzah()Lcom/google/android/gms/internal/ads/zzgga;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgai;

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfxo;->zzf()Lcom/google/android/gms/internal/ads/zzfxn;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfwq;->zzd:Lcom/google/android/gms/internal/ads/zzfxo;

    .line 20
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfxo;->zza()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfxn;->zza(I)Lcom/google/android/gms/internal/ads/zzfxn;

    .line 21
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzfxn;->zzb(Lcom/google/android/gms/internal/ads/zzfxu;)Lcom/google/android/gms/internal/ads/zzfxn;

    .line 22
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzfxn;->zzc(Lcom/google/android/gms/internal/ads/zzgai;)Lcom/google/android/gms/internal/ads/zzfxn;

    .line 23
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgfw;->zzah()Lcom/google/android/gms/internal/ads/zzgga;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfxo;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfwr;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfwq;->zza:Ljava/lang/String;

    .line 24
    invoke-static {v2, p1, v0}, Lcom/google/android/gms/internal/ads/zzfum;->zzi(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzghi;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzftg;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzfwr;-><init>(Lcom/google/android/gms/internal/ads/zzftg;)V

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfwq;->zza:Ljava/lang/String;

    .line 25
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfwb;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 26
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyy;->zze()Lcom/google/android/gms/internal/ads/zzfyx;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfwq;->zzf:Lcom/google/android/gms/internal/ads/zzfyy;

    .line 27
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgfw;->zzai(Lcom/google/android/gms/internal/ads/zzgga;)Lcom/google/android/gms/internal/ads/zzgfw;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfwq;->zzb:I

    .line 28
    invoke-static {p1, v2, v1}, Lcom/google/android/gms/internal/ads/zzgex;->zzs([BII)Lcom/google/android/gms/internal/ads/zzgex;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfyx;->zzb(Lcom/google/android/gms/internal/ads/zzgex;)Lcom/google/android/gms/internal/ads/zzfyx;

    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgfw;->zzah()Lcom/google/android/gms/internal/ads/zzgga;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfyy;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfwr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfwq;->zza:Ljava/lang/String;

    const-class v2, Lcom/google/android/gms/internal/ads/zzftj;

    .line 30
    invoke-static {v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzfum;->zzi(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzghi;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzftj;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzfwr;-><init>(Lcom/google/android/gms/internal/ads/zzftj;)V

    return-object v0

    .line 31
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "unknown DEM key type"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1
    :cond_3
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Symmetric key has incorrect length"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
