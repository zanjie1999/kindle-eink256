.class final Lcom/jakewharton/threetenabp/AssetsZoneRulesInitializer;
.super Lorg/threeten/bp/zone/ZoneRulesInitializer;
.source "AssetsZoneRulesInitializer.java"


# instance fields
.field private final assetPath:Ljava/lang/String;

.field private final context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lorg/threeten/bp/zone/ZoneRulesInitializer;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/jakewharton/threetenabp/AssetsZoneRulesInitializer;->context:Landroid/content/Context;

    .line 16
    iput-object p2, p0, Lcom/jakewharton/threetenabp/AssetsZoneRulesInitializer;->assetPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected initializeProviders()V
    .locals 5

    const/4 v0, 0x0

    .line 24
    :try_start_0
    iget-object v1, p0, Lcom/jakewharton/threetenabp/AssetsZoneRulesInitializer;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    iget-object v2, p0, Lcom/jakewharton/threetenabp/AssetsZoneRulesInitializer;->assetPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 25
    new-instance v1, Lorg/threeten/bp/zone/TzdbZoneRulesProvider;

    invoke-direct {v1, v0}, Lorg/threeten/bp/zone/TzdbZoneRulesProvider;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 31
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 37
    :catch_0
    :cond_0
    invoke-static {v1}, Lorg/threeten/bp/zone/ZoneRulesProvider;->registerProvider(Lorg/threeten/bp/zone/ZoneRulesProvider;)V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 27
    :try_start_2
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/jakewharton/threetenabp/AssetsZoneRulesInitializer;->assetPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " missing from assets"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    if-eqz v0, :cond_1

    .line 31
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 35
    :catch_2
    :cond_1
    throw v1
.end method
