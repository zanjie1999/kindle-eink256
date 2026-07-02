.class public Lcom/amazon/kcp/oob/DecorationsController;
.super Ljava/lang/Object;
.source "DecorationsController.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final bottomContainer:Landroid/view/ViewGroup;

.field private final registry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/krx/providers/IProviderRegistry<",
            "Landroid/view/View;",
            "Lcom/amazon/kindle/krx/ui/DecorationPosition;",
            "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
            "Landroid/view/View;",
            "Lcom/amazon/kindle/krx/ui/DecorationPosition;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lcom/amazon/kcp/oob/DecorationsController;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/oob/DecorationsController;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/view/ViewGroup;Lcom/amazon/kindle/krx/providers/IProviderRegistry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lcom/amazon/kindle/krx/providers/IProviderRegistry<",
            "Landroid/view/View;",
            "Lcom/amazon/kindle/krx/ui/DecorationPosition;",
            "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
            "Landroid/view/View;",
            "Lcom/amazon/kindle/krx/ui/DecorationPosition;",
            ">;>;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/amazon/kcp/oob/DecorationsController;->bottomContainer:Landroid/view/ViewGroup;

    .line 38
    iput-object p2, p0, Lcom/amazon/kcp/oob/DecorationsController;->registry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    .line 39
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method private refreshBottomDecoration()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/amazon/kcp/oob/DecorationsController;->registry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/amazon/kindle/krx/ui/DecorationPosition;->BOTTOM:Lcom/amazon/kindle/krx/ui/DecorationPosition;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/providers/IProviderRegistry;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 63
    :goto_0
    iget-object v1, p0, Lcom/amazon/kcp/oob/DecorationsController;->bottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    if-eqz v0, :cond_1

    .line 66
    invoke-direct {p0, v0}, Lcom/amazon/kcp/oob/DecorationsController;->removeViewFromParent(Landroid/view/View;)V

    .line 67
    iget-object v1, p0, Lcom/amazon/kcp/oob/DecorationsController;->bottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 68
    iget-object v0, p0, Lcom/amazon/kcp/oob/DecorationsController;->bottomContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/oob/DecorationsController;->bottomContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private removeViewFromParent(Landroid/view/View;)V
    .locals 2

    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 81
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 82
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method destroy()V
    .locals 1

    .line 90
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public onRefreshLibraryDecorationEvent(Lcom/amazon/kindle/krx/ui/RefreshLibraryDecorationEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 49
    iget-object p1, p0, Lcom/amazon/kcp/oob/DecorationsController;->bottomContainer:Landroid/view/ViewGroup;

    new-instance v0, Lcom/amazon/kcp/oob/DecorationsController$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/oob/DecorationsController$1;-><init>(Lcom/amazon/kcp/oob/DecorationsController;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method refreshDecorations()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/amazon/kcp/oob/DecorationsController;->refreshBottomDecoration()V

    return-void
.end method
