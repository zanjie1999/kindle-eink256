.class Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent$4;
.super Ljava/lang/Object;
.source "GoodreadsShelfWidget.java"

# interfaces
.implements Lcom/amazon/startactions/jit/BlockingTutorialFragment$JitDialogDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->createView(Landroid/view/ViewGroup;Landroid/widget/LinearLayout;Landroid/view/View;Landroid/view/LayoutInflater;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;


# direct methods
.method constructor <init>(Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;)V
    .locals 0

    .line 347
    iput-object p1, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent$4;->this$0:Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 350
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent$4;->this$0:Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->access$402(Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;Lcom/amazon/startactions/jit/BlockingTutorialFragment;)Lcom/amazon/startactions/jit/BlockingTutorialFragment;

    return-void
.end method
