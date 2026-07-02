.class public final Lcom/google/android/gms/internal/ads/zzeeh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zza:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzbdp;",
            ">;"
        }
    .end annotation
.end field

.field private final zzb:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzbdp;",
            ">;"
        }
    .end annotation
.end field

.field private zzc:Lcom/google/android/gms/internal/ads/zzfac;

.field private zzd:Lcom/google/android/gms/internal/ads/zzezz;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeeh;->zzc:Lcom/google/android/gms/internal/ads/zzfac;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeeh;->zzd:Lcom/google/android/gms/internal/ads/zzezz;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeeh;->zzb:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeeh;->zza:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfac;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeeh;->zzc:Lcom/google/android/gms/internal/ads/zzfac;

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzezz;)V
    .locals 8

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzezz;->zzw:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeeh;->zzb:Ljava/util/Map;

    .line 2
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v7, Landroid/os/Bundle;

    .line 3
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 4
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzezz;->zzv:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6
    :try_start_0
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzezz;->zzv:Lorg/json/JSONObject;

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    .line 7
    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbdp;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzezz;->zzE:Ljava/lang/String;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzbdp;-><init>(Ljava/lang/String;JLcom/google/android/gms/internal/ads/zzbcz;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeeh;->zza:Ljava/util/List;

    .line 8
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeeh;->zzb:Ljava/util/Map;

    .line 9
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzezz;JLcom/google/android/gms/internal/ads/zzbcz;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzezz;->zzw:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeeh;->zzb:Ljava/util/Map;

    .line 2
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeeh;->zzd:Lcom/google/android/gms/internal/ads/zzezz;

    if-nez v1, :cond_1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeeh;->zzd:Lcom/google/android/gms/internal/ads/zzezz;

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeeh;->zzb:Ljava/util/Map;

    .line 3
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbdp;

    .line 4
    iput-wide p2, p1, Lcom/google/android/gms/internal/ads/zzbdp;->zzb:J

    .line 5
    iput-object p4, p1, Lcom/google/android/gms/internal/ads/zzbdp;->zzc:Lcom/google/android/gms/internal/ads/zzbcz;

    return-void
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzdav;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdav;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeeh;->zzd:Lcom/google/android/gms/internal/ads/zzezz;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeeh;->zzc:Lcom/google/android/gms/internal/ads/zzfac;

    const-string v3, ""

    invoke-direct {v0, v1, v3, p0, v2}, Lcom/google/android/gms/internal/ads/zzdav;-><init>(Lcom/google/android/gms/internal/ads/zzezz;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzeeh;Lcom/google/android/gms/internal/ads/zzfac;)V

    return-object v0
.end method

.method public final zze()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzbdp;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeeh;->zza:Ljava/util/List;

    return-object v0
.end method
