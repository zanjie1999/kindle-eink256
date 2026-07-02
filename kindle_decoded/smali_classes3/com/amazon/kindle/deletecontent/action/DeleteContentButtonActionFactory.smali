.class public final Lcom/amazon/kindle/deletecontent/action/DeleteContentButtonActionFactory;
.super Lcom/amazon/kindle/krx/library/BaseLibraryBookActionFactory;
.source "DeleteContentButtonActionFactory.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/library/LibraryBookActionFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/amazon/kindle/krx/library/BaseLibraryBookActionFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createActions(Lcom/amazon/kindle/krx/library/LibraryBookActionContext;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/library/LibraryBookActionContext;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/library/LibraryBookAction;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-static {}, Lcom/amazon/kcp/debug/DeleteBooksFromAccountDebugUtils;->isDeleteBooksFromAccountEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 14
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/amazon/kindle/krx/library/LibraryBookAction;

    const/4 v1, 0x0

    .line 18
    sget-object v2, Lcom/amazon/kindle/deletecontent/action/RemoveDownloadActionButton;->Companion:Lcom/amazon/kindle/deletecontent/action/RemoveDownloadActionButton$Companion;

    invoke-virtual {v2, p1}, Lcom/amazon/kindle/deletecontent/action/RemoveDownloadActionButton$Companion;->create(Lcom/amazon/kindle/krx/library/LibraryBookActionContext;)Lcom/amazon/kindle/krx/library/LibraryBookAction;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 19
    sget-object v2, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;->Companion:Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton$Companion;

    invoke-virtual {v2, p1}, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton$Companion;->create(Lcom/amazon/kindle/krx/library/LibraryBookActionContext;)Lcom/amazon/kindle/krx/library/LibraryBookAction;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 20
    sget-object v2, Lcom/amazon/kindle/deletecontent/action/RemoveFromLibraryActionButton;->Companion:Lcom/amazon/kindle/deletecontent/action/RemoveFromLibraryActionButton$Companion;

    invoke-virtual {v2, p1}, Lcom/amazon/kindle/deletecontent/action/RemoveFromLibraryActionButton$Companion;->create(Lcom/amazon/kindle/krx/library/LibraryBookActionContext;)Lcom/amazon/kindle/krx/library/LibraryBookAction;

    move-result-object p1

    aput-object p1, v0, v1

    .line 17
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createActions(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 10
    check-cast p1, Lcom/amazon/kindle/krx/library/LibraryBookActionContext;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/deletecontent/action/DeleteContentButtonActionFactory;->createActions(Lcom/amazon/kindle/krx/library/LibraryBookActionContext;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method
