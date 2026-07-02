.class Lcom/amazon/kindle/observablemodel/LibraryRepository$2;
.super Lcom/amazon/kindle/observablemodel/ListenerSetValueGenerator;
.source "LibraryRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/observablemodel/LibraryRepository;->processCurrentValues(Ljava/util/Vector;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kindle/observablemodel/ListenerSetValueGenerator<",
        "Lcom/amazon/kindle/observablemodel/ContainerID;",
        "Lcom/amazon/kindle/observablemodel/ModelChangeUpdate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/observablemodel/LibraryRepository;

.field final synthetic val$accountState:Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/observablemodel/LibraryRepository;Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;)V
    .locals 0

    .line 458
    iput-object p1, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository$2;->this$0:Lcom/amazon/kindle/observablemodel/LibraryRepository;

    iput-object p2, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository$2;->val$accountState:Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;

    invoke-direct {p0}, Lcom/amazon/kindle/observablemodel/ListenerSetValueGenerator;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentValueForKey(Lcom/amazon/kindle/observablemodel/ContainerID;)Lcom/amazon/kindle/observablemodel/ModelChangeUpdate;
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository$2;->val$accountState:Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;

    iget-object v0, v0, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;->mLibraryModel:Lcom/amazon/kindle/observablemodel/LibraryModel;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/observablemodel/LibraryModel;->changeUpdateForCurrentValue(Lcom/amazon/kindle/observablemodel/ContainerID;)Lcom/amazon/kindle/observablemodel/ModelChangeUpdate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getCurrentValueForKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 458
    check-cast p1, Lcom/amazon/kindle/observablemodel/ContainerID;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/observablemodel/LibraryRepository$2;->getCurrentValueForKey(Lcom/amazon/kindle/observablemodel/ContainerID;)Lcom/amazon/kindle/observablemodel/ModelChangeUpdate;

    move-result-object p1

    return-object p1
.end method
