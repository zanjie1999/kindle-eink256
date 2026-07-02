.class public Lcom/amazon/kedu/ftue/assets/ManifestFileHelper;
.super Ljava/lang/Object;
.source "ManifestFileHelper.java"


# static fields
.field private static final DEFAULT_MANIFEST_RESOURCE_ID:Ljava/lang/String; = "kf_ftue_manifest_empty"

.field private static final MANIFEST_NAME:Ljava/lang/String; = "manifest.json"

.field private static final MANIFEST_RESOURCE_ID:Ljava/lang/String; = "kf_ftue_manifest"

.field private static final NEW_SUFFIX:Ljava/lang/String; = ".NEW"

.field private static final TAG:Ljava/lang/String; = "com.amazon.kedu.ftue.assets.ManifestFileHelper"


# instance fields
.field private final fileProvider:Lcom/amazon/kedu/ftue/assets/IFileProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kedu/ftue/assets/IFileProvider;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/amazon/kedu/ftue/assets/ManifestFileHelper;->fileProvider:Lcom/amazon/kedu/ftue/assets/IFileProvider;

    return-void
.end method


# virtual methods
.method public cleanupAssetDirectory(Lcom/amazon/kedu/ftue/assets/AssetManifest;Lcom/amazon/kedu/ftue/assets/AssetManifest;)V
    .locals 9

    .line 58
    sget-object v0, Lcom/amazon/kedu/ftue/assets/ManifestFileHelper;->TAG:Ljava/lang/String;

    const-string v1, "cleaning up asset directory"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v0, p0, Lcom/amazon/kedu/ftue/assets/ManifestFileHelper;->fileProvider:Lcom/amazon/kedu/ftue/assets/IFileProvider;

    invoke-virtual {p1}, Lcom/amazon/kedu/ftue/assets/AssetManifest;->getVersion()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/amazon/kedu/ftue/assets/IFileProvider;->getVersionDirectory(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/amazon/kedu/ftue/assets/ManifestFileHelper;->fileProvider:Lcom/amazon/kedu/ftue/assets/IFileProvider;

    invoke-virtual {p1}, Lcom/amazon/kedu/ftue/assets/AssetManifest;->getVersion()I

    move-result p1

    invoke-interface {v1, p1}, Lcom/amazon/kedu/ftue/assets/IFileProvider;->getVersionDirectory(I)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 62
    iget-object v1, p0, Lcom/amazon/kedu/ftue/assets/ManifestFileHelper;->fileProvider:Lcom/amazon/kedu/ftue/assets/IFileProvider;

    invoke-interface {v1}, Lcom/amazon/kedu/ftue/assets/IFileProvider;->getAssetDirectory()Ljava/io/File;

    move-result-object v1

    .line 63
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 66
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 68
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/amazon/kedu/ftue/assets/ManifestFileHelper;->fileProvider:Lcom/amazon/kedu/ftue/assets/IFileProvider;

    invoke-interface {v6}, Lcom/amazon/kedu/ftue/assets/IFileProvider;->getSeparator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 69
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v6

    const-string v7, "deleting "

    if-eqz v6, :cond_0

    .line 71
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v8, "manifest.json"

    .line 72
    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {p2, v6}, Lcom/amazon/kedu/ftue/assets/AssetManifest;->isRemoteAsset(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 74
    sget-object v6, Lcom/amazon/kedu/ftue/assets/ManifestFileHelper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 80
    :cond_0
    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 84
    :try_start_0
    sget-object v6, Lcom/amazon/kedu/ftue/assets/ManifestFileHelper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v5, p0, Lcom/amazon/kedu/ftue/assets/ManifestFileHelper;->fileProvider:Lcom/amazon/kedu/ftue/assets/IFileProvider;

    invoke-interface {v5, v4}, Lcom/amazon/kedu/ftue/assets/IFileProvider;->deleteDirectory(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 89
    sget-object v6, Lcom/amazon/kedu/ftue/assets/ManifestFileHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed deleting directory "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method public createDefaultManifestAndDirectory(Ljava/io/File;)Z
    .locals 5

    .line 140
    sget-object v0, Lcom/amazon/kedu/ftue/assets/ManifestFileHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating default manifest and directory... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 154
    :cond_0
    sget-object p1, Lcom/amazon/kedu/ftue/assets/ManifestFileHelper;->TAG:Ljava/lang/String;

    const-string v0, "Failed creating asset directory..."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    goto :goto_1

    .line 144
    :cond_1
    :goto_0
    sget-object v0, Lcom/amazon/kedu/ftue/assets/ManifestFileHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Successfully created asset directory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-virtual {p0}, Lcom/amazon/kedu/ftue/assets/ManifestFileHelper;->getSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 146
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "kf_ftue_manifest_empty"

    const-string v4, "raw"

    invoke-virtual {v1, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 147
    sget-object v2, Lcom/amazon/kedu/ftue/assets/ManifestFileHelper;->TAG:Ljava/lang/String;

    const-string v3, "Reading in default manifest..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v2, p0, Lcom/amazon/kedu/ftue/assets/ManifestFileHelper;->fileProvider:Lcom/amazon/kedu/ftue/assets/IFileProvider;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/amazon/kedu/ftue/assets/IFileProvider;->readTextStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 149
    sget-object v1, Lcom/amazon/kedu/ftue/assets/ManifestFileHelper;->TAG:Ljava/lang/String;

    const-string v2, "Writing default manifest..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kedu/ftue/assets/ManifestFileHelper;->writeJsonManifestToFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result p1

    :goto_1
    return p1
.end method

.method public deleteAllAssets(Lcom/amazon/kedu/ftue/assets/AssetManifest;)V
    .locals 6

    .line 103
    sget-object v0, Lcom/amazon/kedu/ftue/assets/ManifestFileHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleting resources for manifest "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kedu/ftue/assets/AssetManifest;->getVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, Lcom/amazon/kedu/ftue/assets/ManifestFileHelper;->fileProvider:Lcom/amazon/kedu/ftue/assets/IFileProvider;

    invoke-virtual {p1}, Lcom/amazon/kedu/ftue/assets/AssetManifest;->getVersion()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/amazon/kedu/ftue/assets/IFileProvider;->getVersionDirectory(I)Ljava/io/File;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kedu/ftue/assets/ManifestFileHelper;->fileProvider:Lcom/amazon/kedu/ftue/assets/IFileProvider;

    invoke-interface {v2}, Lcom/amazon/kedu/ftue/assets/IFileProvider;->getSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 111
    sget-object v2, Lcom/amazon/kedu/ftue/assets/ManifestFileHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleting manifest directory "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v1, p0, Lcom/amazon/kedu/ftue/assets/ManifestFileHelper;->fileProvider:Lcom/amazon/kedu/ftue/assets/IFileProvider;

    invoke-interface {v1, v0}, Lcom/amazon/kedu/ftue/assets/IFileProvider;->deleteDirectory(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 116
    sget-object v1, Lcom/amazon/kedu/ftue/assets/ManifestFileHelper;->TAG:Ljava/lang/String;

    const-string v2, "Failed deleting manifest directory"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amazon/kedu/ftue/assets/ManifestFileHelper;->fileProvider:Lcom/amazon/kedu/ftue/assets/IFileProvider;

    invoke-interface {v0}, Lcom/amazon/kedu/ftue/assets/IFileProvider;->getAssetDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 121
    const-class v1, Lcom/amazon/kedu/ftue/assets/RemoteAsset;

    invoke-virtual {p1, v1}, Lcom/amazon/kedu/ftue/assets/AssetManifest;->getFilteredAssets(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kedu/ftue/assets/Asset;

    .line 123
    iget-object v2, p0, Lcom/amazon/kedu/ftue/assets/ManifestFileHelper;->fileProvider:Lcom/amazon/kedu/ftue/assets/IFileProvider;

    invoke-virtual {v1}, Lcom/amazon/kedu/ftue/assets/Asset;->getLocalPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lcom/amazon/kedu/ftue/assets/IFileProvider;->getFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 124
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kedu/ftue/assets/ManifestFileHelper;->fileProvider:Lcom/amazon/kedu/ftue/assets/IFileProvider;

    invoke-interface {v3}, Lcom/amazon/kedu/ftue/assets/IFileProvider;->getSeparator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 127
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    .line 128
    sget-object v3, Lcom/amazon/kedu/ftue/assets/ManifestFileHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleting manifest file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with results "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    return-void
.end method

.method public deleteOriginalAssets(Lcom/amazon/kedu/ftue/assets/AssetManifest;)V
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/amazon/kedu/ftue/assets/ManifestFileHelper;->fileProvider:Lcom/amazon/kedu/ftue/assets/IFileProvider;

    invoke-interface {v0}, Lcom/amazon/kedu/ftue/assets/IFileProvider;->getAssetDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 41
    const-class v1, Lcom/amazon/kedu/ftue/assets/RemoteAsset;

    invoke-virtual {p1, v1}, Lcom/amazon/kedu/ftue/assets/AssetManifest;->getFilteredAssets(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kedu/ftue/assets/Asset;

    .line 43
    iget-object v2, p0, Lcom/amazon/kedu/ftue/assets/ManifestFileHelper;->fileProvider:Lcom/amazon/kedu/ftue/assets/IFileProvider;

    invoke-virtual {v1}, Lcom/amazon/kedu/ftue/assets/Asset;->getLocalPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lcom/amazon/kedu/ftue/assets/IFileProvider;->getFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 44
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_0

    .line 46
    invoke-virtual {v1}, Ljava/io/File;->deleteOnExit()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method getSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 1

    .line 232
    invoke-static {}, Lcom/amazon/kedu/ftue/Plugin;->getSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    return-object v0
.end method

.method public readLatestManifest()Lcom/amazon/kedu/ftue/assets/AssetManifest;
    .locals 5

    .line 165
    invoke-virtual {p0}, Lcom/amazon/kedu/ftue/assets/ManifestFileHelper;->getSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "kf_ftue_manifest"

    const-string v4, "raw"

    invoke-virtual {v1, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 167
    sget-object v2, Lcom/amazon/kedu/ftue/assets/ManifestFileHelper;->TAG:Ljava/lang/String;

    const-string v3, "Reading in default manifest..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v2, p0, Lcom/amazon/kedu/ftue/assets/ManifestFileHelper;->fileProvider:Lcom/amazon/kedu/ftue/assets/IFileProvider;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/amazon/kedu/ftue/assets/IFileProvider;->readTextStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-static {v0}, Lcom/amazon/kedu/ftue/assets/AssetManifest;->fromJson(Ljava/lang/String;)Lcom/amazon/kedu/ftue/assets/AssetManifest;

    move-result-object v0

    return-object v0
.end method

.method public readManifest(Ljava/io/File;)Lcom/amazon/kedu/ftue/assets/AssetManifest;
    .locals 3

    .line 206
    sget-object v0, Lcom/amazon/kedu/ftue/assets/ManifestFileHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reading manifest from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 209
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kedu/ftue/assets/ManifestFileHelper;->fileProvider:Lcom/amazon/kedu/ftue/assets/IFileProvider;

    invoke-interface {v1, p1}, Lcom/amazon/kedu/ftue/assets/IFileProvider;->readTextFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    .line 211
    invoke-static {p1}, Lcom/amazon/kedu/ftue/assets/AssetManifest;->fromJson(Ljava/lang/String;)Lcom/amazon/kedu/ftue/assets/AssetManifest;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 214
    sget-object p1, Lcom/amazon/kedu/ftue/assets/ManifestFileHelper;->TAG:Ljava/lang/String;

    const-string v1, "successfully read manifest"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 219
    sget-object v1, Lcom/amazon/kedu/ftue/assets/ManifestFileHelper;->TAG:Ljava/lang/String;

    const-string v2, "failed reading asset manifest"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-object v0
.end method

.method public writeJsonManifestToFile(Ljava/io/File;Ljava/lang/String;)Z
    .locals 4

    .line 182
    iget-object v0, p0, Lcom/amazon/kedu/ftue/assets/ManifestFileHelper;->fileProvider:Lcom/amazon/kedu/ftue/assets/IFileProvider;

    invoke-interface {v0}, Lcom/amazon/kedu/ftue/assets/IFileProvider;->getAssetDirectory()Ljava/io/File;

    move-result-object v0

    .line 184
    iget-object v1, p0, Lcom/amazon/kedu/ftue/assets/ManifestFileHelper;->fileProvider:Lcom/amazon/kedu/ftue/assets/IFileProvider;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".NEW"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/amazon/kedu/ftue/assets/IFileProvider;->getFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 186
    iget-object v1, p0, Lcom/amazon/kedu/ftue/assets/ManifestFileHelper;->fileProvider:Lcom/amazon/kedu/ftue/assets/IFileProvider;

    invoke-interface {v1, v0, p2}, Lcom/amazon/kedu/ftue/assets/IFileProvider;->writeTextFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 188
    sget-object p2, Lcom/amazon/kedu/ftue/assets/ManifestFileHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "manifest file to be located at: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 191
    :cond_0
    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
