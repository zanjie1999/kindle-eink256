.class public abstract Lcom/google/android/gms/internal/ads/zzcoj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcrz;


# static fields
.field private static zza:Lcom/google/android/gms/internal/ads/zzcoj;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbvg;I)Lcom/google/android/gms/internal/ads/zzcoj;
    .locals 0

    .line 1
    invoke-static {p0, p2}, Lcom/google/android/gms/internal/ads/zzcoj;->zzb(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzcoj;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcoj;->zzi()Lcom/google/android/gms/internal/ads/zzdtf;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzdtf;->zza(Lcom/google/android/gms/internal/ads/zzbvg;)V

    return-object p0
.end method

.method public static zzb(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzcoj;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzcoj;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzcoj;->zza:Lcom/google/android/gms/internal/ads/zzcoj;

    if-eqz v1, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/ads/zzcoj;->zza:Lcom/google/android/gms/internal/ads/zzcoj;

    monitor-exit v0

    return-object p0

    .line 2
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcgz;

    const v1, 0xcbe6bb0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcgz;-><init>(IIZZ)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzcpi;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzcpi;-><init>()V

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzcoj;->zzc(Lcom/google/android/gms/internal/ads/zzcgz;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcqv;)Lcom/google/android/gms/internal/ads/zzcoj;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized zzc(Lcom/google/android/gms/internal/ads/zzcgz;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcqv;)Lcom/google/android/gms/internal/ads/zzcoj;
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/google/android/gms/internal/ads/zzcoj;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzcoj;->zza:Lcom/google/android/gms/internal/ads/zzcoj;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcpz;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzcpz;-><init>(Lcom/google/android/gms/internal/ads/zzcql;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcok;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzcok;-><init>()V

    invoke-virtual {v3, p0}, Lcom/google/android/gms/internal/ads/zzcok;->zzd(Lcom/google/android/gms/internal/ads/zzcgz;)Lcom/google/android/gms/internal/ads/zzcok;

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/zzcok;->zze(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzcok;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzcom;

    .line 2
    invoke-direct {v4, v3, v2}, Lcom/google/android/gms/internal/ads/zzcom;-><init>(Lcom/google/android/gms/internal/ads/zzcok;Lcom/google/android/gms/internal/ads/zzcol;)V

    .line 3
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzcpz;->zza(Lcom/google/android/gms/internal/ads/zzcom;)Lcom/google/android/gms/internal/ads/zzcpz;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcqw;

    invoke-direct {v2, p2}, Lcom/google/android/gms/internal/ads/zzcqw;-><init>(Lcom/google/android/gms/internal/ads/zzcqv;)V

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzcpz;->zzb(Lcom/google/android/gms/internal/ads/zzcqw;)Lcom/google/android/gms/internal/ads/zzcpz;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcpz;->zzc()Lcom/google/android/gms/internal/ads/zzcoj;

    move-result-object p2

    sput-object p2, Lcom/google/android/gms/internal/ads/zzcoj;->zza:Lcom/google/android/gms/internal/ads/zzcoj;

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbjl;->zza(Landroid/content/Context;)V

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzg()Lcom/google/android/gms/internal/ads/zzcge;

    move-result-object p2

    invoke-virtual {p2, p1, p0}, Lcom/google/android/gms/internal/ads/zzcge;->zzi(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcgz;)V

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzi()Lcom/google/android/gms/internal/ads/zzayj;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzayj;->zzd(Landroid/content/Context;)V

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/internal/util/zzs;->zzg(Landroid/content/Context;)Z

    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/internal/util/zzs;->zzh(Landroid/content/Context;)Z

    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/internal/util/zzs;->zzr(Landroid/content/Context;)V

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zza(Landroid/content/Context;)V

    .line 13
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzf()Lcom/google/android/gms/internal/ads/zzawx;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzawx;->zza(Landroid/content/Context;)V

    .line 14
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzx()Lcom/google/android/gms/ads/internal/util/zzcj;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/internal/util/zzcj;->zza(Landroid/content/Context;)V

    .line 15
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcfb;->zzd(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzcfb;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzbjl;->zzex:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object p2

    .line 17
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lcom/google/android/gms/internal/ads/zzbjl;->zzap:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object p2

    .line 19
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_0

    new-instance p2, Lcom/google/android/gms/internal/ads/zzedi;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzazb;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzazf;

    .line 20
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzazf;-><init>(Landroid/content/Context;)V

    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/zzazb;-><init>(Lcom/google/android/gms/internal/ads/zzazf;)V

    new-instance v5, Lcom/google/android/gms/internal/ads/zzecq;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzecm;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzecm;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/zzcoj;->zza:Lcom/google/android/gms/internal/ads/zzcoj;

    .line 21
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcoj;->zzg()Lcom/google/android/gms/internal/ads/zzfsn;

    move-result-object v2

    invoke-direct {v5, v1, v2}, Lcom/google/android/gms/internal/ads/zzecq;-><init>(Lcom/google/android/gms/internal/ads/zzecm;Lcom/google/android/gms/internal/ads/zzfsn;)V

    .line 22
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    .line 23
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v1, Lcom/google/android/gms/internal/ads/zzcoj;->zza:Lcom/google/android/gms/internal/ads/zzcoj;

    .line 24
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcoj;->zzd()Lcom/google/android/gms/internal/ads/zzffc;

    move-result-object v7

    move-object v1, p2

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzedi;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcgz;Lcom/google/android/gms/internal/ads/zzazb;Lcom/google/android/gms/internal/ads/zzecq;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzffc;)V

    .line 25
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzg()Lcom/google/android/gms/internal/ads/zzcge;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcge;->zzp()Lcom/google/android/gms/ads/internal/util/zzg;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/gms/ads/internal/util/zzg;->zzC()Z

    move-result p0

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/zzedi;->zza(Z)V

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzcoj;->zza:Lcom/google/android/gms/internal/ads/zzcoj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final zzA(Lcom/google/android/gms/internal/ads/zzcbj;I)Lcom/google/android/gms/internal/ads/zzesq;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzetx;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzetx;-><init>(Lcom/google/android/gms/internal/ads/zzcbj;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzcoj;->zzB(Lcom/google/android/gms/internal/ads/zzetx;)Lcom/google/android/gms/internal/ads/zzesq;

    move-result-object p1

    return-object p1
.end method

.method protected abstract zzB(Lcom/google/android/gms/internal/ads/zzetx;)Lcom/google/android/gms/internal/ads/zzesq;
.end method

.method public abstract zzC()Lcom/google/android/gms/internal/ads/zzdwq;
.end method

.method public abstract zzd()Lcom/google/android/gms/internal/ads/zzffc;
.end method

.method public abstract zze()Ljava/util/concurrent/Executor;
.end method

.method public abstract zzf()Ljava/util/concurrent/ScheduledExecutorService;
.end method

.method public abstract zzg()Lcom/google/android/gms/internal/ads/zzfsn;
.end method

.method public abstract zzh()Lcom/google/android/gms/internal/ads/zzddr;
.end method

.method public abstract zzi()Lcom/google/android/gms/internal/ads/zzdtf;
.end method

.method public abstract zzj()Lcom/google/android/gms/internal/ads/zzcrf;
.end method

.method public abstract zzk()Lcom/google/android/gms/internal/ads/zzcwd;
.end method

.method public abstract zzl()Lcom/google/android/gms/internal/ads/zzewl;
.end method

.method public abstract zzm()Lcom/google/android/gms/internal/ads/zzcuj;
.end method

.method public abstract zzn()Lcom/google/android/gms/internal/ads/zzcuu;
.end method

.method public abstract zzo()Lcom/google/android/gms/internal/ads/zzeux;
.end method

.method public abstract zzp()Lcom/google/android/gms/internal/ads/zzdke;
.end method

.method public abstract zzq()Lcom/google/android/gms/internal/ads/zzeye;
.end method

.method public abstract zzr()Lcom/google/android/gms/internal/ads/zzdla;
.end method

.method public abstract zzs()Lcom/google/android/gms/internal/ads/zzdsa;
.end method

.method public abstract zzt()Lcom/google/android/gms/internal/ads/zzezs;
.end method

.method public abstract zzu()Lcom/google/android/gms/ads/nonagon/signalgeneration/zzf;
.end method

.method public abstract zzv()Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;
.end method

.method public abstract zzw()Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;
.end method

.method public abstract zzx()Lcom/google/android/gms/internal/ads/zzedy;
.end method

.method public abstract zzy()Lcom/google/android/gms/internal/ads/zzfbj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzfbj<",
            "Lcom/google/android/gms/internal/ads/zzdrh;",
            ">;"
        }
    .end annotation
.end method

.method public abstract zzz()Lcom/google/android/gms/internal/ads/zzdyc;
.end method
