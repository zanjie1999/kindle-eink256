.class public final Lcom/google/android/gms/internal/ads/zzfwg;
.super Lcom/google/android/gms/internal/ads/zzfug;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzfug<",
        "Lcom/google/android/gms/internal/ads/zzfzv;",
        "Lcom/google/android/gms/internal/ads/zzfzy;",
        ">;"
    }
.end annotation


# static fields
.field private static final zza:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfwg;->zza:[B

    return-void
.end method

.method constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzftt;

    .line 1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfwe;

    const-class v2, Lcom/google/android/gms/internal/ads/zzftk;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzfwe;-><init>(Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lcom/google/android/gms/internal/ads/zzfzv;

    const-class v2, Lcom/google/android/gms/internal/ads/zzfzy;

    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzfug;-><init>(Ljava/lang/Class;Ljava/lang/Class;[Lcom/google/android/gms/internal/ads/zzftt;)V

    return-void
.end method

.method static synthetic zzk()[B
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfwg;->zza:[B

    return-object v0
.end method

.method static synthetic zzl(IIILcom/google/android/gms/internal/ads/zzftp;[BI)Lcom/google/android/gms/internal/ads/zzftr;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/google/android/gms/internal/ads/zzftp;",
            "[BI)",
            "Lcom/google/android/gms/internal/ads/zzftr<",
            "Lcom/google/android/gms/internal/ads/zzfzp;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p0, Lcom/google/android/gms/internal/ads/zzftr;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfzp;->zzd()Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object p1

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgab;->zzc()Lcom/google/android/gms/internal/ads/zzgaa;

    move-result-object v0

    const/4 v1, 0x4

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgaa;->zzb(I)Lcom/google/android/gms/internal/ads/zzgaa;

    const/4 v2, 0x5

    .line 4
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzgaa;->zzc(I)Lcom/google/android/gms/internal/ads/zzgaa;

    .line 5
    invoke-static {p4}, Lcom/google/android/gms/internal/ads/zzgex;->zzt([B)Lcom/google/android/gms/internal/ads/zzgex;

    move-result-object p4

    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/ads/zzgaa;->zza(Lcom/google/android/gms/internal/ads/zzgex;)Lcom/google/android/gms/internal/ads/zzgaa;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgfw;->zzah()Lcom/google/android/gms/internal/ads/zzgga;

    move-result-object p4

    check-cast p4, Lcom/google/android/gms/internal/ads/zzgab;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgau;->zzd()Lcom/google/android/gms/internal/ads/zzgat;

    move-result-object v0

    .line 8
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzftp;->zza()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzgat;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgat;

    .line 9
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzftp;->zzb()[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzgex;->zzt([B)Lcom/google/android/gms/internal/ads/zzgex;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzgat;->zzb(Lcom/google/android/gms/internal/ads/zzgex;)Lcom/google/android/gms/internal/ads/zzgat;

    .line 10
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzftp;->zzd()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    if-eqz p3, :cond_1

    const/4 v3, 0x1

    if-eq p3, v3, :cond_2

    const/4 v1, 0x2

    if-eq p3, v1, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    :cond_2
    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgat;->zzc(I)Lcom/google/android/gms/internal/ads/zzgat;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgfw;->zzah()Lcom/google/android/gms/internal/ads/zzgga;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/ads/zzgau;

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfzm;->zzc()Lcom/google/android/gms/internal/ads/zzfzl;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/zzfzl;->zza(Lcom/google/android/gms/internal/ads/zzgau;)Lcom/google/android/gms/internal/ads/zzfzl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgfw;->zzah()Lcom/google/android/gms/internal/ads/zzgga;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/ads/zzfzm;

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfzs;->zzd()Lcom/google/android/gms/internal/ads/zzfzr;

    move-result-object v0

    .line 14
    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/ads/zzfzr;->zza(Lcom/google/android/gms/internal/ads/zzgab;)Lcom/google/android/gms/internal/ads/zzfzr;

    .line 15
    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/zzfzr;->zzb(Lcom/google/android/gms/internal/ads/zzfzm;)Lcom/google/android/gms/internal/ads/zzfzr;

    .line 16
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzfzr;->zzc(I)Lcom/google/android/gms/internal/ads/zzfzr;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgfw;->zzah()Lcom/google/android/gms/internal/ads/zzgga;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzfzs;

    .line 18
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzfzo;->zza(Lcom/google/android/gms/internal/ads/zzfzs;)Lcom/google/android/gms/internal/ads/zzfzo;

    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgfw;->zzah()Lcom/google/android/gms/internal/ads/zzgga;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfzp;

    invoke-direct {p0, p1, p5}, Lcom/google/android/gms/internal/ads/zzftr;-><init>(Ljava/lang/Object;I)V

    return-object p0
.end method


# virtual methods
.method public final zzb()Ljava/lang/String;
    .locals 1

    const-string v0, "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey"

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

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzfzv;->zze(Lcom/google/android/gms/internal/ads/zzgex;Lcom/google/android/gms/internal/ads/zzgfm;)Lcom/google/android/gms/internal/ads/zzfzv;

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
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfzv;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfzv;->zzd()Lcom/google/android/gms/internal/ads/zzgex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgex;->zzr()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfzv;->zza()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgdu;->zzb(II)V

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfzv;->zzc()Lcom/google/android/gms/internal/ads/zzfzy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfzy;->zzc()Lcom/google/android/gms/internal/ads/zzfzs;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfwp;->zza(Lcom/google/android/gms/internal/ads/zzfzs;)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid ECIES private key"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzh()Lcom/google/android/gms/internal/ads/zzfts;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzfts<",
            "Lcom/google/android/gms/internal/ads/zzfzp;",
            "Lcom/google/android/gms/internal/ads/zzfzv;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfwf;

    const-class v1, Lcom/google/android/gms/internal/ads/zzfzp;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzfwf;-><init>(Lcom/google/android/gms/internal/ads/zzfwg;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final zzi()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method
