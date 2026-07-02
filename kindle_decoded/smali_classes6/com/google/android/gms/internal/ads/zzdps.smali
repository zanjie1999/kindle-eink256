.class final synthetic Lcom/google/android/gms/internal/ads/zzdps;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfrk;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdqd;

.field private final zzb:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdqd;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdps;->zza:Lcom/google/android/gms/internal/ads/zzdqd;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdps;->zzb:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdps;->zza:Lcom/google/android/gms/internal/ads/zzdqd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdps;->zzb:Lorg/json/JSONObject;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcml;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdqd;->zzf(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzcml;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    return-object p1
.end method
