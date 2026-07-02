.class public final Lcom/google/android/gms/internal/ads/zzbkt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzbkn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzbkn<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzb:Lcom/google/android/gms/internal/ads/zzbkn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzbkn<",
            "Ljava/lang/String;",
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


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "gads:csi_reporting_ratio"

    const-wide v1, 0x3fa999999999999aL    # 0.05

    .line 1
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbkn;->zzc(Ljava/lang/String;D)Lcom/google/android/gms/internal/ads/zzbkn;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbkt;->zza:Lcom/google/android/gms/internal/ads/zzbkn;

    const-string v0, "gads:sdk_csi_server"

    const-string v1, "https://csi.gstatic.com/csi"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbkn;->zzd(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbkn;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbkt;->zzb:Lcom/google/android/gms/internal/ads/zzbkn;

    const-string v0, "gads:enabled_sdk_csi"

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbkn;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbkn;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbkt;->zzc:Lcom/google/android/gms/internal/ads/zzbkn;

    return-void
.end method
