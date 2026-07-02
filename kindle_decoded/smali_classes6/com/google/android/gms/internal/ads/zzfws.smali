.class final Lcom/google/android/gms/internal/ads/zzfws;
.super Lcom/google/android/gms/internal/ads/zzftt;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzftt<",
        "Lcom/google/android/gms/internal/ads/zzfty;",
        "Lcom/google/android/gms/internal/ads/zzfxf;",
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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfxf;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgdq;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgdn;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfxf;->zzc()Lcom/google/android/gms/internal/ads/zzgex;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgex;->zzz()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzgdn;-><init>([B)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfxf;->zzd()Lcom/google/android/gms/internal/ads/zzfxl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfxl;->zza()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgdq;-><init>(Lcom/google/android/gms/internal/ads/zzfxc;I)V

    return-object v0
.end method
