.class final Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper$bindViewUpdater$refresh$1;
.super Lkotlin/jvm/internal/Lambda;
.source "LargeLibraryRecyclerAdapterHelper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->bindViewUpdater(Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;Landroid/view/View;Landroid/content/Context;ILcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/library/fragments/RecyclerFragmentUpdater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

.field final synthetic $position:I

.field final synthetic $view:Landroid/view/View;

.field final synthetic $viewUpdater:Lcom/amazon/kcp/library/fragments/RecyclerFragmentUpdater;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/fragments/RecyclerFragmentUpdater;Landroid/view/View;Landroid/content/Context;ILcom/amazon/kcp/library/ILibraryDisplayItem;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper$bindViewUpdater$refresh$1;->$viewUpdater:Lcom/amazon/kcp/library/fragments/RecyclerFragmentUpdater;

    iput-object p2, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper$bindViewUpdater$refresh$1;->$view:Landroid/view/View;

    iput-object p3, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper$bindViewUpdater$refresh$1;->$context:Landroid/content/Context;

    iput p4, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper$bindViewUpdater$refresh$1;->$position:I

    iput-object p5, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper$bindViewUpdater$refresh$1;->$libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper$bindViewUpdater$refresh$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 5

    .line 248
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper$bindViewUpdater$refresh$1;->$viewUpdater:Lcom/amazon/kcp/library/fragments/RecyclerFragmentUpdater;

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper$bindViewUpdater$refresh$1;->$view:Landroid/view/View;

    iget-object v2, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper$bindViewUpdater$refresh$1;->$context:Landroid/content/Context;

    iget v3, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper$bindViewUpdater$refresh$1;->$position:I

    iget-object v4, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper$bindViewUpdater$refresh$1;->$libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/amazon/kcp/library/fragments/RecyclerFragmentUpdater;->setDataOnView(Landroid/view/View;Landroid/content/Context;ILcom/amazon/kcp/library/ILibraryDisplayItem;)V

    return-void
.end method
