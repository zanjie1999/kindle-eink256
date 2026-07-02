.class public final Lcom/google/android/gms/internal/ads/zzfwa;
.super Lcom/google/android/gms/internal/ads/zzftu;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzftu<",
        "Lcom/google/android/gms/internal/ads/zzfyy;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzftt;

    .line 1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfvy;

    const-class v2, Lcom/google/android/gms/internal/ads/zzftj;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzfvy;-><init>(Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lcom/google/android/gms/internal/ads/zzfyy;

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzftu;-><init>(Ljava/lang/Class;[Lcom/google/android/gms/internal/ads/zzftt;)V

    return-void
.end method


# virtual methods
.method public final zzb()Ljava/lang/String;
    .locals 1

    const-string v0, "type.googleapis.com/google.crypto.tink.AesSivKey"

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

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzfyy;->zzd(Lcom/google/android/gms/internal/ads/zzgex;Lcom/google/android/gms/internal/ads/zzgfm;)Lcom/google/android/gms/internal/ads/zzfyy;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzghi;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfyy;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfyy;->zza()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgdu;->zzb(II)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfyy;->zzc()Lcom/google/android/gms/internal/ads/zzgex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgex;->zzc()I

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/security/InvalidKeyException;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfyy;->zzc()Lcom/google/android/gms/internal/ads/zzgex;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgex;->zzc()I

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

    invoke-direct {v0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzh()Lcom/google/android/gms/internal/ads/zzfts;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzfts<",
            "Lcom/google/android/gms/internal/ads/zzfzb;",
            "Lcom/google/android/gms/internal/ads/zzfyy;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfvz;

    const-class v1, Lcom/google/android/gms/internal/ads/zzfzb;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzfvz;-><init>(Lcom/google/android/gms/internal/ads/zzfwa;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final zzi()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method
