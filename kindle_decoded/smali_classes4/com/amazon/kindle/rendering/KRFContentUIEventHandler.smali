.class public final Lcom/amazon/kindle/rendering/KRFContentUIEventHandler;
.super Ljava/lang/Object;
.source "KRIFReadingModeBookViewController.kt"

# interfaces
.implements Lcom/amazon/krf/platform/UIEventHandler;


# instance fields
.field private final pageChangeDelegate:Lcom/amazon/kindle/recaps/controller/PageChangeDelegateInterface;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/recaps/controller/PageChangeDelegateInterface;)V
    .locals 1

    const-string v0, "pageChangeDelegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 696
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRFContentUIEventHandler;->pageChangeDelegate:Lcom/amazon/kindle/recaps/controller/PageChangeDelegateInterface;

    return-void
.end method


# virtual methods
.method public UIEndTransaction(Lcom/amazon/krf/platform/UIHandle;)V
    .locals 0

    return-void
.end method

.method public UIEventHandled(Lcom/amazon/krf/platform/UIData;)V
    .locals 0

    return-void
.end method

.method public UISendEvent(Lcom/amazon/krf/platform/UIHandle;Lcom/amazon/krf/platform/UIData;)Z
    .locals 0

    if-eqz p2, :cond_0

    .line 710
    invoke-virtual {p2}, Lcom/amazon/krf/platform/UIData;->getType()Lcom/amazon/krf/platform/UIData$Type;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sget-object p2, Lcom/amazon/krf/platform/UIData$Type;->SINGLE_TAP_UP:Lcom/amazon/krf/platform/UIData$Type;

    if-ne p1, p2, :cond_1

    .line 711
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRFContentUIEventHandler;->pageChangeDelegate:Lcom/amazon/kindle/recaps/controller/PageChangeDelegateInterface;

    invoke-interface {p1}, Lcom/amazon/kindle/recaps/controller/PageChangeDelegateInterface;->onBookContentTapped()V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public UIStartTransaction(FFLcom/amazon/krf/platform/UIData$TransactionType;)Lcom/amazon/krf/platform/UIHandle;
    .locals 0

    .line 698
    new-instance p1, Lcom/amazon/krf/platform/UIHandle;

    invoke-direct {p1}, Lcom/amazon/krf/platform/UIHandle;-><init>()V

    return-object p1
.end method
