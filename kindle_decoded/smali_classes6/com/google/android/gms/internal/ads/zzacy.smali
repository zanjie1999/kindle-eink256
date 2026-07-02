.class public final Lcom/google/android/gms/internal/ads/zzacy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/ads/zzabr;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Ljava/lang/String;

.field private volatile zze:Ljava/lang/reflect/Method;

.field private final zzf:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final zzg:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public varargs constructor <init>(Lcom/google/android/gms/internal/ads/zzabr;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzabr;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzacy;->zze:Ljava/lang/reflect/Method;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzacy;->zzg:Ljava/util/concurrent/CountDownLatch;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzacy;->zzb:Lcom/google/android/gms/internal/ads/zzabr;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzacy;->zzc:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzacy;->zzd:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzacy;->zzf:[Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzabr;->zze()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzacx;

    .line 2
    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzacx;-><init>(Lcom/google/android/gms/internal/ads/zzacy;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzacy;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacy;->zzb:Lcom/google/android/gms/internal/ads/zzabr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabr;->zzf()Ldalvik/system/DexClassLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzacy;->zzb:Lcom/google/android/gms/internal/ads/zzabr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzabr;->zzh()[B

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzacy;->zzc:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzacy;->zzc([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzaaw; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzacy;->zzg:Ljava/util/concurrent/CountDownLatch;

    .line 3
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzacy;->zzb:Lcom/google/android/gms/internal/ads/zzabr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzabr;->zzh()[B

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzacy;->zzd:Ljava/lang/String;

    .line 4
    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzacy;->zzc([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzacy;->zzf:[Ljava/lang/Class;

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzacy;->zze:Ljava/lang/reflect/Method;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacy;->zze:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzaaw; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzacy;->zzg:Ljava/util/concurrent/CountDownLatch;

    goto :goto_0

    .line 3
    :catch_0
    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzacy;->zzg:Ljava/util/concurrent/CountDownLatch;

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzacy;->zzg:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 6
    throw v0

    :catch_1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzacy;->zzg:Ljava/util/concurrent/CountDownLatch;

    goto :goto_0
.end method

.method private final zzc([BLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaaw;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacy;->zzb:Lcom/google/android/gms/internal/ads/zzabr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabr;->zzg()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaax;->zzb([BLjava/lang/String;)[B

    move-result-object p1

    new-instance p2, Ljava/lang/String;

    const-string v0, "UTF-8"

    invoke-direct {p2, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object p2
.end method


# virtual methods
.method public final zzb()Ljava/lang/reflect/Method;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacy;->zze:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacy;->zze:Ljava/lang/reflect/Method;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzacy;->zzg:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0x2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacy;->zze:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method
