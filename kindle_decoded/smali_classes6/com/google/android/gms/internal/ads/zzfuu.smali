.class public final Lcom/google/android/gms/internal/ads/zzfuu;
.super Lcom/google/android/gms/internal/ads/zzftu;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzftu<",
        "Lcom/google/android/gms/internal/ads/zzfxo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzftt;

    .line 1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfus;

    const-class v2, Lcom/google/android/gms/internal/ads/zzftg;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzfus;-><init>(Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lcom/google/android/gms/internal/ads/zzfxo;

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzftu;-><init>(Ljava/lang/Class;[Lcom/google/android/gms/internal/ads/zzftt;)V

    return-void
.end method

.method static synthetic zzk(IIIIII)Lcom/google/android/gms/internal/ads/zzftr;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIII)",
            "Lcom/google/android/gms/internal/ads/zzftr<",
            "Lcom/google/android/gms/internal/ads/zzfxr;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzftr;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfxx;->zze()Lcom/google/android/gms/internal/ads/zzfxw;

    move-result-object p2

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfya;->zzc()Lcom/google/android/gms/internal/ads/zzfxz;

    move-result-object p4

    const/16 v0, 0x10

    invoke-virtual {p4, v0}, Lcom/google/android/gms/internal/ads/zzfxz;->zza(I)Lcom/google/android/gms/internal/ads/zzfxz;

    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzgfw;->zzah()Lcom/google/android/gms/internal/ads/zzgga;

    move-result-object p4

    check-cast p4, Lcom/google/android/gms/internal/ads/zzfya;

    invoke-virtual {p2, p4}, Lcom/google/android/gms/internal/ads/zzfxw;->zza(Lcom/google/android/gms/internal/ads/zzfya;)Lcom/google/android/gms/internal/ads/zzfxw;

    .line 3
    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/zzfxw;->zzb(I)Lcom/google/android/gms/internal/ads/zzfxw;

    .line 4
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgfw;->zzah()Lcom/google/android/gms/internal/ads/zzgga;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzfxx;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgal;->zze()Lcom/google/android/gms/internal/ads/zzgak;

    move-result-object p2

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgao;->zzc()Lcom/google/android/gms/internal/ads/zzgan;

    move-result-object p4

    const/4 v0, 0x5

    invoke-virtual {p4, v0}, Lcom/google/android/gms/internal/ads/zzgan;->zzb(I)Lcom/google/android/gms/internal/ads/zzgan;

    invoke-virtual {p4, p3}, Lcom/google/android/gms/internal/ads/zzgan;->zza(I)Lcom/google/android/gms/internal/ads/zzgan;

    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzgfw;->zzah()Lcom/google/android/gms/internal/ads/zzgga;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/ads/zzgao;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzgak;->zza(Lcom/google/android/gms/internal/ads/zzgao;)Lcom/google/android/gms/internal/ads/zzgak;

    const/16 p3, 0x20

    .line 7
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzgak;->zzb(I)Lcom/google/android/gms/internal/ads/zzgak;

    .line 8
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgfw;->zzah()Lcom/google/android/gms/internal/ads/zzgga;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzgal;

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfxr;->zze()Lcom/google/android/gms/internal/ads/zzfxq;

    move-result-object p3

    .line 10
    invoke-virtual {p3, p0}, Lcom/google/android/gms/internal/ads/zzfxq;->zza(Lcom/google/android/gms/internal/ads/zzfxx;)Lcom/google/android/gms/internal/ads/zzfxq;

    .line 11
    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzfxq;->zzb(Lcom/google/android/gms/internal/ads/zzgal;)Lcom/google/android/gms/internal/ads/zzfxq;

    .line 12
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzgfw;->zzah()Lcom/google/android/gms/internal/ads/zzgga;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzfxr;

    .line 13
    invoke-direct {p1, p0, p5}, Lcom/google/android/gms/internal/ads/zzftr;-><init>(Ljava/lang/Object;I)V

    return-object p1
.end method


# virtual methods
.method public final zzb()Ljava/lang/String;
    .locals 1

    const-string v0, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

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

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzfxo;->zze(Lcom/google/android/gms/internal/ads/zzgex;Lcom/google/android/gms/internal/ads/zzgfm;)Lcom/google/android/gms/internal/ads/zzfxo;

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
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfxo;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfxo;->zza()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgdu;->zzb(II)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfux;

    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfux;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfxo;->zzc()Lcom/google/android/gms/internal/ads/zzfxu;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfux;->zzl(Lcom/google/android/gms/internal/ads/zzfxu;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfwx;

    .line 4
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfwx;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfxo;->zzd()Lcom/google/android/gms/internal/ads/zzgai;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfwx;->zzl(Lcom/google/android/gms/internal/ads/zzgai;)V

    return-void
.end method

.method public final zzh()Lcom/google/android/gms/internal/ads/zzfts;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzfts<",
            "Lcom/google/android/gms/internal/ads/zzfxr;",
            "Lcom/google/android/gms/internal/ads/zzfxo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfut;

    const-class v1, Lcom/google/android/gms/internal/ads/zzfxr;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzfut;-><init>(Lcom/google/android/gms/internal/ads/zzfuu;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final zzi()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public final zzj()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
