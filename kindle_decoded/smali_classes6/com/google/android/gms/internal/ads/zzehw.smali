.class final synthetic Lcom/google/android/gms/internal/ads/zzehw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdkn;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzeef;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzeef;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzehw;->zza:Lcom/google/android/gms/internal/ads/zzeef;

    return-void
.end method


# virtual methods
.method public final zza(ZLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzdbp;)V
    .locals 1

    .line 3
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzehw;->zza:Lcom/google/android/gms/internal/ads/zzeef;

    :try_start_0
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzeef;->zzb:Ljava/lang/Object;

    .line 1
    check-cast v0, Lcom/google/android/gms/internal/ads/zzfbi;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfbi;->zzs(Z)V

    iget-object p1, p3, Lcom/google/android/gms/internal/ads/zzeef;->zzb:Ljava/lang/Object;

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfbi;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzfbi;->zzw(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzfaw; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3
    new-instance p2, Lcom/google/android/gms/internal/ads/zzdkm;

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzdkm;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
