.class public final Lcom/google/android/gms/internal/ads/zzdty;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgla;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzgla<",
        "Lcom/google/android/gms/internal/ads/zzduq;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzdty;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdtx;->zza()Lcom/google/android/gms/internal/ads/zzdty;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzduq;

    const/16 v1, 0x13

    const/16 v2, 0x14

    const/16 v3, 0x3f0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzduq;-><init>(III)V

    return-object v0
.end method
