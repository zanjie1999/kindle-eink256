.class Lcom/amazon/kcp/application/ReddingApplication$4;
.super Ljava/lang/Object;
.source "ReddingApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/application/ReddingApplication;->intializeNativeLibraries()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final CA_INIT_ATTEMPT_EVENT:Ljava/lang/String; = "CaCertWriteNewAttempt"

.field private static final CA_INIT_FAILURE_EVENT:Ljava/lang/String; = "UnableToUnpackCertificate"


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/application/ReddingApplication;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/ReddingApplication;)V
    .locals 0

    .line 405
    iput-object p1, p0, Lcom/amazon/kcp/application/ReddingApplication$4;->this$0:Lcom/amazon/kcp/application/ReddingApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private stageCACertificate(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 450
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 452
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_2

    .line 453
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    const-string p3, "CaCertWriteNewAttempt"

    invoke-virtual {p1, p3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->newMetrics(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object p1

    const/4 p3, 0x0

    const-string v1, "error"

    .line 454
    invoke-virtual {p1, v1, p3}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;I)Lcom/amazon/kindle/krx/metrics/MetricsData;

    .line 455
    iget-object p3, p0, Lcom/amazon/kcp/application/ReddingApplication$4;->this$0:Lcom/amazon/kcp/application/ReddingApplication;

    invoke-static {p3, p1}, Lcom/amazon/kcp/application/ReddingApplication;->access$100(Lcom/amazon/kcp/application/ReddingApplication;Lcom/amazon/kindle/krx/metrics/MetricsData;)V

    .line 456
    :try_start_0
    iget-object p3, p0, Lcom/amazon/kcp/application/ReddingApplication$4;->this$0:Lcom/amazon/kcp/application/ReddingApplication;

    invoke-virtual {p3}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    iget-object v2, p0, Lcom/amazon/kcp/application/ReddingApplication$4;->this$0:Lcom/amazon/kcp/application/ReddingApplication;

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "raw"

    iget-object v4, p0, Lcom/amazon/kcp/application/ReddingApplication$4;->this$0:Lcom/amazon/kcp/application/ReddingApplication;

    invoke-virtual {v4}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 457
    :try_start_1
    new-instance p3, Ljava/io/FileOutputStream;

    invoke-direct {p3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 458
    :try_start_2
    invoke-virtual {p2}, Ljava/io/InputStream;->available()I

    move-result v0

    new-array v0, v0, [B

    .line 459
    invoke-virtual {p2, v0}, Ljava/io/InputStream;->read([B)I

    .line 460
    invoke-virtual {p3, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 461
    :try_start_3
    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz p2, :cond_0

    :try_start_4
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 469
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetrics(Lcom/amazon/kindle/krx/metrics/MetricsData;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 456
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v2

    .line 461
    :try_start_6
    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p3

    :try_start_7
    invoke-virtual {v0, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception p3

    .line 456
    :try_start_8
    throw p3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception v0

    if-eqz p2, :cond_1

    .line 461
    :try_start_9
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_1

    :catchall_5
    move-exception p2

    :try_start_a
    invoke-virtual {p3, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :catchall_6
    move-exception p2

    goto :goto_2

    :catch_0
    move-exception p2

    const/4 p3, 0x1

    .line 462
    :try_start_b
    invoke-virtual {p1, v1, p3}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;I)Lcom/amazon/kindle/krx/metrics/MetricsData;

    .line 463
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "UnableToUnpackCertificate"

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->newMetrics(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v0

    .line 464
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;I)Lcom/amazon/kindle/krx/metrics/MetricsData;

    .line 465
    iget-object p3, p0, Lcom/amazon/kcp/application/ReddingApplication$4;->this$0:Lcom/amazon/kcp/application/ReddingApplication;

    invoke-static {p3, v0}, Lcom/amazon/kcp/application/ReddingApplication;->access$100(Lcom/amazon/kcp/application/ReddingApplication;Lcom/amazon/kindle/krx/metrics/MetricsData;)V

    .line 466
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p3

    invoke-virtual {p3, v0}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetrics(Lcom/amazon/kindle/krx/metrics/MetricsData;)V

    .line 467
    new-instance p3, Ljava/lang/RuntimeException;

    const-string v0, "CA cert initialization failed"

    invoke-direct {p3, v0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 469
    :goto_2
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetrics(Lcom/amazon/kindle/krx/metrics/MetricsData;)V

    .line 470
    throw p2

    :cond_2
    :goto_3
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 411
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getNativeLibraryLoader()Lcom/amazon/kcp/application/INativeLibraryLoader;

    move-result-object v0

    const-string v1, "KindleAndroidNativeBundlerJNI"

    .line 413
    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/INativeLibraryLoader;->loadLibraryByName(Ljava/lang/String;)V

    .line 416
    invoke-static {}, Lcom/amazon/ksdk/oauth/TokenManager;->instance()Lcom/amazon/ksdk/oauth/TokenManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/services/authentication/KSDKOAuthTokenProvider;

    iget-object v2, p0, Lcom/amazon/kcp/application/ReddingApplication$4;->this$0:Lcom/amazon/kcp/application/ReddingApplication;

    invoke-direct {v1, v2}, Lcom/amazon/kindle/services/authentication/KSDKOAuthTokenProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/amazon/ksdk/oauth/TokenManager;->setProvider(Lcom/amazon/ksdk/oauth/TokenProvider;)V

    .line 419
    iget-object v0, p0, Lcom/amazon/kcp/application/ReddingApplication$4;->this$0:Lcom/amazon/kcp/application/ReddingApplication;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 420
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amazon/kcp/application/ReddingApplication$4;->this$0:Lcom/amazon/kcp/application/ReddingApplication;

    sget v3, Lcom/amazon/kindle/krl/R$string;->ca_cert_dir:I

    invoke-virtual {v0, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 423
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 424
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 425
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 430
    :cond_0
    iget-object v2, p0, Lcom/amazon/kcp/application/ReddingApplication$4;->this$0:Lcom/amazon/kcp/application/ReddingApplication;

    sget v3, Lcom/amazon/kindle/krl/R$string;->ca_cert_name:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kcp/application/ReddingApplication$4;->this$0:Lcom/amazon/kcp/application/ReddingApplication;

    sget v4, Lcom/amazon/kindle/krl/R$string;->ca_cert_extension:I

    .line 431
    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 430
    invoke-direct {p0, v1, v2, v3}, Lcom/amazon/kcp/application/ReddingApplication$4;->stageCACertificate(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    iget-object v2, p0, Lcom/amazon/kcp/application/ReddingApplication$4;->this$0:Lcom/amazon/kcp/application/ReddingApplication;

    sget v3, Lcom/amazon/kindle/krl/R$string;->digicert_ca_cert_name:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kcp/application/ReddingApplication$4;->this$0:Lcom/amazon/kcp/application/ReddingApplication;

    sget v4, Lcom/amazon/kindle/krl/R$string;->ca_cert_extension:I

    .line 434
    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 433
    invoke-direct {p0, v1, v2, v3}, Lcom/amazon/kcp/application/ReddingApplication$4;->stageCACertificate(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    invoke-static {}, Lcom/amazon/kndk/initializer/ConfigManager;->instance()Lcom/amazon/kndk/initializer/ConfigManager;

    move-result-object v1

    .line 437
    invoke-virtual {v1, v0}, Lcom/amazon/kndk/initializer/ConfigManager;->setCaPath(Ljava/lang/String;)V

    .line 440
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 441
    invoke-virtual {v1, v0}, Lcom/amazon/kndk/initializer/ConfigManager;->setHomePath(Ljava/lang/String;)V

    .line 444
    invoke-static {}, Lcom/amazon/ksdk/weblabmanager/WeblabManager;->instance()Lcom/amazon/ksdk/weblabmanager/WeblabManager;

    move-result-object v0

    .line 445
    new-instance v1, Lcom/amazon/kindle/weblab/KSDKWeblabCallback;

    invoke-direct {v1}, Lcom/amazon/kindle/weblab/KSDKWeblabCallback;-><init>()V

    invoke-virtual {v0, v1}, Lcom/amazon/ksdk/weblabmanager/WeblabManager;->setWeblabCallback(Lcom/amazon/ksdk/weblabmanager/WeblabCallback;)V

    return-void
.end method
