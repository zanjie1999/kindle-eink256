.class public final Lcom/amazon/android/widget/items/PopularHighlightsCommandItem;
.super Lcom/amazon/android/widget/items/AbstractReaderActionCommandItem;
.source "PopularHighlightsCommandItem.kt"


# instance fields
.field private final activity:Lcom/amazon/kcp/reader/ReaderActivity;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/reader/ReaderActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    sget v0, Lcom/amazon/kindle/krl/R$string;->menuitem_phl:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/android/widget/items/AbstractReaderActionCommandItem;-><init>(Ljava/lang/Integer;)V

    iput-object p1, p0, Lcom/amazon/android/widget/items/PopularHighlightsCommandItem;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    return-void
.end method


# virtual methods
.method public getButtonIdentifier()Ljava/lang/String;
    .locals 1

    const-string v0, "ChromeOverflowPopularHighlights"

    return-object v0
.end method

.method public getDisplayPreference(Landroid/content/Context;)Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    sget-object p1, Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;->OVERFLOW_ONLY:Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;

    return-object p1
.end method

.method public getId()I
    .locals 1

    .line 32
    sget v0, Lcom/amazon/kindle/krl/R$id;->menuitem_phl:I

    return v0
.end method

.method public getImage(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getPriority(Lcom/amazon/kindle/krx/content/IBook;)I
    .locals 1

    .line 34
    iget-object p1, p0, Lcom/amazon/android/widget/items/PopularHighlightsCommandItem;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$integer;->newtron_command_bar_popular_highlights:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getPriority(Ljava/lang/Object;)I
    .locals 0

    .line 29
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/android/widget/items/PopularHighlightsCommandItem;->getPriority(Lcom/amazon/kindle/krx/content/IBook;)I

    move-result p1

    return p1
.end method

.method public isVisible(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 48
    invoke-static {}, Lcom/amazon/kcp/reader/AudibleHelper;->isReaderInAudibleMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->isFalkorEpisode()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    return v0

    .line 53
    :cond_1
    new-instance p1, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$AdvancedNotebookFilter;

    invoke-direct {p1}, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$AdvancedNotebookFilter;-><init>()V

    .line 54
    iget-object v1, p1, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$AdvancedNotebookFilter;->selectedFilters:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 55
    iget-object v1, p1, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$AdvancedNotebookFilter;->selectedFilters:Ljava/util/Set;

    sget-object v2, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;->POPULAR_HIGHLIGHT:Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    new-instance v1, Lcom/amazon/kcp/reader/notebook/NotebookNoteTools;

    iget-object v2, p0, Lcom/amazon/android/widget/items/PopularHighlightsCommandItem;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/kcp/reader/notebook/NotebookNoteTools;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;)V

    invoke-virtual {v1, p1}, Lcom/amazon/kcp/reader/notebook/NotebookNoteTools;->getFilteredNotes(Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$AdvancedNotebookFilter;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 58
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    const/4 v1, 0x1

    xor-int/2addr p1, v1

    if-eqz p1, :cond_3

    .line 59
    iget-object p1, p0, Lcom/amazon/android/widget/items/PopularHighlightsCommandItem;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    const-string v2, "activity.docViewer"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    const-string v3, "activity.docViewer.bookInfo"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBaseLanguage()Ljava/lang/String;

    move-result-object p1

    .line 60
    iget-object v4, p0, Lcom/amazon/android/widget/items/PopularHighlightsCommandItem;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v4}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kindle/download/MimeTypeHelper;->isYellowJerseyEBookMimeType(Ljava/lang/String;)Z

    move-result v2

    .line 63
    invoke-static {p1}, Lcom/amazon/kindle/utils/LanguageUtils;->isTraditionalChinese(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-nez v2, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public bridge synthetic isVisible(Ljava/lang/Object;)Z
    .locals 0

    .line 29
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/android/widget/items/PopularHighlightsCommandItem;->isVisible(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    return p1
.end method

.method public onClick(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    sget-object p1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;->OVERFLOW_MENU:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    .line 38
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->OPEN_POPULAR_HIGHLIGHTS:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 37
    invoke-static {p1, v0, v1, v2, v1}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->recordMetrics$default(Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionCause;ILjava/lang/Object;)V

    .line 40
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/amazon/android/widget/items/PopularHighlightsCommandItem;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    const-class v1, Lcom/amazon/kcp/reader/PopularHighlightsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 41
    iget-object v0, p0, Lcom/amazon/android/widget/items/PopularHighlightsCommandItem;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/amazon/kcp/reader/ReaderActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 p1, 0x1

    return p1
.end method
