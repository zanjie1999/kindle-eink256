.class public Lcom/amazon/kcp/library/DeleteActionItemHelper;
.super Lcom/amazon/kcp/library/AbstractActionItemHelper;
.source "DeleteActionItemHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/DeleteActionItemHelper$ItemSetStatus;
    }
.end annotation


# static fields
.field private static final DELETE_ITEMS_DIALOG_TAG:Ljava/lang/String; = "DeleteItemsDialogTag"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lcom/amazon/kcp/library/DeleteActionItemHelper;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/DeleteActionItemHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/amazon/kcp/library/AbstractActionItemHelper;-><init>()V

    return-void
.end method

.method private canDeleteFromCloud(Lcom/amazon/kcp/library/ILibraryDisplayItem;)Z
    .locals 1

    .line 115
    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_SAMPLE:Lcom/amazon/kcp/library/models/BookType;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private canDeleteFromDevice(Lcom/amazon/kcp/library/ILibraryDisplayItem;)Z
    .locals 0

    .line 110
    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->isLocal()Z

    move-result p1

    return p1
.end method


# virtual methods
.method deleteItems(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;)V"
        }
    .end annotation

    .line 84
    sget-object v0, Lcom/amazon/kcp/library/DeleteActionItemHelper;->TAG:Ljava/lang/String;

    const-string v1, "Cancelling download if any ongoing"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kcp/library/ILibraryController;->cancelDownloads(Ljava/util/Collection;)V

    .line 88
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kcp/library/ILibraryController;->deleteItems(Ljava/util/Collection;)V

    return-void
.end method

.method public getDialogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "DeleteItemsDialogTag"

    return-object v0
.end method

.method protected getItemSetStatus(Ljava/util/List;)Lcom/amazon/kcp/library/DeleteActionItemHelper$ItemSetStatus;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;)",
            "Lcom/amazon/kcp/library/DeleteActionItemHelper$ItemSetStatus;"
        }
    .end annotation

    .line 97
    new-instance v0, Lcom/amazon/kcp/library/DeleteActionItemHelper$ItemSetStatus;

    invoke-direct {v0}, Lcom/amazon/kcp/library/DeleteActionItemHelper$ItemSetStatus;-><init>()V

    .line 98
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    .line 99
    invoke-direct {p0, v1}, Lcom/amazon/kcp/library/DeleteActionItemHelper;->canDeleteFromDevice(Lcom/amazon/kcp/library/ILibraryDisplayItem;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 100
    iput-boolean v3, v0, Lcom/amazon/kcp/library/DeleteActionItemHelper$ItemSetStatus;->allItemsDeviceDeletable:Z

    .line 102
    :cond_1
    invoke-direct {p0, v1}, Lcom/amazon/kcp/library/DeleteActionItemHelper;->canDeleteFromCloud(Lcom/amazon/kcp/library/ILibraryDisplayItem;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    iput-boolean v3, v0, Lcom/amazon/kcp/library/DeleteActionItemHelper$ItemSetStatus;->allItemsCloudDeletable:Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public isVisible(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;)Z"
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/DeleteActionItemHelper;->getItemSetStatus(Ljava/util/List;)Lcom/amazon/kcp/library/DeleteActionItemHelper$ItemSetStatus;

    move-result-object p1

    .line 34
    iget-boolean v0, p1, Lcom/amazon/kcp/library/DeleteActionItemHelper$ItemSetStatus;->allItemsDeviceDeletable:Z

    if-nez v0, :cond_1

    iget-boolean p1, p1, Lcom/amazon/kcp/library/DeleteActionItemHelper$ItemSetStatus;->allItemsCloudDeletable:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onSelected(Ljava/util/List;)Lcom/amazon/kcp/library/LibraryDialogFragment;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;)",
            "Lcom/amazon/kcp/library/LibraryDialogFragment;"
        }
    .end annotation

    .line 39
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/DeleteActionItemHelper;->getItemSetStatus(Ljava/util/List;)Lcom/amazon/kcp/library/DeleteActionItemHelper$ItemSetStatus;

    move-result-object v0

    .line 47
    iget-boolean v1, v0, Lcom/amazon/kcp/library/DeleteActionItemHelper$ItemSetStatus;->allItemsCloudDeletable:Z

    if-eqz v1, :cond_0

    .line 53
    iget-boolean v0, v0, Lcom/amazon/kcp/library/DeleteActionItemHelper$ItemSetStatus;->allItemsDeviceDeletable:Z

    invoke-static {p1, v0}, Lcom/amazon/kcp/library/DeleteItemsDialog;->newInstance(Ljava/util/List;Z)Lcom/amazon/kcp/library/DeleteItemsDialog;

    move-result-object p1

    return-object p1

    .line 55
    :cond_0
    iget-boolean v0, v0, Lcom/amazon/kcp/library/DeleteActionItemHelper$ItemSetStatus;->allItemsDeviceDeletable:Z

    if-eqz v0, :cond_3

    .line 56
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "Library"

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    .line 57
    invoke-static {v1}, Lcom/amazon/kcp/util/LibraryUtils;->lookupMetadata(Lcom/amazon/kcp/library/ILibraryDisplayItem;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 59
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 60
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getAsin()Ljava/lang/String;

    move-result-object v4

    const-string v5, "asin"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getGuid()Ljava/lang/String;

    move-result-object v4

    const-string v5, "guid"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getContentType()Ljava/lang/String;

    move-result-object v1

    const-string v4, "filetype"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Deleted"

    .line 63
    invoke-static {v2, v1, v3}, Lcom/amazon/metrics/ClickstreamMetrics;->recordEventWithMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 68
    :cond_2
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/DeleteActionItemHelper;->deleteItems(Ljava/util/List;)V

    .line 72
    invoke-static {p1}, Lcom/amazon/kcp/util/fastmetrics/RecordLibraryActionButtonMetricsKt;->convertLibraryDisplayItemListToContentMetadataList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    const-string v0, "LibraryLongPressMenuItemPressed"

    const-string v1, "RemoveItems"

    .line 70
    invoke-static {v0, p1, v1, v2}, Lcom/amazon/kcp/util/fastmetrics/LibraryActionMenuMetricsRecorder;->reportLibraryActionMenuActionSelectedMetrics(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 75
    :cond_3
    sget-object p1, Lcom/amazon/kcp/library/DeleteActionItemHelper;->TAG:Ljava/lang/String;

    const-string v0, "Item selection state does not support deletion."

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method
