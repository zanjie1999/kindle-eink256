.class public final Lcom/google/android/gms/internal/ads/zzbhl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# instance fields
.field final zza:Lcom/google/android/gms/internal/ads/zzbes;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzbvd;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzbdk;

.field private final zzd:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final zze:Lcom/google/android/gms/ads/VideoController;

.field private zzf:Lcom/google/android/gms/internal/ads/zzbcv;

.field private zzg:Lcom/google/android/gms/ads/AdListener;

.field private zzh:[Lcom/google/android/gms/ads/AdSize;

.field private zzi:Lcom/google/android/gms/ads/admanager/AppEventListener;

.field private zzj:Lcom/google/android/gms/internal/ads/zzbfn;

.field private zzk:Lcom/google/android/gms/ads/VideoOptions;

.field private zzl:Ljava/lang/String;

.field private final zzm:Landroid/view/ViewGroup;
    .annotation runtime Lorg/checkerframework/checker/initialization/qual/NotOnlyInitialized;
    .end annotation
.end field

.field private zzn:I

.field private zzo:Z

.field private zzp:Lcom/google/android/gms/ads/OnPaidEventListener;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 7

    .line 1
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbdk;->zza:Lcom/google/android/gms/internal/ads/zzbdk;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzbhl;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/ads/zzbdk;Lcom/google/android/gms/internal/ads/zzbfn;I)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;I)V
    .locals 7

    .line 2
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbdk;->zza:Lcom/google/android/gms/internal/ads/zzbdk;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzbhl;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/ads/zzbdk;Lcom/google/android/gms/internal/ads/zzbfn;I)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;Z)V
    .locals 7

    .line 3
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbdk;->zza:Lcom/google/android/gms/internal/ads/zzbdk;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzbhl;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/ads/zzbdk;Lcom/google/android/gms/internal/ads/zzbfn;I)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZI)V
    .locals 7

    .line 4
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbdk;->zza:Lcom/google/android/gms/internal/ads/zzbdk;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzbhl;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/ads/zzbdk;Lcom/google/android/gms/internal/ads/zzbfn;I)V

    return-void
.end method

