.class final Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment$onActivityCreated$1$bindHeaderView$1;
.super Ljava/lang/Object;
.source "LargeCollectionsRecyclerFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment$onActivityCreated$1;->bindHeaderView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment$onActivityCreated$1;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment$onActivityCreated$1;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment$onActivityCreated$1$bindHeaderView$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment$onActivityCreated$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 171
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment$onActivityCreated$1$bindHeaderView$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment$onActivityCreated$1;

    iget-object p1, p1, Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment$onActivityCreated$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->getRecyclerAdapter()Lcom/amazon/kcp/library/FastRecyclerAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment$onActivityCreated$1$bindHeaderView$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment$onActivityCreated$1;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->removeHeader(Lcom/amazon/kcp/library/RecyclerHeader;)V

    .line 172
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    const-string v0, "Utils.getFactory()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p1

    const-string v0, "Utils.getFactory().userSettingsController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/application/UserSettingsController;->setShowCollectionsInformationDialog(Z)V

    return-void
.end method
