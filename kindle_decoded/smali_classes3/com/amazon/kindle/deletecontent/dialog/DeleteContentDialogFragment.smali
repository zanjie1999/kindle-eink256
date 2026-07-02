.class public abstract Lcom/amazon/kindle/deletecontent/dialog/DeleteContentDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "DeleteContentDialogFragment.kt"


# instance fields
.field private final alertDialogManager$delegate:Lkotlin/Lazy;

.field private final deleteContentClient$delegate:Lkotlin/Lazy;

.field private final fastMetricsClient$delegate:Lkotlin/Lazy;

.field private final isShowingError:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final libraryManager$delegate:Lkotlin/Lazy;

.field private final logger$delegate:Lkotlin/Lazy;

.field private final metricsManager$delegate:Lkotlin/Lazy;

.field private final networkService$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/kindle/deletecontent/dialog/DeleteContentDialogFragment;->isShowingError:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 33
    sget-object v0, Lcom/amazon/kindle/deletecontent/dialog/DeleteContentDialogFragment$logger$2;->INSTANCE:Lcom/amazon/kindle/deletecontent/dialog/DeleteContentDialogFragment$logger$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/deletecontent/dialog/DeleteContentDialogFragment;->logger$delegate:Lkotlin/Lazy;

    .line 35
    sget-object v0, Lcom/amazon/kindle/deletecontent/dialog/DeleteContentDialogFragment$libraryManager$2;->INSTANCE:Lcom/amazon/kindle/deletecontent/dialog/DeleteContentDialogFragment$libraryManager$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/deletecontent/dialog/DeleteContentDialogFragment;->libraryManager$delegate:Lkotlin/Lazy;

    .line 37
    sget-object v0, Lcom/amazon/kindle/deletecontent/dialog/DeleteContentDialogFragment$networkService$2;->INSTANCE:Lcom/amazon/kindle/deletecontent/dialog/DeleteContentDialogFragment$networkService$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/deletecontent/dialog/DeleteContentDialogFragment;->networkService$delegate:Lkotlin/Lazy;

    .line 39
    sget-object v0, Lcom/amazon/kindle/deletecontent/dialog/DeleteContentDialogFragment$alertDialogManager$2;->INSTANCE:Lcom/amazon/kindle/deletecontent/dialog/DeleteContentDialogFragment$alertDialogManager$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/deletecontent/dialog/DeleteContentDialogFragment;->alertDialogManager$delegate:Lkotlin/Lazy;

    .line 41
    sget-object v0, Lcom/amazon/kindle/deletecontent/dialog/DeleteContentDialogFragment$metricsManager$2;->INSTANCE:Lcom/amazon/kindle/deletecontent/dialog/DeleteContentDialogFragment$metricsManager$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/deletecontent/dialog/DeleteContentDialogFragment;->metricsManager$delegate:Lkotlin/Lazy;

    .line 43
    sget-object v0, Lcom/amazon/kindle/deletecontent/dialog/DeleteContentDialogFragment$deleteContentClient$2;->INSTANCE:Lcom/amazon/kindle/deletecontent/dialog/DeleteContentDialogFragment$deleteContentClient$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/deletecontent/dialog/DeleteContentDialogFragment;->deleteContentClient$delegate:Lkotlin/Lazy;

    .line 45
    sget-object v0, Lcom/amazon/kindle/deletecontent/dialog/DeleteContentDialogFragment$fastMetricsClient$2;->INSTANCE:Lcom/amazon/kindle/deletecontent/dialog/DeleteContentDialogFragment$fastMetricsClient$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/deletecontent/dialog/DeleteContentDialogFragment;->fastMetricsClient$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final setBookCover(Landroid/view/View;Lcom/amazon/kindle/deletecontent/dialog/ContentData;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 107
    invoke-interface {p2}, Lcom/amazon/kindle/deletecontent/dialog/ContentData;->getAsin()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 108
    sget v0, Lcom/amazon/kindle/deletecontentmodule/R$id;->book_cover:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Lcom/amazon/kcp/library/ui/BookCoverView;

    .line 109
    invoke-virtual {p1}, Lcom/amazon/kcp/library/ui/BookCoverView;->getCover()Lcom/amazon/kcp/library/ui/Cover;

    move-result-object v0

    const-string v1, "cover"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/ui/Cover;->setGravity(I)V

    .line 110
    invoke-virtual {p1}, Lcom/amazon/kcp/library/ui/BookCoverView;->getCover()Lcom/amazon/kcp/library/ui/Cover;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/library/ui/Cover$CoverEffects;->NO_PAGES:Lcom/amazon/kcp/library/ui/Cover$CoverEffects;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/ui/Cover;->setCoverEffects(Lcom/amazon/kcp/library/ui/Cover$CoverEffects;)V

    .line 111
    invoke-interface {p2}, Lcom/amazon/kindle/deletecontent/dialog/ContentData;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcom/amazon/kindle/deletecontent/dialog/ContentData;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object p2

    invoke-static {p2}, Lcom/amazon/kindle/deletecontent/api/DeleteContentApiUtilsKt;->convertContentTypeToBookType(Lcom/amazon/kindle/krx/content/ContentType;)Lcom/amazon/kcp/library/models/BookType;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/amazon/kcp/library/ui/BookCoverView;->setCoverSource(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    const/4 p2, 0x0

    .line 112
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    .line 108
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type com.amazon.kcp.library.ui.BookCoverView"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method private final setBookTitle(Landroid/view/View;Lcom/amazon/kindle/deletecontent/dialog/ContentData;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 121
    invoke-interface {p2}, Lcom/amazon/kindle/deletecontent/dialog/ContentData;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 122
    sget v0, Lcom/amazon/kindle/deletecontentmodule/R$id;->book_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Landroid/widget/TextView;

    .line 123
    invoke-interface {p2}, Lcom/amazon/kindle/deletecontent/dialog/ContentData;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x0

    .line 124
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 122
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method private final setDialogMessage(Landroid/view/View;I)V
    .locals 1

    .line 133
    sget v0, Lcom/amazon/kindle/deletecontentmodule/R$id;->dialog_message:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/widget/TextView;

    .line 134
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    const/4 p2, 0x0

    .line 135
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 133
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final setDialogTitle(Landroid/view/View;I)V
    .locals 1

    .line 97
    sget v0, Lcom/amazon/kindle/deletecontentmodule/R$id;->dialog_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/widget/TextView;

    .line 98
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    const/4 p2, 0x0

    .line 99
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 97
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final setPositiveButtonString(Landroid/view/View;I)V
    .locals 1

    .line 143
    sget v0, Lcom/amazon/kindle/deletecontentmodule/R$id;->positive_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/widget/Button;

    .line 144
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    return-void

    .line 143
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type android.widget.Button"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected final getAlertDialogManager()Lcom/amazon/kindle/krx/application/IAlertDialogManager;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/dialog/DeleteContentDialogFragment;->alertDialogManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/application/IAlertDialogManager;

    return-object v0
.end method

.method protected abstract getContentDataArray()[Lcom/amazon/kindle/deletecontent/dialog/ContentData;
.end method

.method protected final getDeleteContentClient()Lcom/amazon/kindle/deletecontent/api/DeleteContentClient;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/dialog/DeleteContentDialogFragment;->deleteContentClient$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/deletecontent/api/DeleteContentClient;

    return-object v0
.end method

.method protected abstract getDialogMessage()I
.end method

.method protected abstract getDialogTitle()I
.end method

.method protected final getFastMetricsClient()Lcom/amazon/kcp/util/fastmetrics/RecordDeleteFromLibraryMetrics;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/dialog/DeleteContentDialogFragment;->fastMetricsClient$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/util/fastmetrics/RecordDeleteFromLibraryMetrics;

    return-object v0
.end method

.method protected final getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/dialog/DeleteContentDialogFragment;->libraryManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/library/ILibraryManager;

    return-object v0
.end method

.method protected final getLogger()Lcom/amazon/kindle/krx/logging/ILogger;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/dialog/DeleteContentDialogFragment;->logger$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/logging/ILogger;

    return-object v0
.end method

.method protected final getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/dialog/DeleteContentDialogFragment;->metricsManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    return-object v0
.end method

.method protected abstract getNegativeButtonListener()Landroid/view/View$OnClickListener;
.end method

.method protected final getNetworkService()Lcom/amazon/kindle/krx/network/INetworkService;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/dialog/DeleteContentDialogFragment;->networkService$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/network/INetworkService;

    return-object v0
.end method

.method protected abstract getPositiveButtonListener()Landroid/view/View$OnClickListener;
.end method

.method protected abstract getPositiveButtonText()I
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 78
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 79
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    const-string v0, "dialog"

    .line 80
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/deletecontentmodule/R$layout;->delete_content_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 81
    sget v1, Lcom/amazon/kindle/deletecontentmodule/R$id;->positive_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/amazon/kindle/deletecontent/dialog/DeleteContentDialogFragment;->getPositiveButtonListener()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    sget v1, Lcom/amazon/kindle/deletecontentmodule/R$id;->negative_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/amazon/kindle/deletecontent/dialog/DeleteContentDialogFragment;->getNegativeButtonListener()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v1, "view"

    .line 84
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazon/kindle/deletecontent/dialog/DeleteContentDialogFragment;->getDialogTitle()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/amazon/kindle/deletecontent/dialog/DeleteContentDialogFragment;->setDialogTitle(Landroid/view/View;I)V

    .line 85
    invoke-virtual {p0}, Lcom/amazon/kindle/deletecontent/dialog/DeleteContentDialogFragment;->getContentDataArray()[Lcom/amazon/kindle/deletecontent/dialog/ContentData;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/ArraysKt;->singleOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/deletecontent/dialog/ContentData;

    invoke-direct {p0, v0, v1}, Lcom/amazon/kindle/deletecontent/dialog/DeleteContentDialogFragment;->setBookCover(Landroid/view/View;Lcom/amazon/kindle/deletecontent/dialog/ContentData;)V

    .line 86
    invoke-virtual {p0}, Lcom/amazon/kindle/deletecontent/dialog/DeleteContentDialogFragment;->getContentDataArray()[Lcom/amazon/kindle/deletecontent/dialog/ContentData;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/ArraysKt;->singleOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/deletecontent/dialog/ContentData;

    invoke-direct {p0, v0, v1}, Lcom/amazon/kindle/deletecontent/dialog/DeleteContentDialogFragment;->setBookTitle(Landroid/view/View;Lcom/amazon/kindle/deletecontent/dialog/ContentData;)V

    .line 87
    invoke-virtual {p0}, Lcom/amazon/kindle/deletecontent/dialog/DeleteContentDialogFragment;->getDialogMessage()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/amazon/kindle/deletecontent/dialog/DeleteContentDialogFragment;->setDialogMessage(Landroid/view/View;I)V

    .line 88
    invoke-virtual {p0}, Lcom/amazon/kindle/deletecontent/dialog/DeleteContentDialogFragment;->getPositiveButtonText()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/amazon/kindle/deletecontent/dialog/DeleteContentDialogFragment;->setPositiveButtonString(Landroid/view/View;I)V

    .line 89
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    return-object p1
.end method

.method protected final showErrorDialog()V
    .locals 3

    .line 152
    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/dialog/DeleteContentDialogFragment;->isShowingError:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/deletecontent/dialog/DeleteContentDialogUtilsKt;->showErrorDialog(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