.method constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/ads/zzbdk;Lcom/google/android/gms/internal/ads/zzbfn;I)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p5, Lcom/google/android/gms/internal/ads/zzbvd;

    invoke-direct {p5}, Lcom/google/android/gms/internal/ads/zzbvd;-><init>()V

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzb:Lcom/google/android/gms/internal/ads/zzbvd;

    new-instance p5, Lcom/google/android/gms/ads/VideoController;

    .line 6
    invoke-direct {p5}, Lcom/google/android/gms/ads/VideoController;-><init>()V

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zze:Lcom/google/android/gms/ads/VideoController;

    new-instance p5, Lcom/google/android/gms/internal/ads/zzbhk;

    .line 7
    invoke-direct {p5, p0}, Lcom/google/android/gms/internal/ads/zzbhk;-><init>(Lcom/google/android/gms/internal/ads/zzbhl;)V

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zza:Lcom/google/android/gms/internal/ads/zzbes;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzm:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzc:Lcom/google/android/gms/internal/ads/zzbdk;

    const/4 p4, 0x0

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzj:Lcom/google/android/gms/internal/ads/zzbfn;

    new-instance p4, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p5, 0x0

    .line 8
    invoke-direct {p4, p5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzd:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput p6, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzn:I

    if-eqz p2, :cond_1

    .line 9
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p4

    :try_start_0
    new-instance p6, Lcom/google/android/gms/internal/ads/zzbdt;

    .line 10
    invoke-direct {p6, p4, p2}, Lcom/google/android/gms/internal/ads/zzbdt;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    invoke-virtual {p6, p3}, Lcom/google/android/gms/internal/ads/zzbdt;->zza(Z)[Lcom/google/android/gms/ads/AdSize;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzh:[Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {p6}, Lcom/google/android/gms/internal/ads/zzbdt;->zzb()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    invoke-virtual {p1}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzber;->zza()Lcom/google/android/gms/internal/ads/zzcgm;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzh:[Lcom/google/android/gms/ads/AdSize;

    aget-object p3, p3, p5

    iget p5, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzn:I

    .line 18
    sget-object p6, Lcom/google/android/gms/ads/AdSize;->INVALID:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {p3, p6}, Lcom/google/android/gms/ads/AdSize;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_0

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbdl;->zze()Lcom/google/android/gms/internal/ads/zzbdl;

    move-result-object p3

    goto :goto_0

    .line 20
    :cond_0
    new-instance p6, Lcom/google/android/gms/internal/ads/zzbdl;

    invoke-direct {p6, p4, p3}, Lcom/google/android/gms/internal/ads/zzbdl;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)V

    invoke-static {p5}, Lcom/google/android/gms/internal/ads/zzbhl;->zzC(I)Z

    move-result p3

    iput-boolean p3, p6, Lcom/google/android/gms/internal/ads/zzbdl;->zzj:Z

    move-object p3, p6

    :goto_0
    const-string p4, "Ads by Google"

    .line 21
    invoke-virtual {p2, p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzcgm;->zzc(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/zzbdl;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p2

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzber;->zza()Lcom/google/android/gms/internal/ads/zzcgm;

    move-result-object p3

    new-instance p5, Lcom/google/android/gms/internal/ads/zzbdl;

    sget-object p6, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-direct {p5, p4, p6}, Lcom/google/android/gms/internal/ads/zzbdl;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)V

    .line 13
    invoke-virtual {p2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p4

    .line 14
    invoke-virtual {p2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p2

    .line 15
    invoke-virtual {p3, p1, p5, p4, p2}, Lcom/google/android/gms/internal/ads/zzcgm;->zzb(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/zzbdl;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private static zzB(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;I)Lcom/google/android/gms/internal/ads/zzbdl;
    .locals 4

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 2
    sget-object v3, Lcom/google/android/gms/ads/AdSize;->INVALID:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/AdSize;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbdl;->zze()Lcom/google/android/gms/internal/ads/zzbdl;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbdl;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzbdl;-><init>(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;)V

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzbhl;->zzC(I)Z

    move-result p0

    iput-boolean p0, v0, Lcom/google/android/gms/internal/ads/zzbdl;->zzj:Z

    return-object v0
.end method

.method private static zzC(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzbhl;)Lcom/google/android/gms/ads/VideoController;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zze:Lcom/google/android/gms/ads/VideoController;

    return-object p0
.end method


# virtual methods
.method public final zzb()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzj:Lcom/google/android/gms/internal/ads/zzbfn;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbfn;->zzj()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzc()Lcom/google/android/gms/ads/AdListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzg:Lcom/google/android/gms/ads/AdListener;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/ads/AdSize;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzj:Lcom/google/android/gms/internal/ads/zzbfn;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbfn;->zzu()Lcom/google/android/gms/internal/ads/zzbdl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzbdl;->zze:I

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzbdl;->zzb:I

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbdl;->zza:Ljava/lang/String;

    .line 2
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/ads/zza;->zza(IILjava/lang/String;)Lcom/google/android/gms/ads/AdSize;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzh:[Lcom/google/android/gms/ads/AdSize;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 4
    aget-object v0, v0, v1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zze()[Lcom/google/android/gms/ads/AdSize;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzh:[Lcom/google/android/gms/ads/AdSize;

    return-object v0
.end method

.method public final zzf()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzl:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzj:Lcom/google/android/gms/internal/ads/zzbfn;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbfn;->zzB()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzl:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzl:Ljava/lang/String;

    return-object v0
.end method

.method public final zzg()Lcom/google/android/gms/ads/admanager/AppEventListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzi:Lcom/google/android/gms/ads/admanager/AppEventListener;

    return-object v0
.end method

.method public final zzh(Lcom/google/android/gms/internal/ads/zzbhj;)V
    .locals 10

    const-string v0, "#007 Could not call remote method."

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzj:Lcom/google/android/gms/internal/ads/zzbfn;

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzh:[Lcom/google/android/gms/ads/AdSize;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzl:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzm:Landroid/view/ViewGroup;

    .line 2
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzh:[Lcom/google/android/gms/ads/AdSize;

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzn:I

    .line 3
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbhl;->zzB(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;I)Lcom/google/android/gms/internal/ads/zzbdl;

    move-result-object v5

    const-string v2, "search_v2"

    iget-object v3, v5, Lcom/google/android/gms/internal/ads/zzbdl;->zza:Ljava/lang/String;

    .line 4
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v8, 0x0

    if-eqz v2, :cond_0

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzber;->zzb()Lcom/google/android/gms/internal/ads/zzbep;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzl:Ljava/lang/String;

    .line 6
    new-instance v4, Lcom/google/android/gms/internal/ads/zzbee;

    invoke-direct {v4, v2, v1, v5, v3}, Lcom/google/android/gms/internal/ads/zzbee;-><init>(Lcom/google/android/gms/internal/ads/zzbep;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbdl;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v4, v1, v8}, Lcom/google/android/gms/internal/ads/zzbeq;->zzd(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object v1

    .line 8
    check-cast v1, Lcom/google/android/gms/internal/ads/zzbfn;

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzber;->zzb()Lcom/google/android/gms/internal/ads/zzbep;

    move-result-object v3

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzl:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzb:Lcom/google/android/gms/internal/ads/zzbvd;

    .line 10
    new-instance v9, Lcom/google/android/gms/internal/ads/zzbec;

    move-object v2, v9

    move-object v4, v1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzbec;-><init>(Lcom/google/android/gms/internal/ads/zzbep;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbdl;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbvg;)V

    .line 11
    invoke-virtual {v9, v1, v8}, Lcom/google/android/gms/internal/ads/zzbeq;->zzd(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object v1

    .line 12
    check-cast v1, Lcom/google/android/gms/internal/ads/zzbfn;

    .line 8
    :goto_0
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzj:Lcom/google/android/gms/internal/ads/zzbfn;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbdb;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zza:Lcom/google/android/gms/internal/ads/zzbes;

    .line 13
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzbdb;-><init>(Lcom/google/android/gms/ads/AdListener;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzbfn;->zzo(Lcom/google/android/gms/internal/ads/zzbfa;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzf:Lcom/google/android/gms/internal/ads/zzbcv;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzj:Lcom/google/android/gms/internal/ads/zzbfn;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzbcw;

    .line 14
    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/zzbcw;-><init>(Lcom/google/android/gms/internal/ads/zzbcv;)V

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzbfn;->zzF(Lcom/google/android/gms/internal/ads/zzbex;)V

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzi:Lcom/google/android/gms/ads/admanager/AppEventListener;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzj:Lcom/google/android/gms/internal/ads/zzbfn;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzawr;

    .line 15
    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/zzawr;-><init>(Lcom/google/android/gms/ads/admanager/AppEventListener;)V

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzbfn;->zzp(Lcom/google/android/gms/internal/ads/zzbfu;)V

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzk:Lcom/google/android/gms/ads/VideoOptions;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzj:Lcom/google/android/gms/internal/ads/zzbfn;

    .line 16
    new-instance v3, Lcom/google/android/gms/internal/ads/zzbis;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/zzbis;-><init>(Lcom/google/android/gms/ads/VideoOptions;)V

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzbfn;->zzM(Lcom/google/android/gms/internal/ads/zzbis;)V

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzj:Lcom/google/android/gms/internal/ads/zzbfn;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbil;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzp:Lcom/google/android/gms/ads/OnPaidEventListener;

    .line 17
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzbil;-><init>(Lcom/google/android/gms/ads/OnPaidEventListener;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzbfn;->zzX(Lcom/google/android/gms/internal/ads/zzbgw;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzj:Lcom/google/android/gms/internal/ads/zzbfn;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzo:Z

    .line 18
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzbfn;->zzG(Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzj:Lcom/google/android/gms/internal/ads/zzbfn;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v1, :cond_4

    goto :goto_1

    .line 19
    :cond_4
    :try_start_1
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbfn;->zzi()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzm:Landroid/view/ViewGroup;

    .line 20
    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 21
    :try_start_2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "The ad size and ad unit ID must be set before loadAd is called."

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzj:Lcom/google/android/gms/internal/ads/zzbfn;

    if-eqz v1, :cond_8

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzc:Lcom/google/android/gms/internal/ads/zzbdk;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzm:Landroid/view/ViewGroup;

    .line 22
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzbdk;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbhj;)Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzbfn;->zzl(Lcom/google/android/gms/internal/ads/zzbdg;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzb:Lcom/google/android/gms/internal/ads/zzbvd;

    .line 23
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbhj;->zzn()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzbvd;->zze(Ljava/util/Map;)V

    :cond_7
    return-void

    :cond_8
    const/4 p1, 0x0

    .line 24
    throw p1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p1

    .line 25
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzi()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzj:Lcom/google/android/gms/internal/ads/zzbfn;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbfn;->zzm()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzk()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzj:Lcom/google/android/gms/internal/ads/zzbfn;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbfn;->zzn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzl(Lcom/google/android/gms/ads/AdListener;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzg:Lcom/google/android/gms/ads/AdListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zza:Lcom/google/android/gms/internal/ads/zzbes;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbes;->zza(Lcom/google/android/gms/ads/AdListener;)V

    return-void
.end method

.method public final zzm(Lcom/google/android/gms/internal/ads/zzbcv;)V
    .locals 2

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzf:Lcom/google/android/gms/internal/ads/zzbcv;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzj:Lcom/google/android/gms/internal/ads/zzbfn;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbcw;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzbcw;-><init>(Lcom/google/android/gms/internal/ads/zzbcv;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbfn;->zzF(Lcom/google/android/gms/internal/ads/zzbex;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final varargs zzn([Lcom/google/android/gms/ads/AdSize;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzh:[Lcom/google/android/gms/ads/AdSize;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbhl;->zzo([Lcom/google/android/gms/ads/AdSize;)V

    return-void

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The ad size can only be set once on AdView."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final varargs zzo([Lcom/google/android/gms/ads/AdSize;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzh:[Lcom/google/android/gms/ads/AdSize;

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzj:Lcom/google/android/gms/internal/ads/zzbfn;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzm:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzh:[Lcom/google/android/gms/ads/AdSize;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzn:I

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbhl;->zzB(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;I)Lcom/google/android/gms/internal/ads/zzbdl;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzbfn;->zzv(Lcom/google/android/gms/internal/ads/zzbdl;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzm:Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public final zzp(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzl:Ljava/lang/String;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzl:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The ad unit ID can only be set once on AdView."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzq(Lcom/google/android/gms/ads/admanager/AppEventListener;)V
    .locals 2

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzi:Lcom/google/android/gms/ads/admanager/AppEventListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzj:Lcom/google/android/gms/internal/ads/zzbfn;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzawr;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzawr;-><init>(Lcom/google/android/gms/ads/admanager/AppEventListener;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbfn;->zzp(Lcom/google/android/gms/internal/ads/zzbfu;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzr(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzo:Z

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzj:Lcom/google/android/gms/internal/ads/zzbfn;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbfn;->zzG(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzt()Lcom/google/android/gms/ads/ResponseInfo;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzj:Lcom/google/android/gms/internal/ads/zzbfn;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbfn;->zzA()Lcom/google/android/gms/internal/ads/zzbgz;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "#007 Could not call remote method."

    .line 2
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/ads/ResponseInfo;->zzb(Lcom/google/android/gms/internal/ads/zzbgz;)Lcom/google/android/gms/ads/ResponseInfo;

    move-result-object v0

    return-object v0
.end method

.method public final zzu(Lcom/google/android/gms/ads/OnPaidEventListener;)V
    .locals 2

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzp:Lcom/google/android/gms/ads/OnPaidEventListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzj:Lcom/google/android/gms/internal/ads/zzbfn;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbil;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzbil;-><init>(Lcom/google/android/gms/ads/OnPaidEventListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbfn;->zzX(Lcom/google/android/gms/internal/ads/zzbgw;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#008 Must be called on the main UI thread."

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzv()Lcom/google/android/gms/ads/OnPaidEventListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzp:Lcom/google/android/gms/ads/OnPaidEventListener;

    return-object v0
.end method

.method public final zzw()Lcom/google/android/gms/ads/VideoController;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zze:Lcom/google/android/gms/ads/VideoController;

    return-object v0
.end method

.method public final zzx()Lcom/google/android/gms/internal/ads/zzbhc;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzj:Lcom/google/android/gms/internal/ads/zzbfn;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbfn;->zzL()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "#007 Could not call remote method."

    .line 2
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-object v1
.end method

.method public final zzy(Lcom/google/android/gms/ads/VideoOptions;)V
    .locals 2

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzk:Lcom/google/android/gms/ads/VideoOptions;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzj:Lcom/google/android/gms/internal/ads/zzbfn;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbis;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzbis;-><init>(Lcom/google/android/gms/ads/VideoOptions;)V

    move-object p1, v1

    .line 2
    :goto_0
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbfn;->zzM(Lcom/google/android/gms/internal/ads/zzbis;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzz()Lcom/google/android/gms/ads/VideoOptions;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzk:Lcom/google/android/gms/ads/VideoOptions;

    return-object v0
.end method
