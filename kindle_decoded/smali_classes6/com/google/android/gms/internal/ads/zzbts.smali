.class public final Lcom/google/android/gms/internal/ads/zzbts;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zza:Ljava/lang/Object;

.field private final zzb:Landroid/content/Context;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzcgz;

.field private final zze:Lcom/google/android/gms/ads/internal/util/zzbe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/ads/internal/util/zzbe<",
            "Lcom/google/android/gms/internal/ads/zzbsn;",
            ">;"
        }
    .end annotation
.end field

.field private final zzf:Lcom/google/android/gms/ads/internal/util/zzbe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/ads/internal/util/zzbe<",
            "Lcom/google/android/gms/internal/ads/zzbsn;",
            ">;"
        }
    .end annotation
.end field

.field private zzg:Lcom/google/android/gms/internal/ads/zzbtr;

.field private zzh:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcgz;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/zzbe;Lcom/google/android/gms/ads/internal/util/zzbe;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/zzcgz;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/ads/internal/util/zzbe<",
            "Lcom/google/android/gms/internal/ads/zzbsn;",
            ">;",
            "Lcom/google/android/gms/ads/internal/util/zzbe<",
            "Lcom/google/android/gms/internal/ads/zzbsn;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbts;->zza:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbts;->zzh:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbts;->zzc:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbts;->zzb:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbts;->zzd:Lcom/google/android/gms/internal/ads/zzcgz;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbts;->zze:Lcom/google/android/gms/ads/internal/util/zzbe;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzbts;->zzf:Lcom/google/android/gms/ads/internal/util/zzbe;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzbts;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbts;->zza:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzbts;Lcom/google/android/gms/internal/ads/zzbtr;)Lcom/google/android/gms/internal/ads/zzbtr;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbts;->zzg:Lcom/google/android/gms/internal/ads/zzbtr;

    return-object p1
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzbts;)Lcom/google/android/gms/internal/ads/zzbtr;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbts;->zzg:Lcom/google/android/gms/internal/ads/zzbtr;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzbts;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbts;->zzh:I

    return p1
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/ads/zzbts;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzbts;->zzh:I

    return p0
.end method


