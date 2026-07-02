.class Lcom/amazon/xray/ui/fragment/ExcerptsFragment$AdapterOnLoadListener;
.super Ljava/lang/Object;
.source "ExcerptsFragment.java"

# interfaces
.implements Lcom/amazon/xray/model/loader/AsyncListLoader$OnLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/ui/fragment/ExcerptsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterOnLoadListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/xray/model/loader/AsyncListLoader$OnLoadListener<",
        "Lcom/amazon/xray/model/object/DisplayableExcerpt;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/xray/ui/fragment/ExcerptsFragment;


# direct methods
.method private constructor <init>(Lcom/amazon/xray/ui/fragment/ExcerptsFragment;)V
    .locals 0

    .line 737
    iput-object p1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$AdapterOnLoadListener;->this$0:Lcom/amazon/xray/ui/fragment/ExcerptsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/xray/ui/fragment/ExcerptsFragment;Lcom/amazon/xray/ui/fragment/ExcerptsFragment$1;)V
    .locals 0

    .line 737
    invoke-direct {p0, p1}, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$AdapterOnLoadListener;-><init>(Lcom/amazon/xray/ui/fragment/ExcerptsFragment;)V

    return-void
.end method


# virtual methods
.method public onLoad(Lcom/amazon/xray/model/loader/AsyncListLoader;ILcom/amazon/xray/model/object/DisplayableExcerpt;)V
    .locals 0

    .line 740
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$AdapterOnLoadListener;->this$0:Lcom/amazon/xray/ui/fragment/ExcerptsFragment;

    iget-object p1, p1, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->holder:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;

    iget-object p1, p1, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;->excerptCards:Lcom/amazon/xray/ui/widget/CardCarousel;

    invoke-virtual {p1, p2}, Lcom/amazon/xray/ui/widget/CardCarousel;->reloadCard(I)V

    .line 742
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$AdapterOnLoadListener;->this$0:Lcom/amazon/xray/ui/fragment/ExcerptsFragment;

    invoke-static {p1}, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->access$1000(Lcom/amazon/xray/ui/fragment/ExcerptsFragment;)I

    move-result p1

    if-ne p1, p2, :cond_0

    .line 744
    invoke-static {}, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->access$1200()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$AdapterOnLoadListener;->this$0:Lcom/amazon/xray/ui/fragment/ExcerptsFragment;

    invoke-static {p2}, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->access$1100(Lcom/amazon/xray/ui/fragment/ExcerptsFragment;)Lcom/amazon/xray/ui/fragment/ExcerptsFragment$CardLoadTimeoutRunnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 745
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$AdapterOnLoadListener;->this$0:Lcom/amazon/xray/ui/fragment/ExcerptsFragment;

    invoke-static {p1}, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->access$1100(Lcom/amazon/xray/ui/fragment/ExcerptsFragment;)Lcom/amazon/xray/ui/fragment/ExcerptsFragment$CardLoadTimeoutRunnable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$CardLoadTimeoutRunnable;->run()V

    goto :goto_0

    .line 746
    :cond_0
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$AdapterOnLoadListener;->this$0:Lcom/amazon/xray/ui/fragment/ExcerptsFragment;

    iget-object p1, p1, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->holder:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;

    iget-object p1, p1, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;->excerptCards:Lcom/amazon/xray/ui/widget/CardCarousel;

    invoke-virtual {p1}, Lcom/amazon/xray/ui/widget/CardCarousel;->getFocusedCardIndex()I

    move-result p1

    if-ne p2, p1, :cond_1

    .line 748
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$AdapterOnLoadListener;->this$0:Lcom/amazon/xray/ui/fragment/ExcerptsFragment;

    invoke-static {p1, p2}, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->access$900(Lcom/amazon/xray/ui/fragment/ExcerptsFragment;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onLoad(Lcom/amazon/xray/model/loader/AsyncListLoader;ILjava/lang/Object;)V
    .locals 0

    .line 737
    check-cast p3, Lcom/amazon/xray/model/object/DisplayableExcerpt;

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$AdapterOnLoadListener;->onLoad(Lcom/amazon/xray/model/loader/AsyncListLoader;ILcom/amazon/xray/model/object/DisplayableExcerpt;)V

    return-void
.end method
