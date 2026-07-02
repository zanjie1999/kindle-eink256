.class Lcom/amazon/xray/ui/fragment/EntityDetailFragment$LoaderStrategy;
.super Ljava/lang/Object;
.source "EntityDetailFragment.java"

# interfaces
.implements Lcom/amazon/xray/model/loader/ContentLoader$Strategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/ui/fragment/EntityDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoaderStrategy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/xray/model/loader/ContentLoader$Strategy<",
        "Lcom/amazon/xray/model/loader/EntityDetailTask$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/xray/ui/fragment/EntityDetailFragment;


# direct methods
.method private constructor <init>(Lcom/amazon/xray/ui/fragment/EntityDetailFragment;)V
    .locals 0

    .line 389
    iput-object p1, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment$LoaderStrategy;->this$0:Lcom/amazon/xray/ui/fragment/EntityDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/xray/ui/fragment/EntityDetailFragment;Lcom/amazon/xray/ui/fragment/EntityDetailFragment$1;)V
    .locals 0

    .line 389
    invoke-direct {p0, p1}, Lcom/amazon/xray/ui/fragment/EntityDetailFragment$LoaderStrategy;-><init>(Lcom/amazon/xray/ui/fragment/EntityDetailFragment;)V

    return-void
.end method


# virtual methods
.method public createTask()Lcom/amazon/xray/model/loader/ContentLoader$Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/xray/model/loader/ContentLoader$Task<",
            "Lcom/amazon/xray/model/loader/EntityDetailTask$Result;",
            ">;"
        }
    .end annotation

    .line 392
    new-instance v0, Lcom/amazon/xray/model/loader/EntityDetailTask;

    iget-object v1, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment$LoaderStrategy;->this$0:Lcom/amazon/xray/ui/fragment/EntityDetailFragment;

    iget-object v1, v1, Lcom/amazon/xray/ui/fragment/XrayFragment;->activity:Lcom/amazon/xray/ui/activity/XrayActivity;

    invoke-virtual {v1}, Lcom/amazon/xray/ui/activity/XrayActivity;->getDb()Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment$LoaderStrategy;->this$0:Lcom/amazon/xray/ui/fragment/EntityDetailFragment;

    invoke-static {v2}, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->access$400(Lcom/amazon/xray/ui/fragment/EntityDetailFragment;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/amazon/xray/model/loader/EntityDetailTask;-><init>(Lcom/amazon/xray/model/SidecarDatabaseAdapter;I)V

    return-object v0
.end method

.method public onResult(Lcom/amazon/xray/model/loader/EntityDetailTask$Result;Z)V
    .locals 3

    .line 398
    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment$LoaderStrategy;->this$0:Lcom/amazon/xray/ui/fragment/EntityDetailFragment;

    iget-object v0, v0, Lcom/amazon/xray/ui/fragment/XrayFragment;->activity:Lcom/amazon/xray/ui/activity/XrayActivity;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/xray/model/loader/EntityDetailTask$Result;->hasExcerpts()Z

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lcom/amazon/xray/ui/activity/XrayActivity;->setShowSpoilerMenuItem(Z)V

    .line 400
    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment$LoaderStrategy;->this$0:Lcom/amazon/xray/ui/fragment/EntityDetailFragment;

    iget-object v0, v0, Lcom/amazon/xray/ui/fragment/XrayFragment;->activity:Lcom/amazon/xray/ui/activity/XrayActivity;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/amazon/xray/model/loader/EntityDetailTask$Result;->getShowSpoilersDefault()Z

    move-result v1

    :cond_1
    invoke-virtual {v0, v1}, Lcom/amazon/xray/ui/activity/XrayActivity;->setShowSpoilersDefault(Z)V

    .line 402
    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment$LoaderStrategy;->this$0:Lcom/amazon/xray/ui/fragment/EntityDetailFragment;

    invoke-static {v0, p1, p2}, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->access$500(Lcom/amazon/xray/ui/fragment/EntityDetailFragment;Lcom/amazon/xray/model/loader/EntityDetailTask$Result;Z)V

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;Z)V
    .locals 0

    .line 389
    check-cast p1, Lcom/amazon/xray/model/loader/EntityDetailTask$Result;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/xray/ui/fragment/EntityDetailFragment$LoaderStrategy;->onResult(Lcom/amazon/xray/model/loader/EntityDetailTask$Result;Z)V

    return-void
.end method
