.class public final Lcom/google/android/gms/internal/ads/zzefh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeek;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeek<",
        "Lcom/google/android/gms/internal/ads/zzcvh;",
        "Lcom/google/android/gms/internal/ads/zzfbi;",
        "Lcom/google/android/gms/internal/ads/zzefy;",
        ">;"
    }
.end annotation


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcwe;

.field private final zzc:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcwe;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzefh;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzefh;->zzb:Lcom/google/android/gms/internal/ads/zzcwe;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzefh;->zzc:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzezz;Lcom/google/android/gms/internal/ads/zzeef;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzfal;",
            "Lcom/google/android/gms/internal/ads/zzezz;",
            "Lcom/google/android/gms/internal/ads/zzeef<",
            "Lcom/google/android/gms/internal/ads/zzfbi;",
            "Lcom/google/android/gms/internal/ads/zzefy;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzfaw;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfal;->zza:Lcom/google/android/gms/internal/ads/zzfai;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfai;->zza:Lcom/google/android/gms/internal/ads/zzfar;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfar;->zze:Lcom/google/android/gms/internal/ads/zzbdl;

    .line 2
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzbdl;->zzn:Z

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbdl;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzefh;->zza:Landroid/content/Context;

    .line 3
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzbdl;->zze:I

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzbdl;->zzb:I

    .line 4
    invoke-static {v3, v0}, Lcom/google/android/gms/ads/zza;->zzb(II)Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbdl;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)V

    :goto_0
    move-object v4, v1

    goto :goto_1

    .line 5
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbjl;->zzfB:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v1

    .line 5
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p2, Lcom/google/android/gms/internal/ads/zzezz;->zzad:Z

    if-eqz v1, :cond_1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbdl;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzefh;->zza:Landroid/content/Context;

    .line 9
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzbdl;->zze:I

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzbdl;->zzb:I

    .line 10
    invoke-static {v3, v0}, Lcom/google/android/gms/ads/zza;->zzc(II)Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbdl;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefh;->zza:Landroid/content/Context;

    .line 7
    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzezz;->zzu:Ljava/util/List;

    .line 8
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfav;->zzb(Landroid/content/Context;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzbdl;

    move-result-object v1

    goto :goto_0

    .line 11
    :goto_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbjl;->zzfB:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p2, Lcom/google/android/gms/internal/ads/zzezz;->zzad:Z

    if-eqz v0, :cond_2

    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzeef;->zzb:Ljava/lang/Object;

    .line 16
    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/internal/ads/zzfbi;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzefh;->zza:Landroid/content/Context;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfal;->zza:Lcom/google/android/gms/internal/ads/zzfai;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfai;->zza:Lcom/google/android/gms/internal/ads/zzfar;

    iget-object v5, p1, Lcom/google/android/gms/internal/ads/zzfar;->zzd:Lcom/google/android/gms/internal/ads/zzbdg;

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzezz;->zzv:Lorg/json/JSONObject;

    .line 17
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzezz;->zzs:Lcom/google/android/gms/internal/ads/zzfae;

    .line 18
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzbx;->zzl(Lcom/google/android/gms/internal/ads/zzfae;)Ljava/lang/String;

    move-result-object v7

    iget-object p1, p3, Lcom/google/android/gms/internal/ads/zzeef;->zzc:Lcom/google/android/gms/internal/ads/zzdcm;

    move-object v8, p1

    check-cast v8, Lcom/google/android/gms/internal/ads/zzbvm;

    .line 16
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzfbi;->zzb(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbdl;Lcom/google/android/gms/internal/ads/zzbdg;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbvm;)V

    return-void

    :cond_2
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzeef;->zzb:Ljava/lang/Object;

    .line 13
    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/internal/ads/zzfbi;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzefh;->zza:Landroid/content/Context;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfal;->zza:Lcom/google/android/gms/internal/ads/zzfai;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfai;->zza:Lcom/google/android/gms/internal/ads/zzfar;

    iget-object v5, p1, Lcom/google/android/gms/internal/ads/zzfar;->zzd:Lcom/google/android/gms/internal/ads/zzbdg;

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzezz;->zzv:Lorg/json/JSONObject;

    .line 14
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzezz;->zzs:Lcom/google/android/gms/internal/ads/zzfae;

    .line 15
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzbx;->zzl(Lcom/google/android/gms/internal/ads/zzfae;)Ljava/lang/String;

    move-result-object v7

    iget-object p1, p3, Lcom/google/android/gms/internal/ads/zzeef;->zzc:Lcom/google/android/gms/internal/ads/zzdcm;

    move-object v8, p1

    check-cast v8, Lcom/google/android/gms/internal/ads/zzbvm;

    .line 13
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzfbi;->zzg(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbdl;Lcom/google/android/gms/internal/ads/zzbdg;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbvm;)V

    return-void
.end method

.method public final bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzezz;Lcom/google/android/gms/internal/ads/zzeef;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzfaw;,
            Lcom/google/android/gms/internal/ads/zzehs;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbjl;->zzfB:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p2, Lcom/google/android/gms/internal/ads/zzezz;->zzad:Z

    if-eqz v0, :cond_2

    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzeef;->zzb:Ljava/lang/Object;

    .line 4
    check-cast v0, Lcom/google/android/gms/internal/ads/zzfbi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfbi;->zzc()Lcom/google/android/gms/internal/ads/zzbvp;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbvp;->zze()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 8
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbvp;->zzf()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_3

    .line 11
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfsd;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v0

    new-instance v3, Lcom/google/android/gms/internal/ads/zzefg;

    invoke-direct {v3, p0, v2, p2}, Lcom/google/android/gms/internal/ads/zzefg;-><init>(Lcom/google/android/gms/internal/ads/zzefh;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzezz;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/zzchg;->zze:Lcom/google/android/gms/internal/ads/zzfsn;

    .line 12
    invoke-static {v0, v3, v2}, Lcom/google/android/gms/internal/ads/zzfsd;->zzi(Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzfrk;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v0

    .line 13
    :try_start_1
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 23
    :goto_0
    new-instance p2, Lcom/google/android/gms/internal/ads/zzfaw;

    .line 14
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzfaw;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 8
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfaw;

    new-instance p2, Ljava/lang/Exception;

    const-string p3, "BannerAdapterWrapper interscrollerView should not be null"

    .line 10
    invoke-direct {p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzfaw;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p1

    .line 14
    new-instance p2, Lcom/google/android/gms/internal/ads/zzfaw;

    .line 9
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzfaw;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    const-string p1, "getInterscrollerAd should not be null after loadInterscrollerAd loaded ad."

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzf(Ljava/lang/String;)V

    new-instance p2, Lcom/google/android/gms/internal/ads/zzfaw;

    new-instance p3, Ljava/lang/Exception;

    .line 6
    invoke-direct {p3, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/ads/zzfaw;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 9
    :cond_2
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzeef;->zzb:Ljava/lang/Object;

    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/zzfbi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfbi;->zza()Landroid/view/View;

    move-result-object v2

    .line 13
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefh;->zzb:Lcom/google/android/gms/internal/ads/zzcwe;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcxv;

    iget-object v4, p3, Lcom/google/android/gms/internal/ads/zzeef;->zza:Ljava/lang/String;

    .line 15
    invoke-direct {v3, p1, p2, v4}, Lcom/google/android/gms/internal/ads/zzcxv;-><init>(Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzezz;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzcvo;

    iget-object v4, p3, Lcom/google/android/gms/internal/ads/zzeef;->zzb:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/ads/zzfbi;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzeff;->zzb(Lcom/google/android/gms/internal/ads/zzfbi;)Lcom/google/android/gms/internal/ads/zzcxe;

    move-result-object v4

    .line 16
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzezz;->zzu:Ljava/util/List;

    const/4 v5, 0x0

    .line 17
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzfaa;

    invoke-direct {p1, v2, v1, v4, p2}, Lcom/google/android/gms/internal/ads/zzcvo;-><init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzcml;Lcom/google/android/gms/internal/ads/zzcxe;Lcom/google/android/gms/internal/ads/zzfaa;)V

    .line 18
    invoke-virtual {v0, v3, p1}, Lcom/google/android/gms/internal/ads/zzcwe;->zzaa(Lcom/google/android/gms/internal/ads/zzcxv;Lcom/google/android/gms/internal/ads/zzcvo;)Lcom/google/android/gms/internal/ads/zzcvi;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcvi;->zzj()Lcom/google/android/gms/internal/ads/zzdij;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/ads/zzdij;->zza(Landroid/view/View;)V

    .line 20
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcxh;->zza()Lcom/google/android/gms/internal/ads/zzdcb;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcsw;

    iget-object v1, p3, Lcom/google/android/gms/internal/ads/zzeef;->zzb:Ljava/lang/Object;

    .line 21
    check-cast v1, Lcom/google/android/gms/internal/ads/zzfbi;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzcsw;-><init>(Lcom/google/android/gms/internal/ads/zzfbi;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzefh;->zzc:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzdgm;->zzi(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    iget-object p2, p3, Lcom/google/android/gms/internal/ads/zzeef;->zzc:Lcom/google/android/gms/internal/ads/zzdcm;

    .line 22
    check-cast p2, Lcom/google/android/gms/internal/ads/zzefy;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcxh;->zzf()Lcom/google/android/gms/internal/ads/zzeje;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzefy;->zzc(Lcom/google/android/gms/internal/ads/zzbvm;)V

    .line 23
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcvi;->zzh()Lcom/google/android/gms/internal/ads/zzcvh;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzc(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzezz;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzefh;->zza:Landroid/content/Context;

    invoke-static {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzcwv;->zza(Landroid/content/Context;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzezz;)Lcom/google/android/gms/internal/ads/zzcwv;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfsd;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    return-object p1
.end method
