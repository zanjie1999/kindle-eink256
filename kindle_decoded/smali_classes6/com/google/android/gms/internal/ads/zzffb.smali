.class public final Lcom/google/android/gms/internal/ads/zzffb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zza:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzb:Lcom/google/android/gms/internal/ads/zzffh;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzffb;->zza:Ljava/util/HashMap;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzffh;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzj()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzffh;-><init>(Lcom/google/android/gms/common/util/Clock;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzffb;->zzb:Lcom/google/android/gms/internal/ads/zzffh;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffb;->zza:Ljava/util/HashMap;

    const-string v1, "new_csi"

    const-string v2, "1"

    .line 3
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzffb;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzffb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzffb;-><init>()V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzffb;->zza:Ljava/util/HashMap;

    const-string v2, "action"

    .line 2
    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzffb;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzffb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzffb;-><init>()V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzffb;->zza:Ljava/util/HashMap;

    const-string v2, "request_id"

    .line 2
    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzffb;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffb;->zza:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzffb;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffb;->zzb:Lcom/google/android/gms/internal/ads/zzffh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzffh;->zza(Ljava/lang/String;)V

    return-object p0
.end method

.method public final zze(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzffb;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffb;->zzb:Lcom/google/android/gms/internal/ads/zzffh;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzffh;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final zzf(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzffb;
    .locals 3

    const-string v0, "cnt"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzffb;->zza:Ljava/util/HashMap;

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "network_coarse"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v0, "gnt"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzffb;->zza:Ljava/util/HashMap;

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "network_fine"

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p0
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzcgi;)Lcom/google/android/gms/internal/ads/zzffb;
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfal;->zzb:Lcom/google/android/gms/internal/ads/zzfak;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfak;->zzb:Lcom/google/android/gms/internal/ads/zzfac;

    .line 2
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzffb;->zzh(Lcom/google/android/gms/internal/ads/zzfac;)Lcom/google/android/gms/internal/ads/zzffb;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfak;->zza:Ljava/util/List;

    .line 3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfak;->zza:Ljava/util/List;

    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzezz;

    .line 5
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzezz;->zzb:I

    const-string v1, "ad_format"

    packed-switch v0, :pswitch_data_0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzffb;->zza:Ljava/util/HashMap;

    const-string v0, "unknown"

    .line 13
    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 23
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffb;->zza:Ljava/util/HashMap;

    const-string v2, "app_open_ad"

    .line 6
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffb;->zza:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzcgi;->zzj()Z

    move-result p2

    if-eq v1, p2, :cond_0

    const-string p2, "0"

    goto :goto_0

    :cond_0
    const-string p2, "1"

    :goto_0
    const-string v1, "as"

    .line 7
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :pswitch_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzffb;->zza:Ljava/util/HashMap;

    const-string v0, "rewarded"

    .line 8
    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :pswitch_2
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzffb;->zza:Ljava/util/HashMap;

    const-string v0, "native_advanced"

    .line 9
    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :pswitch_3
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzffb;->zza:Ljava/util/HashMap;

    const-string v0, "native_express"

    .line 10
    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :pswitch_4
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzffb;->zza:Ljava/util/HashMap;

    const-string v0, "interstitial"

    .line 11
    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :pswitch_5
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzffb;->zza:Ljava/util/HashMap;

    const-string v0, "banner"

    .line 12
    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_1
    :goto_1
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbjl;->zzfl:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object p2

    .line 14
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 16
    invoke-static {p1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zze;->zza(Lcom/google/android/gms/internal/ads/zzfal;)Z

    move-result p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffb;->zza:Ljava/util/HashMap;

    .line 17
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "scar"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_3

    .line 18
    invoke-static {p1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zze;->zzb(Lcom/google/android/gms/internal/ads/zzfal;)Ljava/lang/String;

    move-result-object p2

    .line 19
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffb;->zza:Ljava/util/HashMap;

    const-string v1, "ragent"

    .line 20
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :cond_2
    invoke-static {p1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zze;->zzc(Lcom/google/android/gms/internal/ads/zzfal;)Ljava/lang/String;

    move-result-object p1

    .line 22
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzffb;->zza:Ljava/util/HashMap;

    const-string v0, "rtype"

    .line 23
    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzh(Lcom/google/android/gms/internal/ads/zzfac;)Lcom/google/android/gms/internal/ads/zzffb;
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfac;->zzb:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffb;->zza:Ljava/util/HashMap;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfac;->zzb:Ljava/lang/String;

    const-string v1, "gqi"

    .line 2
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzezz;)Lcom/google/android/gms/internal/ads/zzffb;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffb;->zza:Ljava/util/HashMap;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzezz;->zzw:Ljava/lang/String;

    const-string v1, "aai"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final zzj()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzffb;->zza:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzffb;->zzb:Lcom/google/android/gms/internal/ads/zzffh;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzffh;->zzc()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzffg;

    .line 3
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzffg;->zza:Ljava/lang/String;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzffg;->zzb:Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method
