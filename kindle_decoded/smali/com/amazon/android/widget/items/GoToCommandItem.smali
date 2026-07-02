.class public final Lcom/amazon/android/widget/items/GoToCommandItem;
.super Lcom/amazon/android/widget/items/AbstractReaderActionCommandItem;
.source "GoToCommandItem.kt"


# instance fields
.field private final activity:Lcom/amazon/kcp/reader/ReaderActivity;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/reader/ReaderActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    sget v0, Lcom/amazon/kindle/krl/R$string;->menuitem_overflow_goto_page_or_location:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/android/widget/items/AbstractReaderActionCommandItem;-><init>(Ljava/lang/Integer;)V

    iput-object p1, p0, Lcom/amazon/android/widget/items/GoToCommandItem;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    return-void
.end method


# virtual methods
.method public getButtonIdentifier()Ljava/lang/String;
    .locals 1

    const-string v0, "ChromeOverflowGotoPageLocation"

    return-object v0
.end method

.method public getDisplayPreference(Landroid/content/Context;)Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    sget-object p1, Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;->OVERFLOW_ONLY:Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;

    return-object p1
.end method

.method public getId()I
    .locals 1

    .line 25
    sget v0, Lcom/amazon/kindle/krl/R$id;->menuitem_goto:I

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

    .line 27
    iget-object p1, p0, Lcom/amazon/android/widget/items/GoToCommandItem;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$integer;->newtron_command_bar_goto:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getPriority(Ljava/lang/Object;)I
    .locals 0

    .line 21
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/android/widget/items/GoToCommandItem;->getPriority(Lcom/amazon/kindle/krx/content/IBook;)I

    move-result p1

    return p1
.end method

.method public getText(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    const-string v1, "Utils.getFactory().readerController"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 76
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 77
    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isTextbook()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->suppressLocations()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->supportsPageLabels()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    sget v0, Lcom/amazon/kindle/krl/R$string;->menuitem_overflow_goto_page_or_location:I

    goto :goto_1

    .line 82
    :cond_1
    sget v0, Lcom/amazon/kindle/krl/R$string;->menuitem_overflow_goto_location:I

    goto :goto_1

    .line 78
    :cond_2
    :goto_0
    sget v0, Lcom/amazon/kindle/krl/R$string;->menuitem_overflow_goto_page:I

    .line 85
    :goto_1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(resId)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 89
    :cond_3
    invoke-super {p0, p1}, Lcom/amazon/android/widget/items/AbstractReaderActionCommandItem;->getText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isVisible(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 61
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getContentClass()Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/krx/content/IBook$BookContentClass;->CHILDREN:Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    const/4 v3, 0x1

    if-eq v1, v2, :cond_2

    .line 60
    sget-object v1, Lcom/amazon/android/widget/CommandBarUtils;->INSTANCE:Lcom/amazon/android/widget/CommandBarUtils;

    invoke-virtual {v1, p1}, Lcom/amazon/android/widget/CommandBarUtils;->considerAsPdf(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 61
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    const-string v2, "Utils.getFactory()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getPanelController()Lcom/amazon/kindle/panels/IPanelController;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/amazon/kindle/panels/IPanelController;->getSidePanelLayout()Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_3

    return v0

    .line 68
    :cond_3
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->isFalkorEpisode()Z

    move-result v1

    if-nez v1, :cond_4

    .line 67
    invoke-static {p1}, Lcom/amazon/android/util/BookTypeUtil;->isLavaMagazine(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 68
    invoke-static {}, Lcom/amazon/kcp/reader/AudibleHelper;->isReaderInAudibleMode()Z

    move-result p1

    if-nez p1, :cond_4

    const/4 v0, 0x1

    :cond_4
    return v0
.end method

.method public bridge synthetic isVisible(Ljava/lang/Object;)Z
    .locals 0

    .line 21
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/android/widget/items/GoToCommandItem;->isVisible(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    return p1
.end method

.method public onClick(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    const-string v0, "Utils.getFactory()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object p1

    const-string v0, "Utils.getFactory().readerController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 32
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 33
    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isTextbook()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;

    move-result-object v2

    if-nez v2, :cond_0

    return v0

    .line 37
    :cond_0
    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isTextbook()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->suppressLocations()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 39
    :cond_1
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->supportsPageLabels()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 40
    iget-object p1, p0, Lcom/amazon/android/widget/items/GoToCommandItem;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/redding/ReddingActivity;->showDialogSafely(I)V

    goto :goto_1

    .line 42
    :cond_2
    iget-object p1, p0, Lcom/amazon/android/widget/items/GoToCommandItem;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/redding/ReddingActivity;->showDialogSafely(I)V

    goto :goto_1

    .line 38
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/amazon/android/widget/items/GoToCommandItem;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/redding/ReddingActivity;->showDialogSafely(I)V

    .line 45
    :goto_1
    sget-object p1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;->OVERFLOW_MENU:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    .line 46
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->OPEN_GOTO:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 45
    invoke-static {p1, v0, v2, v1, v2}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->recordMetrics$default(Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionCause;ILjava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_4
    return v0
.end method
