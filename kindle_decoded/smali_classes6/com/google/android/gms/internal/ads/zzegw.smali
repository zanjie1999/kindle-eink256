.class public final Lcom/google/android/gms/internal/ads/zzegw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzegq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzegq<",
        "Lcom/google/android/gms/internal/ads/zzdmh;",
        ">;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdlb;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfsn;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzdoy;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfbj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzfbj<",
            "Lcom/google/android/gms/internal/ads/zzdrh;",
            ">;"
        }
    .end annotation
.end field

.field private final zze:Lcom/google/android/gms/internal/ads/zzdrn;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdlb;Lcom/google/android/gms/internal/ads/zzfsn;Lcom/google/android/gms/internal/ads/zzdoy;Lcom/google/android/gms/internal/ads/zzfbj;Lcom/google/android/gms/internal/ads/zzdrn;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdlb;",
            "Lcom/google/android/gms/internal/ads/zzfsn;",
            "Lcom/google/android/gms/internal/ads/zzdoy;",
            "Lcom/google/android/gms/internal/ads/zzfbj<",
            "Lcom/google/android/gms/internal/ads/zzdrh;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzdrn;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzegw;->zza:Lcom/google/android/gms/internal/ads/zzdlb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzegw;->zzb:Lcom/google/android/gms/internal/ads/zzfsn;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzegw;->zzc:Lcom/google/android/gms/internal/ads/zzdoy;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzegw;->zzd:Lcom/google/android/gms/internal/ads/zzfbj;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzegw;->zze:Lcom/google/android/gms/internal/ads/zzdrn;

    return-void
.end method

