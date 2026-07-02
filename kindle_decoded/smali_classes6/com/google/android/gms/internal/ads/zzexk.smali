.class final Lcom/google/android/gms/internal/ads/zzexk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/internal/ads/zzdal<",
        "+",
        "Lcom/google/android/gms/internal/ads/zzcxg;",
        ">;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfcc;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private final zzc:Ljava/util/concurrent/Executor;

.field private zzd:Lcom/google/android/gms/internal/ads/zzexj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfcc;Lcom/google/android/gms/internal/ads/zzdal;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzfcc;",
            "TR;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzexk;->zza:Lcom/google/android/gms/internal/ads/zzfcc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzexk;->zzb:Lcom/google/android/gms/internal/ads/zzdal;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzexk;->zzc:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzexk;Lcom/google/android/gms/internal/ads/zzexj;)Lcom/google/android/gms/internal/ads/zzexj;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzexk;->zzd:Lcom/google/android/gms/internal/ads/zzexj;

    return-object p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzexk;)Lcom/google/android/gms/internal/ads/zzexj;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzexk;->zzd:Lcom/google/android/gms/internal/ads/zzexj;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzexk;)Lcom/google/android/gms/internal/ads/zzfcm;
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzexk;->zze()Lcom/google/android/gms/internal/ads/zzfcm;

    move-result-object p0

    return-object p0
.end method

.method private final zze()Lcom/google/android/gms/internal/ads/zzfcm;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzexk;->zzb:Lcom/google/android/gms/internal/ads/zzdal;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdal;->zzN()Lcom/google/android/gms/internal/ads/zzfar;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfar;->zzd:Lcom/google/android/gms/internal/ads/zzbdg;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzfar;->zzf:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfar;->zzj:Lcom/google/android/gms/internal/ads/zzbdr;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzexk;->zza:Lcom/google/android/gms/internal/ads/zzfcc;

    .line 2
    invoke-interface {v3, v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzfcc;->zzd(Lcom/google/android/gms/internal/ads/zzbdg;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbdr;)Lcom/google/android/gms/internal/ads/zzfcm;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final zzc()Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "Lcom/google/android/gms/internal/ads/zzexj;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzexk;->zzd:Lcom/google/android/gms/internal/ads/zzexj;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbld;->zza:Lcom/google/android/gms/internal/ads/zzbkn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbkn;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzexj;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzexk;->zze()Lcom/google/android/gms/internal/ads/zzfcm;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lcom/google/android/gms/internal/ads/zzexj;-><init>(Lcom/google/android/gms/internal/ads/zzcbj;Lcom/google/android/gms/internal/ads/zzfcm;Lcom/google/android/gms/internal/ads/zzexi;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzexk;->zzd:Lcom/google/android/gms/internal/ads/zzexj;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfsd;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v0

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzexk;->zzb:Lcom/google/android/gms/internal/ads/zzdal;

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdal;->zzP()Lcom/google/android/gms/internal/ads/zzcyj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzexk;->zza:Lcom/google/android/gms/internal/ads/zzfcc;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzfcc;->zze()Lcom/google/android/gms/internal/ads/zzfcj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcyj;->zzf(Lcom/google/android/gms/internal/ads/zzfcj;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfru;->zzw(Lcom/google/android/gms/internal/ads/zzfsm;)Lcom/google/android/gms/internal/ads/zzfru;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzexh;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzexh;-><init>(Lcom/google/android/gms/internal/ads/zzexk;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzexk;->zzc:Ljava/util/concurrent/Executor;

    .line 6
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfsd;->zzj(Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzfln;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzexg;

    .line 7
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzexg;-><init>(Lcom/google/android/gms/internal/ads/zzexk;)V

    const-class v2, Lcom/google/android/gms/internal/ads/zzeap;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzexk;->zzc:Ljava/util/concurrent/Executor;

    .line 8
    invoke-static {v0, v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzfsd;->zzf(Lcom/google/android/gms/internal/ads/zzfsm;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzfln;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v0

    .line 3
    :goto_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzexf;->zza:Lcom/google/android/gms/internal/ads/zzfln;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzexk;->zzc:Ljava/util/concurrent/Executor;

    .line 9
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfsd;->zzj(Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzfln;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v0

    return-object v0

    .line 10
    :cond_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfsd;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v0

    return-object v0
.end method
