.class final Lcom/amazon/kcp/library/LocalFilesActivity$setUpAddFolderButton$1$onFailure$1;
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

    iput-object p1, p0, Lcom/amazon/kcp/library/LocalFilesActivity$setUpAddFolderButton$1$onFailure$1;->this$0:Lcom/amazon/kcp/library/LocalFilesActivity$setUpAddFolderButton$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/amazon/kcp/library/LocalFilesActivity$setUpAddFolderButton$1$onFailure$1;->this$0:Lcom/amazon/kcp/library/LocalFilesActivity$setUpAddFolderButton$1;

    iget-object v0, v0, Lcom/amazon/kcp/library/LocalFilesActivity$setUpAddFolderButton$1;->$activity:Lcom/amazon/kcp/library/LocalFilesActivity;

    sget v1, Lcom/amazon/kcp/more/R$string;->add_folder_error_toast:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
