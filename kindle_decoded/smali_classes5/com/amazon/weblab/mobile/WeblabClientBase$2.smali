.class Lcom/amazon/weblab/mobile/WeblabClientBase$2;
.super Ljava/lang/Object;
.source "WeblabClientBase.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/weblab/mobile/WeblabClientBase;->updateAsync()Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/weblab/mobile/WeblabClientBase;


# direct methods
.method constructor <init>(Lcom/amazon/weblab/mobile/WeblabClientBase;)V
    .locals 0

    .line 548
    iput-object p1, p0, Lcom/amazon/weblab/mobile/WeblabClientBase$2;->this$0:Lcom/amazon/weblab/mobile/WeblabClientBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 551
    iget-object v0, p0, Lcom/amazon/weblab/mobile/WeblabClientBase$2;->this$0:Lcom/amazon/weblab/mobile/WeblabClientBase;

    invoke-static {v0}, Lcom/amazon/weblab/mobile/WeblabClientBase;->access$900(Lcom/amazon/weblab/mobile/WeblabClientBase;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

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

    .line 548
    invoke-virtual {p0}, Lcom/amazon/weblab/mobile/WeblabClientBase$2;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
