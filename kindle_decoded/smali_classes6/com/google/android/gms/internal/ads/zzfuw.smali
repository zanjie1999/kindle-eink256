.class final Lcom/google/android/gms/internal/ads/zzfuw;
.super Lcom/google/android/gms/internal/ads/zzfts;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzfts<",
        "Lcom/google/android/gms/internal/ads/zzfxx;",
        "Lcom/google/android/gms/internal/ads/zzfxu;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfux;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfux;Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfuw;->zza:Lcom/google/android/gms/internal/ads/zzfux;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzfts;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method public static final zzg(Lcom/google/android/gms/internal/ads/zzfxx;)Lcom/google/android/gms/internal/ads/zzfxu;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfxu;->zzf()Lcom/google/android/gms/internal/ads/zzfxt;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfxx;->zza()Lcom/google/android/gms/internal/ads/zzfya;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfxt;->zzb(Lcom/google/android/gms/internal/ads/zzfya;)Lcom/google/android/gms/internal/ads/zzfxt;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfxx;->zzc()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgds;->zza(I)[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgex;->zzt([B)Lcom/google/android/gms/internal/ads/zzgex;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzfxt;->zzc(Lcom/google/android/gms/internal/ads/zzgex;)Lcom/google/android/gms/internal/ads/zzfxt;

    const/4 p0, 0x0

    .line 4
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzfxt;->zza(I)Lcom/google/android/gms/internal/ads/zzfxt;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgfw;->zzah()Lcom/google/android/gms/internal/ads/zzgga;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzfxu;

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzghi;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfxx;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfuw;->zzf(Lcom/google/android/gms/internal/ads/zzfxx;)V

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

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzfxx;->zzd(Lcom/google/android/gms/internal/ads/zzgex;Lcom/google/android/gms/internal/ads/zzgfm;)Lcom/google/android/gms/internal/ads/zzfxx;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzghi;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfxx;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfuw;->zzg(Lcom/google/android/gms/internal/ads/zzfxx;)Lcom/google/android/gms/internal/ads/zzfxu;

    move-result-object p1

    return-object p1
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzfxx;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfxx;->zzc()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgdu;->zza(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfuw;->zza:Lcom/google/android/gms/internal/ads/zzfux;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfxx;->zza()Lcom/google/android/gms/internal/ads/zzfya;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzfux;->zzk(Lcom/google/android/gms/internal/ads/zzfux;Lcom/google/android/gms/internal/ads/zzfya;)V

    return-void
.end method
