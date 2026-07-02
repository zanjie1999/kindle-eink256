.class final Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView$getOrCreateAdapter$expandCompletedCallback$1;
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
.field final synthetic this$0:Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView$getOrCreateAdapter$expandCompletedCallback$1;->this$0:Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView$getOrCreateAdapter$expandCompletedCallback$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 82
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAccessibilitySpeaker()Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView$getOrCreateAdapter$expandCompletedCallback$1;->this$0:Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/amazon/kcp/search/R$string;->shake_to_collapse_library_search_section_instruction:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 84
    iget-object v2, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView$getOrCreateAdapter$expandCompletedCallback$1;->this$0:Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView;

    invoke-virtual {v2}, Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget;->getExpandBtn()Landroid/widget/Button;

    move-result-object v2

    .line 82
    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->speakViaTalkback(Ljava/lang/CharSequence;Landroid/view/View;)V

    return-void
.end method
