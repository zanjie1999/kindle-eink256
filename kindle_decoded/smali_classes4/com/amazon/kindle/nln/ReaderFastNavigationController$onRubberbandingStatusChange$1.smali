.class final Lcom/amazon/kindle/nln/ReaderFastNavigationController$onRubberbandingStatusChange$1;
.super Ljava/lang/Object;
.source "ReaderFastNavigationController.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/nln/ReaderFastNavigationController;->onRubberbandingStatusChange(Lcom/amazon/kindle/event/RubberbandingStatusChangeEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $event:Lcom/amazon/kindle/event/RubberbandingStatusChangeEvent;

.field final synthetic this$0:Lcom/amazon/kindle/nln/ReaderFastNavigationController;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/nln/ReaderFastNavigationController;Lcom/amazon/kindle/event/RubberbandingStatusChangeEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/nln/ReaderFastNavigationController$onRubberbandingStatusChange$1;->this$0:Lcom/amazon/kindle/nln/ReaderFastNavigationController;

    iput-object p2, p0, Lcom/amazon/kindle/nln/ReaderFastNavigationController$onRubberbandingStatusChange$1;->$event:Lcom/amazon/kindle/event/RubberbandingStatusChangeEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/amazon/kindle/nln/ReaderFastNavigationController$onRubberbandingStatusChange$1;->this$0:Lcom/amazon/kindle/nln/ReaderFastNavigationController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/kindle/nln/ReaderFastNavigationController;->access$inflateFastNavigationView(Lcom/amazon/kindle/nln/ReaderFastNavigationController;Z)V

    .line 243
    iget-object v0, p0, Lcom/amazon/kindle/nln/ReaderFastNavigationController$onRubberbandingStatusChange$1;->this$0:Lcom/amazon/kindle/nln/ReaderFastNavigationController;

    invoke-static {v0}, Lcom/amazon/kindle/nln/ReaderFastNavigationController;->access$getFastNavigationView$p(Lcom/amazon/kindle/nln/ReaderFastNavigationController;)Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amazon/kindle/nln/ReaderFastNavigationController$onRubberbandingStatusChange$1;->$event:Lcom/amazon/kindle/event/RubberbandingStatusChangeEvent;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->onRubberbandingStatusChange(Lcom/amazon/kindle/event/RubberbandingStatusChangeEvent;)V

    :cond_0
    return-void
.end method
