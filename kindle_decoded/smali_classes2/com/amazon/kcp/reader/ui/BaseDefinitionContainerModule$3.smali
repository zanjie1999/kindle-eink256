.class Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule$3;
.super Ljava/lang/Object;
.source "BaseDefinitionContainerModule.java"

# interfaces
.implements Lcom/amazon/kindle/event/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/event/IEventHandler<",
        "Ljava/util/Collection<",
        "Lcom/amazon/kindle/content/ContentUpdate;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule$3;->this$0:Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEventTypes()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/event/EventType;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/amazon/kindle/event/EventType;

    .line 167
    sget-object v1, Lcom/amazon/kindle/content/ILibraryService;->CONTENT_UPDATE:Lcom/amazon/kindle/event/EventType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public handleEvent(Lcom/amazon/kindle/event/Event;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/event/Event<",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/content/ContentUpdate;",
            ">;>;)V"
        }
    .end annotation

    .line 177
    invoke-virtual {p1}, Lcom/amazon/kindle/event/Event;->getPayload()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 179
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 180
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/content/ContentUpdate;

    .line 181
    invoke-virtual {v2}, Lcom/amazon/kindle/content/ContentUpdate;->getMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v3

    .line 182
    invoke-virtual {v2}, Lcom/amazon/kindle/content/ContentUpdate;->getPrevMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v2

    if-eqz v3, :cond_5

    if-nez v2, :cond_1

    goto :goto_2

    .line 185
    :cond_1
    invoke-virtual {v3}, Lcom/amazon/kindle/content/ContentMetadata;->getDictionaryType()Lcom/amazon/kindle/model/content/DictionaryType;

    move-result-object v4

    sget-object v5, Lcom/amazon/kindle/model/content/DictionaryType;->NONE:Lcom/amazon/kindle/model/content/DictionaryType;

    if-eq v4, v5, :cond_0

    .line 186
    invoke-virtual {v2}, Lcom/amazon/kindle/content/ContentMetadata;->getDictionaryType()Lcom/amazon/kindle/model/content/DictionaryType;

    move-result-object v4

    invoke-virtual {v3}, Lcom/amazon/kindle/content/ContentMetadata;->getDictionaryType()Lcom/amazon/kindle/model/content/DictionaryType;

    move-result-object v5

    if-ne v4, v5, :cond_2

    .line 187
    invoke-virtual {v3}, Lcom/amazon/kindle/content/ContentMetadata;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 188
    invoke-virtual {v2}, Lcom/amazon/kindle/content/ContentMetadata;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/amazon/kindle/content/ContentMetadata;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_4

    .line 193
    :cond_2
    invoke-virtual {v3}, Lcom/amazon/kindle/content/ContentMetadata;->getDictionaryType()Lcom/amazon/kindle/model/content/DictionaryType;

    move-result-object v4

    sget-object v5, Lcom/amazon/kindle/model/content/DictionaryType;->USER_DICT:Lcom/amazon/kindle/model/content/DictionaryType;

    if-ne v4, v5, :cond_3

    .line 194
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 197
    :cond_3
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    :cond_4
    :goto_1
    invoke-virtual {v2}, Lcom/amazon/kindle/content/ContentMetadata;->isLocal()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v3}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v2

    sget-object v4, Lcom/amazon/kindle/model/content/ContentState;->REMOTE:Lcom/amazon/kindle/model/content/ContentState;

    if-ne v2, v4, :cond_0

    .line 201
    invoke-virtual {v3}, Lcom/amazon/kindle/content/ContentMetadata;->getAsin()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 202
    invoke-static {}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryManager;->getInstance()Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryManager;

    move-result-object v2

    invoke-virtual {v3}, Lcom/amazon/kindle/content/ContentMetadata;->getAsin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryManager;->removeAsinFromCache(Ljava/lang/String;)V

    goto :goto_0

    .line 184
    :cond_5
    :goto_2
    invoke-static {}, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->access$200()Ljava/lang/String;

    goto :goto_0

    .line 209
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_8

    .line 210
    :cond_7
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule$3;->this$0:Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;

    invoke-static {p1, v0, v1}, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->access$000(Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;Ljava/util/List;Ljava/util/List;)V

    :cond_8
    return-void
.end method
