.class final Lcom/google/android/gms/internal/ads/zzfus;
.super Lcom/google/android/gms/internal/ads/zzftt;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzftt<",
        "Lcom/google/android/gms/internal/ads/zzftg;",
        "Lcom/google/android/gms/internal/ads/zzfxo;",
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
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfxo;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgda;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfux;

    .line 2
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzfux;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfxo;->zzc()Lcom/google/android/gms/internal/ads/zzfxu;

    move-result-object v2

    const-class v3, Lcom/google/android/gms/internal/ads/zzgdl;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzftu;->zze(Lcom/google/android/gms/internal/ads/zzghi;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgdl;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfwx;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzfwx;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfxo;->zzd()Lcom/google/android/gms/internal/ads/zzgai;

    move-result-object v3

    const-class v4, Lcom/google/android/gms/internal/ads/zzfty;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzftu;->zze(Lcom/google/android/gms/internal/ads/zzghi;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzfty;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfxo;->zzd()Lcom/google/android/gms/internal/ads/zzgai;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgai;->zzc()Lcom/google/android/gms/internal/ads/zzgao;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgao;->zza()I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzgda;-><init>(Lcom/google/android/gms/internal/ads/zzgdl;Lcom/google/android/gms/internal/ads/zzfty;I)V

    return-object v0
.end method
