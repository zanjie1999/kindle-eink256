.class Lcom/amazon/kindle/map/StandaloneMAPRegistrationManager$1;
.super Ljava/lang/Object;
.source "StandaloneMAPRegistrationManager.java"

# interfaces
.implements Lcom/amazon/kindle/callback/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/map/StandaloneMAPRegistrationManager;->refresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/callback/ICallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/map/StandaloneMAPRegistrationManager;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/map/StandaloneMAPRegistrationManager;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/amazon/kindle/map/StandaloneMAPRegistrationManager$1;->this$0:Lcom/amazon/kindle/map/StandaloneMAPRegistrationManager;

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
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 79
    invoke-virtual {p1}, Lcom/amazon/kindle/callback/OperationResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lcom/amazon/kindle/map/StandaloneMAPRegistrationManager$1;->this$0:Lcom/amazon/kindle/map/StandaloneMAPRegistrationManager;

    invoke-static {v0, p1}, Lcom/amazon/kindle/map/StandaloneMAPRegistrationManager;->access$000(Lcom/amazon/kindle/map/StandaloneMAPRegistrationManager;Ljava/lang/String;)V

    return-void
.end method
