.class Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter$3;
.super Ljava/lang/Object;
.source "BookGridWidget.java"

# interfaces
.implements Lcom/amazon/readingactions/helpers/purchase/IPurchaseStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter;->getBubbleContentView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter;

.field final synthetic val$holder:Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;


# direct methods
.method constructor <init>(Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter;Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;)V
    .locals 0

    .line 488
    iput-object p1, p0, Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter$3;->this$1:Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter;

    iput-object p2, p0, Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter$3;->val$holder:Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Lcom/amazon/readingactions/helpers/purchase/PurchaseStatus;)V
    .locals 2

    .line 491
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter$3;->this$1:Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter;

    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter$3;->val$holder:Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;

    invoke-static {v0, v1, p1}, Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter;->access$1100(Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter;Lcom/amazon/startactions/ui/widget/BookGridWidget$DetailBubbleHolder;Lcom/amazon/readingactions/helpers/purchase/PurchaseStatus;)V

    return-void
.end method
