.class public final Lcom/google/android/gms/internal/ads/zzerf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzery;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzery<",
        "Lcom/google/android/gms/internal/ads/zzerg;",
        ">;"
    }
.end annotation


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfsn;

.field private final zzc:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzd:Landroid/content/Context;

.field private final zze:Lcom/google/android/gms/internal/ads/zzfar;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzcoj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfsn;Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/String;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfar;Lcom/google/android/gms/internal/ads/zzcoj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzerf;->zzb:Lcom/google/android/gms/internal/ads/zzfsn;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzerf;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzerf;->zza:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzerf;->zzd:Landroid/content/Context;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzerf;->zze:Lcom/google/android/gms/internal/ads/zzfar;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzerf;->zzf:Lcom/google/android/gms/internal/ads/zzcoj;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "Lcom/google/android/gms/internal/ads/zzerg;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbjl;->zzfm:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzerf;->zze:Lcom/google/android/gms/internal/ads/zzfar;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfar;->zzf:Ljava/lang/String;

    const-string v1, "adUnitId"

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzerc;

    .line 5
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzerc;-><init>(Lcom/google/android/gms/internal/ads/zzerf;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzerf;->zzb:Lcom/google/android/gms/internal/ads/zzfsn;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfsd;->zze(Lcom/google/android/gms/internal/ads/zzfrj;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v0

    return-object v0

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzerf;->zzb:Lcom/google/android/gms/internal/ads/zzfsn;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzerb;->zza:Ljava/util/concurrent/Callable;

    .line 4
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzfsn;->zzb(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v0

    return-object v0
.end method

.method final bridge synthetic zzb()Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzerf;->zza:Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbjl;->zzfn:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v1

    .line 1
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget-object v0, Lcom/google/android/gms/ads/AdFormat;->UNKNOWN:Lcom/google/android/gms/ads/AdFormat;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzerf;->zzf:Lcom/google/android/gms/internal/ads/zzcoj;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcoj;->zzu()Lcom/google/android/gms/ads/nonagon/signalgeneration/zzf;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdam;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzdam;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzerf;->zzd:Landroid/content/Context;

    .line 5
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzdam;->zze(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzdam;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzfap;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzfap;-><init>()V

    const-string v4, "adUnitId"

    .line 6
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzfap;->zzw(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfap;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzerf;->zze:Lcom/google/android/gms/internal/ads/zzfar;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzfar;->zzd:Lcom/google/android/gms/internal/ads/zzbdg;

    .line 7
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzfap;->zzr(Lcom/google/android/gms/internal/ads/zzbdg;)Lcom/google/android/gms/internal/ads/zzfap;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzbdl;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzbdl;-><init>()V

    .line 8
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzfap;->zzt(Lcom/google/android/gms/internal/ads/zzbdl;)Lcom/google/android/gms/internal/ads/zzfap;

    .line 9
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfap;->zzL()Lcom/google/android/gms/internal/ads/zzfar;

    move-result-object v3

    .line 10
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzdam;->zzf(Lcom/google/android/gms/internal/ads/zzfar;)Lcom/google/android/gms/internal/ads/zzdam;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdam;->zzh()Lcom/google/android/gms/internal/ads/zzdao;

    move-result-object v2

    .line 11
    invoke-interface {v1, v2}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzf;->zzc(Lcom/google/android/gms/internal/ads/zzdao;)Lcom/google/android/gms/ads/nonagon/signalgeneration/zzf;

    new-instance v2, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzx;

    invoke-direct {v2}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzx;-><init>()V

    .line 12
    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzx;->zzb(Ljava/lang/String;)Lcom/google/android/gms/ads/nonagon/signalgeneration/zzx;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzx;->zzc()Lcom/google/android/gms/ads/nonagon/signalgeneration/zzz;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzf;->zzb(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzz;)Lcom/google/android/gms/ads/nonagon/signalgeneration/zzf;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdgn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdgn;-><init>()V

    .line 13
    invoke-interface {v1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzf;->zza()Lcom/google/android/gms/ads/nonagon/signalgeneration/zzg;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzg;->zza()Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfru;->zzw(Lcom/google/android/gms/internal/ads/zzfsm;)Lcom/google/android/gms/internal/ads/zzfru;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbjl;->zzfo:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v1

    .line 17
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzerf;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    .line 18
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzfsd;->zzh(Lcom/google/android/gms/internal/ads/zzfsm;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfru;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzerd;->zza:Lcom/google/android/gms/internal/ads/zzfln;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzerf;->zzb:Lcom/google/android/gms/internal/ads/zzfsn;

    .line 19
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfsd;->zzj(Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzfln;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v0

    const-class v1, Ljava/lang/Exception;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzere;->zza:Lcom/google/android/gms/internal/ads/zzfln;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzerf;->zzb:Lcom/google/android/gms/internal/ads/zzfsn;

    .line 20
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfsd;->zzf(Lcom/google/android/gms/internal/ads/zzfsm;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzfln;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v0

    return-object v0
.end method
