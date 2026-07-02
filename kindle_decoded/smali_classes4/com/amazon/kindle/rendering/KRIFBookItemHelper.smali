.class public Lcom/amazon/kindle/rendering/KRIFBookItemHelper;
.super Ljava/lang/Object;
.source "KRIFBookItemHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/rendering/KRIFBookItemHelper$ContainersAndVouchers;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-class v0, Lcom/amazon/kindle/rendering/KRIFBookItemHelper;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/rendering/KRIFBookItemHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContainersAndVouchers(Lcom/amazon/kindle/model/content/IBookID;Ljava/util/EnumSet;Ljava/util/Set;)Lcom/amazon/kindle/rendering/KRIFBookItemHelper$ContainersAndVouchers;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/model/content/IBookID;",
            "Ljava/util/EnumSet<",
            "Lcom/amazon/kindle/services/download/AssetPriority;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/services/download/AssetType;",
            ">;)",
            "Lcom/amazon/kindle/rendering/KRIFBookItemHelper$ContainersAndVouchers;"
        }
    .end annotation

    .line 38
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v0

    .line 39
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAssetStateManager()Lcom/amazon/kindle/download/assets/IAssetStateManager;

    move-result-object v1

    .line 41
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 42
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "AssetStateManager.getAssets()"

    const/4 v5, 0x1

    .line 44
    invoke-static {v4, v5}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    const/4 v5, 0x0

    .line 45
    invoke-interface {v1, p0, v5, p1, p2}, Lcom/amazon/kindle/download/assets/IAssetStateManager;->getAssets(Lcom/amazon/kindle/model/content/IBookID;Ljava/util/EnumSet;Ljava/util/EnumSet;Ljava/util/Set;)Ljava/util/Collection;

    move-result-object p1

    const/4 p2, 0x0

    .line 46
    invoke-static {v4, p2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    if-eqz p1, :cond_5

    .line 49
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/services/download/IBookAsset;

    .line 53
    invoke-static {v0, p0, p2}, Lcom/amazon/kindle/io/FileSystemHelper;->getDownloadPath(Lcom/amazon/kindle/io/IFileConnectionFactory;Lcom/amazon/kindle/model/content/IBookID;Z)Ljava/lang/String;

    move-result-object v4

    .line 56
    new-instance v5, Ljava/io/File;

    invoke-interface {v1}, Lcom/amazon/kindle/services/download/IBookAsset;->getFilename()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {p0}, Lcom/amazon/kindle/model/content/IBookID;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v4

    sget-object v6, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_SAMPLE:Lcom/amazon/kcp/library/models/BookType;

    if-ne v4, v6, :cond_0

    .line 64
    new-instance v5, Ljava/io/File;

    invoke-static {v0}, Lcom/amazon/kindle/io/FileSystemHelper;->getOldSampleDownloadPath(Lcom/amazon/kindle/io/IFileConnectionFactory;)Ljava/lang/String;

    move-result-object v4

    .line 65
    invoke-interface {v1}, Lcom/amazon/kindle/services/download/IBookAsset;->getFilename()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_0
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 70
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v4

    .line 71
    invoke-interface {v4}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getMultipleProfileHelper()Lcom/amazon/kcp/application/IMultipleProfileHelper;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 74
    invoke-interface {v4, p0}, Lcom/amazon/kcp/application/IMultipleProfileHelper;->getSharedBookPath(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;

    move-result-object v4

    .line 75
    new-instance v5, Ljava/io/File;

    invoke-interface {v1}, Lcom/amazon/kindle/services/download/IBookAsset;->getFilename()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 85
    new-instance v5, Ljava/io/File;

    invoke-interface {v1}, Lcom/amazon/kindle/services/download/IBookAsset;->getFilename()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    :cond_2
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 89
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attaching "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " to KRIF Book"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    invoke-interface {v1}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetType()Lcom/amazon/kindle/services/download/AssetType;

    move-result-object v1

    sget-object v4, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;->DRM_VOUCHER:Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

    if-ne v1, v4, :cond_3

    .line 91
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 93
    :cond_3
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 96
    :cond_4
    sget-object v4, Lcom/amazon/kindle/rendering/KRIFBookItemHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Asset/Voucher was required, but file does not exist on expected path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-interface {v1}, Lcom/amazon/kindle/services/download/IBookAsset;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-static {v4, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 102
    :cond_5
    new-instance p0, Lcom/amazon/kindle/rendering/KRIFBookItemHelper$ContainersAndVouchers;

    invoke-direct {p0, v2, v3}, Lcom/amazon/kindle/rendering/KRIFBookItemHelper$ContainersAndVouchers;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p0
.end method
