.class Lcom/amazon/kcp/library/fragments/RubyHomeFragment$3;
.super Ljava/lang/Object;
.source "RubyHomeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->onWidgetsUpdate(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/fragments/RubyHomeFragment;

.field final synthetic val$forceUpdate:Z

.field final synthetic val$resetHasBeenShownToUser:Z

.field final synthetic val$widgets:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/fragments/RubyHomeFragment;ZLjava/util/List;Z)V
    .locals 0

    .line 364
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$3;->this$0:Lcom/amazon/kcp/library/fragments/RubyHomeFragment;

    iput-boolean p2, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$3;->val$forceUpdate:Z

    iput-object p3, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$3;->val$widgets:Ljava/util/List;

    iput-boolean p4, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$3;->val$resetHasBeenShownToUser:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 366
    iget-boolean v0, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$3;->val$forceUpdate:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$3;->this$0:Lcom/amazon/kcp/library/fragments/RubyHomeFragment;

    invoke-static {v0}, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->access$300(Lcom/amazon/kcp/library/fragments/RubyHomeFragment;)Lcom/amazon/kcp/library/fragments/RubyHomeFragment$RubyHomeAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$RubyHomeAdapter;->widgets:Ljava/util/List;

    iget-object v2, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$3;->val$widgets:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->shouldUpdateAdapter(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 383
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->access$100()Ljava/lang/String;

    goto :goto_2

    .line 368
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$3;->this$0:Lcom/amazon/kcp/library/fragments/RubyHomeFragment;

    invoke-static {v0}, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->access$300(Lcom/amazon/kcp/library/fragments/RubyHomeFragment;)Lcom/amazon/kcp/library/fragments/RubyHomeFragment$RubyHomeAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$RubyHomeAdapter;->widgets:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 370
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/home/card/HomeCard;

    .line 371
    invoke-interface {v1}, Lcom/amazon/kindle/home/card/HomeCard;->onDismiss()V

    goto :goto_1

    .line 375
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$3;->this$0:Lcom/amazon/kcp/library/fragments/RubyHomeFragment;

    invoke-static {v0}, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->access$300(Lcom/amazon/kcp/library/fragments/RubyHomeFragment;)Lcom/amazon/kcp/library/fragments/RubyHomeFragment$RubyHomeAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$3;->val$widgets:Ljava/util/List;

    iput-object v1, v0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$RubyHomeAdapter;->widgets:Ljava/util/List;

    .line 376
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$3;->this$0:Lcom/amazon/kcp/library/fragments/RubyHomeFragment;

    invoke-static {v0}, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->access$300(Lcom/amazon/kcp/library/fragments/RubyHomeFragment;)Lcom/amazon/kcp/library/fragments/RubyHomeFragment$RubyHomeAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 377
    iget-boolean v0, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$3;->val$resetHasBeenShownToUser:Z

    if-eqz v0, :cond_3

    .line 378
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$3;->this$0:Lcom/amazon/kcp/library/fragments/RubyHomeFragment;

    invoke-static {v0}, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->access$300(Lcom/amazon/kcp/library/fragments/RubyHomeFragment;)Lcom/amazon/kcp/library/fragments/RubyHomeFragment$RubyHomeAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$RubyHomeAdapter;->access$400(Lcom/amazon/kcp/library/fragments/RubyHomeFragment$RubyHomeAdapter;)V

    .line 381
    :cond_3
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$3;->this$0:Lcom/amazon/kcp/library/fragments/RubyHomeFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->access$500(Lcom/amazon/kcp/library/fragments/RubyHomeFragment;Z)V

    :goto_2
    return-void
.end method
