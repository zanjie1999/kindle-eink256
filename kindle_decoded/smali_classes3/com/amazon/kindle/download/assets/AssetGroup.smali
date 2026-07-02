.class public Lcom/amazon/kindle/download/assets/AssetGroup;
.super Lcom/amazon/kindle/event/BaseEventProvider;
.source "AssetGroup.java"

# interfaces
.implements Lcom/amazon/kindle/services/download/IAssetGroup;


# instance fields
.field private final bookAssets:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/services/download/IBookAsset;",
            ">;"
        }
    .end annotation
.end field

.field protected final bookId:Lcom/amazon/kindle/model/content/IBookID;

.field protected correlationId:Ljava/lang/String;

.field downloadCompleteEventWasSent:Z

.field protected downloadPath:Ljava/lang/String;

.field private final excludedTransportMethod:Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;

.field groupContext:Ljava/lang/String;

.field private mainAsset:Lcom/amazon/kindle/services/download/IBookAsset;

.field private revision:Ljava/lang/String;

.field private final source:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/model/content/IBookID;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/services/download/IBookAsset;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;",
            "Z)V"
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Lcom/amazon/kindle/event/BaseEventProvider;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/amazon/kindle/download/assets/AssetGroup;->bookId:Lcom/amazon/kindle/model/content/IBookID;

    .line 67
    iput-object p2, p0, Lcom/amazon/kindle/download/assets/AssetGroup;->revision:Ljava/lang/String;

    .line 68
    iput-object p3, p0, Lcom/amazon/kindle/download/assets/AssetGroup;->groupContext:Ljava/lang/String;

    .line 69
    iput-object p4, p0, Lcom/amazon/kindle/download/assets/AssetGroup;->source:Ljava/lang/String;

    .line 70
    iput-object p5, p0, Lcom/amazon/kindle/download/assets/AssetGroup;->downloadPath:Ljava/lang/String;

    if-eqz p5, :cond_0

    .line 71
    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p5, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 72
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/amazon/kindle/download/assets/AssetGroup;->downloadPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/download/assets/AssetGroup;->downloadPath:Ljava/lang/String;

    .line 74
    :cond_0
    iput-object p6, p0, Lcom/amazon/kindle/download/assets/AssetGroup;->bookAssets:Ljava/util/Collection;

    .line 75
    iput-object p7, p0, Lcom/amazon/kindle/download/assets/AssetGroup;->correlationId:Ljava/lang/String;

    .line 76
    iput-object p8, p0, Lcom/amazon/kindle/download/assets/AssetGroup;->excludedTransportMethod:Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;

    .line 77
    iput-boolean p9, p0, Lcom/amazon/kindle/download/assets/AssetGroup;->downloadCompleteEventWasSent:Z

    return-void
.end method


# virtual methods
.method public downloadPath()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/AssetGroup;->downloadPath:Ljava/lang/String;

    return-object v0
.end method

.method public getAssets()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/services/download/IBookAsset;",
            ">;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/AssetGroup;->bookAssets:Ljava/util/Collection;

    return-object v0
.end method

.method public getBookID()Lcom/amazon/kindle/model/content/IBookID;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/AssetGroup;->bookId:Lcom/amazon/kindle/model/content/IBookID;

    return-object v0
.end method

.method public getCorrelationId()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/AssetGroup;->correlationId:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadCompleteEventWasSent()Z
    .locals 1

    .line 156
    iget-boolean v0, p0, Lcom/amazon/kindle/download/assets/AssetGroup;->downloadCompleteEventWasSent:Z

    return v0
.end method

.method public getExcludedTransportMethod()Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/AssetGroup;->excludedTransportMethod:Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;

    return-object v0
.end method

.method public getGroupContext()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/AssetGroup;->groupContext:Ljava/lang/String;

    return-object v0
.end method

.method public getMainAsset()Lcom/amazon/kindle/services/download/IBookAsset;
    .locals 4

    .line 107
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/AssetGroup;->mainAsset:Lcom/amazon/kindle/services/download/IBookAsset;

    if-nez v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/AssetGroup;->bookAssets:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/services/download/IBookAsset;

    .line 109
    sget-object v2, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;->MAIN_CONTENT:Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

    invoke-interface {v1}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetType()Lcom/amazon/kindle/services/download/AssetType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    iput-object v1, p0, Lcom/amazon/kindle/download/assets/AssetGroup;->mainAsset:Lcom/amazon/kindle/services/download/IBookAsset;

    goto :goto_0

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/AssetGroup;->mainAsset:Lcom/amazon/kindle/services/download/IBookAsset;

    return-object v0
.end method

.method public getMaincontentFileName()Ljava/lang/String;
    .locals 1

    .line 136
    invoke-virtual {p0}, Lcom/amazon/kindle/download/assets/AssetGroup;->getMainAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IBookAsset;->getFilename()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRevision()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/AssetGroup;->revision:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/AssetGroup;->source:Ljava/lang/String;

    return-object v0
.end method

.method public setCorrelationId(Ljava/lang/String;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/amazon/kindle/download/assets/AssetGroup;->correlationId:Ljava/lang/String;

    return-void
.end method

.method public setGroupContext(Ljava/lang/String;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/amazon/kindle/download/assets/AssetGroup;->groupContext:Ljava/lang/String;

    return-void
.end method

.method public setRevision(Ljava/lang/String;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/amazon/kindle/download/assets/AssetGroup;->revision:Ljava/lang/String;

    return-void
.end method
