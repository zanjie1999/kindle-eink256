.class Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$1$1;
.super Ljava/lang/Object;
.source "LibrarySecondaryMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$1;->onViewOptionsReset(Lcom/amazon/kindle/krx/library/LibraryViewType;Lcom/amazon/kindle/krx/library/LibraryGroupType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$1;

.field final synthetic val$viewType:Lcom/amazon/kindle/krx/library/LibraryViewType;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$1;Lcom/amazon/kindle/krx/library/LibraryViewType;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$1$1;->this$1:Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$1;

    iput-object p2, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$1$1;->val$viewType:Lcom/amazon/kindle/krx/library/LibraryViewType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$1$1;->this$1:Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$1;

    iget-object v0, v0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$1;->this$0:Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;

    invoke-static {v0}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->access$000(Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;)Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$1$1;->this$1:Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$1;

    iget-object v0, v0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$1;->this$0:Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;

    invoke-static {v0}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->access$000(Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;)Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$1$1;->val$viewType:Lcom/amazon/kindle/krx/library/LibraryViewType;

    invoke-static {v1}, Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;->fromLibraryViewType(Lcom/amazon/kindle/krx/library/LibraryViewType;)Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;->setViewTypeItemAsChecked(Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;)V

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$1$1;->this$1:Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$1;

    iget-object v0, v0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$1;->this$0:Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;

    iget-object v1, v0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->allDownloadToggleDelegate:Lcom/amazon/kcp/library/AllDownloadToggleDelegate;

    if-eqz v1, :cond_1

    .line 117
    sget-object v1, Lcom/amazon/kindle/krx/library/LibraryGroupType;->NOT_APPLICABLE:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->setLibraryGroupType(Lcom/amazon/kindle/krx/library/LibraryGroupType;)V

    :cond_1
    return-void
.end method
