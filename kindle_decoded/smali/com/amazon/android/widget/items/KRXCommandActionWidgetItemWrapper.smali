.class public final Lcom/amazon/android/widget/items/KRXCommandActionWidgetItemWrapper;
.super Lcom/amazon/android/widget/items/KRXActionWidgetItemWrapper;
.source "KRXCommandActionWidgetItemWrapper.kt"

# interfaces
.implements Lcom/amazon/android/widget/ICommandItemPresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/android/widget/items/KRXActionWidgetItemWrapper<",
        "Lcom/amazon/kindle/krx/content/IBook;",
        "Lcom/amazon/kindle/krx/content/IBook;",
        ">;",
        "Lcom/amazon/android/widget/ICommandItemPresenter;"
    }
.end annotation


# instance fields
.field private final book:Lcom/amazon/kindle/krx/content/IBook;

.field private final item:Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ")V"
        }
    .end annotation

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "book"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/amazon/android/widget/items/KRXActionWidgetItemWrapper;-><init>(Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/amazon/android/widget/items/KRXCommandActionWidgetItemWrapper;->item:Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;

    iput-object p2, p0, Lcom/amazon/android/widget/items/KRXCommandActionWidgetItemWrapper;->book:Lcom/amazon/kindle/krx/content/IBook;

    return-void
.end method


# virtual methods
.method public getDisplayPreference(Landroid/content/Context;)Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/amazon/android/widget/items/KRXCommandActionWidgetItemWrapper;->item:Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;

    invoke-virtual {v1, p1}, Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;->getDisplayPreference(Landroid/content/Context;)Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem$DisplayPreference;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/android/util/DisplayPreferenceUtil;->fromKRXDisplayPreference(Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem$DisplayPreference;)Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;

    move-result-object v1

    const-string v2, "DisplayPreferenceUtil.fr\u2026splayPreference(context))"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 30
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderModeHandler()Lcom/amazon/kindle/krx/reader/IReaderModeHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 29
    iget-object v2, p0, Lcom/amazon/android/widget/items/KRXCommandActionWidgetItemWrapper;->book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/amazon/kindle/krx/reader/IReaderModeHandler;->getReaderMode(Ljava/lang/String;)Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->AUDIBLE_PLAYER:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    if-ne v0, v2, :cond_1

    .line 30
    iget-object v0, p0, Lcom/amazon/android/widget/items/KRXCommandActionWidgetItemWrapper;->item:Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;

    iget-object v2, p0, Lcom/amazon/android/widget/items/KRXCommandActionWidgetItemWrapper;->book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {v0, p1, v2}, Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;->getDisplayPosition(Landroid/content/Context;Ljava/lang/Object;)Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem$DisplayPosition;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem$DisplayPosition;->END:Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem$DisplayPosition;

    if-ne p1, v0, :cond_1

    .line 31
    sget-object v1, Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;->OVERFLOW_ONLY:Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;

    :cond_1
    return-object v1
.end method

.method public final getItem()Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/amazon/android/widget/items/KRXCommandActionWidgetItemWrapper;->item:Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;

    return-object v0
.end method
