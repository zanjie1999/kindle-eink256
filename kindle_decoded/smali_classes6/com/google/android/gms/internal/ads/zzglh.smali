.class public final Lcom/google/android/gms/internal/ads/zzglh;
.super Lcom/google/android/gms/internal/ads/zzgkw;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgku;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzgkw<",
        "TK;TV;",
        "Lcom/google/android/gms/internal/ads/zzgln<",
        "TV;>;>;",
        "Lcom/google/android/gms/internal/ads/zzgku<",
        "Ljava/util/Map<",
        "TK;",
        "Lcom/google/android/gms/internal/ads/zzgln<",
        "TV;>;>;>;"
    }
.end annotation


# direct methods
.method synthetic constructor <init>(Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzglf;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgkw;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public static zzc(I)Lcom/google/android/gms/internal/ads/zzglg;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/android/gms/internal/ads/zzglg<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance p0, Lcom/google/android/gms/internal/ads/zzglg;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzglg;-><init>(ILcom/google/android/gms/internal/ads/zzglf;)V

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgkw;->zza()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final zzd()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Lcom/google/android/gms/internal/ads/zzgln<",
            "TV;>;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgkw;->zza()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
