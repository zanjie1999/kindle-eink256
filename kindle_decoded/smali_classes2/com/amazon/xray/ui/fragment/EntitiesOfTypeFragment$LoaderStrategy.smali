.class Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$LoaderStrategy;
.super Ljava/lang/Object;
.source "EntitiesOfTypeFragment.java"

# interfaces
.implements Lcom/amazon/xray/model/loader/ContentLoader$Strategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoaderStrategy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/xray/model/loader/ContentLoader$Strategy<",
        "Ljava/util/List<",
        "Lcom/amazon/xray/model/object/LabeledGroup<",
        "Lcom/amazon/xray/model/object/Entity;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;


# direct methods
.method private constructor <init>(Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$LoaderStrategy;->this$0:Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$1;)V
    .locals 0

    .line 305
    invoke-direct {p0, p1}, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$LoaderStrategy;-><init>(Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;)V

    return-void
.end method


# virtual methods
.method public createTask()Lcom/amazon/xray/model/loader/ContentLoader$Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/xray/model/loader/ContentLoader$Task<",
            "Ljava/util/List<",
            "Lcom/amazon/xray/model/object/LabeledGroup<",
            "Lcom/amazon/xray/model/object/Entity;",
            ">;>;>;"
        }
    .end annotation

    .line 308
    new-instance v0, Lcom/amazon/xray/model/loader/EntitiesOfTypeTask;

    iget-object v1, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$LoaderStrategy;->this$0:Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;

    iget-object v1, v1, Lcom/amazon/xray/ui/fragment/XrayFragment;->activity:Lcom/amazon/xray/ui/activity/XrayActivity;

    invoke-virtual {v1}, Lcom/amazon/xray/ui/activity/XrayActivity;->getDb()Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$LoaderStrategy;->this$0:Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;

    invoke-static {v2}, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->access$500(Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;)I

    move-result v2

    iget-object v3, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$LoaderStrategy;->this$0:Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;

    invoke-virtual {v3}, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->getSortType()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/xray/model/loader/EntitiesOfTypeTask;-><init>(Lcom/amazon/xray/model/SidecarDatabaseAdapter;II)V

    return-object v0
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;Z)V
    .locals 0

    .line 305
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$LoaderStrategy;->onResult(Ljava/util/List;Z)V

    return-void
.end method

.method public onResult(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/xray/model/object/LabeledGroup<",
            "Lcom/amazon/xray/model/object/Entity;",
            ">;>;Z)V"
        }
    .end annotation

    .line 313
    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$LoaderStrategy;->this$0:Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;

    invoke-static {v0, p1, p2}, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->access$600(Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;Ljava/util/List;Z)V

    return-void
.end method
