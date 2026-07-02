.class public final Lcom/google/android/gms/internal/ads/zzdlo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zza:Lorg/json/JSONObject;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdrh;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzdrh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdlo;->zza:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdlo;->zzb:Lcom/google/android/gms/internal/ads/zzdrh;

    return-void
.end method


# virtual methods
.method public final zza()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlo;->zza:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzdrh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlo;->zzb:Lcom/google/android/gms/internal/ads/zzdrh;

    return-object v0
.end method
