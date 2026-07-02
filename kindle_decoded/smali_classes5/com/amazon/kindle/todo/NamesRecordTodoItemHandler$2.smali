.class Lcom/amazon/kindle/todo/NamesRecordTodoItemHandler$2;
.super Ljava/lang/Object;
.source "NamesRecordTodoItemHandler.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/todo/NamesRecordTodoItemHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/kindle/todo/NamesRecordTodoItemHandler;)V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .line 129
    invoke-static {}, Lcom/amazon/kindle/todo/NamesRecordTodoItemHandler;->access$100()Ljava/lang/String;

    .line 130
    new-instance v0, Lcom/amazon/kcp/application/pages/internal/DeregisterPage;

    invoke-direct {v0}, Lcom/amazon/kcp/application/pages/internal/DeregisterPage;-><init>()V

    .line 131
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v0

    .line 132
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/application/pages/internal/DeregisterPage;->deregisterLocallyOnly(Lcom/amazon/kcp/application/IKindleApplicationController;Lcom/amazon/kindle/services/authentication/IAccountInfo;Z)V

    return-void
.end method
