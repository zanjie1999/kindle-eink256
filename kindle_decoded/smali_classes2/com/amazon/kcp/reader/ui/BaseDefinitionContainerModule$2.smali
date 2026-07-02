.class Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule$2;
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
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule$2;->this$0:Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;

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

    .line 125
    sget-object v0, Lcom/amazon/kindle/content/ILibraryService;->CONTENT_DELETE:Lcom/amazon/kindle/event/EventType;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public handleEvent(Lcom/amazon/kindle/event/Event;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/event/Event<",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 136
    invoke-virtual {p1}, Lcom/amazon/kindle/event/Event;->getPayload()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 137
    invoke-static {v1}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->parseForAsin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 139
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 146
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 147
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p1

    .line 148
    invoke-virtual {p1, v0}, Lcom/amazon/kcp/application/UserSettingsController;->deleteDictionaryAsinIfExistsInUserSettings(Ljava/util/List;)V

    .line 152
    :cond_2
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule$2;->this$0:Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;

    invoke-static {p1, v0}, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->access$100(Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;Ljava/util/List;)V

    return-void
.end method
