.class final Lcom/amazon/kindle/recaps/fragments/TocFragment$setListViewListener$1;
.super Ljava/lang/Object;
.source "TocFragment.kt"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/recaps/fragments/TocFragment;->setListViewListener(Lcom/amazon/kindle/krx/reader/ITableOfContents;Landroid/widget/ListView;Lcom/amazon/kindle/recaps/fragments/TocFragment$TOCArrayAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTocFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TocFragment.kt\ncom/amazon/kindle/recaps/fragments/TocFragment$setListViewListener$1\n*L\n1#1,151:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $listAdapter:Lcom/amazon/kindle/recaps/fragments/TocFragment$TOCArrayAdapter;

.field final synthetic this$0:Lcom/amazon/kindle/recaps/fragments/TocFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/recaps/fragments/TocFragment;Lcom/amazon/kindle/recaps/fragments/TocFragment$TOCArrayAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/recaps/fragments/TocFragment$setListViewListener$1;->this$0:Lcom/amazon/kindle/recaps/fragments/TocFragment;

    iput-object p2, p0, Lcom/amazon/kindle/recaps/fragments/TocFragment$setListViewListener$1;->$listAdapter:Lcom/amazon/kindle/recaps/fragments/TocFragment$TOCArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 127
    const-class p1, Lcom/amazon/kindle/recaps/controller/ReadingModeBookViewController;

    invoke-static {p1}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/recaps/controller/ReadingModeBookViewController;

    .line 128
    iget-object p2, p0, Lcom/amazon/kindle/recaps/fragments/TocFragment$setListViewListener$1;->$listAdapter:Lcom/amazon/kindle/recaps/fragments/TocFragment$TOCArrayAdapter;

    invoke-virtual {p2, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/amazon/kindle/recaps/controller/ReadingModeBookViewController;->navigateToPosition(I)V

    .line 133
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/recaps/fragments/TocFragment$setListViewListener$1;->this$0:Lcom/amazon/kindle/recaps/fragments/TocFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    sget p2, Lcom/amazon/kindle/recaps/R$id;->recaps_toc_button:I

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ToggleButton;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 134
    invoke-virtual {p1}, Landroid/widget/ToggleButton;->toggle()V

    .line 135
    sget-object p1, Lcom/amazon/kindle/recaps/metrics/RecapsFastMetricsClient;->INSTANCE:Lcom/amazon/kindle/recaps/metrics/RecapsFastMetricsClient;

    sget-object p2, Lcom/amazon/kindle/recaps/metrics/RecapsUserAction;->RECAPS_TABLE_OF_CONTENTS_ITEM_CLICKED:Lcom/amazon/kindle/recaps/metrics/RecapsUserAction;

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/recaps/metrics/RecapsFastMetricsClient;->recordRecapsUserAction(Lcom/amazon/kindle/recaps/metrics/RecapsUserAction;)V

    return-void

    .line 133
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.ToggleButton"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
