.class Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController$5;
.super Ljava/lang/Object;
.source "DoubletimeController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->initializeDoubletime()V
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

    .line 271
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController$5;->this$0:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 274
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController$5;->this$0:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    invoke-static {p1}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->access$400(Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;)Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;

    move-result-object p1

    new-instance v0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController$5$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController$5$1;-><init>(Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController$5;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
