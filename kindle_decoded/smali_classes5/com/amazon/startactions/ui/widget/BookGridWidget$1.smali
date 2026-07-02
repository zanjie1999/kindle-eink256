.class Lcom/amazon/startactions/ui/widget/BookGridWidget$1;
.super Ljava/lang/Object;
.source "BookGridWidget.java"

# interfaces
.implements Lcom/amazon/startactions/storage/ImageBatchDownloader$BatchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/startactions/ui/widget/BookGridWidget;->createView(Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/startactions/ui/widget/BookGridWidget;


# direct methods
.method constructor <init>(Lcom/amazon/startactions/ui/widget/BookGridWidget;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/amazon/startactions/ui/widget/BookGridWidget$1;->this$0:Lcom/amazon/startactions/ui/widget/BookGridWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyImage(ILandroid/graphics/Bitmap;)V
    .locals 0

    .line 191
    iget-object p2, p0, Lcom/amazon/startactions/ui/widget/BookGridWidget$1;->this$0:Lcom/amazon/startactions/ui/widget/BookGridWidget;

    invoke-static {p2}, Lcom/amazon/startactions/ui/widget/BookGridWidget;->access$000(Lcom/amazon/startactions/ui/widget/BookGridWidget;)Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;->reloadCover(I)V

    return-void
.end method
