.class final Lcom/amazon/falkor/BaseRefreshableFragment$messageQueue$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BaseRefreshableFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/falkor/BaseRefreshableFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/amazon/kindle/krx/events/IMessageQueue;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/falkor/BaseRefreshableFragment;


# direct methods
.method constructor <init>(Lcom/amazon/falkor/BaseRefreshableFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/falkor/BaseRefreshableFragment$messageQueue$1;->this$0:Lcom/amazon/falkor/BaseRefreshableFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/amazon/kindle/krx/events/IMessageQueue;
    .locals 2

    .line 20
    sget-object v0, Lcom/amazon/falkor/KindleReaderSDKReference;->INSTANCE:Lcom/amazon/falkor/KindleReaderSDKReference;

    invoke-virtual {v0}, Lcom/amazon/falkor/KindleReaderSDKReference;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/falkor/BaseRefreshableFragment$messageQueue$1;->this$0:Lcom/amazon/falkor/BaseRefreshableFragment;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/amazon/falkor/BaseRefreshableFragment$messageQueue$1;->invoke()Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    return-object v0
.end method
