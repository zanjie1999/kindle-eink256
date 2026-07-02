.class final Lcom/amazon/kcp/library/LocalFilesActivity$setUpAddFolderButton$1;
.super Ljava/lang/Object;
.source "LocalFilesActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/LocalFilesActivity;->setUpAddFolderButton(Lcom/amazon/kcp/library/LocalFilesActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $activity:Lcom/amazon/kcp/library/LocalFilesActivity;

.field final synthetic this$0:Lcom/amazon/kcp/library/LocalFilesActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/LocalFilesActivity;Lcom/amazon/kcp/library/LocalFilesActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/library/LocalFilesActivity$setUpAddFolderButton$1;->this$0:Lcom/amazon/kcp/library/LocalFilesActivity;

    iput-object p2, p0, Lcom/amazon/kcp/library/LocalFilesActivity$setUpAddFolderButton$1;->$activity:Lcom/amazon/kcp/library/LocalFilesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 61
    new-instance p1, Lcom/amazon/kcp/library/LocalFilesActivity$setUpAddFolderButton$1$onSuccess$1;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/library/LocalFilesActivity$setUpAddFolderButton$1$onSuccess$1;-><init>(Lcom/amazon/kcp/library/LocalFilesActivity$setUpAddFolderButton$1;)V

    .line 69
    new-instance v0, Lcom/amazon/kcp/library/LocalFilesActivity$setUpAddFolderButton$1$onFailure$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/LocalFilesActivity$setUpAddFolderButton$1$onFailure$1;-><init>(Lcom/amazon/kcp/library/LocalFilesActivity$setUpAddFolderButton$1;)V

    .line 74
    iget-object v1, p0, Lcom/amazon/kcp/library/LocalFilesActivity$setUpAddFolderButton$1;->$activity:Lcom/amazon/kcp/library/LocalFilesActivity;

    invoke-virtual {v1}, Lcom/amazon/kcp/redding/ReddingActivity;->getPermissionsManager()Lcom/amazon/android/system/PermissionsManager;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, p1, v0, v2}, Lcom/amazon/android/system/PermissionsManager;->requestExternalDirectoryPermissions(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method
