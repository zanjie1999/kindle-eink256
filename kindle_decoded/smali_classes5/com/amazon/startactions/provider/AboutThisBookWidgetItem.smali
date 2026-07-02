.class public final Lcom/amazon/startactions/provider/AboutThisBookWidgetItem;
.super Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;
.source "AboutThisBookWidgetItemProvider.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem<",
        "Lcom/amazon/kindle/krx/content/IBook;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAboutThisBookWidgetItemProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AboutThisBookWidgetItemProvider.kt\ncom/amazon/startactions/provider/AboutThisBookWidgetItem\n*L\n1#1,70:1\n*E\n"
.end annotation


# instance fields
.field private final chromeClickHandler:Lcom/amazon/readingactions/helpers/IChromeClickHandler;

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/readingactions/helpers/IChromeClickHandler;)V
    .locals 1

    const-string/jumbo v0, "sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chromeClickHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;-><init>()V

    iput-object p1, p0, Lcom/amazon/startactions/provider/AboutThisBookWidgetItem;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iput-object p2, p0, Lcom/amazon/startactions/provider/AboutThisBookWidgetItem;->chromeClickHandler:Lcom/amazon/readingactions/helpers/IChromeClickHandler;

    return-void
.end method


# virtual methods
.method public getButtonIdentifier()Ljava/lang/String;
    .locals 1

    const-string v0, "ChromeOverflowAboutThisBook"

    return-object v0
.end method

.method public getDisplayPreference(Landroid/content/Context;)Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem$DisplayPreference;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    sget-object p1, Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem$DisplayPreference;->OVERFLOW_ONLY:Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem$DisplayPreference;

    return-object p1
.end method

.method public getId()I
    .locals 1

    .line 38
    sget v0, Lcom/amazon/kindle/ea/R$id;->menuitem_about_this_book:I

    return v0
.end method

.method public getImage(Landroid/content/Context;Lcom/amazon/kindle/krx/content/IBook;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "state"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getImage(Landroid/content/Context;Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 34
    check-cast p2, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/startactions/provider/AboutThisBookWidgetItem;->getImage(Landroid/content/Context;Lcom/amazon/kindle/krx/content/IBook;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getPriority(Lcom/amazon/kindle/krx/content/IBook;)I
    .locals 1

    .line 40
    iget-object p1, p0, Lcom/amazon/startactions/provider/AboutThisBookWidgetItem;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "sdk.context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/ea/R$integer;->newtron_command_bar_about_this_book:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getPriority(Ljava/lang/Object;)I
    .locals 0

    .line 34
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/startactions/provider/AboutThisBookWidgetItem;->getPriority(Lcom/amazon/kindle/krx/content/IBook;)I

    move-result p1

    return p1
.end method

.method public getText(Landroid/content/Context;Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "book"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object p1, p0, Lcom/amazon/startactions/provider/AboutThisBookWidgetItem;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo p2, "sdk.context"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/ea/R$string;->startactions_feature_title:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "sdk.context.resources.ge\u2026artactions_feature_title)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic getText(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 34
    check-cast p2, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/startactions/provider/AboutThisBookWidgetItem;->getText(Landroid/content/Context;Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isVisible(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 65
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getContentClass()Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/krx/content/IBook$BookContentClass;->CHILDREN:Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 64
    invoke-static {}, Lcom/amazon/ea/util/ChildAccountUtil;->isChildAccount()Z

    move-result v1

    if-nez v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/amazon/startactions/provider/AboutThisBookWidgetItem;->chromeClickHandler:Lcom/amazon/readingactions/helpers/IChromeClickHandler;

    sget-object v3, Lcom/amazon/readingactions/helpers/IChromeClickHandler$ActionType;->OPEN_ABOUT_THIS_BOOK:Lcom/amazon/readingactions/helpers/IChromeClickHandler$ActionType;

    invoke-interface {v1, p1, v3}, Lcom/amazon/readingactions/helpers/IChromeClickHandler;->canRegisterChromeClick(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/readingactions/helpers/IChromeClickHandler$ActionType;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public bridge synthetic isVisible(Ljava/lang/Object;)Z
    .locals 0

    .line 34
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/startactions/provider/AboutThisBookWidgetItem;->isVisible(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    return p1
.end method

.method public onClick(Landroid/content/Context;Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 46
    sget-object p1, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ContextType;->OVERFLOW_MENU:Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ContextType;

    .line 47
    sget-object v0, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ActionType;->OPEN_ABOUT_THIS_BOOK:Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ActionType;

    .line 46
    invoke-static {p1, v0}, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics;->emitMetric(Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ContextType;Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ActionType;)V

    .line 50
    iget-object p1, p0, Lcom/amazon/startactions/provider/AboutThisBookWidgetItem;->chromeClickHandler:Lcom/amazon/readingactions/helpers/IChromeClickHandler;

    sget-object v0, Lcom/amazon/readingactions/helpers/IChromeClickHandler$EntryPoint;->OVERFLOW_MENU:Lcom/amazon/readingactions/helpers/IChromeClickHandler$EntryPoint;

    sget-object v1, Lcom/amazon/readingactions/helpers/IChromeClickHandler$ActionType;->OPEN_ABOUT_THIS_BOOK:Lcom/amazon/readingactions/helpers/IChromeClickHandler$ActionType;

    invoke-interface {p1, p2, v0, v1}, Lcom/amazon/readingactions/helpers/IChromeClickHandler;->handleChromeClick(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/readingactions/helpers/IChromeClickHandler$EntryPoint;Lcom/amazon/readingactions/helpers/IChromeClickHandler$ActionType;)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic onClick(Landroid/content/Context;Ljava/lang/Object;)Z
    .locals 0

    .line 34
    check-cast p2, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/startactions/provider/AboutThisBookWidgetItem;->onClick(Landroid/content/Context;Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    return p1
.end method
