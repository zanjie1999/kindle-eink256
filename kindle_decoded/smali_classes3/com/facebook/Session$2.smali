.class Lcom/facebook/Session$2;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Lcom/facebook/Request$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/Session;->refreshPermissions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/Session;


# direct methods
.method constructor <init>(Lcom/facebook/Session;)V
    .locals 0

    .line 610
    iput-object p1, p0, Lcom/facebook/Session$2;->this$0:Lcom/facebook/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/Response;)V
    .locals 4

    .line 613
    invoke-static {p1}, Lcom/facebook/Session;->handlePermissionResponse(Lcom/facebook/Response;)Lcom/facebook/Session$PermissionsPair;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 616
    iget-object v0, p0, Lcom/facebook/Session$2;->this$0:Lcom/facebook/Session;

    invoke-static {v0}, Lcom/facebook/Session;->access$200(Lcom/facebook/Session;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 617
    :try_start_0
    iget-object v1, p0, Lcom/facebook/Session$2;->this$0:Lcom/facebook/Session;

    iget-object v2, p0, Lcom/facebook/Session$2;->this$0:Lcom/facebook/Session;

    invoke-static {v2}, Lcom/facebook/Session;->access$300(Lcom/facebook/Session;)Lcom/facebook/AccessToken;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/Session$PermissionsPair;->getGrantedPermissions()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1}, Lcom/facebook/Session$PermissionsPair;->getDeclinedPermissions()Ljava/util/List;

    move-result-object p1

    invoke-static {v2, v3, p1}, Lcom/facebook/AccessToken;->createFromTokenWithRefreshedPermissions(Lcom/facebook/AccessToken;Ljava/util/List;Ljava/util/List;)Lcom/facebook/AccessToken;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/facebook/Session;->access$302(Lcom/facebook/Session;Lcom/facebook/AccessToken;)Lcom/facebook/AccessToken;

    .line 619
    iget-object p1, p0, Lcom/facebook/Session$2;->this$0:Lcom/facebook/Session;

    iget-object v1, p0, Lcom/facebook/Session$2;->this$0:Lcom/facebook/Session;

    invoke-static {v1}, Lcom/facebook/Session;->access$400(Lcom/facebook/Session;)Lcom/facebook/SessionState;

    move-result-object v1

    sget-object v2, Lcom/facebook/SessionState;->OPENED_TOKEN_UPDATED:Lcom/facebook/SessionState;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Lcom/facebook/Session;->postStateChange(Lcom/facebook/SessionState;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    .line 620
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method
