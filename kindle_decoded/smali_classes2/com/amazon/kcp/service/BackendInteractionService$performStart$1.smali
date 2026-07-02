.class final Lcom/amazon/kcp/service/BackendInteractionService$performStart$1;
.super Ljava/lang/Object;
.source "BackendInteractionService.kt"

# interfaces
.implements Lcom/amazon/kindle/callback/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/service/BackendInteractionService;->performStart$KindleReaderLibrary_release(Ljava/lang/String;Lcom/amazon/kcp/application/IKindleObjectFactory;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/callback/ICallback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

.field final synthetic this$0:Lcom/amazon/kcp/service/BackendInteractionService;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/service/BackendInteractionService;Lcom/amazon/kcp/application/IKindleObjectFactory;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/service/BackendInteractionService$performStart$1;->this$0:Lcom/amazon/kcp/service/BackendInteractionService;

    iput-object p2, p0, Lcom/amazon/kcp/service/BackendInteractionService$performStart$1;->$factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Lcom/amazon/kindle/callback/OperationResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/callback/OperationResult<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "success"

    .line 58
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/kindle/callback/OperationResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    .line 59
    invoke-static {}, Lcom/amazon/kcp/service/BackendInteractionServiceKt;->access$getTAG$p()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Registration "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "result"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "successful"

    goto :goto_0

    :cond_0
    const-string v1, "failed"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 62
    iget-object p1, p0, Lcom/amazon/kcp/service/BackendInteractionService$performStart$1;->this$0:Lcom/amazon/kcp/service/BackendInteractionService;

    iget-object v0, p0, Lcom/amazon/kcp/service/BackendInteractionService$performStart$1;->$factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-static {p1, v0}, Lcom/amazon/kcp/service/BackendInteractionService;->access$startFTUE(Lcom/amazon/kcp/service/BackendInteractionService;Lcom/amazon/kcp/application/IKindleObjectFactory;)V

    .line 65
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/service/BackendInteractionService$performStart$1;->this$0:Lcom/amazon/kcp/service/BackendInteractionService;

    invoke-virtual {p1}, Landroid/app/Service;->stopSelf()V

    return-void
.end method
