.class final Lcom/google/android/gms/internal/ads/zzbur;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbqe;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/ads/zzchl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbus;Lcom/google/android/gms/internal/ads/zzchl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbur;->zzb:Lcom/google/android/gms/internal/ads/zzchl;

    return-void
.end method


# virtual methods
.method public final zza(Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbur;->zzb:Lcom/google/android/gms/internal/ads/zzchl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzchl;->zzc(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbur;->zzb:Lcom/google/android/gms/internal/ads/zzchl;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzchl;->zzd(Ljava/lang/Throwable;)Z

    :catch_1
    return-void
.end method

.method public final zzb(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbur;->zzb:Lcom/google/android/gms/internal/ads/zzchl;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbtv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbtv;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzchl;->zzd(Ljava/lang/Throwable;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbur;->zzb:Lcom/google/android/gms/internal/ads/zzchl;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbtv;

    .line 2
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzbtv;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzchl;->zzd(Ljava/lang/Throwable;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
