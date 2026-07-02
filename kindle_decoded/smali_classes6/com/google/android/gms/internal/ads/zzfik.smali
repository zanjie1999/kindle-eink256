.class public abstract Lcom/google/android/gms/internal/ads/zzfik;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzd()Lcom/google/android/gms/internal/ads/zzfij;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfim;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfim;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfim;->zzb(Z)Lcom/google/android/gms/internal/ads/zzfij;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfim;->zzc(Z)Lcom/google/android/gms/internal/ads/zzfij;

    return-object v0
.end method


# virtual methods
.method public abstract zza()Ljava/lang/String;
.end method

.method public abstract zzb()Z
.end method

.method public abstract zzc()Z
.end method
