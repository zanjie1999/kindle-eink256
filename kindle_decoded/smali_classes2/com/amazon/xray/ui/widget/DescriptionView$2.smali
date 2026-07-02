.class Lcom/amazon/xray/ui/widget/DescriptionView$2;
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

    .line 135
    iput-object p1, p0, Lcom/amazon/xray/ui/widget/DescriptionView$2;->this$0:Lcom/amazon/xray/ui/widget/DescriptionView;

    iput-object p2, p0, Lcom/amazon/xray/ui/widget/DescriptionView$2;->val$description:Lcom/amazon/xray/model/object/Description;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 138
    iget-object p1, p0, Lcom/amazon/xray/ui/widget/DescriptionView$2;->this$0:Lcom/amazon/xray/ui/widget/DescriptionView;

    iget-object v0, p0, Lcom/amazon/xray/ui/widget/DescriptionView$2;->val$description:Lcom/amazon/xray/model/object/Description;

    invoke-virtual {v0}, Lcom/amazon/xray/model/object/Description;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/xray/ui/widget/DescriptionView;->access$000(Lcom/amazon/xray/ui/widget/DescriptionView;Ljava/lang/String;)V

    .line 139
    iget-object p1, p0, Lcom/amazon/xray/ui/widget/DescriptionView$2;->this$0:Lcom/amazon/xray/ui/widget/DescriptionView;

    iget-object p1, p1, Lcom/amazon/xray/ui/widget/DescriptionView;->onNavigateToSourceRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 140
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 144
    :cond_0
    invoke-static {}, Lcom/amazon/xray/plugin/util/BookUtil;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    const-string v0, "XrayReadingSession"

    invoke-static {p1, v0}, Lcom/amazon/xray/metrics/SessionManager;->getSessionMetric(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)Lcom/amazon/xray/metrics/Metric;

    move-result-object p1

    const-string v0, "UITaps"

    .line 146
    invoke-virtual {p1, v0}, Lcom/amazon/xray/metrics/Metric;->incrementCount(Ljava/lang/String;)V

    const-string p1, "XrayDescriptionSource"

    .line 150
    invoke-static {p1}, Lcom/amazon/xray/metrics/BookMetricUtil;->createCurrentBookMetric(Ljava/lang/String;)Lcom/amazon/xray/metrics/Metric;

    move-result-object p1

    .line 151
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/DescriptionView$2;->val$description:Lcom/amazon/xray/model/object/Description;

    .line 152
    invoke-virtual {v0}, Lcom/amazon/xray/model/object/Description;->getLabel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DescriptionSourceLabel"

    .line 151
    invoke-virtual {p1, v1, v0}, Lcom/amazon/xray/metrics/Metric;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/DescriptionView$2;->val$description:Lcom/amazon/xray/model/object/Description;

    .line 154
    invoke-virtual {v0}, Lcom/amazon/xray/model/object/Description;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "DescriptionSourceTextLength"

    .line 153
    invoke-virtual {p1, v1, v0}, Lcom/amazon/xray/metrics/Metric;->setCount(Ljava/lang/String;I)V

    .line 155
    invoke-virtual {p1}, Lcom/amazon/xray/metrics/Metric;->close()V

    .line 157
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    .line 158
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/DescriptionView$2;->this$0:Lcom/amazon/xray/ui/widget/DescriptionView;

    invoke-static {v0}, Lcom/amazon/xray/ui/widget/DescriptionView;->access$100(Lcom/amazon/xray/ui/widget/DescriptionView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SeeDescriptionSource"

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/DescriptionView$2;->this$0:Lcom/amazon/xray/ui/widget/DescriptionView;

    invoke-static {v0}, Lcom/amazon/xray/ui/widget/DescriptionView;->access$100(Lcom/amazon/xray/ui/widget/DescriptionView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Browser"

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->openContext(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
