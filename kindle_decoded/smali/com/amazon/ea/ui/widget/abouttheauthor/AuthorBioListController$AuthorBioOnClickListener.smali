.class Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController$AuthorBioOnClickListener;
.super Ljava/lang/Object;
.source "AuthorBioListController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AuthorBioOnClickListener"
.end annotation


# instance fields
.field private asin:Ljava/lang/String;

.field private authorBioViewList:Landroid/view/View;

.field private authorIndex:I

.field final synthetic this$0:Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController;


# direct methods
.method public constructor <init>(Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController;Ljava/lang/String;ILandroid/view/View;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController$AuthorBioOnClickListener;->this$0:Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-object p2, p0, Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController$AuthorBioOnClickListener;->asin:Ljava/lang/String;

    .line 195
    iput p3, p0, Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController$AuthorBioOnClickListener;->authorIndex:I

    .line 196
    iput-object p4, p0, Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController$AuthorBioOnClickListener;->authorBioViewList:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 205
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController$AuthorBioOnClickListener;->asin:Ljava/lang/String;

    sget-object v0, Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;->AUTHOR_DETAIL_PAGE:Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;

    iget-object v1, p0, Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController$AuthorBioOnClickListener;->this$0:Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController;

    invoke-static {v1}, Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController;->access$300(Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController;)Lcom/amazon/ea/model/widget/abouttheauthor/AuthorBioListModel;

    move-result-object v1

    iget-object v1, v1, Lcom/amazon/ea/model/widget/WidgetModel;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController$AuthorBioOnClickListener;->this$0:Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController;

    .line 206
    invoke-static {v2}, Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController;->access$300(Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController;)Lcom/amazon/ea/model/widget/abouttheauthor/AuthorBioListModel;

    move-result-object v2

    iget v3, p0, Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController$AuthorBioOnClickListener;->authorIndex:I

    invoke-virtual {v2, v3}, Lcom/amazon/ea/model/widget/abouttheauthor/AuthorBioListModel;->getRefTagFeatureId(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AnyActionsAuthorBioWidget"

    .line 205
    invoke-static {p1, v0, v1, v2, v3}, Lcom/amazon/ea/util/StoreManager;->loadDetailPage(Ljava/lang/String;Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    const-string v0, "ExpandedAuthorBio"

    const-string v1, "ViewedAuthorBio"

    if-nez p1, :cond_2

    .line 207
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController$AuthorBioOnClickListener;->authorBioViewList:Landroid/view/View;

    iget-object v1, p0, Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController$AuthorBioOnClickListener;->asin:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/amazon/startactions/ui/helpers/TextViewWithMaxLines;

    if-eqz p1, :cond_1

    .line 208
    invoke-virtual {p1}, Lcom/amazon/startactions/ui/helpers/TextViewWithMaxLines;->getMaxLines()I

    move-result v1

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 212
    :cond_0
    invoke-virtual {p1, v2}, Lcom/amazon/startactions/ui/helpers/TextViewWithMaxLines;->setMaxLines(I)V

    move-object v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v0, v1

    .line 221
    :goto_1
    sget-object p1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 222
    sget-object p1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v0, "DidAnything"

    invoke-virtual {p1, v0, v2}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 225
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    .line 226
    invoke-static {v2}, Lcom/amazon/ea/guava/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object p1

    .line 227
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController$AuthorBioOnClickListener;->this$0:Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController;

    invoke-static {v0}, Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController;->access$300(Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController;)Lcom/amazon/ea/model/widget/abouttheauthor/AuthorBioListModel;

    move-result-object v0

    iget-object v0, v0, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    const-string v2, "MetricsTag"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    invoke-interface {v0, v3, v1, p1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
