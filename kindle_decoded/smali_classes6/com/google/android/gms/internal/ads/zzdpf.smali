.class final synthetic Lcom/google/android/gms/internal/ads/zzdpf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfln;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdpl;

.field private final zzb:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdpl;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdpf;->zza:Lcom/google/android/gms/internal/ads/zzdpl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdpf;->zzb:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpf;->zza:Lcom/google/android/gms/internal/ads/zzdpl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdpf;->zzb:Lorg/json/JSONObject;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdpl;->zzg(Lorg/json/JSONObject;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzblo;

    move-result-object p1

    return-object p1
.end method
