.class Lcom/amazon/nwstd/toc/TOCView$1;
.super Landroid/widget/ListView;
.source "TOCView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/nwstd/toc/TOCView;->createTOCListView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/nwstd/toc/TOCView;


# direct methods
.method constructor <init>(Lcom/amazon/nwstd/toc/TOCView;Landroid/content/Context;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/amazon/nwstd/toc/TOCView$1;->this$0:Lcom/amazon/nwstd/toc/TOCView;

    invoke-direct {p0, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 221
    invoke-super {p0, p1}, Landroid/widget/ListView;->onDraw(Landroid/graphics/Canvas;)V

    .line 222
    iget-object p1, p0, Lcom/amazon/nwstd/toc/TOCView$1;->this$0:Lcom/amazon/nwstd/toc/TOCView;

    invoke-virtual {p1}, Lcom/amazon/nwstd/toc/TOCView;->reportOnOpenMetricsIfNeeded()V

    return-void
.end method
