.class Lcom/amazon/kindle/cms/ContentManagementSystem$8;
.super Lcom/amazon/kindle/cms/ContentManagementSystem$CmsCommunicationRetryRunnable;
.source "ContentManagementSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/cms/ContentManagementSystem;->insertReaderLibraryActionItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/cms/ContentManagementSystem;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/cms/ContentManagementSystem;Ljava/lang/String;)V
    .locals 0

    .line 1404
    iput-object p1, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$8;->this$0:Lcom/amazon/kindle/cms/ContentManagementSystem;

    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/cms/ContentManagementSystem$CmsCommunicationRetryRunnable;-><init>(Lcom/amazon/kindle/cms/ContentManagementSystem;Ljava/lang/String;)V

    return-void
.end method

.method private generateActionItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lcom/amazon/kindle/cms/api/ActionItem;
    .locals 13

    move-object v0, p0

    .line 1445
    iget-object v1, v0, Lcom/amazon/kindle/cms/ContentManagementSystem$8;->this$0:Lcom/amazon/kindle/cms/ContentManagementSystem;

    invoke-static {v1}, Lcom/amazon/kindle/cms/ContentManagementSystem;->access$300(Lcom/amazon/kindle/cms/ContentManagementSystem;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move/from16 v2, p3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1446
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLocaleManager()Lcom/amazon/kindle/services/locale/ILocaleManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/services/locale/ILocaleManager;->getAmazonLocaleCode()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v4, 0x2

    aput-object v2, v3, v4

    const-string v4, "Generating action item with key(%s) label(%s) locale(%s)"

    .line 1448
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1450
    new-instance v3, Lcom/amazon/kindle/cms/api/ActionItem;

    new-instance v7, Lcom/amazon/kindle/cms/api/SortableName;

    invoke-direct {v7, v1, v1, v2}, Lcom/amazon/kindle/cms/api/SortableName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v10, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iget-object v1, v0, Lcom/amazon/kindle/cms/ContentManagementSystem$8;->this$0:Lcom/amazon/kindle/cms/ContentManagementSystem;

    iget-object v1, v1, Lcom/amazon/kindle/cms/ContentManagementSystem;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    .line 1457
    invoke-interface {v1}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v12

    move-object v5, v3

    move-object v6, p1

    move-object/from16 v8, p4

    move-object v9, p2

    move/from16 v11, p5

    invoke-direct/range {v5 .. v12}, Lcom/amazon/kindle/cms/api/ActionItem;-><init>(Ljava/lang/String;Lcom/amazon/kindle/cms/api/SortableName;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;ILjava/lang/String;)V

    return-object v3
.end method


# virtual methods
.method execute()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/cms/api/CommunicationException;
        }
    .end annotation

    .line 1409
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got cmsServer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/cms/ContentManagementSystem;->cmsServer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1410
    sget-object v0, Lcom/amazon/kindle/cms/ContentManagementSystem;->cmsServer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1412
    iget-object v0, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$8;->this$0:Lcom/amazon/kindle/cms/ContentManagementSystem;

    invoke-virtual {v0}, Lcom/amazon/kindle/cms/ContentManagementSystem;->triggerAndWaitForConnection()V

    :cond_0
    const-string v0, "group/launcher/books/library"

    const-string v7, "tablet_side_panel_books"

    const-string v8, "group/launcher/newsstand/library"

    const-string v9, "tablet_side_panel_newsstand"

    const/4 v3, 0x0

    .line 1420
    sget v4, Lcom/amazon/kindle/krl/R$string;->lib_title:I

    const/16 v6, 0xa

    move-object v1, p0

    move-object v2, v0

    move-object v5, v7

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kindle/cms/ContentManagementSystem$8;->generateActionItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lcom/amazon/kindle/cms/api/ActionItem;

    move-result-object v10

    .line 1421
    sget-object v1, Lcom/amazon/kindle/cms/CMSAction;->BOOKS_LIBRARY:Lcom/amazon/kindle/cms/CMSAction;

    invoke-virtual {v1}, Lcom/amazon/kindle/cms/CMSAction;->getActionArg()Ljava/lang/String;

    move-result-object v2

    sget v4, Lcom/amazon/kindle/krl/R$string;->cms_books_library:I

    const/16 v6, 0xa

    move-object v1, p0

    move-object v3, v0

    move-object v5, v7

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kindle/cms/ContentManagementSystem$8;->generateActionItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lcom/amazon/kindle/cms/api/ActionItem;

    move-result-object v11

    .line 1422
    sget-object v1, Lcom/amazon/kindle/cms/CMSAction;->BOOKS_COLLECTIONS:Lcom/amazon/kindle/cms/CMSAction;

    invoke-virtual {v1}, Lcom/amazon/kindle/cms/CMSAction;->getActionArg()Ljava/lang/String;

    move-result-object v2

    sget v4, Lcom/amazon/kindle/krl/R$string;->collections:I

    const/16 v6, 0x14

    move-object v1, p0

    move-object v3, v0

    move-object v5, v7

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kindle/cms/ContentManagementSystem$8;->generateActionItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lcom/amazon/kindle/cms/api/ActionItem;

    move-result-object v0

    const/4 v3, 0x0

    .line 1424
    sget v4, Lcom/amazon/kindle/krl/R$string;->lib_title:I

    const/16 v6, 0xa

    move-object v1, p0

    move-object v2, v8

    move-object v5, v9

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kindle/cms/ContentManagementSystem$8;->generateActionItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lcom/amazon/kindle/cms/api/ActionItem;

    move-result-object v7

    .line 1425
    sget-object v1, Lcom/amazon/kindle/cms/CMSAction;->NEWSSTAND_LIBRARY:Lcom/amazon/kindle/cms/CMSAction;

    invoke-virtual {v1}, Lcom/amazon/kindle/cms/CMSAction;->getActionArg()Ljava/lang/String;

    move-result-object v2

    sget v4, Lcom/amazon/kindle/krl/R$string;->cms_newsstand_library:I

    const/16 v6, 0xa

    move-object v1, p0

    move-object v3, v8

    move-object v5, v9

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kindle/cms/ContentManagementSystem$8;->generateActionItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lcom/amazon/kindle/cms/api/ActionItem;

    move-result-object v12

    .line 1426
    sget-object v1, Lcom/amazon/kindle/cms/CMSAction;->NEWSSTAND_COLLECTIONS:Lcom/amazon/kindle/cms/CMSAction;

    invoke-virtual {v1}, Lcom/amazon/kindle/cms/CMSAction;->getActionArg()Ljava/lang/String;

    move-result-object v2

    sget v4, Lcom/amazon/kindle/krl/R$string;->collections:I

    const/16 v6, 0x14

    move-object v1, p0

    move-object v3, v8

    move-object v5, v9

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kindle/cms/ContentManagementSystem$8;->generateActionItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lcom/amazon/kindle/cms/api/ActionItem;

    move-result-object v1

    .line 1428
    sget-object v2, Lcom/amazon/kindle/cms/ContentManagementSystem;->cmsServer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/cms/api/CMSServer;

    sget-object v3, Lcom/amazon/kindle/cms/IContentManagementSystem;->SOURCE_URI:Landroid/net/Uri;

    invoke-interface {v2, v3}, Lcom/amazon/kindle/cms/api/CMSServer;->beginUpdate(Landroid/net/Uri;)Lcom/amazon/kindle/cms/api/Update;

    move-result-object v2

    .line 1429
    invoke-interface {v2, v10}, Lcom/amazon/kindle/cms/api/Update;->updateItem(Lcom/amazon/kindle/cms/api/Item;)V

    .line 1430
    invoke-interface {v2, v7}, Lcom/amazon/kindle/cms/api/Update;->updateItem(Lcom/amazon/kindle/cms/api/Item;)V

    .line 1431
    invoke-interface {v2, v11}, Lcom/amazon/kindle/cms/api/Update;->updateItem(Lcom/amazon/kindle/cms/api/Item;)V

    .line 1432
    invoke-interface {v2, v0}, Lcom/amazon/kindle/cms/api/Update;->updateItem(Lcom/amazon/kindle/cms/api/Item;)V

    .line 1433
    invoke-interface {v2, v12}, Lcom/amazon/kindle/cms/api/Update;->updateItem(Lcom/amazon/kindle/cms/api/Item;)V

    .line 1434
    invoke-interface {v2, v1}, Lcom/amazon/kindle/cms/api/Update;->updateItem(Lcom/amazon/kindle/cms/api/Item;)V

    .line 1435
    invoke-interface {v2}, Lcom/amazon/kindle/cms/api/Update;->close()V
    :try_end_0
    .catch Lcom/amazon/kindle/cms/api/CommunicationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "ContentManagementSystem"

    const-string v2, "Exception when attempting to insert library action items "

    .line 1439
    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1440
    throw v0
.end method
