.class public Lcom/amazon/kindle/luna/LunaManifestContentHandler;
.super Lcom/amazon/foundation/internal/DefaultContentHandler;
.source "LunaManifestContentHandler.java"


# static fields
.field private static final FILE_SIZE_TAG:Ljava/lang/String; = "filesize"

.field private static final LUNA_CONTENT_TYPE_AUDIO:Ljava/lang/String; = "audio"

.field private static final LUNA_CONTENT_TYPE_VIDEO:Ljava/lang/String; = "video"

.field private static final MEDIA_ITEM_TAG:Ljava/lang/String; = "mediaItem"

.field private static final RESOURCE_ID_ATTR:Ljava/lang/String; = "mediaRecIndex"

.field private static final RESOURCE_TYPE_ATTR:Ljava/lang/String; = "type"

.field private static final TAG:Ljava/lang/String;

.field private static final URL_TAG:Ljava/lang/String; = "url"


# instance fields
.field private final assets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/services/download/IBookAsset;",
            ">;"
        }
    .end annotation
.end field

.field private final bookID:Lcom/amazon/kindle/model/content/IBookID;

.field private currentAssetId:Ljava/lang/String;

.field private currentAssetType:Lcom/amazon/kindle/services/download/AssetType;

.field private currentSize:I

.field private currentURI:Ljava/net/URI;

.field krlForDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    const-class v0, Lcom/amazon/kindle/luna/LunaManifestContentHandler;

    invoke-static {v0}, Lcom/amazon/kindle/services/download/DownloadUtils;->getDownloadModuleTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/luna/LunaManifestContentHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;Lcom/amazon/kindle/model/content/IBookID;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;",
            "Lcom/amazon/kindle/model/content/IBookID;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/services/download/IBookAsset;",
            ">;)V"
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Lcom/amazon/foundation/internal/DefaultContentHandler;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/amazon/kindle/luna/LunaManifestContentHandler;->krlForDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    .line 85
    iput-object p3, p0, Lcom/amazon/kindle/luna/LunaManifestContentHandler;->assets:Ljava/util/List;

    .line 86
    iput-object p2, p0, Lcom/amazon/kindle/luna/LunaManifestContentHandler;->bookID:Lcom/amazon/kindle/model/content/IBookID;

    return-void
.end method


# virtual methods
.method public onElementEnd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const-string v0, "mediaItem"

    .line 92
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, " element."

    const-string v2, "Failed luna manifest parsing. Unexpected "

    if-eqz v0, :cond_1

    .line 93
    iget-object p2, p0, Lcom/amazon/kindle/luna/LunaManifestContentHandler;->currentAssetId:Ljava/lang/String;

    if-nez p2, :cond_0

    .line 94
    sget-object p2, Lcom/amazon/kindle/luna/LunaManifestContentHandler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/amazon/kindle/io/FileSystemHelper;->getLunaResourcePrefix()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/amazon/kindle/luna/LunaManifestContentHandler;->currentAssetId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 97
    new-instance p1, Lcom/amazon/kindle/download/assets/BookAsset;

    iget-object v1, p0, Lcom/amazon/kindle/luna/LunaManifestContentHandler;->krlForDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    iget-object v2, p0, Lcom/amazon/kindle/luna/LunaManifestContentHandler;->bookID:Lcom/amazon/kindle/model/content/IBookID;

    iget-object v3, p0, Lcom/amazon/kindle/luna/LunaManifestContentHandler;->currentAssetId:Ljava/lang/String;

    iget-object v5, p0, Lcom/amazon/kindle/luna/LunaManifestContentHandler;->currentURI:Ljava/net/URI;

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v8, Lcom/amazon/kindle/services/download/AssetPriority;->REQUIRED:Lcom/amazon/kindle/services/download/AssetPriority;

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Lcom/amazon/kindle/download/assets/BookAsset;-><init>(Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/services/download/AssetPriority;)V

    .line 105
    iget p2, p0, Lcom/amazon/kindle/luna/LunaManifestContentHandler;->currentSize:I

    int-to-long v0, p2

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/services/download/IBookAsset;->setSize(J)V

    .line 106
    iget-object p2, p0, Lcom/amazon/kindle/luna/LunaManifestContentHandler;->currentAssetType:Lcom/amazon/kindle/services/download/AssetType;

    invoke-interface {p1, p2}, Lcom/amazon/kindle/services/download/IBookAsset;->setAssetType(Lcom/amazon/kindle/services/download/AssetType;)V

    .line 107
    iget-object p2, p0, Lcom/amazon/kindle/luna/LunaManifestContentHandler;->assets:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_1
    const-string v0, "filesize"

    .line 108
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 109
    iget-object v0, p0, Lcom/amazon/kindle/luna/LunaManifestContentHandler;->currentAssetId:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 110
    sget-object p2, Lcom/amazon/kindle/luna/LunaManifestContentHandler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :cond_2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/amazon/kindle/luna/LunaManifestContentHandler;->currentSize:I

    goto :goto_0

    :cond_3
    const-string v0, "url"

    .line 114
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 115
    iget-object v0, p0, Lcom/amazon/kindle/luna/LunaManifestContentHandler;->currentAssetId:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 116
    sget-object p2, Lcom/amazon/kindle/luna/LunaManifestContentHandler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :cond_4
    :try_start_0
    new-instance p1, Ljava/net/URI;

    invoke-direct {p1, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/kindle/luna/LunaManifestContentHandler;->currentURI:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 121
    sget-object p2, Lcom/amazon/kindle/luna/LunaManifestContentHandler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed luna manifest parsing. Bad URl in resID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/luna/LunaManifestContentHandler;->currentAssetId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p1}, Ljava/net/URISyntaxException;->printStackTrace()V

    :cond_5
    :goto_0
    return-void
.end method

.method public onElementStart(Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    const-string v0, "mediaItem"

    .line 130
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "mediaRecIndex"

    .line 131
    invoke-interface {p2, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/luna/LunaManifestContentHandler;->currentAssetId:Ljava/lang/String;

    const/4 p1, 0x0

    .line 132
    iput-object p1, p0, Lcom/amazon/kindle/luna/LunaManifestContentHandler;->currentURI:Ljava/net/URI;

    .line 133
    iput-object p1, p0, Lcom/amazon/kindle/luna/LunaManifestContentHandler;->currentAssetType:Lcom/amazon/kindle/services/download/AssetType;

    const/4 p1, 0x0

    .line 134
    iput p1, p0, Lcom/amazon/kindle/luna/LunaManifestContentHandler;->currentSize:I

    const-string p1, "type"

    .line 136
    invoke-interface {p2, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "video"

    .line 137
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 138
    sget-object p1, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;->LUNA_VIDEO:Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

    iput-object p1, p0, Lcom/amazon/kindle/luna/LunaManifestContentHandler;->currentAssetType:Lcom/amazon/kindle/services/download/AssetType;

    goto :goto_0

    :cond_0
    const-string p2, "audio"

    .line 139
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 140
    sget-object p1, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;->LUNA_AUDIO:Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

    iput-object p1, p0, Lcom/amazon/kindle/luna/LunaManifestContentHandler;->currentAssetType:Lcom/amazon/kindle/services/download/AssetType;

    :cond_1
    :goto_0
    return-void
.end method
