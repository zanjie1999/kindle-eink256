.class public final Lcom/google/android/gms/internal/ads/zzdvd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgla;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzgla<",
        "Lcom/google/android/gms/internal/ads/zzdvk;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzdvd;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdvc;->zza()Lcom/google/android/gms/internal/ads/zzdvd;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdvk;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfem;->zza:Lcom/google/android/gms/internal/ads/zzfem;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzfem;->zzd:Lcom/google/android/gms/internal/ads/zzfem;

    const-string v3, "ttc"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzdvk;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfem;Lcom/google/android/gms/internal/ads/zzfem;)V

    return-object v0
.end method
