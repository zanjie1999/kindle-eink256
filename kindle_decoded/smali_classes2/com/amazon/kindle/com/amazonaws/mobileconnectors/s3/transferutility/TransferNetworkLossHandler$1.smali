.class Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler$1;
.super Ljava/lang/Object;
.source "TransferNetworkLossHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler$1;->this$0:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler$1;->this$0:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->isNetworkConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler$1;->this$0:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    invoke-static {v0}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->access$000(Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;)V

    goto :goto_0

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler$1;->this$0:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    invoke-static {v0}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->access$100(Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;)V

    :goto_0
    return-void
.end method
