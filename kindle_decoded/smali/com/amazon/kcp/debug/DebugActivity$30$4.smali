.class Lcom/amazon/kcp/debug/DebugActivity$30$4;
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
.field final synthetic val$manager:Lcom/amazon/kindle/krx/messaging/IMessagingManager;

.field final synthetic val$requesterOption:Lcom/amazon/dcp/messaging/DeliveryOption;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/DebugActivity$30;Lcom/amazon/kindle/krx/messaging/IMessagingManager;Lcom/amazon/dcp/messaging/DeliveryOption;)V
    .locals 0

    .line 1413
    iput-object p2, p0, Lcom/amazon/kcp/debug/DebugActivity$30$4;->val$manager:Lcom/amazon/kindle/krx/messaging/IMessagingManager;

    iput-object p3, p0, Lcom/amazon/kcp/debug/DebugActivity$30$4;->val$requesterOption:Lcom/amazon/dcp/messaging/DeliveryOption;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x6e

    if-ge v1, v2, :cond_0

    .line 1420
    :try_start_0
    iget-object v2, p0, Lcom/amazon/kcp/debug/DebugActivity$30$4;->val$manager:Lcom/amazon/kindle/krx/messaging/IMessagingManager;

    const-string v3, "OdotClientTestTopic"

    const/16 v4, 0xa

    new-array v4, v4, [B

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/amazon/dcp/messaging/DeliveryOption;

    iget-object v6, p0, Lcom/amazon/kcp/debug/DebugActivity$30$4;->val$requesterOption:Lcom/amazon/dcp/messaging/DeliveryOption;

    aput-object v6, v5, v0

    invoke-interface {v2, v3, v4, v5}, Lcom/amazon/kindle/krx/messaging/IMessagingManager;->send(Ljava/lang/String;[B[Lcom/amazon/dcp/messaging/DeliveryOption;)V
    :try_end_0
    .catch Lcom/amazon/kindle/krx/messaging/SendMessageFailureException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1423
    :catch_0
    invoke-static {}, Lcom/amazon/kcp/debug/DebugActivity;->access$1000()Ljava/lang/String;

    :cond_0
    return-void
.end method
