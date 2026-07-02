.class Lcom/amazon/kcp/debug/DebugActivity$30$3;
.super Ljava/lang/Object;
.source "DebugActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/DebugActivity$30;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$debugOption:Lcom/amazon/dcp/messaging/DeliveryOption;

.field final synthetic val$manager:Lcom/amazon/kindle/krx/messaging/IMessagingManager;

.field final synthetic val$requesterOption:Lcom/amazon/dcp/messaging/DeliveryOption;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/DebugActivity$30;Lcom/amazon/kindle/krx/messaging/IMessagingManager;Lcom/amazon/dcp/messaging/DeliveryOption;Lcom/amazon/dcp/messaging/DeliveryOption;)V
    .locals 0

    .line 1401
    iput-object p2, p0, Lcom/amazon/kcp/debug/DebugActivity$30$3;->val$manager:Lcom/amazon/kindle/krx/messaging/IMessagingManager;

    iput-object p3, p0, Lcom/amazon/kcp/debug/DebugActivity$30$3;->val$requesterOption:Lcom/amazon/dcp/messaging/DeliveryOption;

    iput-object p4, p0, Lcom/amazon/kcp/debug/DebugActivity$30$3;->val$debugOption:Lcom/amazon/dcp/messaging/DeliveryOption;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1405
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/debug/DebugActivity$30$3;->val$manager:Lcom/amazon/kindle/krx/messaging/IMessagingManager;

    const-string v1, "OdotClientTestTopic"

    const/16 v2, 0xa

    new-array v2, v2, [B

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/dcp/messaging/DeliveryOption;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/amazon/kcp/debug/DebugActivity$30$3;->val$requesterOption:Lcom/amazon/dcp/messaging/DeliveryOption;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/amazon/kcp/debug/DebugActivity$30$3;->val$debugOption:Lcom/amazon/dcp/messaging/DeliveryOption;

    aput-object v5, v3, v4

    invoke-interface {v0, v1, v2, v3}, Lcom/amazon/kindle/krx/messaging/IMessagingManager;->send(Ljava/lang/String;[B[Lcom/amazon/dcp/messaging/DeliveryOption;)V
    :try_end_0
    .catch Lcom/amazon/kindle/krx/messaging/SendMessageFailureException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1407
    :catch_0
    invoke-static {}, Lcom/amazon/kcp/debug/DebugActivity;->access$1000()Ljava/lang/String;

    :goto_0
    return-void
.end method
