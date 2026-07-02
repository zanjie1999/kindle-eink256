.class public final Lcom/google/android/gms/internal/ads/zzeui;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzery;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzery<",
        "Lcom/google/android/gms/internal/ads/zzeuj;",
        ">;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcge;

.field private final zzb:Z

.field private final zzc:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfsn;

.field private final zze:Ljava/lang/String;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzcfu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcge;ZLcom/google/android/gms/internal/ads/zzcfu;Lcom/google/android/gms/internal/ads/zzfsn;Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeui;->zza:Lcom/google/android/gms/internal/ads/zzcge;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzeui;->zzb:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeui;->zzf:Lcom/google/android/gms/internal/ads/zzcfu;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeui;->zzd:Lcom/google/android/gms/internal/ads/zzfsn;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzeui;->zze:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzeui;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "Lcom/google/android/gms/internal/ads/zzeuj;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzblk;->zza:Lcom/google/android/gms/internal/ads/zzbkn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbkn;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzeui;->zzb:Z

    if-nez v0, :cond_0

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfsd;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v0

    return-object v0

    .line 2
    :cond_0
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfsd;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzeug;->zza:Lcom/google/android/gms/internal/ads/zzfln;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeui;->zzd:Lcom/google/android/gms/internal/ads/zzfsn;

    .line 3
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfsd;->zzj(Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzfln;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzblk;->zzc:Lcom/google/android/gms/internal/ads/zzbkn;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbkn;->zze()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzeui;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    .line 5
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzfsd;->zzh(Lcom/google/android/gms/internal/ads/zzfsm;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzeuh;

    .line 6
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzeuh;-><init>(Lcom/google/android/gms/internal/ads/zzeui;)V

    const-class v2, Ljava/lang/Exception;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzeui;->zzd:Lcom/google/android/gms/internal/ads/zzfsn;

    invoke-static {v0, v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzfsd;->zzf(Lcom/google/android/gms/internal/ads/zzfsm;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzfln;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzb(Ljava/lang/Exception;)Lcom/google/android/gms/internal/ads/zzeuj;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeui;->zza:Lcom/google/android/gms/internal/ads/zzcge;

    const-string v1, "TrustlessTokenSignal"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzcge;->zzk(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
