.class Lcom/amazon/kindle/observablemodel/LibraryRepository$GroupCurrentSetValueGenerator;
.super Lcom/amazon/kindle/observablemodel/ListenerSetValueGenerator;
.source "LibraryRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/observablemodel/LibraryRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GroupCurrentSetValueGenerator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kindle/observablemodel/ListenerSetValueGenerator<",
        "Lcom/amazon/kindle/observablemodel/ContainerID;",
        "Lcom/amazon/kindle/observablemodel/ModelGroupUpdate;",
        ">;"
    }
.end annotation


# instance fields
.field private accountState:Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;

.field final synthetic this$0:Lcom/amazon/kindle/observablemodel/LibraryRepository;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/observablemodel/LibraryRepository;Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;)V
    .locals 0

    .line 417
    iput-object p1, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository$GroupCurrentSetValueGenerator;->this$0:Lcom/amazon/kindle/observablemodel/LibraryRepository;

    invoke-direct {p0}, Lcom/amazon/kindle/observablemodel/ListenerSetValueGenerator;-><init>()V

    .line 418
    iput-object p2, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository$GroupCurrentSetValueGenerator;->accountState:Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;

    return-void
.end method


# virtual methods
.method public getCurrentValueForKey(Lcom/amazon/kindle/observablemodel/ContainerID;)Lcom/amazon/kindle/observablemodel/ModelGroupUpdate;
    .locals 6

    .line 423
    iget-object v0, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository$GroupCurrentSetValueGenerator;->accountState:Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;

    iget-object v0, v0, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;->mLibraryModel:Lcom/amazon/kindle/observablemodel/LibraryModel;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/observablemodel/LibraryModel;->groupCurrentForContainer(Lcom/amazon/kindle/observablemodel/ContainerID;)Lcom/amazon/kindle/observablemodel/ModelGroupUpdate;

    move-result-object v0

    const-string v1, "group value = "

    if-nez v0, :cond_0

    .line 426
    iget-object v2, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository$GroupCurrentSetValueGenerator;->this$0:Lcom/amazon/kindle/observablemodel/LibraryRepository;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " =  NULL"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->access$200(Lcom/amazon/kindle/observablemodel/LibraryRepository;Ljava/lang/String;)V

    goto :goto_0

    .line 429
    :cond_0
    iget-object v2, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository$GroupCurrentSetValueGenerator;->this$0:Lcom/amazon/kindle/observablemodel/LibraryRepository;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/amazon/kindle/observablemodel/ModelGroupUpdate;->getRepresentativeID()Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " count="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/amazon/kindle/observablemodel/ModelCountUpdate;->getCount()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->access$200(Lcom/amazon/kindle/observablemodel/LibraryRepository;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public bridge synthetic getCurrentValueForKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 414
    check-cast p1, Lcom/amazon/kindle/observablemodel/ContainerID;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/observablemodel/LibraryRepository$GroupCurrentSetValueGenerator;->getCurrentValueForKey(Lcom/amazon/kindle/observablemodel/ContainerID;)Lcom/amazon/kindle/observablemodel/ModelGroupUpdate;

    move-result-object p1

    return-object p1
.end method
