.class Lcom/amazon/kindle/observablemodel/LibraryRepository$CountCurrentSetValueGenerator;
.super Lcom/amazon/kindle/observablemodel/ListenerSetValueGenerator;
.source "LibraryRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/observablemodel/LibraryRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CountCurrentSetValueGenerator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kindle/observablemodel/ListenerSetValueGenerator<",
        "Lcom/amazon/kindle/observablemodel/ContainerID;",
        "Lcom/amazon/kindle/observablemodel/ModelCountUpdate;",
        ">;"
    }
.end annotation


# instance fields
.field private accountState:Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;

.field final synthetic this$0:Lcom/amazon/kindle/observablemodel/LibraryRepository;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/observablemodel/LibraryRepository;Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;)V
    .locals 0

    .line 387
    iput-object p1, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository$CountCurrentSetValueGenerator;->this$0:Lcom/amazon/kindle/observablemodel/LibraryRepository;

    invoke-direct {p0}, Lcom/amazon/kindle/observablemodel/ListenerSetValueGenerator;-><init>()V

    .line 388
    iput-object p2, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository$CountCurrentSetValueGenerator;->accountState:Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;

    return-void
.end method


# virtual methods
.method public getCurrentValueForKey(Lcom/amazon/kindle/observablemodel/ContainerID;)Lcom/amazon/kindle/observablemodel/ModelCountUpdate;
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository$CountCurrentSetValueGenerator;->accountState:Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;

    iget-object v0, v0, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;->mLibraryModel:Lcom/amazon/kindle/observablemodel/LibraryModel;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/observablemodel/LibraryModel;->countCurrentForContainer(Lcom/amazon/kindle/observablemodel/ContainerID;)Lcom/amazon/kindle/observablemodel/ModelCountUpdate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getCurrentValueForKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 384
    check-cast p1, Lcom/amazon/kindle/observablemodel/ContainerID;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/observablemodel/LibraryRepository$CountCurrentSetValueGenerator;->getCurrentValueForKey(Lcom/amazon/kindle/observablemodel/ContainerID;)Lcom/amazon/kindle/observablemodel/ModelCountUpdate;

    move-result-object p1

    return-object p1
.end method
