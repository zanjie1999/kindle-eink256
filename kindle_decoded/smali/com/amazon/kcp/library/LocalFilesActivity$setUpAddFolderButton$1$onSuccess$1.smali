.class final Lcom/amazon/kcp/library/LocalFilesActivity$setUpAddFolderButton$1$onSuccess$1;
.super Ljava/lang/Object;
.source "LocalFilesActivity.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/LocalFilesActivity$setUpAddFolderButton$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/LocalFilesActivity$setUpAddFolderButton$1;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/LocalFilesActivity$setUpAddFolderButton$1;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/library/LocalFilesActivity$setUpAddFolderButton$1$onSuccess$1;->this$0:Lcom/amazon/kcp/library/LocalFilesActivity$setUpAddFolderButton$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/amazon/kcp/library/LocalFilesActivity$setUpAddFolderButton$1$onSuccess$1;->this$0:Lcom/amazon/kcp/library/LocalFilesActivity$setUpAddFolderButton$1;

    iget-object v0, v0, Lcom/amazon/kcp/library/LocalFilesActivity$setUpAddFolderButton$1;->$activity:Lcom/amazon/kcp/library/LocalFilesActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/redding/ReddingActivity;->getPermissionsManager()Lcom/amazon/android/system/PermissionsManager;

    move-result-object v0

    const-string v1, "activity.permissionsManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/android/system/PermissionsManager;->getRequestedPath()Ljava/lang/String;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/amazon/kcp/library/LocalFilesActivity$setUpAddFolderButton$1$onSuccess$1;->this$0:Lcom/amazon/kcp/library/LocalFilesActivity$setUpAddFolderButton$1;

    iget-object v1, v1, Lcom/amazon/kcp/library/LocalFilesActivity$setUpAddFolderButton$1;->this$0:Lcom/amazon/kcp/library/LocalFilesActivity;

    invoke-static {v1}, Lcom/amazon/kcp/library/LocalFilesActivity;->access$getSideloadedContentUtils$p(Lcom/amazon/kcp/library/LocalFilesActivity;)Lcom/amazon/kindle/content/SideloadedContentUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kindle/content/SideloadedContentUtils;->getSideloadedPaths()Ljava/util/TreeSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/amazon/kcp/library/LocalFilesActivity$setUpAddFolderButton$1$onSuccess$1;->this$0:Lcom/amazon/kcp/library/LocalFilesActivity$setUpAddFolderButton$1;

    iget-object v1, v1, Lcom/amazon/kcp/library/LocalFilesActivity$setUpAddFolderButton$1;->this$0:Lcom/amazon/kcp/library/LocalFilesActivity;

    const-string/jumbo v2, "selectedDir"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/amazon/kcp/library/LocalFilesActivity;->access$addSideloadedDirectory(Lcom/amazon/kcp/library/LocalFilesActivity;Ljava/lang/String;)V

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/LocalFilesActivity$setUpAddFolderButton$1$onSuccess$1;->this$0:Lcom/amazon/kcp/library/LocalFilesActivity$setUpAddFolderButton$1;

    iget-object v0, v0, Lcom/amazon/kcp/library/LocalFilesActivity$setUpAddFolderButton$1;->this$0:Lcom/amazon/kcp/library/LocalFilesActivity;

    invoke-static {v0}, Lcom/amazon/kcp/library/LocalFilesActivity;->access$getLocalFilesAdapter$p(Lcom/amazon/kcp/library/LocalFilesActivity;)Lcom/amazon/kcp/library/LocalFilesAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
