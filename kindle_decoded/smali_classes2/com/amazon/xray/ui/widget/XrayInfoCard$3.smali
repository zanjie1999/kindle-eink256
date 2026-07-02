.class Lcom/amazon/xray/ui/widget/XrayInfoCard$3;
.super Ljava/lang/Object;
.source "XrayInfoCard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/xray/ui/widget/XrayInfoCard;->createGoToViewOnClickListener()Landroid/view/View$OnClickListener;
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

    .line 138
    iput-object p1, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard$3;->this$0:Lcom/amazon/xray/ui/widget/XrayInfoCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 141
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard$3;->this$0:Lcom/amazon/xray/ui/widget/XrayInfoCard;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/amazon/xray/ui/activity/XrayActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    .line 142
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 143
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard$3;->this$0:Lcom/amazon/xray/ui/widget/XrayInfoCard;

    invoke-static {v0}, Lcom/amazon/xray/ui/widget/XrayInfoCard;->access$900(Lcom/amazon/xray/ui/widget/XrayInfoCard;)Lcom/amazon/xray/model/object/Entity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/xray/model/object/Entity;->getId()I

    move-result v0

    const-string v1, "com.amazon.xray.ui.activity.OpenDirectlyToEntity"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "com.amazon.xray.ui.activity.LaunchedFromSource"

    const-string v1, "TimesLaunchedFromInfoCard"

    .line 144
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard$3;->this$0:Lcom/amazon/xray/ui/widget/XrayInfoCard;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 147
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    const-string v0, "XrayInfoCard"

    const-string v1, "Xray"

    .line 148
    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->openContext(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "PressedXray"

    .line 150
    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object p1, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard$3;->this$0:Lcom/amazon/xray/ui/widget/XrayInfoCard;

    invoke-static {p1}, Lcom/amazon/xray/ui/widget/XrayInfoCard;->access$1000(Lcom/amazon/xray/ui/widget/XrayInfoCard;)Lcom/amazon/xray/metrics/MetricsRecorder;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard$3;->this$0:Lcom/amazon/xray/ui/widget/XrayInfoCard;

    invoke-static {v0}, Lcom/amazon/xray/ui/widget/XrayInfoCard;->access$900(Lcom/amazon/xray/ui/widget/XrayInfoCard;)Lcom/amazon/xray/model/object/Entity;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazon/xray/metrics/MetricsRecorder;->openXrayFromInfoCard(Lcom/amazon/xray/model/object/Entity;)V

    return-void
.end method
