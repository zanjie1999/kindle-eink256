.class Lcom/amazon/kindle/BaseFTUELoadingActivity$3;
.super Ljava/lang/Object;
.source "BaseFTUELoadingActivity.java"

# interfaces
.implements Lcom/amazon/kindle/callback/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/BaseFTUELoadingActivity;->getAllItemsCounter()Lcom/amazon/kcp/library/AbstractUserItemsCounter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/callback/ICallback<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/BaseFTUELoadingActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/BaseFTUELoadingActivity;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/amazon/kindle/BaseFTUELoadingActivity$3;->this$0:Lcom/amazon/kindle/BaseFTUELoadingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/amazon/kindle/callback/OperationResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/callback/OperationResult<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 280
    iget-object p1, p0, Lcom/amazon/kindle/BaseFTUELoadingActivity$3;->this$0:Lcom/amazon/kindle/BaseFTUELoadingActivity;

    invoke-virtual {p1}, Lcom/amazon/kindle/BaseFTUELoadingActivity;->getVisibleContentCount()I

    move-result p1

    if-lez p1, :cond_0

    .line 281
    invoke-static {}, Lcom/amazon/kindle/BaseFTUELoadingActivity;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Try to show library since visible content is there"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iget-object p1, p0, Lcom/amazon/kindle/BaseFTUELoadingActivity$3;->this$0:Lcom/amazon/kindle/BaseFTUELoadingActivity;

    invoke-virtual {p1}, Lcom/amazon/kindle/BaseFTUELoadingActivity;->tryToShowLibrary()Z

    :cond_0
    return-void
.end method
