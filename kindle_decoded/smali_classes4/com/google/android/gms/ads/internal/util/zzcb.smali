.class public final Lcom/google/android/gms/ads/internal/util/zzcb;
.super Lcom/google/android/gms/ads/internal/util/zzb;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcgy;

.field private final zzb:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/ads/internal/util/zzs;->zzi(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzb;-><init>()V

    new-instance p2, Lcom/google/android/gms/internal/ads/zzcgy;

    .line 3
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzcgy;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/util/zzcb;->zza:Lcom/google/android/gms/internal/ads/zzcgy;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/util/zzcb;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzcb;->zza:Lcom/google/android/gms/internal/ads/zzcgy;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzcb;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcgy;->zza(Ljava/lang/String;)V

    return-void
.end method
