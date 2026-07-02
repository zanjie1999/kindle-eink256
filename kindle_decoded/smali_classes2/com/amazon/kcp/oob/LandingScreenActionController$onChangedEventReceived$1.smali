.class final Lcom/amazon/kcp/oob/LandingScreenActionController$onChangedEventReceived$1;
.super Ljava/lang/Object;
.source "LandingScreenActionController.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/oob/LandingScreenActionController;->onChangedEventReceived(Lcom/amazon/kindle/krx/ui/LandingScreenActionChangedEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $event:Lcom/amazon/kindle/krx/ui/LandingScreenActionChangedEvent;

.field final synthetic this$0:Lcom/amazon/kcp/oob/LandingScreenActionController;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/oob/LandingScreenActionController;Lcom/amazon/kindle/krx/ui/LandingScreenActionChangedEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/oob/LandingScreenActionController$onChangedEventReceived$1;->this$0:Lcom/amazon/kcp/oob/LandingScreenActionController;

    iput-object p2, p0, Lcom/amazon/kcp/oob/LandingScreenActionController$onChangedEventReceived$1;->$event:Lcom/amazon/kindle/krx/ui/LandingScreenActionChangedEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/amazon/kcp/oob/LandingScreenActionController$onChangedEventReceived$1;->$event:Lcom/amazon/kindle/krx/ui/LandingScreenActionChangedEvent;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/ui/LandingScreenActionChangedEvent;->getProvider()Lcom/amazon/kindle/krx/providers/ILandingScreenActionProvider;

    move-result-object v0

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/amazon/kcp/oob/LandingScreenActionController$onChangedEventReceived$1;->this$0:Lcom/amazon/kcp/oob/LandingScreenActionController;

    invoke-static {v0}, Lcom/amazon/kcp/oob/LandingScreenActionController;->access$refreshAllActions(Lcom/amazon/kcp/oob/LandingScreenActionController;)V

    goto :goto_0

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/oob/LandingScreenActionController$onChangedEventReceived$1;->this$0:Lcom/amazon/kcp/oob/LandingScreenActionController;

    invoke-static {v1, v0}, Lcom/amazon/kcp/oob/LandingScreenActionController;->access$refreshAction(Lcom/amazon/kcp/oob/LandingScreenActionController;Lcom/amazon/kindle/krx/providers/ILandingScreenActionProvider;)V

    :goto_0
    return-void
.end method
