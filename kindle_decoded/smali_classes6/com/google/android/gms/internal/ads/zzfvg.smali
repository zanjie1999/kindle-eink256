.class public final Lcom/google/android/gms/internal/ads/zzfvg;
.super Lcom/google/android/gms/internal/ads/zzftu;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzftu<",
        "Lcom/google/android/gms/internal/ads/zzfys;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzftt;

    .line 1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfve;

    const-class v2, Lcom/google/android/gms/internal/ads/zzftg;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzfve;-><init>(Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lcom/google/android/gms/internal/ads/zzfys;

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzftu;-><init>(Ljava/lang/Class;[Lcom/google/android/gms/internal/ads/zzftt;)V

    return-void
.end method

.method public static zzk(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfvg;->zzm()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/google/android/gms/internal/ads/zzfvg;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfvg;-><init>()V

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzfum;->zzc(Lcom/google/android/gms/internal/ads/zzftu;Z)V

    :cond_0
    return-void
.end method

.method static synthetic zzl(II)Lcom/google/android/gms/internal/ads/zzftr;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/android/gms/internal/ads/zzftr<",
            "Lcom/google/android/gms/internal/ads/zzfyv;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyv;->zzd()Lcom/google/android/gms/internal/ads/zzfyu;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzfyu;->zza(I)Lcom/google/android/gms/internal/ads/zzfyu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgfw;->zzah()Lcom/google/android/gms/internal/ads/zzgga;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzfyv;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzftr;

    .line 2
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzftr;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method private static zzm()Z
    .locals 1

    :try_start_0
    const-string v0, "AES/GCM-SIV/NoPadding"

    .line 1
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final zzb()Ljava/lang/String;
    .locals 1

    const-string v0, "type.googleapis.com/google.crypto.tink.AesGcmSivKey"

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

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzfys;->zzd(Lcom/google/android/gms/internal/ads/zzgex;Lcom/google/android/gms/internal/ads/zzgfm;)Lcom/google/android/gms/internal/ads/zzfys;

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
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfys;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfys;->zza()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgdu;->zzb(II)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfys;->zzc()Lcom/google/android/gms/internal/ads/zzgex;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgex;->zzc()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgdu;->zza(I)V

    return-void
.end method

.method public final zzh()Lcom/google/android/gms/internal/ads/zzfts;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzfts<",
            "Lcom/google/android/gms/internal/ads/zzfyv;",
            "Lcom/google/android/gms/internal/ads/zzfys;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfvf;

    const-class v1, Lcom/google/android/gms/internal/ads/zzfyv;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzfvf;-><init>(Lcom/google/android/gms/internal/ads/zzfvg;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final zzi()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method
