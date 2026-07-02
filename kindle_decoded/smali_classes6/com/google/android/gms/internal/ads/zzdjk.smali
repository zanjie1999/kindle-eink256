.class final synthetic Lcom/google/android/gms/internal/ads/zzdjk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdcq;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcgz;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzezz;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfar;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcgz;Lcom/google/android/gms/internal/ads/zzezz;Lcom/google/android/gms/internal/ads/zzfar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdjk;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdjk;->zzb:Lcom/google/android/gms/internal/ads/zzcgz;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdjk;->zzc:Lcom/google/android/gms/internal/ads/zzezz;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdjk;->zzd:Lcom/google/android/gms/internal/ads/zzfar;

    return-void
.end method


# virtual methods
.method public final zzf()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjk;->zza:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdjk;->zzb:Lcom/google/android/gms/internal/ads/zzcgz;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdjk;->zzc:Lcom/google/android/gms/internal/ads/zzezz;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdjk;->zzd:Lcom/google/android/gms/internal/ads/zzfar;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzm()Lcom/google/android/gms/ads/internal/util/zzaz;

    move-result-object v4

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzcgz;->zza:Ljava/lang/String;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzezz;->zzC:Lorg/json/JSONObject;

    .line 2
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzfar;->zzf:Ljava/lang/String;

    .line 3
    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/google/android/gms/ads/internal/util/zzaz;->zzg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
