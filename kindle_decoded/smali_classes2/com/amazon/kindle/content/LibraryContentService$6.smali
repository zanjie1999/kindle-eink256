.class Lcom/amazon/kindle/content/LibraryContentService$6;
.super Ljava/lang/Object;
.source "LibraryContentService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/content/LibraryContentService;->deletePendingUserContent(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/content/LibraryContentService;

.field final synthetic val$async:Z


# direct methods
.method constructor <init>(Lcom/amazon/kindle/content/LibraryContentService;Z)V
    .locals 0

    .line 824
    iput-object p1, p0, Lcom/amazon/kindle/content/LibraryContentService$6;->this$0:Lcom/amazon/kindle/content/LibraryContentService;

    iput-boolean p2, p0, Lcom/amazon/kindle/content/LibraryContentService$6;->val$async:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 826
    iget-object v0, p0, Lcom/amazon/kindle/content/LibraryContentService$6;->this$0:Lcom/amazon/kindle/content/LibraryContentService;

    invoke-static {v0}, Lcom/amazon/kindle/content/LibraryContentService;->access$500(Lcom/amazon/kindle/content/LibraryContentService;)Lcom/amazon/kindle/content/dao/ILibraryContentDAO;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/content/dao/ILibraryContentDAO;->getLatestRowIdForPendingUserContentDeletes()I

    move-result v0

    .line 827
    iget-object v1, p0, Lcom/amazon/kindle/content/LibraryContentService$6;->this$0:Lcom/amazon/kindle/content/LibraryContentService;

    invoke-static {v1}, Lcom/amazon/kindle/content/LibraryContentService;->access$500(Lcom/amazon/kindle/content/LibraryContentService;)Lcom/amazon/kindle/content/dao/ILibraryContentDAO;

    move-result-object v1

    .line 828
    invoke-interface {v1, v0}, Lcom/amazon/kindle/content/dao/ILibraryContentDAO;->getPendingUserContentDeletes(I)Ljava/util/Map;

    move-result-object v1

    .line 829
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 830
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 831
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 832
    iget-object v4, p0, Lcom/amazon/kindle/content/LibraryContentService$6;->this$0:Lcom/amazon/kindle/content/LibraryContentService;

    new-instance v5, Lcom/amazon/kindle/event/Event;

    sget-object v6, Lcom/amazon/kindle/content/ILibraryService;->CONTENT_DELETE:Lcom/amazon/kindle/event/EventType;

    invoke-direct {v5, v3, v2, v6}, Lcom/amazon/kindle/event/Event;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/amazon/kindle/event/EventType;)V

    invoke-static {v4, v5}, Lcom/amazon/kindle/content/LibraryContentService;->access$600(Lcom/amazon/kindle/content/LibraryContentService;Lcom/amazon/kindle/event/Event;)V

    .line 847
    iget-object v4, p0, Lcom/amazon/kindle/content/LibraryContentService$6;->this$0:Lcom/amazon/kindle/content/LibraryContentService;

    invoke-static {v4}, Lcom/amazon/kindle/content/LibraryContentService;->access$700(Lcom/amazon/kindle/content/LibraryContentService;)Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/amazon/kcp/application/IAuthenticationManager;->isAuthenticated(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 848
    iget-object v4, p0, Lcom/amazon/kindle/content/LibraryContentService$6;->this$0:Lcom/amazon/kindle/content/LibraryContentService;

    invoke-static {v4}, Lcom/amazon/kindle/content/LibraryContentService;->access$500(Lcom/amazon/kindle/content/LibraryContentService;)Lcom/amazon/kindle/content/dao/ILibraryContentDAO;

    move-result-object v4

    .line 849
    invoke-interface {v4, v2}, Lcom/amazon/kindle/content/dao/ILibraryContentDAO;->getSharedLocalArchivableAndPSNLContents(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    .line 852
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 853
    iget-object v4, p0, Lcom/amazon/kindle/content/LibraryContentService$6;->this$0:Lcom/amazon/kindle/content/LibraryContentService;

    invoke-static {v4}, Lcom/amazon/kindle/content/LibraryContentService;->access$500(Lcom/amazon/kindle/content/LibraryContentService;)Lcom/amazon/kindle/content/dao/ILibraryContentDAO;

    move-result-object v4

    sget-object v5, Lcom/amazon/kindle/model/content/ContentState;->REMOTE:Lcom/amazon/kindle/model/content/ContentState;

    invoke-interface {v4, v2, v5}, Lcom/amazon/kindle/content/dao/ILibraryContentDAO;->updateContentState(Ljava/util/Collection;Lcom/amazon/kindle/model/content/ContentState;)V

    .line 856
    iget-object v4, p0, Lcom/amazon/kindle/content/LibraryContentService$6;->this$0:Lcom/amazon/kindle/content/LibraryContentService;

    invoke-static {v4}, Lcom/amazon/kindle/content/LibraryContentService;->access$500(Lcom/amazon/kindle/content/LibraryContentService;)Lcom/amazon/kindle/content/dao/ILibraryContentDAO;

    move-result-object v4

    .line 857
    invoke-interface {v4, v2}, Lcom/amazon/kindle/content/dao/ILibraryContentDAO;->getContentMetadataForAllUsers(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    .line 859
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 863
    sget-object v5, Lcom/amazon/kindle/content/ContentMetadataField;->STATE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 864
    invoke-static {v5}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v5

    .line 866
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazon/kindle/content/ContentMetadata;

    .line 868
    invoke-virtual {v6}, Lcom/amazon/kindle/content/ContentMetadata;->getOwner()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 869
    invoke-virtual {v6}, Lcom/amazon/kindle/content/ContentMetadata;->getOwner()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    goto :goto_2

    .line 871
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 872
    invoke-virtual {v6}, Lcom/amazon/kindle/content/ContentMetadata;->getOwner()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    :goto_2
    new-instance v8, Lcom/amazon/kindle/content/ContentUpdate;

    const/4 v9, 0x0

    invoke-direct {v8, v6, v9, v5}, Lcom/amazon/kindle/content/ContentUpdate;-><init>(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/content/ContentMetadata;Ljava/util/Set;)V

    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 879
    :cond_1
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 880
    iget-object v5, p0, Lcom/amazon/kindle/content/LibraryContentService$6;->this$0:Lcom/amazon/kindle/content/LibraryContentService;

    new-instance v6, Lcom/amazon/kindle/event/Event;

    .line 881
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    sget-object v8, Lcom/amazon/kindle/content/ILibraryService;->CONTENT_UPDATE:Lcom/amazon/kindle/event/EventType;

    invoke-direct {v6, v7, v4, v8}, Lcom/amazon/kindle/event/Event;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/amazon/kindle/event/EventType;)V

    .line 880
    invoke-virtual {v5, v6}, Lcom/amazon/kindle/content/LibraryContentService;->publishContentUpdateEvent(Lcom/amazon/kindle/event/Event;)V

    goto :goto_3

    .line 887
    :cond_2
    iget-object v2, p0, Lcom/amazon/kindle/content/LibraryContentService$6;->this$0:Lcom/amazon/kindle/content/LibraryContentService;

    invoke-static {v2}, Lcom/amazon/kindle/content/LibraryContentService;->access$500(Lcom/amazon/kindle/content/LibraryContentService;)Lcom/amazon/kindle/content/dao/ILibraryContentDAO;

    move-result-object v2

    invoke-interface {v2, v3, v0}, Lcom/amazon/kindle/content/dao/ILibraryContentDAO;->clearPendingUserContentDeletes(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 889
    :cond_3
    iget-object v0, p0, Lcom/amazon/kindle/content/LibraryContentService$6;->this$0:Lcom/amazon/kindle/content/LibraryContentService;

    iget-boolean v1, p0, Lcom/amazon/kindle/content/LibraryContentService$6;->val$async:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/content/LibraryContentService;->deleteLocalFilesPendingRemoval(Z)V

    return-void
.end method
