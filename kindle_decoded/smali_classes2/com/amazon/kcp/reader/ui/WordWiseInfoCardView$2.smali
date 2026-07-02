.class Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView$2;
.super Ljava/lang/Object;
.source "WordWiseInfoCardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->addListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView$2;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 323
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView$2;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->access$000(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;)Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->playCurrentSense()V

    const-string p1, "PronunciationClick"

    .line 324
    invoke-static {p1}, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->emitMetric(Ljava/lang/String;)V

    const-string p1, "WordWiseSpeakerClicked"

    .line 325
    invoke-static {p1}, Lcom/amazon/kcp/wordwise/metrics/WordWiseMetricsHelper;->reportWordWiseAction(Ljava/lang/String;)V

    return-void
.end method
