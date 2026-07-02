.class Lcom/amazon/klo/KindleLearningObjectDetailActivity$12;
.super Ljava/lang/Object;
.source "KindleLearningObjectDetailActivity.java"

# interfaces
.implements Lcom/amazon/klo/list/PageListAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/klo/KindleLearningObjectDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/klo/KindleLearningObjectDetailActivity;


# direct methods
.method constructor <init>(Lcom/amazon/klo/KindleLearningObjectDetailActivity;)V
    .locals 0

    .line 736
    iput-object p1, p0, Lcom/amazon/klo/KindleLearningObjectDetailActivity$12;->this$0:Lcom/amazon/klo/KindleLearningObjectDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 8

    .line 740
    iget-object v0, p0, Lcom/amazon/klo/KindleLearningObjectDetailActivity$12;->this$0:Lcom/amazon/klo/KindleLearningObjectDetailActivity;

    invoke-static {v0}, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->access$700(Lcom/amazon/klo/KindleLearningObjectDetailActivity;)Lcom/amazon/klo/list/PageListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/klo/list/PageListAdapter;->getItem(I)Lcom/amazon/klo/list/PageListItem;

    move-result-object p1

    .line 744
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 747
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 750
    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 753
    invoke-interface {v4}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getPositionFactory()Lcom/amazon/kindle/krx/reader/IPositionFactory;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 756
    invoke-static {}, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->access$800()Lcom/amazon/kindle/krx/reader/IPositionFactory;

    move-result-object v5

    invoke-virtual {p1}, Lcom/amazon/klo/list/PageListItem;->getLocation()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/amazon/kindle/krx/reader/IPositionFactory;->createFromInt(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v5

    .line 758
    invoke-interface {v4}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getCurrentPageStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v6

    .line 759
    invoke-interface {v4}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getCurrentPageEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v4

    .line 760
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 761
    invoke-interface {v5, v6}, Lcom/amazon/kindle/krx/reader/IPosition;->isAfter(Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5, v4}, Lcom/amazon/kindle/krx/reader/IPosition;->isBefore(Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    .line 763
    :goto_1
    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookContent()Lcom/amazon/kindle/krx/content/IBookContent;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 766
    invoke-interface {v3, v5}, Lcom/amazon/kindle/krx/content/IBookContent;->getPageIndexFromPosition(Lcom/amazon/kindle/krx/reader/IPosition;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 767
    iget-object v6, p0, Lcom/amazon/klo/KindleLearningObjectDetailActivity$12;->this$0:Lcom/amazon/klo/KindleLearningObjectDetailActivity;

    invoke-static {v6}, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->access$000(Lcom/amazon/klo/KindleLearningObjectDetailActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/amazon/klo/KLOMetricManager;->reportPageClickedFromTerm(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    :cond_2
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 774
    invoke-static {}, Lcom/amazon/klo/HighlightProvider;->getInstance()Lcom/amazon/klo/HighlightProvider;

    move-result-object v6

    .line 775
    iget-object v7, p0, Lcom/amazon/klo/KindleLearningObjectDetailActivity$12;->this$0:Lcom/amazon/klo/KindleLearningObjectDetailActivity;

    invoke-static {v7}, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->access$000(Lcom/amazon/klo/KindleLearningObjectDetailActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/amazon/klo/HighlightProvider;->setTerm(Ljava/lang/String;)V

    .line 776
    invoke-virtual {p1}, Lcom/amazon/klo/list/PageListItem;->getTermOccurrence()Lcom/amazon/klo/search/TermOccurrence;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/amazon/klo/HighlightProvider;->setTermOccurrence(Lcom/amazon/klo/search/TermOccurrence;)V

    .line 777
    invoke-virtual {v6, v5}, Lcom/amazon/klo/HighlightProvider;->setTermPosition(Lcom/amazon/kindle/krx/reader/IPosition;)V

    .line 778
    invoke-static {}, Lcom/amazon/klo/HighlightProvider;->getInstance()Lcom/amazon/klo/HighlightProvider;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->refreshDecorationProvider(Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;)V

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    .line 785
    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/amazon/klo/KindleLearningObjectDetailActivity$12;->this$0:Lcom/amazon/klo/KindleLearningObjectDetailActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-nez v4, :cond_8

    .line 791
    iget-object v4, p0, Lcom/amazon/klo/KindleLearningObjectDetailActivity$12;->this$0:Lcom/amazon/klo/KindleLearningObjectDetailActivity;

    invoke-static {v4}, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->access$400(Lcom/amazon/klo/KindleLearningObjectDetailActivity;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/amazon/klo/KindleLearningObjectDetailActivity$12;->this$0:Lcom/amazon/klo/KindleLearningObjectDetailActivity;

    invoke-static {v4}, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->access$900(Lcom/amazon/klo/KindleLearningObjectDetailActivity;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/amazon/klo/KindleLearningObjectDetailActivity$12;->this$0:Lcom/amazon/klo/KindleLearningObjectDetailActivity;

    invoke-static {v4}, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->access$500(Lcom/amazon/klo/KindleLearningObjectDetailActivity;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :cond_6
    :goto_3
    if-eqz v1, :cond_7

    .line 794
    iget-object v1, p0, Lcom/amazon/klo/KindleLearningObjectDetailActivity$12;->this$0:Lcom/amazon/klo/KindleLearningObjectDetailActivity;

    invoke-virtual {p1}, Lcom/amazon/klo/list/PageListItem;->getLocation()I

    move-result p1

    invoke-static {v1, p1}, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->access$1000(Lcom/amazon/klo/KindleLearningObjectDetailActivity;I)V

    goto :goto_4

    .line 798
    :cond_7
    invoke-virtual {p1}, Lcom/amazon/klo/list/PageListItem;->getLocation()I

    move-result p1

    const-string/jumbo v1, "readerJumpToPosition"

    invoke-virtual {v3, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 801
    :goto_4
    invoke-static {}, Lcom/amazon/klo/KindleLearningObjectPlugin;->getInstance()Lcom/amazon/klo/KindleLearningObjectPlugin;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/klo/KindleLearningObjectPlugin;->dontDiscardIntentOnNextNavigation()V

    .line 803
    :cond_8
    iget-object p1, p0, Lcom/amazon/klo/KindleLearningObjectDetailActivity$12;->this$0:Lcom/amazon/klo/KindleLearningObjectDetailActivity;

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 804
    invoke-static {}, Lcom/amazon/klo/KindleLearningObjectPlugin;->getInstance()Lcom/amazon/klo/KindleLearningObjectPlugin;

    move-result-object p1

    iget-object v1, p0, Lcom/amazon/klo/KindleLearningObjectDetailActivity$12;->this$0:Lcom/amazon/klo/KindleLearningObjectDetailActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazon/klo/KindleLearningObjectPlugin;->saveIntent(Landroid/content/Intent;)V

    .line 805
    iget-object p1, p0, Lcom/amazon/klo/KindleLearningObjectDetailActivity$12;->this$0:Lcom/amazon/klo/KindleLearningObjectDetailActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 806
    iget-object p1, p0, Lcom/amazon/klo/KindleLearningObjectDetailActivity$12;->this$0:Lcom/amazon/klo/KindleLearningObjectDetailActivity;

    invoke-static {p1}, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->access$500(Lcom/amazon/klo/KindleLearningObjectDetailActivity;)Z

    move-result p1

    if-eqz p1, :cond_9

    if-eqz v0, :cond_9

    .line 810
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 813
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->clearActivitiesOverReaderActivity()V

    :cond_9
    return-void
.end method
