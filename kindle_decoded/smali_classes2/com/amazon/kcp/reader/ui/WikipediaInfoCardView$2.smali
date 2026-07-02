.class Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView$2;
.super Ljava/lang/Object;
.source "WikipediaInfoCardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->setButtonClickEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView$2;->this$0:Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "DetailedLookup"

    .line 104
    invoke-static {v0}, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->emitMetric(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView$2;->this$0:Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->openInBrowser(Landroid/view/View;)V

    return-void
.end method
