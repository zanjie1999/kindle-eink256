.class Lcom/amazon/nwstd/toc/TOCPanelListener$1;
.super Ljava/lang/Object;
.source "TOCPanelListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/nwstd/toc/TOCPanelListener;->highLightCurrentArticle(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/nwstd/toc/TOCPanelListener;


# direct methods
.method constructor <init>(Lcom/amazon/nwstd/toc/TOCPanelListener;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/amazon/nwstd/toc/TOCPanelListener$1;->this$0:Lcom/amazon/nwstd/toc/TOCPanelListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/amazon/nwstd/toc/TOCPanelListener$1;->this$0:Lcom/amazon/nwstd/toc/TOCPanelListener;

    invoke-static {v0}, Lcom/amazon/nwstd/toc/TOCPanelListener;->access$100(Lcom/amazon/nwstd/toc/TOCPanelListener;)Lcom/amazon/nwstd/toc/TOCView;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/nwstd/toc/TOCPanelListener$1;->this$0:Lcom/amazon/nwstd/toc/TOCPanelListener;

    invoke-static {v1}, Lcom/amazon/nwstd/toc/TOCPanelListener;->access$000(Lcom/amazon/nwstd/toc/TOCPanelListener;)Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/nwstd/toc/TOCUtils;->getCurrentListViewIdx(Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/nwstd/toc/TOCView;->selectCurrentArticle(I)V

    return-void
.end method
