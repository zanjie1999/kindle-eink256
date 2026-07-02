.class Lcom/amazon/kcp/reader/ui/TateDefinitionContainerModule$1;
.super Ljava/lang/Object;
.source "TateDefinitionContainerModule.java"

# interfaces
.implements Lcom/amazon/kindle/event/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ui/TateDefinitionContainerModule;
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
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/TateDefinitionContainerModule;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/TateDefinitionContainerModule;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/TateDefinitionContainerModule$1;->this$0:Lcom/amazon/kcp/reader/ui/TateDefinitionContainerModule;

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

    .line 122
    sget-object v1, Lcom/amazon/kcp/application/IAuthenticationManager;->USER_REGISTER:Lcom/amazon/kindle/event/EventType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

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

    .line 137
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/application/UserSettingsController;->deleteAllDictionaryCustomUserSetting()V

    .line 144
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/TateDefinitionContainerModule$1;->this$0:Lcom/amazon/kcp/reader/ui/TateDefinitionContainerModule;

    iget-object p1, p1, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object p1

    .line 145
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/TateDefinitionContainerModule$1;->this$0:Lcom/amazon/kcp/reader/ui/TateDefinitionContainerModule;

    iget-object v1, v0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->libraryService:Lcom/amazon/kindle/content/LibraryContentService;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->dictionaryList:Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;

    .line 146
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    .line 145
    invoke-static {v1, v0, v2, p1}, Lcom/amazon/kcp/dictionary/utils/DictionaryUtils;->deleteDictionaries(Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;Ljava/lang/String;Lcom/amazon/kindle/io/IFileConnectionFactory;)V

    return-void
.end method
