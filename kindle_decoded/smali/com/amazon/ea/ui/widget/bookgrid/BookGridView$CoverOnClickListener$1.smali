.class Lcom/amazon/ea/ui/widget/bookgrid/BookGridView$CoverOnClickListener$1;
.super Ljava/lang/Object;
.source "BookGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ea/ui/widget/bookgrid/BookGridView$CoverOnClickListener;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/ea/ui/widget/bookgrid/BookGridView$CoverOnClickListener;


# direct methods
.method constructor <init>(Lcom/amazon/ea/ui/widget/bookgrid/BookGridView$CoverOnClickListener;)V
    .locals 0

    .line 609
    iput-object p1, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridView$CoverOnClickListener$1;->this$1:Lcom/amazon/ea/ui/widget/bookgrid/BookGridView$CoverOnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 612
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridView$CoverOnClickListener$1;->this$1:Lcom/amazon/ea/ui/widget/bookgrid/BookGridView$CoverOnClickListener;

    iget-object v0, v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridView$CoverOnClickListener;->this$0:Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;->access$902(Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;Z)Z

    return-void
.end method
