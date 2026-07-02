.class Lcom/amazon/xray/ui/widget/XrayInfoCard$1;
.super Ljava/lang/Object;
.source "XrayInfoCard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/xray/ui/widget/XrayInfoCard;->createOnNavigateToSourceRunnable()Ljava/lang/Runnable;
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

    .line 115
    iput-object p1, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard$1;->this$0:Lcom/amazon/xray/ui/widget/XrayInfoCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard$1;->this$0:Lcom/amazon/xray/ui/widget/XrayInfoCard;

    invoke-static {v0}, Lcom/amazon/xray/ui/widget/XrayInfoCard;->access$1000(Lcom/amazon/xray/ui/widget/XrayInfoCard;)Lcom/amazon/xray/metrics/MetricsRecorder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard$1;->this$0:Lcom/amazon/xray/ui/widget/XrayInfoCard;

    invoke-static {v1}, Lcom/amazon/xray/ui/widget/XrayInfoCard;->access$900(Lcom/amazon/xray/ui/widget/XrayInfoCard;)Lcom/amazon/xray/model/object/Entity;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/xray/metrics/MetricsRecorder;->openDescriptionUrlFromInfoCard(Lcom/amazon/xray/model/object/Entity;)V

    return-void
.end method
