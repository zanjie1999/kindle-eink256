.class Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter$2;
.super Ljava/lang/Object;
.source "BookGridController.java"

# interfaces
.implements Lcom/amazon/readingactions/helpers/purchase/IPurchaseStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;->getBubbleContentView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;

.field final synthetic val$holder:Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;


# direct methods
.method constructor <init>(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;)V
    .locals 0

    .line 510
    iput-object p1, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter$2;->this$1:Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;

    iput-object p2, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter$2;->val$holder:Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Lcom/amazon/readingactions/helpers/purchase/PurchaseStatus;)V
    .locals 2

    .line 513
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter$2;->this$1:Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;

    iget-object v1, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter$2;->val$holder:Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;

    invoke-static {v0, v1, p1}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;->access$2000(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;Lcom/amazon/readingactions/helpers/purchase/PurchaseStatus;)V

    return-void
.end method
