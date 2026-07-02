.class Lcom/amazon/xray/ui/widget/XrayInfoCard$5;
.super Ljava/lang/Object;
.source "XrayInfoCard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/xray/ui/widget/XrayInfoCard;->createNoTextViewOnClickListener()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/xray/ui/widget/XrayInfoCard;


# direct methods
.method constructor <init>(Lcom/amazon/xray/ui/widget/XrayInfoCard;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard$5;->this$0:Lcom/amazon/xray/ui/widget/XrayInfoCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 178
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    const-string v0, "XrayInfoCard"

    const-string v1, "NegativeFeedback"

    .line 179
    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object p1, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard$5;->this$0:Lcom/amazon/xray/ui/widget/XrayInfoCard;

    invoke-static {p1}, Lcom/amazon/xray/ui/widget/XrayInfoCard;->access$1000(Lcom/amazon/xray/ui/widget/XrayInfoCard;)Lcom/amazon/xray/metrics/MetricsRecorder;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard$5;->this$0:Lcom/amazon/xray/ui/widget/XrayInfoCard;

    invoke-static {v0}, Lcom/amazon/xray/ui/widget/XrayInfoCard;->access$900(Lcom/amazon/xray/ui/widget/XrayInfoCard;)Lcom/amazon/xray/model/object/Entity;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazon/xray/metrics/MetricsRecorder;->sendNegativeFeedbackFromInfoCard(Lcom/amazon/xray/model/object/Entity;)V

    .line 184
    iget-object p1, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard$5;->this$0:Lcom/amazon/xray/ui/widget/XrayInfoCard;

    invoke-static {p1}, Lcom/amazon/xray/ui/widget/XrayInfoCard;->access$1200(Lcom/amazon/xray/ui/widget/XrayInfoCard;)V

    .line 185
    iget-object p1, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard$5;->this$0:Lcom/amazon/xray/ui/widget/XrayInfoCard;

    invoke-static {p1}, Lcom/amazon/xray/ui/widget/XrayInfoCard;->access$1300(Lcom/amazon/xray/ui/widget/XrayInfoCard;)V

    return-void
.end method
