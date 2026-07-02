.class Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent$3;
.super Ljava/lang/Object;
.source "GoodreadsShelfWidget.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    .line 323
    iput-object p1, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent$3;->this$0:Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 326
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent$3;->this$0:Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;

    invoke-static {p1}, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->access$200(Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;)Lcom/amazon/startactions/jit/SubtleJITController;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/amazon/startactions/jit/SubtleJITController;->onAutoShelfToggleChange(Z)V

    return-void
.end method
