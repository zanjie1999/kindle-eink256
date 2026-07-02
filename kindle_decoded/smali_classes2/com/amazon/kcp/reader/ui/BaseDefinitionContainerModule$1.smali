.class Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule$1;
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
        "Lcom/amazon/kindle/content/LibraryContentAddPayload;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule$1;->this$0:Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;

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

    .line 91
    sget-object v0, Lcom/amazon/kindle/content/ILibraryService;->CONTENT_ADD:Lcom/amazon/kindle/event/EventType;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public handleEvent(Lcom/amazon/kindle/event/Event;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/event/Event<",
            "Lcom/amazon/kindle/content/LibraryContentAddPayload;",
            ">;)V"
        }
    .end annotation

    .line 101
    invoke-virtual {p1}, Lcom/amazon/kindle/event/Event;->getPayload()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/content/LibraryContentAddPayload;

    .line 102
    invoke-virtual {p1}, Lcom/amazon/kindle/content/LibraryContentAddPayload;->getMetadata()Ljava/util/Collection;

    move-result-object p1

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 105
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/content/ContentMetadata;

    .line 106
    invoke-virtual {v2}, Lcom/amazon/kindle/content/ContentMetadata;->getDictionaryType()Lcom/amazon/kindle/model/content/DictionaryType;

    move-result-object v3

    sget-object v4, Lcom/amazon/kindle/model/content/DictionaryType;->NONE:Lcom/amazon/kindle/model/content/DictionaryType;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    invoke-virtual {v2}, Lcom/amazon/kindle/content/ContentMetadata;->getDictionaryType()Lcom/amazon/kindle/model/content/DictionaryType;

    move-result-object v3

    sget-object v4, Lcom/amazon/kindle/model/content/DictionaryType;->USER_DICT:Lcom/amazon/kindle/model/content/DictionaryType;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-nez v3, :cond_1

    .line 109
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 112
    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 115
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 116
    :cond_3
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule$1;->this$0:Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;

    invoke-static {p1, v0, v1}, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->access$000(Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;Ljava/util/List;Ljava/util/List;)V

    :cond_4
    return-void
.end method
