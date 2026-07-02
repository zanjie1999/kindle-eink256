.class public final Lcom/google/android/gms/internal/ads/zzemf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzely;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzely<",
        "Lcom/google/android/gms/internal/ads/zzcxg;",
        ">;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfap;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcoj;

.field private final zzc:Landroid/content/Context;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzelv;

.field private zze:Lcom/google/android/gms/internal/ads/zzcxu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcoj;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzelv;Lcom/google/android/gms/internal/ads/zzfap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzemf;->zzb:Lcom/google/android/gms/internal/ads/zzcoj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzemf;->zzc:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzemf;->zzd:Lcom/google/android/gms/internal/ads/zzelv;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzemf;->zza:Lcom/google/android/gms/internal/ads/zzfap;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzelv;->zzc()Lcom/google/android/gms/internal/ads/zzeli;

    move-result-object p1

    invoke-virtual {p4, p1}, Lcom/google/android/gms/internal/ads/zzfap;->zzJ(Lcom/google/android/gms/internal/ads/zzeli;)Lcom/google/android/gms/internal/ads/zzfap;

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzemf;)Lcom/google/android/gms/internal/ads/zzcoj;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzemf;->zzb:Lcom/google/android/gms/internal/ads/zzcoj;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzemf;)Lcom/google/android/gms/internal/ads/zzelv;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzemf;->zzd:Lcom/google/android/gms/internal/ads/zzelv;

    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzbdg;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzelw;Lcom/google/android/gms/internal/ads/zzelx;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbdg;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzelw;",
            "Lcom/google/android/gms/internal/ads/zzelx<",
            "-",
            "Lcom/google/android/gms/internal/ads/zzcxg;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemf;->zzc:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzs;->zzK(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzbdg;->zzs:Lcom/google/android/gms/internal/ads/zzbcx;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Failed to load the ad because app ID is missing."

    .line 25
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzf(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzemf;->zzb:Lcom/google/android/gms/internal/ads/zzcoj;

    .line 26
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcoj;->zze()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzema;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzema;-><init>(Lcom/google/android/gms/internal/ads/zzemf;)V

    .line 27
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return v1

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    const-string p1, "Ad unit ID should not be null for NativeAdLoader."

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzf(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzemf;->zzb:Lcom/google/android/gms/internal/ads/zzcoj;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcoj;->zze()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzemb;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzemb;-><init>(Lcom/google/android/gms/internal/ads/zzemf;)V

    .line 4
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return v1

    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzemf;->zzc:Landroid/content/Context;

    .line 5
    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzbdg;->zzf:Z

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzfbh;->zzb(Landroid/content/Context;Z)V

    .line 6
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbjl;->zzgp:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object p2

    .line 6
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_3

    iget-boolean p2, p1, Lcom/google/android/gms/internal/ads/zzbdg;->zzf:Z

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzemf;->zzb:Lcom/google/android/gms/internal/ads/zzcoj;

    .line 8
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzcoj;->zzz()Lcom/google/android/gms/internal/ads/zzdyc;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzdyc;->zzc(Z)V

    :cond_3
    check-cast p3, Lcom/google/android/gms/internal/ads/zzelz;

    iget p2, p3, Lcom/google/android/gms/internal/ads/zzelz;->zza:I

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzemf;->zza:Lcom/google/android/gms/internal/ads/zzfap;

    .line 9
    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/zzfap;->zzr(Lcom/google/android/gms/internal/ads/zzbdg;)Lcom/google/android/gms/internal/ads/zzfap;

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzfap;->zzB(I)Lcom/google/android/gms/internal/ads/zzfap;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzfap;->zzL()Lcom/google/android/gms/internal/ads/zzfar;

    move-result-object p1

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzfar;->zzn:Lcom/google/android/gms/internal/ads/zzbfu;

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzemf;->zzd:Lcom/google/android/gms/internal/ads/zzelv;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzelv;->zzc()Lcom/google/android/gms/internal/ads/zzeli;

    move-result-object p2

    iget-object p3, p1, Lcom/google/android/gms/internal/ads/zzfar;->zzn:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 10
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzeli;->zzp(Lcom/google/android/gms/internal/ads/zzbfu;)V

    :cond_4
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzemf;->zzb:Lcom/google/android/gms/internal/ads/zzcoj;

    .line 11
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzcoj;->zzr()Lcom/google/android/gms/internal/ads/zzdla;

    move-result-object p2

    new-instance p3, Lcom/google/android/gms/internal/ads/zzdam;

    invoke-direct {p3}, Lcom/google/android/gms/internal/ads/zzdam;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzemf;->zzc:Landroid/content/Context;

    .line 12
    invoke-virtual {p3, v1}, Lcom/google/android/gms/internal/ads/zzdam;->zze(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzdam;

    .line 13
    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/zzdam;->zzf(Lcom/google/android/gms/internal/ads/zzfar;)Lcom/google/android/gms/internal/ads/zzdam;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzdam;->zzh()Lcom/google/android/gms/internal/ads/zzdao;

    move-result-object p1

    .line 14
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzdla;->zzd(Lcom/google/android/gms/internal/ads/zzdao;)Lcom/google/android/gms/internal/ads/zzdla;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdgn;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzdgn;-><init>()V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzemf;->zzd:Lcom/google/android/gms/internal/ads/zzelv;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzelv;->zzc()Lcom/google/android/gms/internal/ads/zzeli;

    move-result-object p3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzemf;->zzb:Lcom/google/android/gms/internal/ads/zzcoj;

    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcoj;->zze()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {p1, p3, v1}, Lcom/google/android/gms/internal/ads/zzdgn;->zzt(Lcom/google/android/gms/internal/ads/zzamv;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdgn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdgn;->zzC()Lcom/google/android/gms/internal/ads/zzdgp;

    move-result-object p1

    .line 16
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzdla;->zze(Lcom/google/android/gms/internal/ads/zzdgp;)Lcom/google/android/gms/internal/ads/zzdla;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzemf;->zzd:Lcom/google/android/gms/internal/ads/zzelv;

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzelv;->zzb()Lcom/google/android/gms/internal/ads/zzdkw;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzdla;->zzc(Lcom/google/android/gms/internal/ads/zzdkw;)Lcom/google/android/gms/internal/ads/zzdla;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzcve;

    const/4 p3, 0x0

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzcve;-><init>(Landroid/view/ViewGroup;)V

    .line 18
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzdla;->zzb(Lcom/google/android/gms/internal/ads/zzcve;)Lcom/google/android/gms/internal/ads/zzdla;

    .line 19
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzdla;->zza()Lcom/google/android/gms/internal/ads/zzdlb;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzemf;->zzb:Lcom/google/android/gms/internal/ads/zzcoj;

    .line 20
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzcoj;->zzy()Lcom/google/android/gms/internal/ads/zzfbj;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzfbj;->zza(I)V

    new-instance p2, Lcom/google/android/gms/internal/ads/zzcxu;

    .line 21
    sget-object p3, Lcom/google/android/gms/internal/ads/zzchg;->zza:Lcom/google/android/gms/internal/ads/zzfsn;

    .line 22
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzgli;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzemf;->zzb:Lcom/google/android/gms/internal/ads/zzcoj;

    .line 23
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcoj;->zzf()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdlb;->zzR()Lcom/google/android/gms/internal/ads/zzcyj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcyj;->zzc()Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzcyj;->zzd(Lcom/google/android/gms/internal/ads/zzfsm;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v2

    invoke-direct {p2, p3, v1, v2}, Lcom/google/android/gms/internal/ads/zzcxu;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzfsm;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzemf;->zze:Lcom/google/android/gms/internal/ads/zzcxu;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzeme;

    .line 24
    invoke-direct {p3, p0, p4, p1}, Lcom/google/android/gms/internal/ads/zzeme;-><init>(Lcom/google/android/gms/internal/ads/zzemf;Lcom/google/android/gms/internal/ads/zzelx;Lcom/google/android/gms/internal/ads/zzdlb;)V

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzcxu;->zza(Lcom/google/android/gms/internal/ads/zzfrz;)V

    return v0
.end method

.method public final zzb()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemf;->zze:Lcom/google/android/gms/internal/ads/zzcxu;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcxu;->zzc()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final synthetic zze()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemf;->zzd:Lcom/google/android/gms/internal/ads/zzelv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzelv;->zze()Lcom/google/android/gms/internal/ads/zzdbf;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-static {v2, v1, v1}, Lcom/google/android/gms/internal/ads/zzfbm;->zzd(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzbcz;)Lcom/google/android/gms/internal/ads/zzbcz;

    move-result-object v1

    .line 2
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdbf;->zzbD(Lcom/google/android/gms/internal/ads/zzbcz;)V

    return-void
.end method

.method final synthetic zzf()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemf;->zzd:Lcom/google/android/gms/internal/ads/zzelv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzelv;->zze()Lcom/google/android/gms/internal/ads/zzdbf;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v2, v1, v1}, Lcom/google/android/gms/internal/ads/zzfbm;->zzd(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzbcz;)Lcom/google/android/gms/internal/ads/zzbcz;

    move-result-object v1

    .line 2
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdbf;->zzbD(Lcom/google/android/gms/internal/ads/zzbcz;)V

    return-void
.end method
