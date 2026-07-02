.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowCoexHandler;
.super Ljava/lang/Object;
.source "ZeroTouchWorkflowCoexHandler.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ZeroTouchWorkflowCoexHandler"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowCoexHandler;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public accept(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 27
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate;->getState()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$State;

    move-result-object v0

    .line 28
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate;->getRadio()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$Radio;

    move-result-object p1

    .line 30
    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$State;->CONNECTING:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$State;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "com.amazon.whisperjoin.setup.ble.PERMISSION"

    if-eqz v1, :cond_0

    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$Radio;->BLE:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$Radio;

    .line 31
    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowCoexHandler;->TAG:Ljava/lang/String;

    const-string v0, "Sending broadcast that BLE setup has started."

    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowCoexHandler;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.amazon.whisperjoin.setup.ble.STARTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    .line 37
    :cond_0
    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$State;->SUCCESS:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$State;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$State;->FAILURE:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$State;

    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    .line 40
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$Radio;->BLE:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$Radio;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 41
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowCoexHandler;->TAG:Ljava/lang/String;

    const-string v0, "Sending broadcast that BLE setup has stopped."

    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowCoexHandler;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.amazon.whisperjoin.setup.ble.STOPPED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowCoexHandler;->accept(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate;)V

    return-void
.end method