# virtual methods
.method protected final zzf(Lcom/google/android/gms/internal/ads/zzaas;)Lcom/google/android/gms/internal/ads/zzbtr;
    .locals 3

    .line 1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbtr;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbts;->zzf:Lcom/google/android/gms/ads/internal/util/zzbe;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzbtr;-><init>(Lcom/google/android/gms/ads/internal/util/zzbe;)V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzchg;->zze:Lcom/google/android/gms/internal/ads/zzfsn;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbsx;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1}, Lcom/google/android/gms/internal/ads/zzbsx;-><init>(Lcom/google/android/gms/internal/ads/zzbts;Lcom/google/android/gms/internal/ads/zzaas;Lcom/google/android/gms/internal/ads/zzbtr;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbth;

    .line 3
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzbth;-><init>(Lcom/google/android/gms/internal/ads/zzbts;Lcom/google/android/gms/internal/ads/zzbtr;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbti;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzbti;-><init>(Lcom/google/android/gms/internal/ads/zzbts;Lcom/google/android/gms/internal/ads/zzbtr;)V

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzchs;->zzf(Lcom/google/android/gms/internal/ads/zzchp;Lcom/google/android/gms/internal/ads/zzchn;)V

    return-object p1
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzaas;)Lcom/google/android/gms/internal/ads/zzbtm;
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbts;->zza:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbts;->zza:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbts;->zzg:Lcom/google/android/gms/internal/ads/zzbtr;

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzbts;->zzh:I

    if-nez v2, :cond_0

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbsy;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzbsy;-><init>(Lcom/google/android/gms/internal/ads/zzbts;)V

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbsz;->zza:Lcom/google/android/gms/internal/ads/zzchn;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzchs;->zzf(Lcom/google/android/gms/internal/ads/zzchp;Lcom/google/android/gms/internal/ads/zzchn;)V

    .line 2
    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbts;->zzg:Lcom/google/android/gms/internal/ads/zzbtr;

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_4

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzchs;->zzi()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbts;->zzh:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbts;->zzg:Lcom/google/android/gms/internal/ads/zzbtr;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbtr;->zza()Lcom/google/android/gms/internal/ads/zzbtm;

    move-result-object v0

    monitor-exit p1

    return-object v0

    :cond_2
    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzbts;->zzh:I

    .line 7
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzbts;->zzf(Lcom/google/android/gms/internal/ads/zzaas;)Lcom/google/android/gms/internal/ads/zzbtr;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbts;->zzg:Lcom/google/android/gms/internal/ads/zzbtr;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbtr;->zza()Lcom/google/android/gms/internal/ads/zzbtm;

    move-result-object v0

    monitor-exit p1

    return-object v0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbts;->zzg:Lcom/google/android/gms/internal/ads/zzbtr;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbtr;->zza()Lcom/google/android/gms/internal/ads/zzbtm;

    move-result-object v0

    monitor-exit p1

    return-object v0

    .line 3
    :cond_4
    :goto_0
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzbts;->zzh:I

    .line 4
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzbts;->zzf(Lcom/google/android/gms/internal/ads/zzaas;)Lcom/google/android/gms/internal/ads/zzbtr;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbts;->zzg:Lcom/google/android/gms/internal/ads/zzbtr;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbtr;->zza()Lcom/google/android/gms/internal/ads/zzbtm;

    move-result-object v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v0

    :catchall_0
    move-exception v1

    .line 2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    :catchall_1
    move-exception v0

    .line 10
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method final synthetic zzh(Lcom/google/android/gms/internal/ads/zzbsn;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbsn;->zzj()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbts;->zzh:I

    :cond_0
    return-void
.end method

.method final synthetic zzi(Lcom/google/android/gms/internal/ads/zzaas;Lcom/google/android/gms/internal/ads/zzbtr;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbts;->zzb:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbts;->zzd:Lcom/google/android/gms/internal/ads/zzcgz;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbsv;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2, v2}, Lcom/google/android/gms/internal/ads/zzbsv;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcgz;Lcom/google/android/gms/internal/ads/zzaas;Lcom/google/android/gms/ads/internal/zza;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbta;

    .line 6
    invoke-direct {p1, p0, p2, v1}, Lcom/google/android/gms/internal/ads/zzbta;-><init>(Lcom/google/android/gms/internal/ads/zzbts;Lcom/google/android/gms/internal/ads/zzbtr;Lcom/google/android/gms/internal/ads/zzbsn;)V

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzbsn;->zzh(Lcom/google/android/gms/internal/ads/zzbsm;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbtd;

    .line 7
    invoke-direct {p1, p0, p2, v1}, Lcom/google/android/gms/internal/ads/zzbtd;-><init>(Lcom/google/android/gms/internal/ads/zzbts;Lcom/google/android/gms/internal/ads/zzbtr;Lcom/google/android/gms/internal/ads/zzbsn;)V

    const-string v0, "/jsLoaded"

    invoke-interface {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzbtt;->zzl(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbpr;)V

    new-instance p1, Lcom/google/android/gms/ads/internal/util/zzcd;

    invoke-direct {p1}, Lcom/google/android/gms/ads/internal/util/zzcd;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbte;

    .line 8
    invoke-direct {v0, p0, v2, v1, p1}, Lcom/google/android/gms/internal/ads/zzbte;-><init>(Lcom/google/android/gms/internal/ads/zzbts;Lcom/google/android/gms/internal/ads/zzaas;Lcom/google/android/gms/internal/ads/zzbsn;Lcom/google/android/gms/ads/internal/util/zzcd;)V

    .line 9
    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/util/zzcd;->zzb(Ljava/lang/Object;)V

    const-string p1, "/requestReload"

    .line 10
    invoke-interface {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzbtt;->zzl(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbpr;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbts;->zzc:Ljava/lang/String;

    const-string v0, ".js"

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbts;->zzc:Ljava/lang/String;

    .line 12
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzbsn;->zzc(Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbts;->zzc:Ljava/lang/String;

    const-string v0, "<html>"

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbts;->zzc:Ljava/lang/String;

    .line 14
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzbsn;->zzg(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbts;->zzc:Ljava/lang/String;

    .line 15
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzbsn;->zzf(Ljava/lang/String;)V

    .line 16
    :goto_0
    sget-object p1, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfla;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbtg;

    invoke-direct {v0, p0, p2, v1}, Lcom/google/android/gms/internal/ads/zzbtg;-><init>(Lcom/google/android/gms/internal/ads/zzbts;Lcom/google/android/gms/internal/ads/zzbtr;Lcom/google/android/gms/internal/ads/zzbsn;)V

    const-wide/32 v1, 0xea60

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "Error creating webview."

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzg()Lcom/google/android/gms/internal/ads/zzcge;

    move-result-object v0

    const-string v1, "SdkJavascriptFactory.loadJavascriptEngine"

    .line 4
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzcge;->zzk(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzchs;->zzh()V

    return-void
.end method

.method final synthetic zzj(Lcom/google/android/gms/internal/ads/zzbtr;Lcom/google/android/gms/internal/ads/zzbsn;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbts;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzchs;->zzi()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzchs;->zzi()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzchs;->zzh()V

    .line 5
    sget-object p1, Lcom/google/android/gms/internal/ads/zzchg;->zze:Lcom/google/android/gms/internal/ads/zzfsn;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzbtc;->zza(Lcom/google/android/gms/internal/ads/zzbsn;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const-string p1, "Could not receive loaded message in a timely manner. Rejecting."

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 7
    monitor-exit v0

    return-void

    .line 3
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
