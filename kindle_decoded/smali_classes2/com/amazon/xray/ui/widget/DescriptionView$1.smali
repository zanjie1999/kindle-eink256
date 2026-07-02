.class Lcom/amazon/xray/ui/widget/DescriptionView$1;
.super Ljava/lang/Object;
.source "DescriptionView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/xray/ui/widget/DescriptionView;->setDescription(Lcom/amazon/xray/model/object/Description;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/xray/ui/widget/DescriptionView;

.field final synthetic val$description:Lcom/amazon/xray/model/object/Description;


# direct methods
.method constructor <init>(Lcom/amazon/xray/ui/widget/DescriptionView;Lcom/amazon/xray/model/object/Description;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/amazon/xray/ui/widget/DescriptionView$1;->this$0:Lcom/amazon/xray/ui/widget/DescriptionView;

    iput-object p2, p0, Lcom/amazon/xray/ui/widget/DescriptionView$1;->val$description:Lcom/amazon/xray/model/object/Description;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 110
    iget-object p1, p0, Lcom/amazon/xray/ui/widget/DescriptionView$1;->this$0:Lcom/amazon/xray/ui/widget/DescriptionView;

    iget-object v0, p0, Lcom/amazon/xray/ui/widget/DescriptionView$1;->val$description:Lcom/amazon/xray/model/object/Description;

    invoke-virtual {v0}, Lcom/amazon/xray/model/object/Description;->getLicenseUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/xray/ui/widget/DescriptionView;->access$000(Lcom/amazon/xray/ui/widget/DescriptionView;Ljava/lang/String;)V

    .line 113
    invoke-static {}, Lcom/amazon/xray/plugin/util/BookUtil;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    const-string v0, "XrayReadingSession"

    invoke-static {p1, v0}, Lcom/amazon/xray/metrics/SessionManager;->getSessionMetric(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)Lcom/amazon/xray/metrics/Metric;

    move-result-object p1

    const-string v0, "UITaps"

    .line 115
    invoke-virtual {p1, v0}, Lcom/amazon/xray/metrics/Metric;->incrementCount(Ljava/lang/String;)V

    .line 117
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    .line 118
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/DescriptionView$1;->this$0:Lcom/amazon/xray/ui/widget/DescriptionView;

    invoke-static {v0}, Lcom/amazon/xray/ui/widget/DescriptionView;->access$100(Lcom/amazon/xray/ui/widget/DescriptionView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SeeDescriptionLicense"

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/DescriptionView$1;->this$0:Lcom/amazon/xray/ui/widget/DescriptionView;

    invoke-static {v0}, Lcom/amazon/xray/ui/widget/DescriptionView;->access$100(Lcom/amazon/xray/ui/widget/DescriptionView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Browser"

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->openContext(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
