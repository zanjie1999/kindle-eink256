.class public abstract Lcom/google/android/gms/internal/ads/zzfgc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zze(Lcom/google/android/gms/internal/ads/zzfgd;Lcom/google/android/gms/internal/ads/zzfge;)Lcom/google/android/gms/internal/ads/zzfgc;
    .locals 1

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfga;->zzb()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfgg;

    .line 1
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzfgg;-><init>(Lcom/google/android/gms/internal/ads/zzfgd;Lcom/google/android/gms/internal/ads/zzfge;)V

    return-object v0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Method called before OM SDK activation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract zza()V
.end method

.method public abstract zzb(Landroid/view/View;)V
.end method

.method public abstract zzc()V
.end method

.method public abstract zzd(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfgi;Ljava/lang/String;)V
.end method
