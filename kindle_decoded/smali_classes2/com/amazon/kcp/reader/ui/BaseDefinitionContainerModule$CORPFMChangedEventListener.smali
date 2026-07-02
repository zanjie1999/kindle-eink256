.class Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule$CORPFMChangedEventListener;
.super Ljava/lang/Object;
.source "BaseDefinitionContainerModule.java"

# interfaces
.implements Lcom/amazon/kindle/event/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CORPFMChangedEventListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/event/IEventHandler<",
        "Landroid/content/Context;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;


# direct methods
.method private constructor <init>(Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;)V
    .locals 0

    .line 596
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule$CORPFMChangedEventListener;->this$0:Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule$1;)V
    .locals 0

    .line 596
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule$CORPFMChangedEventListener;-><init>(Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;)V

    return-void
.end method


# virtual methods
.method public getEventTypes()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/event/EventType;",
            ">;"
        }
    .end annotation

    .line 601
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 602
    sget-object v1, Lcom/amazon/kcp/application/IAuthenticationManager;->COR_PFM_UPDATED:Lcom/amazon/kindle/event/EventType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public handleEvent(Lcom/amazon/kindle/event/Event;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/event/Event<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 614
    sput-boolean v0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->hasCorPfmChanged:Z

    .line 615
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule$CORPFMChangedEventListener;->this$0:Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;

    invoke-virtual {p1}, Lcom/amazon/kindle/event/Event;->getPayload()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->initializeDictionaries(Landroid/content/Context;)V

    return-void
.end method
