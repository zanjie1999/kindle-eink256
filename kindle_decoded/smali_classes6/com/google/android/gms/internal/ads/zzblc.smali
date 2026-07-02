.class public final Lcom/google/android/gms/internal/ads/zzblc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzbkn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzbkn<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzc:Lcom/google/android/gms/internal/ads/zzbkn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzbkn<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzd:Lcom/google/android/gms/internal/ads/zzbkn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzbkn<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final zze:Lcom/google/android/gms/internal/ads/zzbkn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzbkn<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "gads:adapter_initialization:red_button"

    .line 1
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbkn;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbkn;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzblc;->zza:Lcom/google/android/gms/internal/ads/zzbkn;

    const/4 v1, 0x1

    const-string v2, "gads:ad_serving:enabled"

    .line 2
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbkn;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbkn;

    const-string v2, "gads:adaptive_banner:fail_invalid_ad_size"

    .line 3
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbkn;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbkn;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/internal/ads/zzblc;->zzc:Lcom/google/android/gms/internal/ads/zzbkn;

    const-string v2, "gads:sdk_use_dynamic_module"

    .line 4
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbkn;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbkn;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzblc;->zzd:Lcom/google/android/gms/internal/ads/zzbkn;

    const-string v1, "gads:signal_adapters:red_button"

    .line 5
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbkn;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbkn;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzblc;->zze:Lcom/google/android/gms/internal/ads/zzbkn;

    return-void
.end method
