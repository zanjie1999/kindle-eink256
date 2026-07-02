.class public final Lcom/google/android/gms/internal/ads/zzetc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzery;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzery<",
        "Lcom/google/android/gms/internal/ads/zzetd;",
        ">;"
    }
.end annotation


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcge;

.field private final zzc:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzd:Ljava/util/concurrent/Executor;

.field private final zze:Ljava/lang/String;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzcfw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcfw;ILandroid/content/Context;Lcom/google/android/gms/internal/ads/zzcge;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzetc;->zzf:Lcom/google/android/gms/internal/ads/zzcfw;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzetc;->zza:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzetc;->zzb:Lcom/google/android/gms/internal/ads/zzcge;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzetc;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzetc;->zzd:Ljava/util/concurrent/Executor;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzetc;->zze:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "Lcom/google/android/gms/internal/ads/zzetd;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzesz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzesz;-><init>(Lcom/google/android/gms/internal/ads/zzetc;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzetc;->zzd:Ljava/util/concurrent/Executor;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfsd;->zze(Lcom/google/android/gms/internal/ads/zzfrj;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfru;->zzw(Lcom/google/android/gms/internal/ads/zzfsm;)Lcom/google/android/gms/internal/ads/zzfru;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzeta;->zza:Lcom/google/android/gms/internal/ads/zzfln;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzetc;->zzd:Ljava/util/concurrent/Executor;

    .line 4
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfsd;->zzj(Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzfln;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v0

    .line 5
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbjl;->zzaG:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v1

    .line 7
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzetc;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    .line 8
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzfsd;->zzh(Lcom/google/android/gms/internal/ads/zzfsm;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfru;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzetb;

    .line 9
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzetb;-><init>(Lcom/google/android/gms/internal/ads/zzetc;)V

    const-class v2, Ljava/lang/Exception;

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfst;->zza()Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 11
    invoke-static {v0, v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzfsd;->zzf(Lcom/google/android/gms/internal/ads/zzfsm;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzfln;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzb(Ljava/lang/Exception;)Lcom/google/android/gms/internal/ads/zzetd;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzetc;->zzb:Lcom/google/android/gms/internal/ads/zzcge;

    const-string v1, "AttestationTokenSignal"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzcge;->zzk(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
