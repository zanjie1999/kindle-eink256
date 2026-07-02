.class Lcom/amazon/xray/ui/widget/XrayInfoCard$4;
.super Ljava/lang/Object;
.source "XrayInfoCard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/xray/ui/widget/XrayInfoCard;->createYesTextViewOnClickListener(Lcom/amazon/kindle/krx/content/IContentSelection;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/xray/ui/widget/XrayInfoCard;

.field final synthetic val$selection:Lcom/amazon/kindle/krx/content/IContentSelection;


# direct methods
.method constructor <init>(Lcom/amazon/xray/ui/widget/XrayInfoCard;Lcom/amazon/kindle/krx/content/IContentSelection;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard$4;->this$0:Lcom/amazon/xray/ui/widget/XrayInfoCard;

    iput-object p2, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard$4;->val$selection:Lcom/amazon/kindle/krx/content/IContentSelection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 162
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    const-string v0, "XrayInfoCard"

    const-string v1, "PositiveFeedback"

    .line 163
    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object p1, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard$4;->this$0:Lcom/amazon/xray/ui/widget/XrayInfoCard;

    invoke-static {p1}, Lcom/amazon/xray/ui/widget/XrayInfoCard;->access$1000(Lcom/amazon/xray/ui/widget/XrayInfoCard;)Lcom/amazon/xray/metrics/MetricsRecorder;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard$4;->this$0:Lcom/amazon/xray/ui/widget/XrayInfoCard;

    invoke-static {v0}, Lcom/amazon/xray/ui/widget/XrayInfoCard;->access$900(Lcom/amazon/xray/ui/widget/XrayInfoCard;)Lcom/amazon/xray/model/object/Entity;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazon/xray/metrics/MetricsRecorder;->sendPositiveFeedbackFromInfoCard(Lcom/amazon/xray/model/object/Entity;)V

    .line 168
    iget-object p1, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard$4;->val$selection:Lcom/amazon/kindle/krx/content/IContentSelection;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IContentSelection;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard$4;->val$selection:Lcom/amazon/kindle/krx/content/IContentSelection;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IContentSelection;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getGuid()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard$4;->this$0:Lcom/amazon/xray/ui/widget/XrayInfoCard;

    invoke-static {p1}, Lcom/amazon/xray/ui/widget/XrayInfoCard;->access$900(Lcom/amazon/xray/ui/widget/XrayInfoCard;)Lcom/amazon/xray/model/object/Entity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/xray/model/object/Entity;->getLabel()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard$4;->val$selection:Lcom/amazon/kindle/krx/content/IContentSelection;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IContentSelection;->getSelectionStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object p1, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard$4;->val$selection:Lcom/amazon/kindle/krx/content/IContentSelection;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IContentSelection;->getSelectionEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v2, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/amazon/xray/feedback/XrayFeedbackSender;->sendInfocardFeedback(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object p1, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard$4;->this$0:Lcom/amazon/xray/ui/widget/XrayInfoCard;

    invoke-static {p1}, Lcom/amazon/xray/ui/widget/XrayInfoCard;->access$1100(Lcom/amazon/xray/ui/widget/XrayInfoCard;)V

    return-void
.end method
