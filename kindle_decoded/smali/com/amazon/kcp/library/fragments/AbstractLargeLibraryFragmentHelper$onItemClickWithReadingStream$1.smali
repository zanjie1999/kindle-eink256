.class public final Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper$onItemClickWithReadingStream$1;
.super Ljava/lang/Object;
.source "AbstractLargeLibraryFragmentHelper.kt"

# interfaces
.implements Lcom/amazon/kcp/integrator/ILibraryRetrievalListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper;->onItemClickWithReadingStream(Landroid/view/View;Lcom/amazon/kindle/observablemodel/ItemID;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kcp/integrator/ILibraryRetrievalListener<",
        "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $readingStreamContext:Ljava/lang/String;

.field final synthetic $view:Landroid/view/View;

.field final synthetic this$0:Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper;Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 116
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper$onItemClickWithReadingStream$1;->this$0:Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper;

    iput-object p2, p0, Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper$onItemClickWithReadingStream$1;->$view:Landroid/view/View;

    iput-object p3, p0, Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper$onItemClickWithReadingStream$1;->$readingStreamContext:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onItemRetrieved(Lcom/amazon/kcp/integrator/ILargeLibraryDisplayItem;)V
    .locals 0

    .line 116
    check-cast p1, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper$onItemClickWithReadingStream$1;->onItemRetrieved(Lcom/amazon/kcp/library/ILibraryDisplayItem;)V

    return-void
.end method

.method public onItemRetrieved(Lcom/amazon/kcp/library/ILibraryDisplayItem;)V
    .locals 8

    const-string v0, "libraryItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v3, v0

    check-cast v3, Lcom/amazon/kcp/reader/ReaderController;

    .line 120
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper$onItemClickWithReadingStream$1;->this$0:Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper;

    iget-object v1, v0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->contentHandler:Lcom/amazon/kcp/library/ILibraryContentInteractionHandler;

    .line 121
    iget-object v0, v0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->fragment:Landroidx/fragment/app/Fragment;

    const-string v2, "fragment"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    .line 124
    iget-object v5, p0, Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper$onItemClickWithReadingStream$1;->$view:Landroid/view/View;

    .line 125
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper$onItemClickWithReadingStream$1;->this$0:Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper;

    iget-object v6, v0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->handler:Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    .line 126
    iget-object v7, p0, Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper$onItemClickWithReadingStream$1;->$readingStreamContext:Ljava/lang/String;

    move-object v4, p1

    .line 120
    invoke-interface/range {v1 .. v7}, Lcom/amazon/kcp/library/ILibraryContentInteractionHandler;->onItemClick(Landroid/app/Activity;Lcom/amazon/kcp/reader/ReaderController;Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;Ljava/lang/String;)V

    return-void

    .line 119
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "null cannot be cast to non-null type com.amazon.kcp.reader.ReaderController"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
