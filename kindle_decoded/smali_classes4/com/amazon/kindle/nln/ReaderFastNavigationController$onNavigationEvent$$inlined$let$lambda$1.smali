.class final Lcom/amazon/kindle/nln/ReaderFastNavigationController$onNavigationEvent$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "ReaderFastNavigationController.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/nln/ReaderFastNavigationController;->onNavigationEvent(Lcom/amazon/kindle/event/KindleDocNavigationEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/nln/ReaderFastNavigationController;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/nln/ReaderFastNavigationController;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/nln/ReaderFastNavigationController$onNavigationEvent$$inlined$let$lambda$1;->this$0:Lcom/amazon/kindle/nln/ReaderFastNavigationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 207
    iget-object v0, p0, Lcom/amazon/kindle/nln/ReaderFastNavigationController$onNavigationEvent$$inlined$let$lambda$1;->this$0:Lcom/amazon/kindle/nln/ReaderFastNavigationController;

    invoke-static {v0}, Lcom/amazon/kindle/nln/ReaderFastNavigationController;->access$getFastNavigationView$p(Lcom/amazon/kindle/nln/ReaderFastNavigationController;)Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->showThumb()V

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/nln/ReaderFastNavigationController$onNavigationEvent$$inlined$let$lambda$1;->this$0:Lcom/amazon/kindle/nln/ReaderFastNavigationController;

    invoke-static {v0}, Lcom/amazon/kindle/nln/ReaderFastNavigationController;->access$getReaderLayout$p(Lcom/amazon/kindle/nln/ReaderFastNavigationController;)Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setOverlaysVisible(ZZ)Lcom/amazon/kcp/reader/ui/ReaderLayout;

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/nln/ReaderFastNavigationController$onNavigationEvent$$inlined$let$lambda$1;->this$0:Lcom/amazon/kindle/nln/ReaderFastNavigationController;

    invoke-static {v0}, Lcom/amazon/kindle/nln/ReaderFastNavigationController;->access$getFastNavigationView$p(Lcom/amazon/kindle/nln/ReaderFastNavigationController;)Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/amazon/kindle/nln/ReaderFastNavigationController$onNavigationEvent$$inlined$let$lambda$1;->this$0:Lcom/amazon/kindle/nln/ReaderFastNavigationController;

    invoke-static {v1}, Lcom/amazon/kindle/nln/ReaderFastNavigationController;->access$getLONG_HIDE_DELAY$p(Lcom/amazon/kindle/nln/ReaderFastNavigationController;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->hideThumb(J)V

    :cond_2
    return-void
.end method
