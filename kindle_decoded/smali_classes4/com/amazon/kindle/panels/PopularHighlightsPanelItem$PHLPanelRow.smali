.class Lcom/amazon/kindle/panels/PopularHighlightsPanelItem$PHLPanelRow;
.super Ljava/lang/Object;
.source "PopularHighlightsPanelItem.java"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/panels/IPanelRow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/panels/PopularHighlightsPanelItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PHLPanelRow"
.end annotation


# instance fields
.field private sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/amazon/kindle/panels/PopularHighlightsPanelItem$PHLPanelRow;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-void
.end method


# virtual methods
.method public getChildRows()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/ui/panels/IPanelRow;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIconComponent()Lcom/amazon/kindle/krx/ui/panels/IIconPanelComponent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPanelStatus()Lcom/amazon/kindle/krx/ui/ComponentStatus;
    .locals 4

    .line 94
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 97
    sget-object v0, Lcom/amazon/kindle/krx/ui/ComponentStatus;->GONE:Lcom/amazon/kindle/krx/ui/ComponentStatus;

    return-object v0

    .line 100
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    .line 101
    new-instance v1, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$AdvancedNotebookFilter;

    invoke-direct {v1}, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$AdvancedNotebookFilter;-><init>()V

    .line 102
    iget-object v2, v1, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$AdvancedNotebookFilter;->selectedFilters:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 103
    iget-object v2, v1, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$AdvancedNotebookFilter;->selectedFilters:Ljava/util/Set;

    sget-object v3, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;->POPULAR_HIGHLIGHT:Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 104
    new-instance v2, Lcom/amazon/kcp/reader/notebook/NotebookNoteTools;

    invoke-direct {v2, v0}, Lcom/amazon/kcp/reader/notebook/NotebookNoteTools;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;)V

    .line 105
    invoke-virtual {v2, v1}, Lcom/amazon/kcp/reader/notebook/NotebookNoteTools;->getFilteredNotes(Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$AdvancedNotebookFilter;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 106
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 107
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBaseLanguage()Ljava/lang/String;

    move-result-object v1

    .line 108
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/download/MimeTypeHelper;->isYellowJerseyEBookMimeType(Ljava/lang/String;)Z

    move-result v0

    .line 110
    invoke-static {v1}, Lcom/amazon/kindle/utils/LanguageUtils;->isTraditionalChinese(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_2

    .line 111
    :cond_1
    sget-object v0, Lcom/amazon/kindle/krx/ui/ComponentStatus;->ENABLED:Lcom/amazon/kindle/krx/ui/ComponentStatus;

    return-object v0

    .line 114
    :cond_2
    sget-object v0, Lcom/amazon/kindle/krx/ui/ComponentStatus;->GONE:Lcom/amazon/kindle/krx/ui/ComponentStatus;

    return-object v0
.end method

.method public getPanelTheme()Lcom/amazon/kindle/krx/ui/panels/PanelTheme;
    .locals 1

    .line 89
    sget-object v0, Lcom/amazon/kindle/krx/ui/panels/PanelTheme;->DEFAULT:Lcom/amazon/kindle/krx/ui/panels/PanelTheme;

    return-object v0
.end method

.method public getTextComponent()Lcom/amazon/kindle/krx/ui/panels/ITextPanelComponent;
    .locals 3

    .line 79
    new-instance v0, Lcom/amazon/kindle/panels/PopularHighlightsPanelItem$SimpleTextComponent;

    iget-object v1, p0, Lcom/amazon/kindle/panels/PopularHighlightsPanelItem$PHLPanelRow;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$string;->menuitem_phl:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/kindle/panels/PopularHighlightsPanelItem$SimpleTextComponent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public onClick()V
    .locals 3

    .line 119
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;->LEFT_NAVIGATION_MENU:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    sget-object v2, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->OPEN_POPULAR_HIGHLIGHTS:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    invoke-static {v1, v2}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->recordMetrics(Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;)V

    .line 125
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/amazon/kcp/reader/PopularHighlightsActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x0

    .line 126
    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/reader/ReaderActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
