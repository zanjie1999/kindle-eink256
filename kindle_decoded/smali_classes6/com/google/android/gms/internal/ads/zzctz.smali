.class final synthetic Lcom/google/android/gms/internal/ads/zzctz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcua;

.field private final zzb:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcua;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzctz;->zza:Lcom/google/android/gms/internal/ads/zzcua;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzctz;->zzb:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctz;->zza:Lcom/google/android/gms/internal/ads/zzcua;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzctz;->zzb:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcua;->zzf(Lorg/json/JSONObject;)V

    return-void
.end method
