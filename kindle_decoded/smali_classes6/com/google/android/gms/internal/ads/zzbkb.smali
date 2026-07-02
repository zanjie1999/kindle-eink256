.class public final Lcom/google/android/gms/internal/ads/zzbkb;
.super Lcom/google/android/gms/internal/ads/zzbkc;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/ads/internal/zzf;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/zzf;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbkc;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbkb;->zza:Lcom/google/android/gms/ads/internal/zzf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbkb;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbkb;->zzc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzb()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkb;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final zzc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkb;->zzc:Ljava/lang/String;

    return-object v0
.end method

.method public final zzd(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkb;->zza:Lcom/google/android/gms/ads/internal/zzf;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/internal/zzf;->zza(Landroid/view/View;)V

    return-void
.end method

.method public final zze()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkb;->zza:Lcom/google/android/gms/ads/internal/zzf;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/zzf;->zzb()V

    return-void
.end method

.method public final zzf()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkb;->zza:Lcom/google/android/gms/ads/internal/zzf;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/zzf;->zzc()V

    return-void
.end method
