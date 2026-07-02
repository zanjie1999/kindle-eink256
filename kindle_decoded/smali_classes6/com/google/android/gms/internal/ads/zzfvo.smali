.class final Lcom/google/android/gms/internal/ads/zzfvo;
.super Lcom/google/android/gms/internal/ads/zzftt;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzftt<",
        "Lcom/google/android/gms/internal/ads/zzftg;",
        "Lcom/google/android/gms/internal/ads/zzgbq;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzftt;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgbq;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgbq;->zzc()Lcom/google/android/gms/internal/ads/zzgbt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgbt;->zza()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzftx;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzftw;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzftw;->zzb()Lcom/google/android/gms/internal/ads/zzftg;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfvn;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgbq;->zzc()Lcom/google/android/gms/internal/ads/zzgbt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgbt;->zzd()Lcom/google/android/gms/internal/ads/zzgau;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzfvn;-><init>(Lcom/google/android/gms/internal/ads/zzgau;Lcom/google/android/gms/internal/ads/zzftg;)V

    return-object v1
.end method