.method private final zzg(Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzezz;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzfal;",
            "Lcom/google/android/gms/internal/ads/zzezz;",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "Lcom/google/android/gms/internal/ads/zzdmh;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegw;->zzd:Lcom/google/android/gms/internal/ads/zzfbj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfbj;->zzb()Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegw;->zzc:Lcom/google/android/gms/internal/ads/zzdoy;

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdoy;->zza(Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzezz;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzfsm;

    const/4 v1, 0x0

    aput-object v4, v0, v1

    const/4 v1, 0x1

    aput-object v3, v0, v1

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfsd;->zzn([Lcom/google/android/gms/internal/ads/zzfsm;)Lcom/google/android/gms/internal/ads/zzfsb;

    move-result-object v0

    new-instance v8, Lcom/google/android/gms/internal/ads/zzegv;

    move-object v1, v8

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzegv;-><init>(Lcom/google/android/gms/internal/ads/zzegw;Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzezz;Lorg/json/JSONObject;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzegw;->zzb:Lcom/google/android/gms/internal/ads/zzfsn;

    .line 4
    invoke-virtual {v0, v8, p1}, Lcom/google/android/gms/internal/ads/zzfsb;->zza(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzezz;)Z
    .locals 0

    .line 1
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzezz;->zzs:Lcom/google/android/gms/internal/ads/zzfae;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfae;->zzc:Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzezz;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzfal;",
            "Lcom/google/android/gms/internal/ads/zzezz;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "Lcom/google/android/gms/internal/ads/zzdmh;",
            ">;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegw;->zzd:Lcom/google/android/gms/internal/ads/zzfbj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfbj;->zzb()Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzegr;

    .line 2
    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/ads/zzegr;-><init>(Lcom/google/android/gms/internal/ads/zzegw;Lcom/google/android/gms/internal/ads/zzezz;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzegw;->zzb:Lcom/google/android/gms/internal/ads/zzfsn;

    .line 3
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfsd;->zzi(Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzfrk;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzegs;

    .line 4
    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzegs;-><init>(Lcom/google/android/gms/internal/ads/zzegw;Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzezz;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzegw;->zzb:Lcom/google/android/gms/internal/ads/zzfsn;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzfsd;->zzi(Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzfrk;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzc(Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzezz;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzdmh;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdmm;

    .line 2
    invoke-interface {p2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzdrh;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegw;->zza:Lcom/google/android/gms/internal/ads/zzdlb;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcxv;

    const/4 v2, 0x0

    .line 3
    invoke-direct {v1, p3, p4, v2}, Lcom/google/android/gms/internal/ads/zzcxv;-><init>(Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzezz;Ljava/lang/String;)V

    new-instance p3, Lcom/google/android/gms/internal/ads/zzdmy;

    invoke-direct {p3, p1}, Lcom/google/android/gms/internal/ads/zzdmy;-><init>(Lcom/google/android/gms/internal/ads/zzdmm;)V

    new-instance p4, Lcom/google/android/gms/internal/ads/zzdlo;

    invoke-direct {p4, p5, p2}, Lcom/google/android/gms/internal/ads/zzdlo;-><init>(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzdrh;)V

    .line 4
    invoke-virtual {v0, v1, p3, p4}, Lcom/google/android/gms/internal/ads/zzdlb;->zzT(Lcom/google/android/gms/internal/ads/zzcxv;Lcom/google/android/gms/internal/ads/zzdmy;Lcom/google/android/gms/internal/ads/zzdlo;)Lcom/google/android/gms/internal/ads/zzdmn;

    move-result-object p3

    .line 5
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzdmn;->zzi()Lcom/google/android/gms/internal/ads/zzdqt;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzdqt;->zzb()V

    .line 6
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzdmn;->zzj()Lcom/google/android/gms/internal/ads/zzdrd;

    move-result-object p4

    invoke-virtual {p4, p2}, Lcom/google/android/gms/internal/ads/zzdrd;->zza(Lcom/google/android/gms/internal/ads/zzdrh;)V

    .line 7
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzdmn;->zzk()Lcom/google/android/gms/internal/ads/zzdqc;

    move-result-object p2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdmm;->zzR()Lcom/google/android/gms/internal/ads/zzcml;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzdqc;->zza(Lcom/google/android/gms/internal/ads/zzcml;)V

    .line 8
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzdmn;->zzl()Lcom/google/android/gms/internal/ads/zzdrm;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzegw;->zze:Lcom/google/android/gms/internal/ads/zzdrn;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdrm;->zza(Lcom/google/android/gms/internal/ads/zzdrn;)V

    .line 9
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzdmp;->zzh()Lcom/google/android/gms/internal/ads/zzdmh;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzd(Lcom/google/android/gms/internal/ads/zzdrh;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegw;->zzd:Lcom/google/android/gms/internal/ads/zzfbj;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfsd;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfbj;->zzc(Lcom/google/android/gms/internal/ads/zzfsm;)V

    const-string p1, "success"

    .line 2
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "json"

    .line 4
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "ads"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfsd;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbtv;

    const-string p2, "process json failed"

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzbtv;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final synthetic zze(Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzezz;Lorg/json/JSONArray;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdym;

    .line 2
    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzdym;-><init>(I)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfsd;->zzc(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    goto :goto_2

    .line 3
    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfal;->zza:Lcom/google/android/gms/internal/ads/zzfai;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfai;->zza:Lcom/google/android/gms/internal/ads/zzfar;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfar;->zzk:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v0, v3, :cond_3

    .line 4
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzegw;->zzd:Lcom/google/android/gms/internal/ads/zzfbj;

    .line 5
    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zzfal;->zza:Lcom/google/android/gms/internal/ads/zzfai;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzfai;->zza:Lcom/google/android/gms/internal/ads/zzfar;

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzfar;->zzk:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzfbj;->zza(I)V

    new-instance v3, Ljava/util/ArrayList;

    .line 6
    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zzfal;->zza:Lcom/google/android/gms/internal/ads/zzfai;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzfai;->zza:Lcom/google/android/gms/internal/ads/zzfar;

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzfar;->zzk:I

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    :goto_0
    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zzfal;->zza:Lcom/google/android/gms/internal/ads/zzfai;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzfai;->zza:Lcom/google/android/gms/internal/ads/zzfar;

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzfar;->zzk:I

    if-ge v2, v4, :cond_2

    if-ge v2, v0, :cond_1

    .line 8
    invoke-virtual {p3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {p0, p1, p2, v4}, Lcom/google/android/gms/internal/ads/zzegw;->zzg(Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzezz;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance v4, Lcom/google/android/gms/internal/ads/zzdym;

    .line 9
    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/zzdym;-><init>(I)V

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzfsd;->zzc(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_2
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzfsd;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    goto :goto_2

    .line 11
    :cond_3
    invoke-virtual {p3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzegw;->zzg(Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzezz;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/ads/zzegu;->zza:Lcom/google/android/gms/internal/ads/zzfln;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzegw;->zzb:Lcom/google/android/gms/internal/ads/zzfsn;

    .line 12
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzfsd;->zzj(Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzfln;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method final synthetic zzf(Lcom/google/android/gms/internal/ads/zzezz;Lcom/google/android/gms/internal/ads/zzdrh;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x1

    const-string v2, "isNonagon"

    .line 2
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 3
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbjl;->zzgf:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v2

    .line 3
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastR()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "skipDeepLinkValidation"

    .line 5
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    .line 6
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 7
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzezz;->zzs:Lcom/google/android/gms/internal/ads/zzfae;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfae;->zzc:Lorg/json/JSONObject;

    const-string v2, "response"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "sdk_params"

    .line 8
    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "google.afma.nativeAds.preProcessJson"

    .line 9
    invoke-virtual {p2, p1, v1}, Lcom/google/android/gms/internal/ads/zzdrh;->zzd(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzegt;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/ads/zzegt;-><init>(Lcom/google/android/gms/internal/ads/zzegw;Lcom/google/android/gms/internal/ads/zzdrh;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzegw;->zzb:Lcom/google/android/gms/internal/ads/zzfsn;

    .line 10
    invoke-static {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzfsd;->zzi(Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzfrk;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    return-object p1
.end method
