.class public final Lcom/google/android/gms/internal/ads/zzeqy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzery;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzery<",
        "Lcom/google/android/gms/internal/ads/zzeqz;",
        ">;"
    }
.end annotation


# instance fields
.field final zza:Ljava/lang/String;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfsn;

.field private final zzc:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzeke;

.field private final zze:Landroid/content/Context;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzfar;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzejz;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzdtf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfsn;Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzeke;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfar;Lcom/google/android/gms/internal/ads/zzejz;Lcom/google/android/gms/internal/ads/zzdtf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeqy;->zzb:Lcom/google/android/gms/internal/ads/zzfsn;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeqy;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeqy;->zza:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeqy;->zzd:Lcom/google/android/gms/internal/ads/zzeke;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzeqy;->zze:Landroid/content/Context;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzeqy;->zzf:Lcom/google/android/gms/internal/ads/zzfar;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzeqy;->zzg:Lcom/google/android/gms/internal/ads/zzejz;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzeqy;->zzh:Lcom/google/android/gms/internal/ads/zzdtf;

    return-void
.end method

.method private final zze(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;ZZ)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Bundle;",
            "ZZ)",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzchl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzchl;-><init>()V

    const/4 v1, 0x0

    if-eqz p5, :cond_0

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzeqy;->zzg:Lcom/google/android/gms/internal/ads/zzejz;

    .line 2
    invoke-virtual {p5, p1}, Lcom/google/android/gms/internal/ads/zzejz;->zza(Ljava/lang/String;)V

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzeqy;->zzg:Lcom/google/android/gms/internal/ads/zzejz;

    .line 3
    invoke-virtual {p5, p1}, Lcom/google/android/gms/internal/ads/zzejz;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbxn;

    move-result-object p5

    :goto_0
    move-object v3, p5

    goto :goto_1

    .line 11
    :cond_0
    :try_start_0
    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzeqy;->zzh:Lcom/google/android/gms/internal/ads/zzdtf;

    .line 4
    invoke-virtual {p5, p1}, Lcom/google/android/gms/internal/ads/zzdtf;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbxn;

    move-result-object p5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p5

    const-string v2, "Couldn\'t create RTB adapter : "

    .line 5
    invoke-static {v2, p5}, Lcom/google/android/gms/internal/ads/zzcgt;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v3, v1

    :goto_1
    if-eqz v3, :cond_2

    .line 6
    new-instance v9, Lcom/google/android/gms/internal/ads/zzekh;

    .line 7
    invoke-direct {v9, p1, v3, v0}, Lcom/google/android/gms/internal/ads/zzekh;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbxn;Lcom/google/android/gms/internal/ads/zzchl;)V

    if-eqz p4, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeqy;->zze:Landroid/content/Context;

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzeqy;->zza:Ljava/lang/String;

    const/4 p1, 0x0

    .line 9
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Landroid/os/Bundle;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeqy;->zzf:Lcom/google/android/gms/internal/ads/zzfar;

    iget-object v8, p1, Lcom/google/android/gms/internal/ads/zzfar;->zze:Lcom/google/android/gms/internal/ads/zzbdl;

    move-object v6, p3

    .line 10
    invoke-interface/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzbxn;->zze(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzbdl;Lcom/google/android/gms/internal/ads/zzbxq;)V

    goto :goto_2

    .line 11
    :cond_1
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzekh;->zzb()V

    :goto_2
    return-object v0

    .line 6
    :cond_2
    throw v1
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "Lcom/google/android/gms/internal/ads/zzeqz;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeqs;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzeqs;-><init>(Lcom/google/android/gms/internal/ads/zzeqy;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeqy;->zzb:Lcom/google/android/gms/internal/ads/zzfsn;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfsd;->zze(Lcom/google/android/gms/internal/ads/zzfrj;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzeki;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzeki;->zzd:Landroid/os/Bundle;

    .line 2
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iget-boolean v5, p2, Lcom/google/android/gms/internal/ads/zzeki;->zzb:Z

    iget-boolean v6, p2, Lcom/google/android/gms/internal/ads/zzeki;->zzc:Z

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    .line 1
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzeqy;->zze(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;ZZ)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzc(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzeqy;->zze(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;ZZ)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    return-object p1
.end method

.method final bridge synthetic zzd()Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeqy;->zzd:Lcom/google/android/gms/internal/ads/zzeke;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeqy;->zza:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeqy;->zzf:Lcom/google/android/gms/internal/ads/zzfar;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfar;->zzf:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzeke;->zzc(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1
    check-cast v0, Lcom/google/android/gms/internal/ads/zzfon;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfon;->zzc()Lcom/google/android/gms/internal/ads/zzfot;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 6
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzeqy;->zzf:Lcom/google/android/gms/internal/ads/zzfar;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzfar;->zzd:Lcom/google/android/gms/internal/ads/zzbdg;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzbdg;->zzm:Landroid/os/Bundle;

    if-eqz v5, :cond_0

    .line 7
    invoke-virtual {v5, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    :cond_0
    new-instance v5, Lcom/google/android/gms/internal/ads/zzeqt;

    .line 8
    invoke-direct {v5, p0, v4, v2, v3}, Lcom/google/android/gms/internal/ads/zzeqt;-><init>(Lcom/google/android/gms/internal/ads/zzeqy;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeqy;->zzb:Lcom/google/android/gms/internal/ads/zzfsn;

    .line 9
    invoke-static {v5, v2}, Lcom/google/android/gms/internal/ads/zzfsd;->zze(Lcom/google/android/gms/internal/ads/zzfrj;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v2

    .line 10
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfru;->zzw(Lcom/google/android/gms/internal/ads/zzfsm;)Lcom/google/android/gms/internal/ads/zzfru;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbjl;->zzaX:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v3

    .line 12
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzeqy;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    .line 13
    invoke-static {v2, v5, v6, v3, v7}, Lcom/google/android/gms/internal/ads/zzfsd;->zzh(Lcom/google/android/gms/internal/ads/zzfsm;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzfru;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzequ;

    .line 14
    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/ads/zzequ;-><init>(Ljava/lang/String;)V

    const-class v4, Ljava/lang/Throwable;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzeqy;->zzb:Lcom/google/android/gms/internal/ads/zzfsn;

    .line 15
    invoke-static {v2, v4, v3, v5}, Lcom/google/android/gms/internal/ads/zzfsd;->zzf(Lcom/google/android/gms/internal/ads/zzfsm;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzfln;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v2

    .line 16
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeqy;->zzd:Lcom/google/android/gms/internal/ads/zzeke;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeke;->zzb()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfon;

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfon;->zzc()Lcom/google/android/gms/internal/ads/zzfot;

    move-result-object v0

    .line 19
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 20
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzeki;

    .line 21
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzeki;->zza:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzeqy;->zzf:Lcom/google/android/gms/internal/ads/zzfar;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzfar;->zzd:Lcom/google/android/gms/internal/ads/zzbdg;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzbdg;->zzm:Landroid/os/Bundle;

    if-eqz v5, :cond_2

    .line 22
    invoke-virtual {v5, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    goto :goto_2

    :cond_2
    move-object v5, v3

    :goto_2
    new-instance v6, Lcom/google/android/gms/internal/ads/zzeqv;

    .line 23
    invoke-direct {v6, p0, v4, v2, v5}, Lcom/google/android/gms/internal/ads/zzeqv;-><init>(Lcom/google/android/gms/internal/ads/zzeqy;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzeki;Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeqy;->zzb:Lcom/google/android/gms/internal/ads/zzfsn;

    .line 24
    invoke-static {v6, v2}, Lcom/google/android/gms/internal/ads/zzfsd;->zze(Lcom/google/android/gms/internal/ads/zzfrj;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v2

    .line 25
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfru;->zzw(Lcom/google/android/gms/internal/ads/zzfsm;)Lcom/google/android/gms/internal/ads/zzfru;

    move-result-object v2

    sget-object v5, Lcom/google/android/gms/internal/ads/zzbjl;->zzaX:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 26
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v5

    .line 27
    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzeqy;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    .line 28
    invoke-static {v2, v5, v6, v7, v8}, Lcom/google/android/gms/internal/ads/zzfsd;->zzh(Lcom/google/android/gms/internal/ads/zzfsm;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzfru;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzeqw;

    .line 29
    invoke-direct {v5, v4}, Lcom/google/android/gms/internal/ads/zzeqw;-><init>(Ljava/lang/String;)V

    const-class v4, Ljava/lang/Throwable;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzeqy;->zzb:Lcom/google/android/gms/internal/ads/zzfsn;

    .line 30
    invoke-static {v2, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzfsd;->zzf(Lcom/google/android/gms/internal/ads/zzfsm;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzfln;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v2

    .line 31
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 32
    :cond_3
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfsd;->zzo(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfsb;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/ads/zzeqx;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzeqx;-><init>(Ljava/util/List;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeqy;->zzb:Lcom/google/android/gms/internal/ads/zzfsn;

    .line 33
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzfsb;->zza(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v0

    return-object v0
.end method
