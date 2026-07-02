.class public final Lcom/google/android/gms/internal/ads/zzfva;
.super Lcom/google/android/gms/internal/ads/zzftu;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzftu<",
        "Lcom/google/android/gms/internal/ads/zzfyd;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzftt;

    .line 1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfuy;

    const-class v2, Lcom/google/android/gms/internal/ads/zzftg;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzfuy;-><init>(Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lcom/google/android/gms/internal/ads/zzfyd;

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzftu;-><init>(Ljava/lang/Class;[Lcom/google/android/gms/internal/ads/zzftt;)V

    return-void
.end method

.method static synthetic zzk(III)Lcom/google/android/gms/internal/ads/zzftr;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Lcom/google/android/gms/internal/ads/zzftr<",
            "Lcom/google/android/gms/internal/ads/zzfyg;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyg;->zze()Lcom/google/android/gms/internal/ads/zzfyf;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzfyf;->zzb(I)Lcom/google/android/gms/internal/ads/zzfyf;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyj;->zzc()Lcom/google/android/gms/internal/ads/zzfyi;

    move-result-object p0

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfyi;->zza(I)Lcom/google/android/gms/internal/ads/zzfyi;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgfw;->zzah()Lcom/google/android/gms/internal/ads/zzgga;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzfyj;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzfyf;->zza(Lcom/google/android/gms/internal/ads/zzfyj;)Lcom/google/android/gms/internal/ads/zzfyf;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgfw;->zzah()Lcom/google/android/gms/internal/ads/zzgga;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzfyg;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzftr;

    .line 5
    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/internal/ads/zzftr;-><init>(Ljava/lang/Object;I)V

    return-object p1
.end method


# virtual methods
.method public final zzb()Ljava/lang/String;
    .locals 1

    const-string v0, "type.googleapis.com/google.crypto.tink.AesEaxKey"

    return-object v0
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

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzfyd;->zze(Lcom/google/android/gms/internal/ads/zzgex;Lcom/google/android/gms/internal/ads/zzgfm;)Lcom/google/android/gms/internal/ads/zzfyd;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzghi;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfyd;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfyd;->zza()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgdu;->zzb(II)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfyd;->zzd()Lcom/google/android/gms/internal/ads/zzgex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgex;->zzc()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgdu;->zza(I)V

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfyd;->zzc()Lcom/google/android/gms/internal/ads/zzfyj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfyj;->zza()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfyd;->zzc()Lcom/google/android/gms/internal/ads/zzfyj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfyj;->zza()I

    move-result p1

    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid IV size; acceptable values have 12 or 16 bytes"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final zzh()Lcom/google/android/gms/internal/ads/zzfts;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzfts<",
            "Lcom/google/android/gms/internal/ads/zzfyg;",
            "Lcom/google/android/gms/internal/ads/zzfyd;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfuz;

    const-class v1, Lcom/google/android/gms/internal/ads/zzfyg;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzfuz;-><init>(Lcom/google/android/gms/internal/ads/zzfva;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final zzi()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method
