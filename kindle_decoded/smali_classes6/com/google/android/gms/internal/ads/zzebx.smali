.class public final Lcom/google/android/gms/internal/ads/zzebx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfdw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzfdw<",
        "Lcom/google/android/gms/internal/ads/zzebw;",
        "Lcom/google/android/gms/internal/ads/zzebs;",
        ">;"
    }
.end annotation


# instance fields
.field private final zza:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzebx;->zza:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzebw;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzebw;->zza(Lcom/google/android/gms/internal/ads/zzebw;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "http_timeout_millis"

    const v2, 0xea60

    .line 3
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzebw;->zzb(Lcom/google/android/gms/internal/ads/zzebw;)Lcom/google/android/gms/internal/ads/zzcbm;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcbm;->zza()I

    move-result v2

    const/4 v3, -0x2

    if-ne v2, v3, :cond_5

    new-instance v1, Ljava/util/HashMap;

    .line 6
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzebw;->zzb(Lcom/google/android/gms/internal/ads/zzebw;)Lcom/google/android/gms/internal/ads/zzcbm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcbm;->zzg()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzebx;->zza:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzebx;->zza:Ljava/lang/String;

    const-string v3, "Cookie"

    .line 8
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzebw;->zzb(Lcom/google/android/gms/internal/ads/zzebw;)Lcom/google/android/gms/internal/ads/zzcbm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcbm;->zzf()Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_3

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzebw;->zza(Lcom/google/android/gms/internal/ads/zzebw;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "pii"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v4, "doritos"

    .line 11
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 12
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "x-afma-drt-cookie"

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v4, "doritos_v2"

    .line 13
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 14
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "x-afma-drt-v2-cookie"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const-string v2, "DSID signal does not exist."

    .line 15
    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 16
    :cond_3
    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzebw;->zzb(Lcom/google/android/gms/internal/ads/zzebw;)Lcom/google/android/gms/internal/ads/zzcbm;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzebw;->zzb(Lcom/google/android/gms/internal/ads/zzebw;)Lcom/google/android/gms/internal/ads/zzcbm;

    move-result-object v2

    .line 17
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcbm;->zzd()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 18
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzebw;->zzb(Lcom/google/android/gms/internal/ads/zzebw;)Lcom/google/android/gms/internal/ads/zzcbm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcbm;->zzd()Ljava/lang/String;

    move-result-object v3

    :cond_4
    new-instance v2, Lcom/google/android/gms/internal/ads/zzebs;

    .line 19
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzebw;->zzb(Lcom/google/android/gms/internal/ads/zzebw;)Lcom/google/android/gms/internal/ads/zzcbm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcbm;->zze()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzebs;-><init>(Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V

    return-object v2

    .line 20
    :cond_5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcbm;->zza()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_7

    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcbm;->zzb()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 22
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcbm;->zzb()Ljava/util/List;

    move-result-object p1

    const-string v0, ", "

    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzf(Ljava/lang/String;)V

    .line 24
    :cond_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdym;

    const/4 v0, 0x2

    const-string v1, "Error building request URL."

    .line 23
    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzdym;-><init>(ILjava/lang/String;)V

    throw p1

    .line 21
    :cond_7
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdym;

    .line 24
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzdym;-><init>(I)V

    throw p1
.end method
