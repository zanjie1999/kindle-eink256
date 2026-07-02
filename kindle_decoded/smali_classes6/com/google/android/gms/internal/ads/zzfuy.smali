.class final Lcom/google/android/gms/internal/ads/zzfuy;
.super Lcom/google/android/gms/internal/ads/zzftt;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzftt<",
        "Lcom/google/android/gms/internal/ads/zzftg;",
        "Lcom/google/android/gms/internal/ads/zzfyd;",
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
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfyd;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgcj;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfyd;->zzd()Lcom/google/android/gms/internal/ads/zzgex;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgex;->zzz()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfyd;->zzc()Lcom/google/android/gms/internal/ads/zzfyj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfyj;->zza()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgcj;-><init>([BI)V

    return-object v0
.end method
