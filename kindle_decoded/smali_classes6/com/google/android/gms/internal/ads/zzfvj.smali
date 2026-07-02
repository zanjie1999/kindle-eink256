.class public final Lcom/google/android/gms/internal/ads/zzfvj;
.super Lcom/google/android/gms/internal/ads/zzftu;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzftu<",
        "Lcom/google/android/gms/internal/ads/zzfze;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzftt;

    .line 1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfvh;

    const-class v2, Lcom/google/android/gms/internal/ads/zzftg;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzfvh;-><init>(Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lcom/google/android/gms/internal/ads/zzfze;

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzftu;-><init>(Ljava/lang/Class;[Lcom/google/android/gms/internal/ads/zzftt;)V

    return-void
.end method


# virtual methods
.method public final zzb()Ljava/lang/String;
    .locals 1

    const-string v0, "type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key"

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

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzfze;->zzd(Lcom/google/android/gms/internal/ads/zzgex;Lcom/google/android/gms/internal/ads/zzgfm;)Lcom/google/android/gms/internal/ads/zzfze;

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
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfze;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfze;->zza()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgdu;->zzb(II)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfze;->zzc()Lcom/google/android/gms/internal/ads/zzgex;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgex;->zzc()I

    move-result p1

    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid ChaCha20Poly1305Key: incorrect key length"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzh()Lcom/google/android/gms/internal/ads/zzfts;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzfts<",
            "Lcom/google/android/gms/internal/ads/zzfzh;",
            "Lcom/google/android/gms/internal/ads/zzfze;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfvi;

    const-class v1, Lcom/google/android/gms/internal/ads/zzfzh;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzfvi;-><init>(Lcom/google/android/gms/internal/ads/zzfvj;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final zzi()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method
