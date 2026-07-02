.class Lcom/amazon/android/widget/items/WikipediaWidgetItemProvider$WikipediaWidgetItem;
.super Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;
.source "WikipediaWidgetItemProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/widget/items/WikipediaWidgetItemProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WikipediaWidgetItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem<",
        "Lcom/amazon/kindle/krx/content/IContentSelection;",
        ">;"
    }
.end annotation


# instance fields
.field private model:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

.field private final priority:I


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;I)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/amazon/android/widget/items/WikipediaWidgetItemProvider$WikipediaWidgetItem;->model:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    .line 53
    iput p2, p0, Lcom/amazon/android/widget/items/WikipediaWidgetItemProvider$WikipediaWidgetItem;->priority:I

    return-void
.end method


# virtual methods
.method public getButtonIdentifier()Ljava/lang/String;
    .locals 1

    const-string v0, "Wikipedia"

    return-object v0
.end method

.method public getPriority(Lcom/amazon/kindle/krx/content/IContentSelection;)I
    .locals 0

    .line 83
    iget p1, p0, Lcom/amazon/android/widget/items/WikipediaWidgetItemProvider$WikipediaWidgetItem;->priority:I

    return p1
.end method

.method public bridge synthetic getPriority(Ljava/lang/Object;)I
    .locals 0

    .line 40
    check-cast p1, Lcom/amazon/kindle/krx/content/IContentSelection;

    invoke-virtual {p0, p1}, Lcom/amazon/android/widget/items/WikipediaWidgetItemProvider$WikipediaWidgetItem;->getPriority(Lcom/amazon/kindle/krx/content/IContentSelection;)I

    move-result p1

    return p1
.end method

.method public getText(Landroid/content/Context;Lcom/amazon/kindle/krx/content/IContentSelection;)Ljava/lang/String;
    .locals 0

    .line 106
    sget p2, Lcom/amazon/kindle/krl/R$string;->annotation_wikipedia:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getText(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 40
    check-cast p2, Lcom/amazon/kindle/krx/content/IContentSelection;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/android/widget/items/WikipediaWidgetItemProvider$WikipediaWidgetItem;->getText(Landroid/content/Context;Lcom/amazon/kindle/krx/content/IContentSelection;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isVisible(Lcom/amazon/kindle/krx/content/IContentSelection;)Z
    .locals 2

    .line 90
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 92
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 94
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderModeHandler()Lcom/amazon/kindle/krx/reader/IReaderModeHandler;

    move-result-object p1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/amazon/kindle/krx/reader/IReaderModeHandler;->getReaderMode(Ljava/lang/String;)Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    move-result-object p1

    .line 95
    sget-object v1, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->READER:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/amazon/android/widget/items/WikipediaWidgetItemProvider$WikipediaWidgetItem;->model:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    .line 96
    invoke-interface {p1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->isCurrentSelectionQuickHighlightable()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/amazon/android/widget/items/WikipediaWidgetItemProvider$WikipediaWidgetItem;->model:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    .line 97
    invoke-interface {p1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectedText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardPlugin;->hasInfoCard(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public bridge synthetic isVisible(Ljava/lang/Object;)Z
    .locals 0

    .line 40
    check-cast p1, Lcom/amazon/kindle/krx/content/IContentSelection;

    invoke-virtual {p0, p1}, Lcom/amazon/android/widget/items/WikipediaWidgetItemProvider$WikipediaWidgetItem;->isVisible(Lcom/amazon/kindle/krx/content/IContentSelection;)Z

    move-result p1

    return p1
.end method

.method public onClick(Lcom/amazon/kindle/krx/content/IContentSelection;)Z
    .locals 3

    .line 58
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 62
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->getInfoCardController()Lcom/amazon/kcp/reader/InfoCardController;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 67
    :cond_1
    sget-object v2, Lcom/amazon/kcp/reader/InfoCardMetricsManager$EntryPoint;->SELECTION_BUTTONS:Lcom/amazon/kcp/reader/InfoCardMetricsManager$EntryPoint;

    invoke-static {v2}, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->setEntryPoint(Lcom/amazon/kcp/reader/InfoCardMetricsManager$EntryPoint;)V

    .line 70
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/InfoCardController;->getIsShown()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "WikipediaInfoCard"

    .line 71
    invoke-static {v2}, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->emitSelectionButtonCardImpression(Ljava/lang/String;)V

    .line 74
    :cond_2
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/amazon/kindle/krl/R$string;->info_card_wikipedia_title:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lcom/amazon/kcp/reader/InfoCardController;->showCardByTitle(Ljava/lang/String;Z)V

    .line 75
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/InfoCardController;->hasCards()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    return v0
.end method

.method public bridge synthetic onClick(Ljava/lang/Object;)Z
    .locals 0

    .line 40
    check-cast p1, Lcom/amazon/kindle/krx/content/IContentSelection;

    invoke-virtual {p0, p1}, Lcom/amazon/android/widget/items/WikipediaWidgetItemProvider$WikipediaWidgetItem;->onClick(Lcom/amazon/kindle/krx/content/IContentSelection;)Z

    move-result p1

    return p1
.end method
