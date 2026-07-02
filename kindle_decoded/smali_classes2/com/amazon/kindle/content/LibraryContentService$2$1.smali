.class Lcom/amazon/kindle/content/LibraryContentService$2$1;
.super Ljava/lang/Object;
.source "LibraryContentService.java"

# interfaces
.implements Lcom/amazon/kindle/event/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/content/LibraryContentService$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/event/IEventHandler<",
        "Lcom/amazon/kindle/event/AuthenticationEventPayload;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kindle/content/LibraryContentService$2;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/content/LibraryContentService$2;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/amazon/kindle/content/LibraryContentService$2$1;->this$1:Lcom/amazon/kindle/content/LibraryContentService$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEventTypes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/event/EventType;",
            ">;"
        }
    .end annotation

    .line 252
    sget-object v0, Lcom/amazon/kcp/application/IAuthenticationManager;->USER_REGISTER:Lcom/amazon/kindle/event/EventType;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public handleEvent(Lcom/amazon/kindle/event/Event;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/event/Event<",
            "Lcom/amazon/kindle/event/AuthenticationEventPayload;",
            ">;)V"
        }
    .end annotation

    .line 257
    invoke-virtual {p1}, Lcom/amazon/kindle/event/Event;->getPayload()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/event/AuthenticationEventPayload;

    invoke-virtual {p1}, Lcom/amazon/kindle/event/AuthenticationEventPayload;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object p1

    .line 258
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    invoke-interface {p1}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->getUserCOR()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->getUserPFM()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/Marketplace;->marketplaceContains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 259
    invoke-static {}, Lcom/amazon/kcp/debug/ScopedStorageUtilsManager;->getInstance()Lcom/amazon/kcp/debug/ScopedStorageUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/debug/ScopedStorageUtils;->isSideloadPermissionChangesEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/content/LibraryContentService$2$1;->this$1:Lcom/amazon/kindle/content/LibraryContentService$2;

    iget-object v0, v0, Lcom/amazon/kindle/content/LibraryContentService$2;->this$0:Lcom/amazon/kindle/content/LibraryContentService;

    invoke-interface {p1}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/content/LibraryContentService;->duplicateAllUnregisteredSideloadedContent(Ljava/lang/String;)V

    goto :goto_1

    .line 262
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/amazon/kindle/content/LibraryContentService$2$1;->this$1:Lcom/amazon/kindle/content/LibraryContentService$2;

    iget-object v1, v1, Lcom/amazon/kindle/content/LibraryContentService$2;->this$0:Lcom/amazon/kindle/content/LibraryContentService;

    invoke-interface {p1}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lcom/amazon/kindle/content/LibraryContentService;->duplicateUnregisteredUserSideloadedContent(Ljava/lang/String;Z)V

    :goto_1
    return-void
.end method
