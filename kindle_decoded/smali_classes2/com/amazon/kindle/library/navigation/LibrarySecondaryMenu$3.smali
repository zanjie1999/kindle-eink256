.class Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$3;
.super Ljava/lang/Object;
.source "LibrarySecondaryMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->setupFilterMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$3;->this$0:Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 231
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isComicsBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$3;->this$0:Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;

    invoke-static {v0, p1}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->access$100(Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;Landroid/view/View;)V

    .line 235
    :cond_0
    sget-object p1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->FILTER_MENU_OPEN:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-static {p1}, Lcom/amazon/kindle/performance/PerformanceEventBuilder;->createStartEvent(Lcom/amazon/kindle/performance/KindlePerformanceConstants;)Lcom/amazon/kindle/performance/PerformanceEventBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/performance/PerformanceEventBuilder;->buildAndSend()V

    .line 236
    iget-object p1, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$3;->this$0:Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;

    invoke-static {p1}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->access$200(Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;)Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;

    move-result-object p1

    if-nez p1, :cond_1

    .line 237
    iget-object p1, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$3;->this$0:Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;

    new-instance v8, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;

    iget-object v1, p1, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->activity:Landroid/app/Activity;

    iget-object v0, p1, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->rootView:Landroid/view/ViewGroup;

    sget v2, Lcom/amazon/kindle/librarymodule/R$id;->refine_menu_button_container:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v0, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$3;->this$0:Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;

    .line 238
    invoke-static {v0}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->access$300(Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;)Lcom/amazon/kcp/library/LibraryFilterStateManager;

    move-result-object v3

    iget-object v0, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$3;->this$0:Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;

    invoke-static {v0}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->access$400(Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;)Lcom/amazon/kcp/library/ILibraryFilter;

    move-result-object v4

    iget-object v0, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$3;->this$0:Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;

    invoke-static {v0}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->access$500(Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$3;->this$0:Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;

    invoke-static {v0}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->access$600(Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;)Lcom/amazon/kindle/krx/library/LibraryGroupType;

    move-result-object v6

    iget-object v0, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$3;->this$0:Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;

    iget-object v0, v0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->libraryContext:Lcom/amazon/kcp/library/LibraryContext;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/LibraryContext;->getInlineFilterGroupName()Ljava/lang/String;

    move-result-object v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/amazon/kcp/library/LibraryFilterStateManager;Lcom/amazon/kcp/library/ILibraryFilter;Ljava/lang/String;Lcom/amazon/kindle/krx/library/LibraryGroupType;Ljava/lang/String;)V

    .line 237
    invoke-static {p1, v8}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->access$202(Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;)Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;

    .line 240
    iget-object p1, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$3;->this$0:Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;

    invoke-static {p1}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->access$200(Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;)Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;

    move-result-object p1

    new-instance v0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$3$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$3$1;-><init>(Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$3;)V

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->setDismissListener(Lcom/amazon/kindle/library/ui/popup/DismissListener;)V

    .line 248
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$3;->this$0:Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;

    const/4 v0, 0x1

    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->refine_button:I

    invoke-static {p1, v0, v1}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->access$700(Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;II)V

    .line 249
    iget-object p1, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$3;->this$0:Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;

    invoke-static {p1}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->access$500(Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/util/fastmetrics/LibraryContextMetricsRecorder;->recordOpenFilterMenuAction(Ljava/lang/String;)V

    .line 250
    iget-object p1, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$3;->this$0:Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;

    invoke-static {p1}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->access$200(Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;)Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 251
    iget-object p1, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$3;->this$0:Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;

    invoke-static {p1}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->access$200(Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;)Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->show()V

    :cond_2
    return-void
.end method
