.class public final Lcom/google/android/gms/internal/ads/zzefw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeec;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeec<",
        "Lcom/google/android/gms/internal/ads/zzcvh;",
        ">;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcwe;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzefd;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfsn;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzdbe;

.field private final zze:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcwe;Lcom/google/android/gms/internal/ads/zzefd;Lcom/google/android/gms/internal/ads/zzdbe;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzfsn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzefw;->zza:Lcom/google/android/gms/internal/ads/zzcwe;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzefw;->zzb:Lcom/google/android/gms/internal/ads/zzefd;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzefw;->zzd:Lcom/google/android/gms/internal/ads/zzdbe;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzefw;->zze:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzefw;->zzc:Lcom/google/android/gms/internal/ads/zzfsn;

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzefw;)Lcom/google/android/gms/internal/ads/zzcwe;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzefw;->zza:Lcom/google/android/gms/internal/ads/zzcwe;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzefw;)Lcom/google/android/gms/internal/ads/zzdbe;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzefw;->zzd:Lcom/google/android/gms/internal/ads/zzdbe;

    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzezz;)Z
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfal;->zza:Lcom/google/android/gms/internal/ads/zzfai;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfai;->zza:Lcom/google/android/gms/internal/ads/zzfar;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfar;->zza()Lcom/google/android/gms/internal/ads/zzbny;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefw;->zzb:Lcom/google/android/gms/internal/ads/zzefd;

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzefd;->zza(Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzezz;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzezz;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzfal;",
            "Lcom/google/android/gms/internal/ads/zzezz;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "Lcom/google/android/gms/internal/ads/zzcvh;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefw;->zzc:Lcom/google/android/gms/internal/ads/zzfsn;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzeft;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzeft;-><init>(Lcom/google/android/gms/internal/ads/zzefw;Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzezz;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzfsn;->zzb(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zze(Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzezz;)Lcom/google/android/gms/internal/ads/zzcvh;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefw;->zza:Lcom/google/android/gms/internal/ads/zzcwe;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcxv;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzcxv;-><init>(Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzezz;Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcwr;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzfal;->zza:Lcom/google/android/gms/internal/ads/zzfai;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzfai;->zza:Lcom/google/android/gms/internal/ads/zzfar;

    .line 2
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfar;->zza()Lcom/google/android/gms/internal/ads/zzbny;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/ads/zzefu;

    invoke-direct {v4, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzefu;-><init>(Lcom/google/android/gms/internal/ads/zzefw;Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzezz;)V

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzcwr;-><init>(Lcom/google/android/gms/internal/ads/zzbny;Ljava/lang/Runnable;)V

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcwe;->zzab(Lcom/google/android/gms/internal/ads/zzcxv;Lcom/google/android/gms/internal/ads/zzcwr;)Lcom/google/android/gms/internal/ads/zzcwq;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcwq;->zza()Lcom/google/android/gms/internal/ads/zzcvh;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzf(Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzezz;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefw;->zzb:Lcom/google/android/gms/internal/ads/zzefd;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzefd;->zzb(Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzezz;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzezz;->zzN:I

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzefw;->zze:Ljava/util/concurrent/ScheduledExecutorService;

    int-to-long v2, p2

    .line 2
    invoke-static {p1, v2, v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzfsd;->zzh(Lcom/google/android/gms/internal/ads/zzfsm;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzefv;

    .line 3
    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzefv;-><init>(Lcom/google/android/gms/internal/ads/zzefw;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefw;->zzc:Lcom/google/android/gms/internal/ads/zzfsn;

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzfsd;->zzp(Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzfrz;Ljava/util/concurrent/Executor;)V

    return-void
.end method
