.class Lcom/amazon/xray/ui/fragment/ExcerptsFragment$LoaderStrategy;
.super Ljava/lang/Object;
.source "ExcerptsFragment.java"

# interfaces
.implements Lcom/amazon/xray/model/loader/ContentLoader$Strategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/ui/fragment/ExcerptsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoaderStrategy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/xray/model/loader/ContentLoader$Strategy<",
        "Lcom/amazon/xray/model/loader/EntityExcerptsTask$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/xray/ui/fragment/ExcerptsFragment;


# direct methods
.method private constructor <init>(Lcom/amazon/xray/ui/fragment/ExcerptsFragment;)V
    .locals 0

    .line 722
    iput-object p1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$LoaderStrategy;->this$0:Lcom/amazon/xray/ui/fragment/ExcerptsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/xray/ui/fragment/ExcerptsFragment;Lcom/amazon/xray/ui/fragment/ExcerptsFragment$1;)V
    .locals 0

    .line 722
    invoke-direct {p0, p1}, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$LoaderStrategy;-><init>(Lcom/amazon/xray/ui/fragment/ExcerptsFragment;)V

    return-void
.end method


# virtual methods
.method public createTask()Lcom/amazon/xray/model/loader/ContentLoader$Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/xray/model/loader/ContentLoader$Task<",
            "Lcom/amazon/xray/model/loader/EntityExcerptsTask$Result;",
            ">;"
        }
    .end annotation

    .line 725
    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$LoaderStrategy;->this$0:Lcom/amazon/xray/ui/fragment/ExcerptsFragment;

    invoke-virtual {v0}, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->createExcerptLoader()Lcom/amazon/xray/model/loader/ContentLoader$Task;

    move-result-object v0

    return-object v0
.end method

.method public onResult(Lcom/amazon/xray/model/loader/EntityExcerptsTask$Result;Z)V
    .locals 1

    .line 730
    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$LoaderStrategy;->this$0:Lcom/amazon/xray/ui/fragment/ExcerptsFragment;

    invoke-static {v0, p1, p2}, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->access$1300(Lcom/amazon/xray/ui/fragment/ExcerptsFragment;Lcom/amazon/xray/model/loader/EntityExcerptsTask$Result;Z)V

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;Z)V
    .locals 0

    .line 722
    check-cast p1, Lcom/amazon/xray/model/loader/EntityExcerptsTask$Result;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$LoaderStrategy;->onResult(Lcom/amazon/xray/model/loader/EntityExcerptsTask$Result;Z)V

    return-void
.end method
