.class Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$LoaderStrategy;
.super Ljava/lang/Object;
.source "EntityOccurrencesFragment.java"

# interfaces
.implements Lcom/amazon/xray/model/loader/ContentLoader$Strategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoaderStrategy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/xray/model/loader/ContentLoader$Strategy<",
        "Lcom/amazon/xray/model/loader/EntityOccurrencesTask$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;


# direct methods
.method private constructor <init>(Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;)V
    .locals 0

    .line 416
    iput-object p1, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$LoaderStrategy;->this$0:Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$1;)V
    .locals 0

    .line 416
    invoke-direct {p0, p1}, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$LoaderStrategy;-><init>(Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;)V

    return-void
.end method


# virtual methods
.method public createTask()Lcom/amazon/xray/model/loader/ContentLoader$Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/xray/model/loader/ContentLoader$Task<",
            "Lcom/amazon/xray/model/loader/EntityOccurrencesTask$Result;",
            ">;"
        }
    .end annotation

    .line 419
    new-instance v0, Lcom/amazon/xray/model/loader/EntityOccurrencesTask;

    iget-object v1, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$LoaderStrategy;->this$0:Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;

    iget-object v1, v1, Lcom/amazon/xray/ui/fragment/XrayFragment;->activity:Lcom/amazon/xray/ui/activity/XrayActivity;

    invoke-virtual {v1}, Lcom/amazon/xray/ui/activity/XrayActivity;->getDb()Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$LoaderStrategy;->this$0:Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;

    invoke-static {v2}, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->access$900(Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/amazon/xray/model/loader/EntityOccurrencesTask;-><init>(Lcom/amazon/xray/model/SidecarDatabaseAdapter;I)V

    return-object v0
.end method

.method public onResult(Lcom/amazon/xray/model/loader/EntityOccurrencesTask$Result;Z)V
    .locals 1

    .line 424
    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$LoaderStrategy;->this$0:Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;

    invoke-static {v0, p1, p2}, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->access$1000(Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;Lcom/amazon/xray/model/loader/EntityOccurrencesTask$Result;Z)V

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;Z)V
    .locals 0

    .line 416
    check-cast p1, Lcom/amazon/xray/model/loader/EntityOccurrencesTask$Result;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$LoaderStrategy;->onResult(Lcom/amazon/xray/model/loader/EntityOccurrencesTask$Result;Z)V

    return-void
.end method
