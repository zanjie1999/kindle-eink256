.class Lcom/amazon/kcp/debug/DebugActivity$30;
.super Ljava/lang/Object;
.source "DebugActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/DebugActivity;->onSendOdotMessage(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/debug/DebugActivity;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$isSingleMessage:[Z


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/DebugActivity;[ZLandroid/content/Context;)V
    .locals 0

    .line 1369
    iput-object p1, p0, Lcom/amazon/kcp/debug/DebugActivity$30;->this$0:Lcom/amazon/kcp/debug/DebugActivity;

    iput-object p2, p0, Lcom/amazon/kcp/debug/DebugActivity$30;->val$isSingleMessage:[Z

    iput-object p3, p0, Lcom/amazon/kcp/debug/DebugActivity$30;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 1372
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 1376
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMessagingManager()Lcom/amazon/kindle/krx/messaging/IMessagingManager;

    move-result-object p1

    .line 1377
    new-instance p2, Lcom/amazon/kcp/debug/DebugActivity$30$1;

    invoke-direct {p2, p0}, Lcom/amazon/kcp/debug/DebugActivity$30$1;-><init>(Lcom/amazon/kcp/debug/DebugActivity$30;)V

    .line 1388
    new-instance v0, Lcom/amazon/kcp/debug/DebugActivity$30$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/debug/DebugActivity$30$2;-><init>(Lcom/amazon/kcp/debug/DebugActivity$30;)V

    .line 1400
    iget-object v1, p0, Lcom/amazon/kcp/debug/DebugActivity$30;->val$isSingleMessage:[Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_1

    .line 1401
    new-instance v1, Ljava/lang/Thread;

    new-instance v3, Lcom/amazon/kcp/debug/DebugActivity$30$3;

    invoke-direct {v3, p0, p1, p2, v0}, Lcom/amazon/kcp/debug/DebugActivity$30$3;-><init>(Lcom/amazon/kcp/debug/DebugActivity$30;Lcom/amazon/kindle/krx/messaging/IMessagingManager;Lcom/amazon/dcp/messaging/DeliveryOption;Lcom/amazon/dcp/messaging/DeliveryOption;)V

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1410
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1411
    iget-object p1, p0, Lcom/amazon/kcp/debug/DebugActivity$30;->val$context:Landroid/content/Context;

    const-string p2, "Processing Message..."

    invoke-static {p1, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1413
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/amazon/kcp/debug/DebugActivity$30$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/kcp/debug/DebugActivity$30$4;-><init>(Lcom/amazon/kcp/debug/DebugActivity$30;Lcom/amazon/kindle/krx/messaging/IMessagingManager;Lcom/amazon/dcp/messaging/DeliveryOption;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1426
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1427
    iget-object p1, p0, Lcom/amazon/kcp/debug/DebugActivity$30;->val$context:Landroid/content/Context;

    const-string p2, "Processing Messages..."

    invoke-static {p1, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
