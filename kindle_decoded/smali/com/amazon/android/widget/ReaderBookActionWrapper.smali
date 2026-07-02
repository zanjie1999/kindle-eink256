.class public final Lcom/amazon/android/widget/ReaderBookActionWrapper;
.super Lcom/amazon/android/widget/AbstractActionWidgetItem;
.source "ReaderBookActionWrapper.kt"

# interfaces
.implements Lcom/amazon/android/widget/items/IPrioritizedWidgetItem;
.implements Lcom/amazon/android/widget/ICommandItemPresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/android/widget/AbstractActionWidgetItem;",
        "Lcom/amazon/android/widget/items/IPrioritizedWidgetItem<",
        "Lcom/amazon/kindle/krx/content/IBook;",
        ">;",
        "Lcom/amazon/android/widget/ICommandItemPresenter;"
    }
.end annotation


# instance fields
.field private final action:Lcom/amazon/kindle/krx/reader/ReaderBookAction;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/reader/ReaderBookAction;)V
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Lcom/amazon/android/widget/AbstractActionWidgetItem;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/widget/ReaderBookActionWrapper;->action:Lcom/amazon/kindle/krx/reader/ReaderBookAction;

    return-void
.end method


# virtual methods
.method public getButtonIdentifier()Ljava/lang/String;
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/amazon/android/widget/ReaderBookActionWrapper;->action:Lcom/amazon/kindle/krx/reader/ReaderBookAction;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/action/Action;->getMetricsTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "action.metricsTag"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDisplayPreference(Landroid/content/Context;)Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    sget-object p1, Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;->OVERFLOW_ONLY:Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;

    return-object p1
.end method

.method public getPriority(Lcom/amazon/kindle/krx/content/IBook;)I
    .locals 0

    .line 17
    iget-object p1, p0, Lcom/amazon/android/widget/ReaderBookActionWrapper;->action:Lcom/amazon/kindle/krx/reader/ReaderBookAction;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/foundation/Prioritized;->getPriority()I

    move-result p1

    return p1
.end method

.method public bridge synthetic getPriority(Ljava/lang/Object;)I
    .locals 0

    .line 14
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/android/widget/ReaderBookActionWrapper;->getPriority(Lcom/amazon/kindle/krx/content/IBook;)I

    move-result p1

    return p1
.end method

.method public getText(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object p1, p0, Lcom/amazon/android/widget/ReaderBookActionWrapper;->action:Lcom/amazon/kindle/krx/reader/ReaderBookAction;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/action/Action;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

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

    .line 14
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/android/widget/ReaderBookActionWrapper;->isVisible(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    return p1
.end method

.method public onClick(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object p1, p0, Lcom/amazon/android/widget/ReaderBookActionWrapper;->action:Lcom/amazon/kindle/krx/reader/ReaderBookAction;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/action/Action;->execute()V

    const/4 p1, 0x1

    return p1
.end method
