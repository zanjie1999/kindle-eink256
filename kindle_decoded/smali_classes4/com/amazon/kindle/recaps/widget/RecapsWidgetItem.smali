.class public final Lcom/amazon/kindle/recaps/widget/RecapsWidgetItem;
.super Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;
.source "RecapsWidgetItemProvider.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem<",
        "Lcom/amazon/kindle/krx/content/IBook;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRecapsWidgetItemProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecapsWidgetItemProvider.kt\ncom/amazon/kindle/recaps/widget/RecapsWidgetItem\n*L\n1#1,59:1\n*E\n"
.end annotation


# instance fields
.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    const-string v0, "sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/recaps/widget/RecapsWidgetItem;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-void
.end method


# virtual methods
.method public getButtonIdentifier()Ljava/lang/String;
    .locals 1

    const-string v0, "ChromeOverflowRecaps"

    return-object v0
.end method

.method public getDisplayPreference(Landroid/content/Context;)Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem$DisplayPreference;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    sget-object p1, Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem$DisplayPreference;->OVERFLOW_ONLY:Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem$DisplayPreference;

    return-object p1
.end method

.method public getId()I
    .locals 1

    .line 34
    sget v0, Lcom/amazon/kindle/recaps/R$id;->menuitem_recaps:I

    return v0
.end method

.method public getImage(Landroid/content/Context;Lcom/amazon/kindle/krx/content/IBook;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "state"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getImage(Landroid/content/Context;Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 31
    check-cast p2, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/recaps/widget/RecapsWidgetItem;->getImage(Landroid/content/Context;Lcom/amazon/kindle/krx/content/IBook;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getPriority(Lcom/amazon/kindle/krx/content/IBook;)I
    .locals 1

    .line 36
    iget-object p1, p0, Lcom/amazon/kindle/recaps/widget/RecapsWidgetItem;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "sdk.context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/recaps/R$integer;->command_bar_recaps:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getPriority(Ljava/lang/Object;)I
    .locals 0

    .line 31
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/recaps/widget/RecapsWidgetItem;->getPriority(Lcom/amazon/kindle/krx/content/IBook;)I

    move-result p1

    return p1
.end method

.method public getText(Landroid/content/Context;Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "book"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object p1, p0, Lcom/amazon/kindle/recaps/widget/RecapsWidgetItem;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "sdk.context"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/recaps/R$string;->kre_recaps_read_recap_panel_label:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "sdk.context.resources.ge\u2026s_read_recap_panel_label)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic getText(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 31
    check-cast p2, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/recaps/widget/RecapsWidgetItem;->getText(Landroid/content/Context;Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isVisible(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic isVisible(Ljava/lang/Object;)Z
    .locals 0

    .line 31
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/recaps/widget/RecapsWidgetItem;->isVisible(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    return p1
.end method

.method public onClick(Landroid/content/Context;Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 42
    sget-object v0, Lcom/amazon/kindle/recaps/util/RecapsPerfHelper;->INSTANCE:Lcom/amazon/kindle/recaps/util/RecapsPerfHelper;

    const/4 v1, 0x1

    const-string v2, "RecapsOpenAction"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/kindle/recaps/util/RecapsPerfHelper;->logPerfMarker(Ljava/lang/String;Z)V

    .line 43
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/amazon/kindle/recaps/activity/RecapsActivity;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000000

    .line 44
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 48
    sget-object v2, Lcom/amazon/kindle/recaps/RecapsCommonModel;->INSTANCE:Lcom/amazon/kindle/recaps/RecapsCommonModel;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/amazon/kindle/recaps/RecapsCommonModel;->setReaderContext(Ljava/lang/ref/WeakReference;)V

    .line 50
    sget-object v2, Lcom/amazon/kindle/recaps/RecapsCommonModel;->INSTANCE:Lcom/amazon/kindle/recaps/RecapsCommonModel;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/amazon/kindle/recaps/RecapsCommonModel;->setCurrentBook(Ljava/lang/ref/WeakReference;)V

    .line 52
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 53
    sget-object p1, Lcom/amazon/kindle/recaps/metrics/RecapsFastMetricsClient;->INSTANCE:Lcom/amazon/kindle/recaps/metrics/RecapsFastMetricsClient;

    sget-object p2, Lcom/amazon/kindle/recaps/metrics/RecapsUserAction;->RECAPS_OPENED_FROM_OVERFLOW_MENU:Lcom/amazon/kindle/recaps/metrics/RecapsUserAction;

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/recaps/metrics/RecapsFastMetricsClient;->recordRecapsUserAction(Lcom/amazon/kindle/recaps/metrics/RecapsUserAction;)V

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic onClick(Landroid/content/Context;Ljava/lang/Object;)Z
    .locals 0

    .line 31
    check-cast p2, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/recaps/widget/RecapsWidgetItem;->onClick(Landroid/content/Context;Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    return p1
.end method
