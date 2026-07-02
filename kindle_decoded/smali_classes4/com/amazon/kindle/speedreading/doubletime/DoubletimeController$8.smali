.class Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController$8;
.super Lcom/amazon/kindle/krx/reader/AbstractReaderNavigationListener;
.source "DoubletimeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->registerReaderNavigationListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;)V
    .locals 0

    .line 381
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController$8;->this$0:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    invoke-direct {p0}, Lcom/amazon/kindle/krx/reader/AbstractReaderNavigationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAfterContentClose(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController$8;->this$0:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->isInDoubletimeMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController$8;->this$0:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->access$500(Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 389
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController$8;->this$0:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->stopDoubletimeMode()V

    :cond_0
    return-void
.end method
