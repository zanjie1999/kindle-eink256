.class public final Lcom/google/android/gms/internal/ads/zzacc;
.super Lcom/google/android/gms/internal/ads/zzacz;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# static fields
.field private static final zzi:Lcom/google/android/gms/internal/ads/zzada;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzada<",
            "Lcom/google/android/gms/internal/ads/zzzp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzj:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzada;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzada;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzacc;->zzi:Lcom/google/android/gms/internal/ads/zzada;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzabr;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzyj;IILandroid/content/Context;Lcom/google/android/gms/internal/ads/zzyc;)V
    .locals 7

    const-string v2, "NK1iwlHEHCICBCLEvTy0TnuhgEeSXovnPs9zKPvVW8trSfaaB+/inefY+5AxSSUI"

    const-string v3, "/qulcnd5BAOc2NixUFmrPgx+DAD1V/hpoK4nowHOBbg="

    const/16 v6, 0x1b

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzacz;-><init>(Lcom/google/android/gms/internal/ads/zzabr;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzyj;II)V

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzacc;->zzj:Landroid/content/Context;

    return-void
.end method

.method private final zzc()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacz;->zzb:Lcom/google/android/gms/internal/ads/zzabr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabr;->zzo()Ljava/util/concurrent/Future;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacz;->zzb:Lcom/google/android/gms/internal/ads/zzabr;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabr;->zzo()Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacz;->zzb:Lcom/google/android/gms/internal/ads/zzabr;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabr;->zzn()Lcom/google/android/gms/internal/ads/zzyz;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzyz;->zza()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzyz;->zzc()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected final zza()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzacc;->zzi:Lcom/google/android/gms/internal/ads/zzada;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzacc;->zzj:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzada;->zza(Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzzp;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzzp;->zza:Ljava/lang/String;

    .line 4
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzabu;->zze(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzzp;->zza:Ljava/lang/String;

    const-string v3, "E"

    .line 5
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzzp;->zza:Ljava/lang/String;

    const-string v2, "0000000000000000000000000000000000000000000000000000000000000000"

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_0
    const/4 v1, 0x0

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzabu;->zze(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-nez v2, :cond_1

    const/4 v2, 0x5

    goto :goto_1

    .line 8
    :cond_1
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzabu;->zze(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 10
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    .line 9
    :cond_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 11
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzacz;->zzb:Lcom/google/android/gms/internal/ads/zzabr;

    .line 12
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzabr;->zzk()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x4

    goto :goto_1

    :cond_3
    const/4 v2, 0x3

    :goto_1
    const/4 v6, 0x1

    if-ne v2, v5, :cond_4

    const/4 v7, 0x1

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    .line 13
    :goto_2
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 14
    sget-object v8, Lcom/google/android/gms/internal/ads/zzbjl;->zzbB:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v8

    .line 14
    check-cast v8, Ljava/lang/Boolean;

    sget-object v9, Lcom/google/android/gms/internal/ads/zzbjl;->zzbA:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v9

    .line 17
    check-cast v9, Ljava/lang/Boolean;

    .line 18
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzacc;->zzb()Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    :cond_5
    move-object v9, v1

    .line 20
    :goto_3
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzacz;->zzb:Lcom/google/android/gms/internal/ads/zzabr;

    .line 21
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzabr;->zzk()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 20
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzabu;->zze(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 22
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzacc;->zzc()Ljava/lang/String;

    move-result-object v9

    :cond_6
    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzacz;->zzf:Ljava/lang/reflect/Method;

    new-array v10, v5, [Ljava/lang/Object;

    iget-object v11, p0, Lcom/google/android/gms/internal/ads/zzacc;->zzj:Landroid/content/Context;

    aput-object v11, v10, v4

    aput-object v7, v10, v6

    const/4 v4, 0x2

    aput-object v9, v10, v4

    .line 23
    invoke-virtual {v8, v1, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 24
    new-instance v6, Lcom/google/android/gms/internal/ads/zzzp;

    invoke-direct {v6, v4}, Lcom/google/android/gms/internal/ads/zzzp;-><init>(Ljava/lang/String;)V

    iget-object v4, v6, Lcom/google/android/gms/internal/ads/zzzp;->zza:Ljava/lang/String;

    .line 25
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzabu;->zze(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, v6, Lcom/google/android/gms/internal/ads/zzzp;->zza:Ljava/lang/String;

    const-string v7, "E"

    .line 26
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_7
    add-int/lit8 v2, v2, -0x1

    if-eq v2, v5, :cond_9

    if-eq v2, v3, :cond_8

    goto :goto_4

    .line 27
    :cond_8
    throw v1

    .line 28
    :cond_9
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzacc;->zzc()Ljava/lang/String;

    move-result-object v1

    .line 29
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzabu;->zze(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    iput-object v1, v6, Lcom/google/android/gms/internal/ads/zzzp;->zza:Ljava/lang/String;

    .line 30
    :cond_a
    :goto_4
    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 31
    :cond_b
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzzp;

    .line 32
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzacz;->zze:Lcom/google/android/gms/internal/ads/zzyj;

    .line 33
    monitor-enter v2

    if-eqz v1, :cond_c

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacz;->zze:Lcom/google/android/gms/internal/ads/zzyj;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzzp;->zza:Ljava/lang/String;

    .line 34
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzyj;->zzo(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzyj;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacz;->zze:Lcom/google/android/gms/internal/ads/zzyj;

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzzp;->zzb:J

    .line 35
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzyj;->zzu(J)Lcom/google/android/gms/internal/ads/zzyj;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacz;->zze:Lcom/google/android/gms/internal/ads/zzyj;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzzp;->zzc:Ljava/lang/String;

    .line 36
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzyj;->zzt(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzyj;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacz;->zze:Lcom/google/android/gms/internal/ads/zzyj;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzzp;->zzd:Ljava/lang/String;

    .line 37
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzyj;->zzD(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzyj;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacz;->zze:Lcom/google/android/gms/internal/ads/zzyj;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzzp;->zze:Ljava/lang/String;

    .line 38
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzyj;->zzE(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzyj;

    .line 39
    :cond_c
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 32
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method protected final zzb()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "X.509"

    .line 1
    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 2
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbjl;->zzbC:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v2

    .line 2
    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzabu;->zzc(Ljava/lang/String;)[B

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/io/ByteArrayInputStream;

    .line 5
    invoke-direct {v4, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v4, "user"

    .line 6
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbjl;->zzbD:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v2

    .line 8
    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzabu;->zzc(Ljava/lang/String;)[B

    move-result-object v2

    new-instance v4, Ljava/io/ByteArrayInputStream;

    .line 9
    invoke-direct {v4, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzacc;->zzj:Landroid/content/Context;

    .line 10
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzacz;->zzb:Lcom/google/android/gms/internal/ads/zzabr;

    .line 11
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzabr;->zze()Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    .line 12
    invoke-static {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzadc;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/concurrent/Executor;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method
