.class public final Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter$getBubbleContentView$purchaseStatusListener$1;
.super Ljava/lang/Object;
.source "BookGridController.kt"

# interfaces
.implements Lcom/amazon/readingactions/helpers/purchase/IPurchaseStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;->getBubbleContentView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $holder:Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;

.field final synthetic this$0:Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;


# direct methods
.method constructor <init>(Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;",
            ")V"
        }
    .end annotation

    .line 353
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter$getBubbleContentView$purchaseStatusListener$1;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;

    iput-object p2, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter$getBubbleContentView$purchaseStatusListener$1;->$holder:Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Lcom/amazon/readingactions/helpers/purchase/PurchaseStatus;)V
    .locals 2

    const-string/jumbo v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter$getBubbleContentView$purchaseStatusListener$1;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;

    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter$getBubbleContentView$purchaseStatusListener$1;->$holder:Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;

    invoke-static {v0, v1, p1}, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;->access$refreshView(Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;Lcom/amazon/readingactions/helpers/purchase/PurchaseStatus;)V

    return-void
.end method
