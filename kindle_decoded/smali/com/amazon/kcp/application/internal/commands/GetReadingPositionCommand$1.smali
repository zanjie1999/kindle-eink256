.class Lcom/amazon/kcp/application/internal/commands/GetReadingPositionCommand$1;
.super Ljava/lang/Object;
.source "GetReadingPositionCommand.java"

# interfaces
.implements Lcom/amazon/foundation/internal/IObjectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/application/internal/commands/GetReadingPositionCommand;->doExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/foundation/internal/IObjectCallback<",
        "Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/application/internal/commands/GetReadingPositionCommand;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/internal/commands/GetReadingPositionCommand;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/amazon/kcp/application/internal/commands/GetReadingPositionCommand$1;->this$0:Lcom/amazon/kcp/application/internal/commands/GetReadingPositionCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;)V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/GetReadingPositionCommand$1;->this$0:Lcom/amazon/kcp/application/internal/commands/GetReadingPositionCommand;

    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->getError()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kcp/application/internal/commands/GetReadingPositionCommand;->access$002(Lcom/amazon/kcp/application/internal/commands/GetReadingPositionCommand;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    .line 41
    iget-object p1, p0, Lcom/amazon/kcp/application/internal/commands/GetReadingPositionCommand$1;->this$0:Lcom/amazon/kcp/application/internal/commands/GetReadingPositionCommand;

    invoke-static {p1}, Lcom/amazon/kcp/application/internal/commands/GetReadingPositionCommand;->access$000(Lcom/amazon/kcp/application/internal/commands/GetReadingPositionCommand;)Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object p1

    if-nez p1, :cond_1

    .line 43
    iget-object p1, p0, Lcom/amazon/kcp/application/internal/commands/GetReadingPositionCommand$1;->this$0:Lcom/amazon/kcp/application/internal/commands/GetReadingPositionCommand;

    invoke-static {p1}, Lcom/amazon/kcp/application/internal/commands/GetReadingPositionCommand;->access$300(Lcom/amazon/kcp/application/internal/commands/GetReadingPositionCommand;)Lcom/amazon/kindle/annotation/IAnnotationsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/GetReadingPositionCommand$1;->this$0:Lcom/amazon/kcp/application/internal/commands/GetReadingPositionCommand;

    invoke-static {v0}, Lcom/amazon/kcp/application/internal/commands/GetReadingPositionCommand;->access$200(Lcom/amazon/kcp/application/internal/commands/GetReadingPositionCommand;)Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazon/kindle/annotation/IAnnotationsManager;->getBookAnnotationsManager(Lcom/amazon/kindle/model/content/ILocalBookItem;)Lcom/amazon/kindle/annotation/IBookAnnotationsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/GetReadingPositionCommand$1;->this$0:Lcom/amazon/kcp/application/internal/commands/GetReadingPositionCommand;

    invoke-static {v0}, Lcom/amazon/kcp/application/internal/commands/GetReadingPositionCommand;->access$100(Lcom/amazon/kcp/application/internal/commands/GetReadingPositionCommand;)Lcom/amazon/kindle/krx/sync/LPRSyncType;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazon/kindle/annotation/IBookAnnotationsManager;->getServerReadingPosition(Lcom/amazon/kindle/krx/sync/LPRSyncType;)Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;

    move-result-object p1

    .line 44
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/GetReadingPositionCommand$1;->this$0:Lcom/amazon/kcp/application/internal/commands/GetReadingPositionCommand;

    invoke-static {v0}, Lcom/amazon/kcp/application/internal/commands/GetReadingPositionCommand;->access$100(Lcom/amazon/kcp/application/internal/commands/GetReadingPositionCommand;)Lcom/amazon/kindle/krx/sync/LPRSyncType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/sync/LPRSyncType;->FPR:Lcom/amazon/kindle/krx/sync/LPRSyncType;

    if-ne v0, v1, :cond_0

    .line 45
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/GetReadingPositionCommand$1;->this$0:Lcom/amazon/kcp/application/internal/commands/GetReadingPositionCommand;

    invoke-static {v0}, Lcom/amazon/kcp/application/internal/commands/GetReadingPositionCommand;->access$200(Lcom/amazon/kcp/application/internal/commands/GetReadingPositionCommand;)Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/model/content/ILocalBookItem;->proposeFprToUser(Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;)V

    goto :goto_0

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/GetReadingPositionCommand$1;->this$0:Lcom/amazon/kcp/application/internal/commands/GetReadingPositionCommand;

    invoke-static {v0}, Lcom/amazon/kcp/application/internal/commands/GetReadingPositionCommand;->access$100(Lcom/amazon/kcp/application/internal/commands/GetReadingPositionCommand;)Lcom/amazon/kindle/krx/sync/LPRSyncType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/sync/LPRSyncType;->MRPR:Lcom/amazon/kindle/krx/sync/LPRSyncType;

    if-ne v0, v1, :cond_1

    .line 47
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/GetReadingPositionCommand$1;->this$0:Lcom/amazon/kcp/application/internal/commands/GetReadingPositionCommand;

    invoke-static {v0}, Lcom/amazon/kcp/application/internal/commands/GetReadingPositionCommand;->access$200(Lcom/amazon/kcp/application/internal/commands/GetReadingPositionCommand;)Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/model/content/ILocalBookItem;->proposeMrprToUser(Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;)V

    .line 50
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/amazon/kcp/application/internal/commands/GetReadingPositionCommand$1;->this$0:Lcom/amazon/kcp/application/internal/commands/GetReadingPositionCommand;

    invoke-virtual {p1}, Lcom/amazon/kcp/application/internal/commands/AbsSyncCommand;->postKill()V

    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0

    .line 37
    check-cast p1, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/application/internal/commands/GetReadingPositionCommand$1;->execute(Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;)V

    return-void
.end method
