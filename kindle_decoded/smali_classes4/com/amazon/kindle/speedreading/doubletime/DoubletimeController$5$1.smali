.class Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController$5$1;
.super Ljava/lang/Object;
.source "DoubletimeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController$5;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController$5;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController$5$1;->this$1:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController$5$1;->this$1:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController$5;

    iget-object v0, v0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController$5;->this$0:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method
