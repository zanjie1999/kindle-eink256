.class Lcom/amazon/kcp/library/returns/BorrowedReturnActionButtonProvider$1;
.super Ljava/lang/Object;
.source "BorrowedReturnActionButtonProvider.java"

# interfaces
.implements Lcom/amazon/kcp/library/returns/ReturnActionButton$ReturnActionButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/returns/BorrowedReturnActionButtonProvider;->createReturnButtonListener()Lcom/amazon/kcp/library/returns/ReturnActionButton$ReturnActionButtonListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/returns/BorrowedReturnActionButtonProvider;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/returns/BorrowedReturnActionButtonProvider;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/amazon/kcp/library/returns/BorrowedReturnActionButtonProvider$1;->this$0:Lcom/amazon/kcp/library/returns/BorrowedReturnActionButtonProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 105
    iget-object v0, p0, Lcom/amazon/kcp/library/returns/BorrowedReturnActionButtonProvider$1;->this$0:Lcom/amazon/kcp/library/returns/BorrowedReturnActionButtonProvider;

    invoke-static {v0}, Lcom/amazon/kcp/library/returns/BorrowedReturnActionButtonProvider;->access$000(Lcom/amazon/kcp/library/returns/BorrowedReturnActionButtonProvider;)Lcom/amazon/kcp/library/ActivityProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/ActivityProvider;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v1, p0, Lcom/amazon/kcp/library/returns/BorrowedReturnActionButtonProvider$1;->this$0:Lcom/amazon/kcp/library/returns/BorrowedReturnActionButtonProvider;

    .line 108
    invoke-static {v1, p1}, Lcom/amazon/kcp/library/returns/BorrowedReturnActionButtonProvider;->access$100(Lcom/amazon/kcp/library/returns/BorrowedReturnActionButtonProvider;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/amazon/kcp/library/returns/ReturnDialogFragment;->getInstance(Ljava/lang/String;Ljava/util/List;)Lcom/amazon/kcp/library/returns/ReturnDialogFragment;

    move-result-object v1

    .line 109
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const-string v2, "dialogTag"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/returns/BorrowedReturnActionButtonProvider$1;->this$0:Lcom/amazon/kcp/library/returns/BorrowedReturnActionButtonProvider;

    .line 113
    invoke-static {v0}, Lcom/amazon/kcp/library/returns/BorrowedReturnActionButtonProvider;->access$200(Lcom/amazon/kcp/library/returns/BorrowedReturnActionButtonProvider;)Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kcp/util/fastmetrics/RecordLibraryActionButtonMetricsKt;->convertBookListToContentMetadataList(Ljava/util/List;Lcom/amazon/kindle/content/ILibraryService;)Ljava/util/List;

    move-result-object p1

    const-string v0, "LibraryLongPressMenuItemPressed"

    const-string v1, "ReturnItems"

    const-string v2, "Library"

    .line 111
    invoke-static {v0, p1, v1, v2}, Lcom/amazon/kcp/util/fastmetrics/LibraryActionMenuMetricsRecorder;->reportLibraryActionMenuActionSelectedMetrics(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
