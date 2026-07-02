.class Lcom/amazon/kcp/reader/provider/BookImageRenderer$1;
.super Ljava/lang/Object;
.source "BookImageRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/provider/BookImageRenderer;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/provider/BookImageRenderer;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 64
    invoke-static {}, Lcom/amazon/kcp/reader/provider/BookImageRenderer;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Initializing KRF Direct"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :try_start_0
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->blockOnAppInitialization()Z

    .line 67
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 69
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 70
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "res_android.dat"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 73
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 80
    invoke-static {v0}, Lcom/amazon/kcp/debug/YJCacheSizeDebug;->getYJCacheSizeForThumbnailProcess(Landroid/content/Context;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 82
    invoke-static {}, Lcom/amazon/kcp/reader/provider/BookImageRenderer;->access$000()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Overriding YJ Cache Size: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 84
    :cond_0
    invoke-static {v0}, Lcom/amazon/kcp/reader/provider/BookImageRenderer;->access$100(Landroid/content/Context;)I

    move-result v3

    .line 85
    invoke-static {}, Lcom/amazon/kcp/reader/provider/BookImageRenderer;->access$000()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Using Default YJ Cache Size: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :goto_0
    const-string/jumbo v0, "yj.max_cache_size_kb"

    .line 87
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/amazon/krf/platform/KRF;->setGlobalVariable(Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v0, "yj.footnote_viewer_disabled"

    const/4 v3, 0x1

    .line 93
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/amazon/krf/platform/KRF;->setGlobalVariable(Ljava/lang/String;Ljava/lang/String;)Z

    .line 94
    invoke-static {v1}, Lcom/amazon/krf/platform/KRF;->initKRF(Ljava/util/List;)V

    .line 95
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/krf/platform/KRF;->addResourceBundle(Ljava/lang/String;)V

    goto :goto_1

    .line 75
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resource bundle file does not exist: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 97
    invoke-static {}, Lcom/amazon/kcp/reader/provider/BookImageRenderer;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Could not initialize KRF Direct"

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    :goto_1
    invoke-static {}, Lcom/amazon/kcp/reader/provider/BookImageRenderer;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KRF Direct initialized"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
