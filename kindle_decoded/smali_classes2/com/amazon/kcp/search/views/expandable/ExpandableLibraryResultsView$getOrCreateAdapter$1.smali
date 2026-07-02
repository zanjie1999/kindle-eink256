.class final Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView$getOrCreateAdapter$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ExpandableLibraryResultsView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView;->getOrCreateAdapter()Lcom/amazon/kcp/search/views/LibraryResultsAdapter;
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
.field final synthetic $expandCompletedCallback:Lkotlin/jvm/functions/Function0;

.field final synthetic $isFOSDevice:Z


# direct methods
.method constructor <init>(ZLkotlin/jvm/functions/Function0;)V
    .locals 0

    iput-boolean p1, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView$getOrCreateAdapter$1;->$isFOSDevice:Z

    iput-object p2, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView$getOrCreateAdapter$1;->$expandCompletedCallback:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView$getOrCreateAdapter$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 89
    iget-boolean v0, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView$getOrCreateAdapter$1;->$isFOSDevice:Z

    if-eqz v0, :cond_0

    .line 94
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView$getOrCreateAdapter$1$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView$getOrCreateAdapter$1$1;-><init>(Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView$getOrCreateAdapter$1;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView$getOrCreateAdapter$1;->$expandCompletedCallback:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :goto_0
    return-void
.end method
