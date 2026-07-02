.class Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$DefinitionLinkClickListener;
.super Ljava/lang/Object;
.source "DefinitionViewController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefinitionLinkClickListener"
.end annotation


# instance fields
.field private final isInlineLink:Z

.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;


# direct methods
.method private constructor <init>(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;Z)V
    .locals 0

    .line 1174
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$DefinitionLinkClickListener;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1175
    iput-boolean p2, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$DefinitionLinkClickListener;->isInlineLink:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;ZLcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$1;)V
    .locals 0

    .line 1170
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$DefinitionLinkClickListener;-><init>(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;Z)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 1180
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$DefinitionLinkClickListener;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->access$1100(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;)Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter;->getOpenedDictionary()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    .line 1181
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$DefinitionLinkClickListener;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->access$1100(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;)Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter;->getOpenedDictionaryDocument()Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryDocument;

    move-result-object p1

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    .line 1183
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$DefinitionLinkClickListener;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->access$1200(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;)Lcom/amazon/kindle/dictionary/IDictionaryResult;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1184
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$DefinitionLinkClickListener;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

    iget-object p1, p1, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->readerController:Lcom/amazon/kcp/reader/IReaderController;

    check-cast p1, Lcom/amazon/kcp/reader/ReaderController;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderController;->getCurrentBook()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    .line 1188
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$DefinitionLinkClickListener;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->access$1200(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;)Lcom/amazon/kindle/dictionary/IDictionaryResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/dictionary/IDictionaryResult;->getFirstPositionId()J

    move-result-wide v2

    long-to-int v0, v2

    .line 1189
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$DefinitionLinkClickListener;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

    invoke-static {v2}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->access$1200(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;)Lcom/amazon/kindle/dictionary/IDictionaryResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kindle/dictionary/IDictionaryResult;->getDictionaryWord()Ljava/lang/String;

    move-result-object v7

    .line 1190
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$DefinitionLinkClickListener;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

    iget-object v3, v2, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->definitionView:Lcom/amazon/android/docviewer/KindleDocDefinitionView;

    if-eqz v3, :cond_0

    .line 1191
    invoke-static {v2}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->access$900(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;)Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$DefinitionLinkClickListener;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

    iget-object v3, v3, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->definitionView:Lcom/amazon/android/docviewer/KindleDocDefinitionView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1196
    :cond_0
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$DefinitionLinkClickListener;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

    invoke-static {v2}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->access$1300(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;)Lcom/amazon/kcp/application/HistoryManager;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$DefinitionLinkClickListener;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

    iget-object v3, v3, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->readerController:Lcom/amazon/kcp/reader/IReaderController;

    invoke-virtual {v2, v3}, Lcom/amazon/kcp/application/HistoryManager;->push(Lcom/amazon/kcp/application/Historizable;)Z

    .line 1199
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v5

    if-nez v5, :cond_1

    .line 1201
    invoke-static {}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Current Reader Activity is set to null for Dictionary"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1202
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$DefinitionLinkClickListener;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->close()V

    return-void

    .line 1205
    :cond_1
    invoke-virtual {v5}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v6

    .line 1207
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$DefinitionLinkClickListener;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->close()V

    .line 1208
    invoke-static {}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Opening full definition  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    iget-boolean v2, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$DefinitionLinkClickListener;->isInlineLink:Z

    if-eqz v2, :cond_2

    const-string v2, "InlineFullDefinitionClick"

    .line 1211
    invoke-static {v2}, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->emitMetric(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v2, "DetailedLookup"

    .line 1214
    invoke-static {v2}, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->emitMetric(Ljava/lang/String;)V

    .line 1220
    :goto_0
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$DefinitionLinkClickListener;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

    iget-object v2, v2, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->readerController:Lcom/amazon/kcp/reader/IReaderController;

    new-instance v3, Lcom/amazon/kcp/reader/IReaderController$StartPagePosition;

    invoke-direct {v3, v0}, Lcom/amazon/kcp/reader/IReaderController$StartPagePosition;-><init>(I)V

    sget-object v4, Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;->BLOCKING:Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;

    const/4 v8, 0x0

    move-object v0, v2

    move-object v2, v3

    move-object v3, v4

    move v4, v8

    invoke-interface/range {v0 .. v6}, Lcom/amazon/kcp/reader/IReaderController;->openReader(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kcp/reader/IReaderController$StartPage;Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;ZLandroid/app/Activity;Ljava/lang/String;)V

    .line 1223
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v2, "InfoCardDictionary"

    const-string v3, "OpenedFullDefinition"

    invoke-virtual {v0, v2, v3, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    if-eqz p1, :cond_4

    .line 1226
    invoke-static {}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->access$100()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LONG_DEFINITION:asin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object p1

    .line 1227
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",word="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_1

    .line 1230
    :cond_3
    invoke-static {}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Show Full Definition button has been clicked but there is no open dictionary, this is not possible !"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method
