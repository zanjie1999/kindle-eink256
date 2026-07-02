.class final synthetic Lcom/google/android/gms/ads/nonagon/signalgeneration/zzae;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfrk;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcbj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcbj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzae;->zza:Lcom/google/android/gms/internal/ads/zzcbj;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzae;->zza:Lcom/google/android/gms/internal/ads/zzcbj;

    check-cast p1, Ljava/io/InputStream;

    new-instance v1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzah;

    .line 2
    new-instance v2, Landroid/util/JsonReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzah;-><init>(Landroid/util/JsonReader;)V

    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzcbj;->zza:Landroid/os/Bundle;

    .line 3
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/util/zzs;->zzl(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzah;->zzb:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "{}"

    .line 2
    iput-object p1, v1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzah;->zzb:Ljava/lang/String;

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfsd;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    return-object p1
.end method
