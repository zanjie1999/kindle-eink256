.class Lcom/amazon/xray/ui/widget/XrayInfoCard$6;
.super Ljava/lang/Object;
.source "XrayInfoCard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/xray/ui/widget/XrayInfoCard;->createErrorTypeSelectionBackOnClickListener()Landroid/view/View$OnClickListener;
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

    .line 191
    iput-object p1, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard$6;->this$0:Lcom/amazon/xray/ui/widget/XrayInfoCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 194
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    const-string v0, "XrayInfoCard"

    const-string v1, "BackButtonFeedbackPressed"

    .line 195
    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object p1, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard$6;->this$0:Lcom/amazon/xray/ui/widget/XrayInfoCard;

    invoke-static {p1}, Lcom/amazon/xray/ui/widget/XrayInfoCard;->access$1400(Lcom/amazon/xray/ui/widget/XrayInfoCard;)V

    .line 202
    iget-object p1, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard$6;->this$0:Lcom/amazon/xray/ui/widget/XrayInfoCard;

    invoke-static {p1}, Lcom/amazon/xray/ui/widget/XrayInfoCard;->access$1500(Lcom/amazon/xray/ui/widget/XrayInfoCard;)V

    return-void
.end method
