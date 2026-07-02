.class final synthetic Lcom/google/android/gms/internal/ads/zzczy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfln;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcgz;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfar;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcgz;Lcom/google/android/gms/internal/ads/zzfar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzczy;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzczy;->zzb:Lcom/google/android/gms/internal/ads/zzcgz;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzczy;->zzc:Lcom/google/android/gms/internal/ads/zzfar;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczy;->zza:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzczy;->zzb:Lcom/google/android/gms/internal/ads/zzcgz;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzczy;->zzc:Lcom/google/android/gms/internal/ads/zzfar;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzezz;

    new-instance v3, Lcom/google/android/gms/ads/internal/util/zzav;

    .line 2
    invoke-direct {v3, v0}, Lcom/google/android/gms/ads/internal/util/zzav;-><init>(Landroid/content/Context;)V

    .line 3
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzezz;->zzB:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/ads/internal/util/zzav;->zze(Ljava/lang/String;)V

    .line 4
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzezz;->zzC:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/google/android/gms/ads/internal/util/zzav;->zzf(Ljava/lang/String;)V

    iget-object p1, v1, Lcom/google/android/gms/internal/ads/zzcgz;->zza:Ljava/lang/String;

    .line 5
    invoke-virtual {v3, p1}, Lcom/google/android/gms/ads/internal/util/zzav;->zzd(Ljava/lang/String;)V

    iget-object p1, v2, Lcom/google/android/gms/internal/ads/zzfar;->zzf:Ljava/lang/String;

    .line 6
    invoke-virtual {v3, p1}, Lcom/google/android/gms/ads/internal/util/zzav;->zzc(Ljava/lang/String;)V

    return-object v3
.end method
