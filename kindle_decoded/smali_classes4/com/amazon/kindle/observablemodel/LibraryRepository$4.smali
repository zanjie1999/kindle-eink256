.class Lcom/amazon/kindle/observablemodel/LibraryRepository$4;
.super Lcom/amazon/kindle/observablemodel/ListenerSetDispatcher;
.source "LibraryRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/observablemodel/LibraryRepository;->onItemDetail(Ljava/util/Map;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kindle/observablemodel/ListenerSetDispatcher<",
        "Lcom/amazon/kindle/observablemodel/ItemID;",
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/observablemodel/LibraryItemDetailListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/observablemodel/LibraryRepository;

.field final synthetic val$changeQueue:Ljava/util/Vector;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/observablemodel/LibraryRepository;Ljava/util/Vector;)V
    .locals 0

    .line 671
    iput-object p1, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository$4;->this$0:Lcom/amazon/kindle/observablemodel/LibraryRepository;

    iput-object p2, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository$4;->val$changeQueue:Ljava/util/Vector;

    invoke-direct {p0}, Lcom/amazon/kindle/observablemodel/ListenerSetDispatcher;-><init>()V

    return-void
.end method


# virtual methods
.method handleListenerValueForKey(Lcom/amazon/kindle/observablemodel/ItemID;Ljava/lang/Object;Lcom/amazon/kindle/observablemodel/LibraryItemDetailListener;)V
    .locals 2

    .line 675
    iget-object p1, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository$4;->val$changeQueue:Ljava/util/Vector;

    new-instance v0, Lcom/amazon/kindle/observablemodel/LibraryRepository$QueuedChange;

    iget-object v1, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository$4;->this$0:Lcom/amazon/kindle/observablemodel/LibraryRepository;

    invoke-direct {v0, v1, p2, p3}, Lcom/amazon/kindle/observablemodel/LibraryRepository$QueuedChange;-><init>(Lcom/amazon/kindle/observablemodel/LibraryRepository;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method bridge synthetic handleListenerValueForKey(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 671
    check-cast p1, Lcom/amazon/kindle/observablemodel/ItemID;

    check-cast p3, Lcom/amazon/kindle/observablemodel/LibraryItemDetailListener;

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/kindle/observablemodel/LibraryRepository$4;->handleListenerValueForKey(Lcom/amazon/kindle/observablemodel/ItemID;Ljava/lang/Object;Lcom/amazon/kindle/observablemodel/LibraryItemDetailListener;)V

    return-void
.end method

.method keyHasNoListeners(Lcom/amazon/kindle/observablemodel/ItemID;)V
    .locals 0

    return-void
.end method

.method bridge synthetic keyHasNoListeners(Ljava/lang/Object;)V
    .locals 0

    .line 671
    check-cast p1, Lcom/amazon/kindle/observablemodel/ItemID;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/observablemodel/LibraryRepository$4;->keyHasNoListeners(Lcom/amazon/kindle/observablemodel/ItemID;)V

    return-void
.end method
