.class Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController$3;
.super Ljava/lang/Object;
.source "DoubletimeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->initializeIfNeeded(Landroid/os/Handler;)V
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

    .line 171
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController$3;->this$0:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController$3;->this$0:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->access$300(Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;)V

    return-void
.end method
