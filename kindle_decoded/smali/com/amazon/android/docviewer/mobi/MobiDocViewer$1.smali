.class Lcom/amazon/android/docviewer/mobi/MobiDocViewer$1;
.super Ljava/lang/Object;
.source "MobiDocViewer.java"

# interfaces
.implements Lcom/amazon/kindle/event/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->registerDownloadProgressListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/event/IEventHandler<",
        "Lcom/amazon/kindle/services/download/IBookAsset;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;)V
    .locals 0

    .line 443
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer$1;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEventTypes()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/event/EventType;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/amazon/kindle/event/EventType;

    .line 468
    sget-object v1, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->ASSET_DOWNLOAD_COMPLETE:Lcom/amazon/kindle/event/EventType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public handleEvent(Lcom/amazon/kindle/event/Event;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/event/Event<",
            "Lcom/amazon/kindle/services/download/IBookAsset;",
            ">;)V"
        }
    .end annotation

    .line 448
    invoke-virtual {p1}, Lcom/amazon/kindle/event/Event;->getPayload()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/services/download/IBookAsset;

    .line 449
    invoke-static {}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->access$000()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receiving event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/event/Event;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " resourceID="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", ASIN="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IBookAsset;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 450
    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetType()Lcom/amazon/kindle/services/download/AssetType;

    move-result-object p1

    sget-object v1, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;->TOAD_ASSET:Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

    if-ne p1, v1, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IBookAsset;->getState()Lcom/amazon/kindle/services/download/AssetState;

    move-result-object p1

    sget-object v1, Lcom/amazon/kindle/services/download/AssetState;->LOCAL:Lcom/amazon/kindle/services/download/AssetState;

    if-ne p1, v1, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IBookAsset;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer$1;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-static {v1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->access$100(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;)Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 451
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object p1

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer$1;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    .line 452
    invoke-static {v1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->access$200(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;)Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getFileName()Ljava/lang/String;

    move-result-object v1

    .line 451
    invoke-static {p1, v1}, Lcom/amazon/kindle/io/FileSystemHelper;->selectDirectoryPath(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 453
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IBookAsset;->getFilename()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 456
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer$1;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->attachResourceContainer(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
