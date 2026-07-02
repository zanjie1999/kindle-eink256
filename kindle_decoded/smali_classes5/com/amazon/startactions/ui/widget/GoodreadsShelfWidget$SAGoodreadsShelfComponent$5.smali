.class Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent$5;
.super Ljava/lang/Object;
.source "GoodreadsShelfWidget.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


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

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;Landroid/app/Activity;)V
    .locals 0

    .line 355
    iput-object p1, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent$5;->this$0:Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;

    iput-object p2, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent$5;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 358
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent$5;->val$activity:Landroid/app/Activity;

    new-instance v1, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent$5$1;

    invoke-direct {v1, p0}, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent$5$1;-><init>(Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent$5;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
