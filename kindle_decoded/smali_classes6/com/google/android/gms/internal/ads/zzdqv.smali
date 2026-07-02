.class final synthetic Lcom/google/android/gms/internal/ads/zzdqv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfrk;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdrh;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdrh;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqv;->zza:Lcom/google/android/gms/internal/ads/zzdrh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdqv;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdqv;->zzc:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqv;->zza:Lcom/google/android/gms/internal/ads/zzdrh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdqv;->zzb:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdqv;->zzc:Lorg/json/JSONObject;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcml;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzdrh;->zzj(Ljava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzcml;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    return-object p1
.end method
