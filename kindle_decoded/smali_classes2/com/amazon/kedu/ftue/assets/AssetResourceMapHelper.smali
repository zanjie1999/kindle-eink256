.class public Lcom/amazon/kedu/ftue/assets/AssetResourceMapHelper;
.super Ljava/lang/Object;
.source "AssetResourceMapHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.kedu.ftue.assets.AssetResourceMapHelper"


# instance fields
.field private final fileProvider:Lcom/amazon/kedu/ftue/assets/IFileProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kedu/ftue/assets/IFileProvider;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/amazon/kedu/ftue/assets/AssetResourceMapHelper;->fileProvider:Lcom/amazon/kedu/ftue/assets/IFileProvider;

    return-void
.end method


# virtual methods
.method public buildResourceMaps(Lcom/amazon/kedu/ftue/assets/AssetManifest;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kedu/ftue/assets/AssetManifest;",
            ")",
            "Ljava/util/Map<",
            "Lcom/amazon/kedu/ftue/assets/resources/ResourceType;",
            "Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext$ResourceMap;",
            ">;"
        }
    .end annotation

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 42
    invoke-static {}, Lcom/amazon/kedu/ftue/assets/resources/ResourceType;->values()[Lcom/amazon/kedu/ftue/assets/resources/ResourceType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 44
    new-instance v5, Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext$ResourceMap;

    invoke-direct {v5}, Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext$ResourceMap;-><init>()V

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 47
    :cond_0
    const-class v1, Lcom/amazon/kedu/ftue/assets/ExtractedAsset;

    invoke-virtual {p1, v1}, Lcom/amazon/kedu/ftue/assets/AssetManifest;->getFilteredAssets(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kedu/ftue/assets/ExtractedAsset;

    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "building qualifiers for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/amazon/kedu/ftue/assets/Asset;->getLocalPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    invoke-virtual {v2}, Lcom/amazon/kedu/ftue/assets/Asset;->getLocalPath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/kedu/ftue/assets/AssetResourceMapHelper;->fileProvider:Lcom/amazon/kedu/ftue/assets/IFileProvider;

    invoke-interface {v4}, Lcom/amazon/kedu/ftue/assets/IFileProvider;->getSeparator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 51
    array-length v4, v3

    add-int/lit8 v4, v4, -0x2

    aget-object v3, v3, v4

    .line 52
    invoke-static {v3}, Lcom/amazon/kedu/ftue/assets/resources/ResourceType;->getType(Ljava/lang/String;)Lcom/amazon/kedu/ftue/assets/resources/ResourceType;

    move-result-object v4

    if-nez v4, :cond_2

    .line 56
    sget-object v3, Lcom/amazon/kedu/ftue/assets/AssetResourceMapHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unknown content type for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/amazon/kedu/ftue/assets/Asset;->getLocalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 60
    :cond_2
    invoke-static {v3}, Lcom/amazon/kedu/ftue/assets/resources/QualifierType;->parseQualifiers(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 61
    sget-object v5, Lcom/amazon/kedu/ftue/assets/resources/ResourceType;->DRAWABLE:Lcom/amazon/kedu/ftue/assets/resources/ResourceType;

    if-ne v4, v5, :cond_1

    .line 63
    invoke-virtual {v2}, Lcom/amazon/kedu/ftue/assets/Asset;->getLocalPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/commons/io/FilenameUtils;->getBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 64
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Creating resource details "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " with type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " and "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " qualifiers"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    iget-object v6, p0, Lcom/amazon/kedu/ftue/assets/AssetResourceMapHelper;->fileProvider:Lcom/amazon/kedu/ftue/assets/IFileProvider;

    invoke-virtual {p1}, Lcom/amazon/kedu/ftue/assets/AssetManifest;->getVersion()I

    move-result v7

    invoke-virtual {v2}, Lcom/amazon/kedu/ftue/assets/Asset;->getLocalPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v7, v2}, Lcom/amazon/kedu/ftue/assets/IFileProvider;->getVersionFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 66
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext$ResourceMap;

    new-instance v7, Lcom/amazon/kedu/ftue/assets/resources/ResourceDetails;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2, v5, v4, v3}, Lcom/amazon/kedu/ftue/assets/resources/ResourceDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kedu/ftue/assets/resources/ResourceType;Ljava/util/Map;)V

    invoke-virtual {v6, v7}, Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext$ResourceMap;->putResource(Lcom/amazon/kedu/ftue/assets/resources/ResourceDetails;)V

    goto/16 :goto_1

    .line 70
    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
