.class public final Lcom/google/android/gms/internal/ads/zzdzv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcoj;

.field private final zzb:Landroid/content/Context;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzcgz;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfar;

.field private final zze:Ljava/util/concurrent/Executor;

.field private final zzf:Ljava/lang/String;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzddv;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzddz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcoj;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcgz;Lcom/google/android/gms/internal/ads/zzfar;Ljava/util/concurrent/Executor;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzddv;Lcom/google/android/gms/internal/ads/zzddz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdzv;->zza:Lcom/google/android/gms/internal/ads/zzcoj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdzv;->zzb:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdzv;->zzc:Lcom/google/android/gms/internal/ads/zzcgz;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdzv;->zzd:Lcom/google/android/gms/internal/ads/zzfar;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdzv;->zze:Ljava/util/concurrent/Executor;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdzv;->zzf:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzdzv;->zzg:Lcom/google/android/gms/internal/ads/zzddv;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzdzv;->zzh:Lcom/google/android/gms/internal/ads/zzddz;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdzv;)Lcom/google/android/gms/internal/ads/zzddv;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdzv;->zzg:Lcom/google/android/gms/internal/ads/zzddv;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzdzv;)Lcom/google/android/gms/internal/ads/zzddz;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdzv;->zzh:Lcom/google/android/gms/internal/ads/zzddz;

    return-object p0
.end method

.method private final zze(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "Lcom/google/android/gms/internal/ads/zzfal;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzp()Lcom/google/android/gms/internal/ads/zzbtx;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdzv;->zzb:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdzv;->zzc:Lcom/google/android/gms/internal/ads/zzcgz;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbtx;->zzb(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcgz;)Lcom/google/android/gms/internal/ads/zzbug;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbud;->zza:Lcom/google/android/gms/internal/ads/zzbua;

    const-string v2, "google.afma.response.normalize"

    .line 3
    invoke-virtual {v0, v2, v1, v1}, Lcom/google/android/gms/internal/ads/zzbug;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbtz;Lcom/google/android/gms/internal/ads/zzbty;)Lcom/google/android/gms/internal/ads/zzbtw;

    move-result-object v0

    const-string v1, ""

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfsd;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdzr;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdzr;-><init>(Lcom/google/android/gms/internal/ads/zzdzv;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdzv;->zze:Ljava/util/concurrent/Executor;

    .line 5
    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzfsd;->zzi(Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzfrk;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzdzs;

    .line 6
    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzdzs;-><init>(Lcom/google/android/gms/internal/ads/zzbtw;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzv;->zze:Ljava/util/concurrent/Executor;

    .line 7
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzfsd;->zzi(Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzfrk;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzdzt;

    .line 8
    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzdzt;-><init>(Lcom/google/android/gms/internal/ads/zzdzv;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzv;->zze:Ljava/util/concurrent/Executor;

    .line 9
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzfsd;->zzi(Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzfrk;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    .line 10
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbjl;->zzfl:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object p2

    .line 10
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lcom/google/android/gms/internal/ads/zzdzu;

    .line 12
    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzdzu;-><init>(Lcom/google/android/gms/internal/ads/zzdzv;)V

    .line 13
    sget-object v0, Lcom/google/android/gms/internal/ads/zzchg;->zzf:Lcom/google/android/gms/internal/ads/zzfsn;

    .line 12
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzfsd;->zzp(Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzfrz;Ljava/util/concurrent/Executor;)V

    :cond_0
    return-object p1
.end method

.method private final zzf(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "ad_types"

    .line 1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "unknown"

    const/4 v4, 0x0

    .line 3
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lorg/json/JSONArray;

    .line 4
    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdzv;->zzf:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to update the ad types for rendering. "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzi(Ljava/lang/String;)V

    return-object p1
.end method

.method private static final zzg(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    .line 1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p0, "request_id"

    .line 2
    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    return-object v0
.end method


# virtual methods
.method public final zzc()Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "Lcom/google/android/gms/internal/ads/zzfal;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzv;->zzd:Lcom/google/android/gms/internal/ads/zzfar;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfar;->zzd:Lcom/google/android/gms/internal/ads/zzbdg;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbdg;->zzx:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbjl;->zzfi:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v1

    .line 1
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdzv;->zzg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbjl;->zzfl:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzv;->zzh:Lcom/google/android/gms/internal/ads/zzddz;

    .line 7
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzddz;->zzbB(Z)V

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzehs;

    const/16 v1, 0xf

    const-string v2, "Invalid ad string."

    .line 8
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzehs;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfsd;->zzc(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdzv;->zza:Lcom/google/android/gms/internal/ads/zzcoj;

    .line 9
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcoj;->zzw()Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 24
    :cond_2
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzdzv;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzdzv;->zze(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v0

    return-object v0

    .line 10
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzv;->zzd:Lcom/google/android/gms/internal/ads/zzfar;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfar;->zzd:Lcom/google/android/gms/internal/ads/zzbdg;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbdg;->zzs:Lcom/google/android/gms/internal/ads/zzbcx;

    if-eqz v0, :cond_5

    .line 11
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbjl;->zzfg:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v1

    .line 11
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    .line 23
    :cond_4
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbcx;->zza:Ljava/lang/String;

    .line 13
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdzv;->zzg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzbcx;->zzb:Ljava/lang/String;

    .line 14
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdzv;->zzg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 15
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 16
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdzv;->zza:Lcom/google/android/gms/internal/ads/zzcoj;

    .line 21
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcoj;->zzw()Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zzd(Ljava/lang/String;)V

    .line 11
    :goto_1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbcx;->zza:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbcx;->zzb:Ljava/lang/String;

    .line 22
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdzv;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzdzv;->zze(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v0

    return-object v0

    .line 17
    :cond_5
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbjl;->zzfl:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzv;->zzh:Lcom/google/android/gms/internal/ads/zzddz;

    .line 19
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzddz;->zzbB(Z)V

    :cond_6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzehs;

    const/16 v1, 0xe

    const-string v2, "Mismatch request IDs."

    .line 20
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzehs;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfsd;->zzc(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzd(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfal;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfai;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdzv;->zzd:Lcom/google/android/gms/internal/ads/zzfar;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzfai;-><init>(Lcom/google/android/gms/internal/ads/zzfar;)V

    .line 2
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfak;->zza(Ljava/io/Reader;)Lcom/google/android/gms/internal/ads/zzfak;

    move-result-object p1

    .line 2
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzfal;-><init>(Lcom/google/android/gms/internal/ads/zzfai;Lcom/google/android/gms/internal/ads/zzfak;)V

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfsd;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    return-object p1
.end method
