.class public final Lcom/google/android/gms/internal/ads/zzbup;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzbts;

.field private zzb:Lcom/google/android/gms/internal/ads/zzfsm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "Lcom/google/android/gms/internal/ads/zzbtt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbts;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbup;->zza:Lcom/google/android/gms/internal/ads/zzbts;

    return-void
.end method

.method private final zzd()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbup;->zzb:Lcom/google/android/gms/internal/ads/zzfsm;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzchl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzchl;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbup;->zzb:Lcom/google/android/gms/internal/ads/zzfsm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbup;->zza:Lcom/google/android/gms/internal/ads/zzbts;

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbts;->zzg(Lcom/google/android/gms/internal/ads/zzaas;)Lcom/google/android/gms/internal/ads/zzbtm;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbul;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzbul;-><init>(Lcom/google/android/gms/internal/ads/zzchl;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzbum;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/ads/zzbum;-><init>(Lcom/google/android/gms/internal/ads/zzchl;)V

    .line 3
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzchs;->zzf(Lcom/google/android/gms/internal/ads/zzchp;Lcom/google/android/gms/internal/ads/zzchn;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbtz;Lcom/google/android/gms/internal/ads/zzbty;)Lcom/google/android/gms/internal/ads/zzbus;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzbtz<",
            "TI;>;",
            "Lcom/google/android/gms/internal/ads/zzbty<",
            "TO;>;)",
            "Lcom/google/android/gms/internal/ads/zzbus<",
            "TI;TO;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbup;->zzd()V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbus;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbup;->zzb:Lcom/google/android/gms/internal/ads/zzfsm;

    const-string v1, "google.afma.activeView.handleUpdate"

    .line 2
    invoke-direct {p1, v0, v1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbus;-><init>(Lcom/google/android/gms/internal/ads/zzfsm;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbtz;Lcom/google/android/gms/internal/ads/zzbty;)V

    return-object p1
.end method

.method public final zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbpr;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzbpr<",
            "-",
            "Lcom/google/android/gms/internal/ads/zzbtt;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbup;->zzd()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbup;->zzb:Lcom/google/android/gms/internal/ads/zzfsm;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbun;

    .line 2
    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzbun;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbpr;)V

    .line 3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzchg;->zzf:Lcom/google/android/gms/internal/ads/zzfsn;

    .line 4
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzfsd;->zzi(Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzfrk;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbup;->zzb:Lcom/google/android/gms/internal/ads/zzfsm;

    return-void
.end method

.method public final zzc(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbpr;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzbpr<",
            "-",
            "Lcom/google/android/gms/internal/ads/zzbtt;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbup;->zzb:Lcom/google/android/gms/internal/ads/zzfsm;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbuo;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzbuo;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbpr;)V

    .line 2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzchg;->zzf:Lcom/google/android/gms/internal/ads/zzfsn;

    .line 3
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzfsd;->zzj(Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzfln;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbup;->zzb:Lcom/google/android/gms/internal/ads/zzfsm;

    return-void
.end method
