.class final Lcom/google/android/gms/internal/ads/zzfvk;
.super Lcom/google/android/gms/internal/ads/zzftt;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzftt<",
        "Lcom/google/android/gms/internal/ads/zzftg;",
        "Lcom/google/android/gms/internal/ads/zzgbk;",
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
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgbk;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgbk;->zzc()Lcom/google/android/gms/internal/ads/zzgbn;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgbn;->zza()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzftx;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzftw;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzftw;->zzb()Lcom/google/android/gms/internal/ads/zzftg;

    move-result-object p1

    return-object p1
.end method
