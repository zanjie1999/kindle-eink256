.class Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$1;
.super Ljava/lang/Object;
.source "BookGridController.java"

# interfaces
.implements Lcom/amazon/startactions/storage/ImageBatchDownloader$BatchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->createView(Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;


# direct methods
.method constructor <init>(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$1;->this$0:Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyImage(ILandroid/graphics/Bitmap;)V
    .locals 0

    .line 225
    iget-object p2, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$1;->this$0:Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;

    invoke-static {p2}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->access$000(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;->reloadCover(I)V

    return-void
.end method
