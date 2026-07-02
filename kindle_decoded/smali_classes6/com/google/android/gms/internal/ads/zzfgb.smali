.class public final Lcom/google/android/gms/internal/ads/zzfgb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private zza:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final zza()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfgb;->zza:Z

    return v0
.end method

.method final zzb(Landroid/content/Context;)V
    .locals 1

    const-string v0, "Application Context cannot be null"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzfhk;->zza(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfgb;->zza:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfgb;->zza:Z

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfgy;->zza()Lcom/google/android/gms/internal/ads/zzfgy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfgy;->zzb(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfgt;->zza()Lcom/google/android/gms/internal/ads/zzfgt;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfgt;->zzb(Landroid/content/Context;)V

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfhi;->zza(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfgv;->zza()Lcom/google/android/gms/internal/ads/zzfgv;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfgv;->zzc(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
