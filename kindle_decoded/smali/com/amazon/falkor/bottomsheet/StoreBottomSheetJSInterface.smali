.class public Lcom/amazon/falkor/bottomsheet/StoreBottomSheetJSInterface;
.super Lcom/amazon/falkor/FalkorJSInterface;
.source "StoreBottomSheetController.kt"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final messageQueue:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/amazon/kindle/krx/events/IMessageQueue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/Lazy;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Lazy<",
            "+",
            "Lcom/amazon/kindle/krx/events/IMessageQueue;",
            ">;",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "messageQueue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sdk"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-direct {p0, p2}, Lcom/amazon/falkor/FalkorJSInterface;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    iput-object p1, p0, Lcom/amazon/falkor/bottomsheet/StoreBottomSheetJSInterface;->messageQueue:Lkotlin/Lazy;

    .line 98
    const-class p1, Lcom/amazon/falkor/bottomsheet/StoreBottomSheetJSInterface;

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/falkor/bottomsheet/StoreBottomSheetJSInterface;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final dismissBottomsheet()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/amazon/falkor/bottomsheet/StoreBottomSheetJSInterface;->messageQueue:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v1, Lcom/amazon/falkor/event/DismissStoreBottomSheetEvent;

    invoke-direct {v1}, Lcom/amazon/falkor/event/DismissStoreBottomSheetEvent;-><init>()V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method protected getTAG()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/amazon/falkor/bottomsheet/StoreBottomSheetJSInterface;->TAG:Ljava/lang/String;

    return-object v0
.end method
