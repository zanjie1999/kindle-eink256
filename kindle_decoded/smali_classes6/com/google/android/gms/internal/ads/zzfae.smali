.class public final Lcom/google/android/gms/internal/ads/zzfae;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field public final zza:Ljava/lang/String;

.field public final zzb:Ljava/lang/String;

.field public final zzc:Lorg/json/JSONObject;

.field public final zzd:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Landroid/util/JsonReader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzbx;->zzc(Landroid/util/JsonReader;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfae;->zzd:Lorg/json/JSONObject;

    const/4 v0, 0x0

    const-string v1, "ad_html"

    .line 2
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfae;->zza:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfae;->zzd:Lorg/json/JSONObject;

    const-string v1, "ad_base_url"

    .line 3
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfae;->zzb:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfae;->zzd:Lorg/json/JSONObject;

    const-string v0, "ad_json"

    .line 4
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfae;->zzc:Lorg/json/JSONObject;

    return-void
.end method
