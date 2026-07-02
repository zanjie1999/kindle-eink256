.class Lcom/amazon/weblab/mobile/WeblabBase$1;
.super Ljava/lang/Object;
.source "WeblabBase.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/weblab/mobile/WeblabBase;->recordTrigger()Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/amazon/weblab/mobile/model/MobileWeblabTriggerResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/weblab/mobile/WeblabBase;


# direct methods
.method constructor <init>(Lcom/amazon/weblab/mobile/WeblabBase;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/amazon/weblab/mobile/WeblabBase$1;->this$0:Lcom/amazon/weblab/mobile/WeblabBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazon/weblab/mobile/model/MobileWeblabTriggerResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/weblab/mobile/model/MobileWeblabException;
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/amazon/weblab/mobile/WeblabBase$1;->this$0:Lcom/amazon/weblab/mobile/WeblabBase;

    invoke-static {v0}, Lcom/amazon/weblab/mobile/WeblabBase;->access$000(Lcom/amazon/weblab/mobile/WeblabBase;)Lcom/amazon/weblab/mobile/model/MobileWeblabTriggerResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 115
    invoke-virtual {p0}, Lcom/amazon/weblab/mobile/WeblabBase$1;->call()Lcom/amazon/weblab/mobile/model/MobileWeblabTriggerResult;

    move-result-object v0

    return-object v0
.end method
