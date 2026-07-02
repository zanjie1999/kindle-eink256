.class public final Lcom/google/android/gms/ads/internal/util/zzs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzfla;

.field private static zzd:Z


# instance fields
.field private final zzb:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private final zzc:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private zze:Z

.field private final zzf:Ljava/lang/Object;

.field private zzg:Ljava/lang/String;

.field private zzh:Z

.field private zzi:Z

.field private final zzj:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/internal/util/zzf;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/internal/util/zzf;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfla;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/ads/internal/util/zzs;->zzd:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzs;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzs;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/util/zzs;->zze:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzs;->zzf:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/util/zzs;->zzh:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/util/zzs;->zzi:Z

    .line 3
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzs;->zzj:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static final zzA(Landroid/view/View;)J
    .locals 3

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 1
    :cond_0
    instance-of v1, p0, Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2
    check-cast p0, Landroid/view/View;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v1

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    cmpg-float v1, v0, v2

    if-gtz v1, :cond_0

    :cond_1
    cmpg-float p0, v0, v2

    if-gez p0, :cond_2

    goto :goto_0

    :cond_2
    move v2, v0

    :goto_0
    const/high16 p0, 0x42c80000    # 100.0f

    mul-float v2, v2, p0

    .line 6
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public static final zzB(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 5

    const-string v0, "UTF-8"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "User-Agent"

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    move-result-object v4

    invoke-virtual {v4, p0, p1}, Lcom/google/android/gms/ads/internal/util/zzs;->zzi(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Cache-Control"

    const-string v3, "max-stale=3600"

    .line 3
    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/google/android/gms/ads/internal/util/zzbr;

    .line 4
    invoke-direct {p1, p0}, Lcom/google/android/gms/ads/internal/util/zzbr;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    .line 5
    invoke-virtual {p1, p0, p2, v2, v1}, Lcom/google/android/gms/ads/internal/util/zzbr;->zzb(ILjava/lang/String;Ljava/util/Map;[B)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p0

    const-wide/16 p1, 0x3c

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 6
    invoke-interface {p0, p1, p2, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 7
    new-instance p1, Landroid/webkit/WebResourceResponse;

    new-instance p2, Ljava/io/ByteArrayInputStream;

    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string p0, "application/javascript"

    invoke-direct {p1, p0, v0, p2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    goto :goto_0

    :catch_3
    move-exception p0

    :goto_0
    const-string p1, "Could not fetch MRAID JS."

    .line 9
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzj(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-object v1
.end method

.method public static final zzC()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzg()Lcom/google/android/gms/internal/ads/zzcge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcge;->zzj()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    sget v1, Lcom/google/android/gms/ads/impl/R$string;->s7:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "Test Ad"

    :goto_0
    return-object v0
.end method

.method public static final zzD(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/util/zzbu;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-string v1, "com.google.android.gms.ads.internal.util.WorkManagerUtil"

    .line 2
    invoke-virtual {p0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    .line 3
    invoke-virtual {p0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Object;

    .line 4
    invoke-virtual {p0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    instance-of v1, p0, Landroid/os/IBinder;

    if-nez v1, :cond_0

    const-string p0, "Instantiated WorkManagerUtil not instance of IBinder."

    .line 7
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzf(Ljava/lang/String;)V

    return-object v0

    .line 8
    :cond_0
    check-cast p0, Landroid/os/IBinder;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "com.google.android.gms.ads.internal.util.IWorkManagerUtil"

    .line 9
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 10
    instance-of v1, v0, Lcom/google/android/gms/ads/internal/util/zzbu;

    if-eqz v1, :cond_2

    .line 11
    check-cast v0, Lcom/google/android/gms/ads/internal/util/zzbu;

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/google/android/gms/ads/internal/util/zzbs;

    .line 12
    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/util/zzbs;-><init>(Landroid/os/IBinder;)V

    :goto_0
    return-object v0

    :catch_0
    move-exception p0

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzg()Lcom/google/android/gms/internal/ads/zzcge;

    move-result-object v1

    const-string v2, "Failed to instantiate WorkManagerUtil"

    invoke-virtual {v1, p0, v2}, Lcom/google/android/gms/internal/ads/zzcge;->zzk(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final zzE(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzcbx;->zza(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final zzF(Ljava/lang/String;)Z
    .locals 6

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcgs;->zzj()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbjl;->zzdq:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbjl;->zzds:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/String;

    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const-string v3, ";"

    if-nez v2, :cond_3

    .line 7
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v0, v4

    .line 8
    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    return v1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbjl;->zzdr:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v0

    .line 10
    check-cast v0, Ljava/lang/String;

    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    return v4

    .line 12
    :cond_4
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_6

    aget-object v5, v0, v3

    .line 13
    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    return v4

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    return v1
.end method

.method public static final zzG(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastJellyBean()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/zzs;->zzad(Landroid/content/Context;)Landroid/app/KeyguardManager;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public static final zzH(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-string v1, "com.google.android.gms.ads.internal.ClientApi"

    invoke-virtual {p0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception p0

    const-string v1, "Error loading class."

    .line 2
    invoke-static {v1, p0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzg()Lcom/google/android/gms/internal/ads/zzcge;

    move-result-object v1

    const-string v2, "AdUtil.isLiteSdk"

    invoke-virtual {v1, p0, v2}, Lcom/google/android/gms/internal/ads/zzcge;->zzk(Ljava/lang/Throwable;Ljava/lang/String;)V

    return v0

    :catch_0
    const/4 p0, 0x1

    return p0
.end method

.method public static final zzI(Landroid/content/Context;)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastO()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbjl;->zzgb:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/google/android/gms/ads/internal/util/zzs;

    monitor-enter v0

    :try_start_0
    sget-boolean p0, Lcom/google/android/gms/ads/internal/util/zzs;->zzd:Z

    .line 6
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    const-string v0, "connectivity"

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 4
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static final zzJ(Landroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "activity"

    .line 1
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    const-string v2, "keyguard"

    .line 2
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    if-eqz v1, :cond_5

    if-nez v2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 4
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 5
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    iget v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v5, :cond_2

    .line 6
    iget v1, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v3, 0x64

    if-ne v1, v3, :cond_4

    .line 7
    invoke-virtual {v2}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "power"

    .line 8
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    if-nez p0, :cond_3

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {p0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_4

    return v0

    :cond_4
    :goto_0
    const/4 p0, 0x1

    return p0

    :catchall_0
    :cond_5
    :goto_1
    return v0
.end method

.method public static final zzK(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/zzs;->zzag(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "com.google.android.gms.ads.INTEGRATION_MANAGER"

    .line 2
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/zzs;->zzaf(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final zzL(Landroid/content/Context;)Z
    .locals 5

    .line 1
    instance-of v0, p0, Landroid/app/Activity;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 3
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    .line 4
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    new-instance v2, Landroid/graphics/Rect;

    .line 5
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 6
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    .line 7
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 8
    iget p0, v0, Landroid/graphics/Rect;->bottom:I

    if-eqz p0, :cond_2

    iget p0, v2, Landroid/graphics/Rect;->bottom:I

    if-eqz p0, :cond_2

    iget p0, v0, Landroid/graphics/Rect;->top:I

    iget v0, v2, Landroid/graphics/Rect;->top:I

    if-ne p0, v0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public static final zzM(Landroid/view/View;ILandroid/view/MotionEvent;)V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 1
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 2
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 3
    instance-of v5, v0, Lcom/google/android/gms/internal/ads/zzdsv;

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    .line 4
    check-cast v0, Lcom/google/android/gms/internal/ads/zzdsv;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5
    :cond_0
    instance-of v5, v0, Lcom/google/android/gms/ads/formats/zzg;

    const/4 v7, 0x1

    if-nez v5, :cond_2

    instance-of v5, v0, Lcom/google/android/gms/ads/nativead/NativeAdView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    const-string v5, "UNKNOWN"

    const/4 v8, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    :try_start_1
    const-string v5, "NATIVE"

    const/4 v8, 0x1

    .line 6
    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 7
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v9

    .line 8
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    const/4 v9, 0x0

    .line 9
    :goto_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzs;->zzA(Landroid/view/View;)J

    move-result-wide v10

    .line 10
    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v12, v2, v6

    aget v2, v2, v7

    .line 11
    instance-of v13, v0, Lcom/google/android/gms/internal/ads/zzcni;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v14, "none"

    if-eqz v13, :cond_4

    .line 12
    :try_start_2
    move-object v13, v0

    check-cast v13, Lcom/google/android/gms/internal/ads/zzcni;

    .line 13
    invoke-interface {v13}, Lcom/google/android/gms/internal/ads/zzcni;->zzaB()Lcom/google/android/gms/internal/ads/zzfac;

    move-result-object v13

    if-eqz v13, :cond_4

    iget-object v13, v13, Lcom/google/android/gms/internal/ads/zzfac;->zzb:Ljava/lang/String;

    goto :goto_3

    :cond_4
    move-object v13, v14

    .line 14
    :goto_3
    instance-of v15, v0, Lcom/google/android/gms/internal/ads/zzcmc;

    if-eqz v15, :cond_5

    .line 15
    move-object v15, v0

    check-cast v15, Lcom/google/android/gms/internal/ads/zzcmc;

    invoke-interface {v15}, Lcom/google/android/gms/internal/ads/zzcmc;->zzF()Lcom/google/android/gms/internal/ads/zzezz;

    move-result-object v15

    if-eqz v15, :cond_5

    iget v5, v15, Lcom/google/android/gms/internal/ads/zzezz;->zzb:I

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzezz;->zza(I)Ljava/lang/String;

    move-result-object v5

    iget v8, v15, Lcom/google/android/gms/internal/ads/zzezz;->zzf:I

    iget-object v14, v15, Lcom/google/android/gms/internal/ads/zzezz;->zzE:Ljava/lang/String;

    :cond_5
    sget-object v15, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/16 v1, 0xe

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v6

    aput-object v14, v1, v7

    const/4 v4, 0x2

    aput-object v13, v1, v4

    const/4 v4, 0x3

    aput-object v5, v1, v4

    const/4 v4, 0x4

    .line 16
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x5

    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x6

    .line 18
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x7

    .line 19
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/16 v2, 0x8

    .line 20
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const/16 v2, 0x9

    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    const/16 v0, 0xa

    .line 22
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const/16 v0, 0xb

    .line 23
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const/16 v0, 0xc

    .line 24
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v0

    const/16 v0, 0xd

    move/from16 v2, p1

    const/4 v3, 0x2

    .line 25
    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "<Ad package=%s, adNetCls=%s, gwsQueryId=%s, format=%s, impType=%d, class=%s, x=%d, y=%d, width=%d, height=%d, vWidth=%d, vHeight=%d, alpha=%d, state=%s>"

    .line 26
    invoke-static {v15, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzh(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failure getting view location."

    .line 28
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final zzN(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/ads/internal/util/zzcb;

    .line 4
    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/ads/internal/util/zzcb;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/util/zzb;->zzc()Lcom/google/android/gms/internal/ads/zzfsm;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final zzO(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzblf;->zzb:Lcom/google/android/gms/internal/ads/zzbkn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbkn;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0, p1}, Lcom/google/android/gms/common/util/CrashUtils;->addDynamiteErrorToDropBox(Landroid/content/Context;Ljava/lang/Throwable;)Z

    :catch_0
    :cond_0
    return-void
.end method

.method public static final zzP(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    const/high16 v0, 0x10000000

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static final zzQ(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Could not parse value:"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzi(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static final zzR(Landroid/net/Uri;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 5
    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static final zzS(Ljava/net/HttpURLConnection;)Landroid/webkit/WebResourceResponse;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, ";"

    const-string v4, ""

    if-eqz v1, :cond_0

    move-object v6, v4

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4
    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 5
    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_1
    move-object v7, v4

    goto :goto_3

    .line 7
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 8
    array-length v1, v0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    .line 9
    :goto_2
    array-length v5, v0

    if-ge v1, v5, :cond_1

    .line 10
    aget-object v5, v0, v1

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v7, "charset"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 11
    aget-object v5, v0, v1

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v7, "="

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 12
    array-length v7, v5

    if-le v7, v3, :cond_4

    .line 13
    aget-object v0, v5, v3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 14
    :goto_3
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    new-instance v10, Ljava/util/HashMap;

    .line 15
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v10, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 16
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 17
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 18
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v10, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 19
    :cond_6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zze()Lcom/google/android/gms/ads/internal/util/zzad;

    move-result-object v5

    .line 20
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    .line 21
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v9

    .line 22
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    .line 23
    invoke-virtual/range {v5 .. v11}, Lcom/google/android/gms/ads/internal/util/zzad;->zzn(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)Landroid/webkit/WebResourceResponse;

    move-result-object p0

    return-object p0
.end method

.method public static final zzT(Landroid/app/Activity;)[I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    const v0, 0x1020002

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    aput p0, v0, v1

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zzs;->zzz()[I

    move-result-object p0

    return-object p0
.end method

.method protected static final zzU(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p0

    invoke-virtual {p0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 2
    :catchall_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zzs;->zzw()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final zzV(Landroid/app/Activity;)[I
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    const v4, 0x1020002

    .line 2
    invoke-virtual {v0, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    new-array v4, v1, [I

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    aput v5, v4, v3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    aput v0, v4, v2

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zzs;->zzz()[I

    move-result-object v4

    :goto_0
    new-array v0, v1, [I

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzber;->zza()Lcom/google/android/gms/internal/ads/zzcgm;

    move-result-object v1

    aget v5, v4, v3

    invoke-virtual {v1, p0, v5}, Lcom/google/android/gms/internal/ads/zzcgm;->zza(Landroid/content/Context;I)I

    move-result v1

    aput v1, v0, v3

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzber;->zza()Lcom/google/android/gms/internal/ads/zzcgm;

    move-result-object v1

    aget v3, v4, v2

    invoke-virtual {v1, p0, v3}, Lcom/google/android/gms/internal/ads/zzcgm;->zza(Landroid/content/Context;I)I

    move-result p0

    aput p0, v0, v2

    return-object v0
.end method

.method public static final zzW(Landroid/view/View;Landroid/os/PowerManager;Landroid/app/KeyguardManager;)Z
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/util/zzs;->zze:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/zzs;->zzt(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p2, 0x1

    .line 4
    :goto_1
    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/zzs;->zzA(Landroid/view/View;)J

    move-result-wide v3

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p1, :cond_3

    .line 7
    invoke-virtual {p1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_3
    if-eqz p2, :cond_6

    .line 8
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbjl;->zzaQ:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object p1

    .line 10
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 11
    invoke-virtual {p0, p1}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p1

    if-nez p1, :cond_4

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 12
    invoke-virtual {p0, p1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_4
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbjl;->zzgR:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object p0

    .line 14
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_7

    sget-object p0, Lcom/google/android/gms/internal/ads/zzbjl;->zzgT:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object p0

    .line 14
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long p0, p0

    cmp-long p2, v3, p0

    if-gez p2, :cond_5

    goto :goto_2

    :cond_5
    return v1

    :cond_6
    :goto_2
    const/4 v1, 0x0

    :cond_7
    return v1
.end method

.method public static final zzX(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    new-instance v1, Landroid/os/Bundle;

    .line 2
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4
    invoke-static {p0, v0}, Lcom/google/android/gms/ads/internal/util/zzs;->zzu(Landroid/content/Context;Landroid/content/Intent;)V

    const-string v2, "com.android.browser.application_id"

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 7
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Opening "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " in a new browser."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzd(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "No browser is found."

    .line 8
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final zzY(Landroid/app/Activity;)[I
    .locals 5

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/zzs;->zzT(Landroid/app/Activity;)[I

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzber;->zza()Lcom/google/android/gms/internal/ads/zzcgm;

    move-result-object v2

    const/4 v3, 0x0

    aget v4, v0, v3

    invoke-virtual {v2, p0, v4}, Lcom/google/android/gms/internal/ads/zzcgm;->zza(Landroid/content/Context;I)I

    move-result v2

    aput v2, v1, v3

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzber;->zza()Lcom/google/android/gms/internal/ads/zzcgm;

    move-result-object v2

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-virtual {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzcgm;->zza(Landroid/content/Context;I)I

    move-result p0

    aput p0, v1, v3

    return-object v1
.end method

.method public static final zzZ(Landroid/view/View;Landroid/content/Context;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "power"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzs;->zzad(Landroid/content/Context;)Landroid/app/KeyguardManager;

    move-result-object p1

    .line 4
    invoke-static {p0, v0, p1}, Lcom/google/android/gms/ads/internal/util/zzs;->zzW(Landroid/view/View;Landroid/os/PowerManager;Landroid/app/KeyguardManager;)Z

    move-result p0

    return p0
.end method

.method static synthetic zza(Z)Z
    .locals 0

    sput-boolean p0, Lcom/google/android/gms/ads/internal/util/zzs;->zzd:Z

    return p0
.end method

.method private final zzaa(Ljava/util/Collection;)Lorg/json/JSONArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/ads/internal/util/zzs;->zzab(Lorg/json/JSONArray;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private final zzab(Lorg/json/JSONArray;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    instance-of v0, p2, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 2
    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/ads/internal/util/zzs;->zzl(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    return-void

    .line 3
    :cond_0
    instance-of v0, p2, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 4
    check-cast p2, Ljava/util/Map;

    .line 5
    invoke-virtual {p0, p2}, Lcom/google/android/gms/ads/internal/util/zzs;->zzj(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    return-void

    .line 6
    :cond_1
    instance-of v0, p2, Ljava/util/Collection;

    if-eqz v0, :cond_2

    .line 7
    check-cast p2, Ljava/util/Collection;

    invoke-direct {p0, p2}, Lcom/google/android/gms/ads/internal/util/zzs;->zzaa(Ljava/util/Collection;)Lorg/json/JSONArray;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    return-void

    .line 8
    :cond_2
    instance-of v0, p2, [Ljava/lang/Object;

    if-eqz v0, :cond_4

    .line 9
    check-cast p2, [Ljava/lang/Object;

    new-instance v0, Lorg/json/JSONArray;

    .line 10
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 11
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p2, v2

    .line 12
    invoke-direct {p0, v0, v3}, Lcom/google/android/gms/ads/internal/util/zzs;->zzab(Lorg/json/JSONArray;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    return-void

    .line 13
    :cond_4
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    return-void
.end method

.method private final zzac(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    instance-of v0, p3, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 2
    check-cast p3, Landroid/os/Bundle;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/ads/internal/util/zzs;->zzl(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void

    .line 3
    :cond_0
    instance-of v0, p3, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 4
    check-cast p3, Ljava/util/Map;

    .line 5
    invoke-virtual {p0, p3}, Lcom/google/android/gms/ads/internal/util/zzs;->zzj(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void

    .line 6
    :cond_1
    instance-of v0, p3, Ljava/util/Collection;

    if-eqz v0, :cond_3

    if-nez p2, :cond_2

    const-string p2, "null"

    .line 7
    :cond_2
    check-cast p3, Ljava/util/Collection;

    invoke-direct {p0, p3}, Lcom/google/android/gms/ads/internal/util/zzs;->zzaa(Ljava/util/Collection;)Lorg/json/JSONArray;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void

    .line 8
    :cond_3
    instance-of v0, p3, [Ljava/lang/Object;

    if-eqz v0, :cond_4

    .line 9
    check-cast p3, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/google/android/gms/ads/internal/util/zzs;->zzaa(Ljava/util/Collection;)Lorg/json/JSONArray;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void

    .line 10
    :cond_4
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method private static zzad(Landroid/content/Context;)Landroid/app/KeyguardManager;
    .locals 1

    const-string v0, "keyguard"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    instance-of v0, p0, Landroid/app/KeyguardManager;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Landroid/app/KeyguardManager;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static zzae(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/regex/Pattern;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 4
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 5
    :cond_2
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v1
.end method

.method private static zzaf(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "com.google.android.gms.ads.APPLICATION_ID"

    .line 1
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    const-string v1, "^ca-app-pub-[0-9]{16}~[0-9]{10}$"

    .line 3
    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "^/\\d+~.+$"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_0
    return-object p0
.end method

.method private static zzag(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x80

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    const-string v0, "Error getting metadata"

    .line 3
    invoke-static {v0, p0}, Lcom/google/android/gms/ads/internal/util/zze;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/ads/internal/util/zzs;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/util/zzs;->zze:Z

    return p1
.end method

.method static synthetic zzc(Lcom/google/android/gms/ads/internal/util/zzs;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/util/zzs;->zzf:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/ads/internal/util/zzs;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzs;->zzg:Ljava/lang/String;

    return-object p1
.end method

.method public static zze(I)I
    .locals 2

    const/16 v0, 0x1388

    if-lt p0, v0, :cond_0

    return p0

    :cond_0
    if-lez p0, :cond_1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x61

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "HTTP timeout too low: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " milliseconds. Reverting to default timeout: 60000 milliseconds."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzi(Ljava/lang/String;)V

    :cond_1
    const p0, 0xea60

    return p0
.end method

.method public static zzo(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 3
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzchg;->zza:Lcom/google/android/gms/internal/ads/zzfsn;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final zzt(Landroid/view/View;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    move-object p0, v0

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 3
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 4
    check-cast p0, Landroid/app/Activity;

    :goto_0
    const/4 v1, 0x0

    if-nez p0, :cond_2

    return v1

    .line 5
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_1

    .line 6
    :cond_3
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_4

    .line 7
    iget p0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v0, 0x80000

    and-int/2addr p0, v0

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    return v1
.end method

.method public static final zzu(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastJellyBeanMR2()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_0
    const/4 v1, 0x0

    const-string v2, "android.support.customtabs.extra.SESSION"

    .line 3
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "com.android.browser.application_id"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_2
    return-void
.end method

.method public static final zzv(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/zzs;->zzag(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/zzs;->zzaf(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static final zzw()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Mozilla/5.0 (Linux; U; Android"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, " "

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "; "

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, " Build/"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, ") AppleWebKit/533 Version/4.0 Safari/533"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final zzx()Ljava/lang/String;
    .locals 5

    .line 1
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final zzy(Landroid/view/WindowManager;)Landroid/util/DisplayMetrics;
    .locals 1

    .line 1
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    return-object v0
.end method

.method protected static final zzz()[I
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public final zzf(Landroid/content/Context;Ljava/lang/String;ZLjava/net/HttpURLConnection;ZI)V
    .locals 0

    .line 1
    invoke-static {p6}, Lcom/google/android/gms/ads/internal/util/zzs;->zze(I)I

    move-result p3

    new-instance p5, Ljava/lang/StringBuilder;

    const/16 p6, 0x27

    .line 2
    invoke-direct {p5, p6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p6, "HTTP timeout: "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p6, " milliseconds."

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Lcom/google/android/gms/internal/ads/zzcgt;->zzh(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p4, p3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/4 p5, 0x0

    .line 4
    invoke-virtual {p4, p5}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 5
    invoke-virtual {p4, p3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/ads/internal/util/zzs;->zzi(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "User-Agent"

    invoke-virtual {p4, p2, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p4, p5}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    return-void
.end method

.method public final zzg(Landroid/content/Context;)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/util/zzs;->zzh:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_PRESENT"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/ads/internal/util/zzr;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/ads/internal/util/zzr;-><init>(Lcom/google/android/gms/ads/internal/util/zzs;Lcom/google/android/gms/ads/internal/util/zzq;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/util/zzs;->zzh:Z

    return p1
.end method

.method public final zzh(Landroid/content/Context;)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/util/zzs;->zzi:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.google.android.ads.intent.DEBUG_LOGGING_ENABLEMENT_CHANGED"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/ads/internal/util/zzp;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/ads/internal/util/zzp;-><init>(Lcom/google/android/gms/ads/internal/util/zzs;Lcom/google/android/gms/ads/internal/util/zzq;)V

    .line 4
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/util/zzs;->zzi:Z

    return p1
.end method

.method public final zzi(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzs;->zzf:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzs;->zzg:Ljava/lang/String;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    if-nez p2, :cond_1

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zzs;->zzw()Ljava/lang/String;

    move-result-object p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    .line 3
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zze()Lcom/google/android/gms/ads/internal/util/zzad;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/ads/internal/util/zzad;->zzb(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzs;->zzg:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzs;->zzg:Ljava/lang/String;

    .line 4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzber;->zza()Lcom/google/android/gms/internal/ads/zzcgm;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcgm;->zzp()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzs;->zzg:Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfla;

    new-instance v2, Lcom/google/android/gms/ads/internal/util/zzm;

    .line 6
    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/ads/internal/util/zzm;-><init>(Lcom/google/android/gms/ads/internal/util/zzs;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzs;->zzg:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_4

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzs;->zzf:Ljava/lang/Object;

    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 8
    :catch_1
    :try_start_4
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zzs;->zzw()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzs;->zzg:Ljava/lang/String;

    const-string v2, "Interrupted, use default user agent: "

    .line 9
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 14
    :cond_2
    new-instance v1, Ljava/lang/String;

    .line 9
    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzi(Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_3
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzs;->zzU(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzs;->zzg:Ljava/lang/String;

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzs;->zzg:Ljava/lang/String;

    .line 11
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xa

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (Mobile; "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/util/zzs;->zzg:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 12
    :try_start_5
    invoke-static {p1}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->isCallerInstantApp()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzs;->zzg:Ljava/lang/String;

    .line 13
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, ";aia"

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzs;->zzg:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catch_2
    move-exception p1

    .line 14
    :try_start_6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzg()Lcom/google/android/gms/internal/ads/zzcge;

    move-result-object p2

    const-string v1, "AdUtil.getUserAgent"

    invoke-virtual {p2, p1, v1}, Lcom/google/android/gms/internal/ads/zzcge;->zzk(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 13
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzs;->zzg:Ljava/lang/String;

    .line 15
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzs;->zzg:Ljava/lang/String;

    .line 16
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 17
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p1
.end method

.method public final zzj(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/google/android/gms/ads/internal/util/zzs;->zzac(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-object v0

    :catch_0
    move-exception p1

    .line 4
    new-instance v0, Lorg/json/JSONException;

    invoke-virtual {p1}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Could not convert map to JSON: "

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {v0, p1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzk(Landroid/os/Bundle;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/util/zzs;->zzl(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Error converting Bundle to JSON"

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-object p2
.end method

.method public final zzl(Landroid/os/Bundle;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/google/android/gms/ads/internal/util/zzs;->zzac(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final zzm(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/internal/util/zzk;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/util/zzk;-><init>(Landroid/net/Uri;)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzs;->zzj:Ljava/util/concurrent/Executor;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzfsd;->zzd(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    return-object p1
.end method

.method public final zzn(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zzs;->zzx()Ljava/lang/String;

    move-result-object p3

    const-string p5, "device"

    invoke-virtual {p4, p5, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbjl;->zzc()Ljava/util/List;

    move-result-object p3

    const-string p5, ","

    invoke-static {p5, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p3

    const-string p5, "eids"

    .line 3
    invoke-virtual {p4, p5, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzber;->zza()Lcom/google/android/gms/internal/ads/zzcgm;

    new-instance v5, Lcom/google/android/gms/ads/internal/util/zzn;

    invoke-direct {v5, p0, p1, p2}, Lcom/google/android/gms/ads/internal/util/zzn;-><init>(Lcom/google/android/gms/ads/internal/util/zzs;Landroid/content/Context;Ljava/lang/String;)V

    const-string v2, "gmob-apps"

    const/4 v4, 0x1

    move-object v0, p1

    move-object v1, p2

    move-object v3, p4

    .line 5
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzcgm;->zzr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZLcom/google/android/gms/internal/ads/zzcgl;)V

    return-void
.end method

.method public final zzp(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzs;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbjl;->zzW:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v1

    .line 1
    check-cast v1, Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/ads/internal/util/zzs;->zzae(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final zzq(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzs;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbjl;->zzX:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v1

    .line 1
    check-cast v1, Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/ads/internal/util/zzs;->zzae(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final zzr(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastO()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbjl;->zzgb:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v0, "connectivity"

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 5
    new-instance v0, Lcom/google/android/gms/ads/internal/util/zzo;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/util/zzo;-><init>(Lcom/google/android/gms/ads/internal/util/zzs;)V

    invoke-virtual {p1, v0}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method public final zzs(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 5

    if-nez p1, :cond_0

    const-string p1, "Trying to open chrome custom tab on a null context"

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    const/4 p1, 0x3

    return p1

    .line 2
    :cond_0
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastJellyBeanMR2()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const-string v0, "Chrome Custom Tabs can only work with version Jellybean onwards."

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    .line 4
    :cond_1
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_2

    const-string v0, "Chrome Custom Tabs can only work with Activity context."

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 6
    :goto_0
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbjl;->zzcW:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v2

    .line 8
    check-cast v2, Ljava/lang/Boolean;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbjl;->zzcX:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v3

    .line 10
    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v1, v2, :cond_3

    const/16 v0, 0x9

    :cond_3
    if-eqz v0, :cond_4

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    .line 11
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    .line 13
    invoke-virtual {v1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 14
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v0

    :cond_4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbjl;->zzcW:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v0

    .line 16
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbkj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbkj;-><init>()V

    new-instance v1, Lcom/google/android/gms/ads/internal/util/zzl;

    .line 17
    invoke-direct {v1, p0, v0, p1, p2}, Lcom/google/android/gms/ads/internal/util/zzl;-><init>(Lcom/google/android/gms/ads/internal/util/zzs;Lcom/google/android/gms/internal/ads/zzbkj;Landroid/content/Context;Landroid/net/Uri;)V

    .line 18
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbkj;->zzd(Lcom/google/android/gms/internal/ads/zzbkh;)V

    .line 19
    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbkj;->zze(Landroid/app/Activity;)V

    :cond_5
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbjl;->zzcX:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v0

    .line 21
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 22
    new-instance v0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    invoke-direct {v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>()V

    invoke-virtual {v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object v0

    .line 23
    iget-object v1, v0, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzglo;->zza(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    invoke-virtual {v0, p1, p2}, Landroidx/browser/customtabs/CustomTabsIntent;->launchUrl(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_6
    const/4 p1, 0x5

    return p1
.end method
