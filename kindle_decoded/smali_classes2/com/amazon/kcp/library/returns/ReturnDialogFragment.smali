.class public Lcom/amazon/kcp/library/returns/ReturnDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "ReturnDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/returns/ReturnDialogFragment$ReturnAsinCallback;
    }
.end annotation


# static fields
.field private static final BOOKS_INFO_METRIC_KEY:Ljava/lang/String; = "booksInfoMetric"

.field private static final BOOK_ID_LIST_KEY:Ljava/lang/String; = "bookIdListKey"

.field private static final CLIENT_ID:Ljava/lang/String; = "kindle-reader-android-returns"

.field private static final DIALOG_TITLE_KEY:Ljava/lang/String; = "dialogTitleKey"

.field private static final METRIC_ACTION_CANCEL:Ljava/lang/String; = "cancel"

.field private static final METRIC_ACTION_CONFIRM:Ljava/lang/String; = "confirm"

.field private static final REF_TAG:Ljava/lang/String; = "KindleReaderReturns"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isShowingError:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-class v0, Lcom/amazon/kcp/library/returns/ReturnDialogFragment;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/returns/ReturnDialogFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 54
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/kcp/library/returns/ReturnDialogFragment;->isShowingError:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/library/returns/ReturnDialogFragment;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/amazon/kcp/library/returns/ReturnDialogFragment;->showNetworkConnectionDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kcp/library/returns/ReturnDialogFragment;Ljava/util/List;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/returns/ReturnDialogFragment;->returnBooks(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 40
    sget-object v0, Lcom/amazon/kcp/library/returns/ReturnDialogFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/amazon/kcp/library/returns/ReturnDialogFragment;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/amazon/kcp/library/returns/ReturnDialogFragment;->createReturnErrorDialog()V

    return-void
.end method

.method static synthetic access$400(Lcom/amazon/kcp/library/returns/ReturnDialogFragment;Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/library/returns/ReturnDialogFragment;->handleReturnResponse(Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;Ljava/lang/String;)V

    return-void
.end method

.method private createReturnErrorDialog()V
    .locals 3

    .line 169
    iget-object v0, p0, Lcom/amazon/kcp/library/returns/ReturnDialogFragment;->isShowingError:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    sget v1, Lcom/amazon/kindle/librarymodule/R$string;->return_error_title:I

    .line 173
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/librarymodule/R$string;->return_error_message:I

    .line 174
    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 172
    invoke-static {v1, v2, v0}, Lcom/amazon/kcp/redding/AlertActivity;->createAlertIntent(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 176
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private static getBookIdList(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 184
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/content/IBook;

    .line 185
    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/util/List;)Lcom/amazon/kcp/library/returns/ReturnDialogFragment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;)",
            "Lcom/amazon/kcp/library/returns/ReturnDialogFragment;"
        }
    .end annotation

    .line 58
    new-instance v0, Lcom/amazon/kcp/library/returns/ReturnDialogFragment;

    invoke-direct {v0}, Lcom/amazon/kcp/library/returns/ReturnDialogFragment;-><init>()V

    .line 59
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "dialogTitleKey"

    .line 60
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-static {p1}, Lcom/amazon/kcp/library/returns/ReturnDialogFragment;->getBookIdList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p0

    const-string v2, "bookIdListKey"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 62
    invoke-static {p1}, Lcom/amazon/kcp/util/fastmetrics/RecordDeleteFromLibraryMetrics;->getBooksInfoMetric(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "booksInfoMetric"

    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private handleReturnResponse(Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;Ljava/lang/String;)V
    .locals 2

    .line 135
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/library/returns/ReturnDialogFragment$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/kcp/library/returns/ReturnDialogFragment$3;-><init>(Lcom/amazon/kcp/library/returns/ReturnDialogFragment;Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private returnBooks(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 118
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 119
    invoke-static {v0}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->parseForAsin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 121
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getStoreManager()Lcom/amazon/kindle/krx/store/IStoreManager;

    move-result-object v2

    new-instance v3, Lcom/amazon/kcp/library/returns/ReturnDialogFragment$ReturnAsinCallback;

    invoke-direct {v3, p0, v0}, Lcom/amazon/kcp/library/returns/ReturnDialogFragment$ReturnAsinCallback;-><init>(Lcom/amazon/kcp/library/returns/ReturnDialogFragment;Ljava/lang/String;)V

    const-string v0, "kindle-reader-android-returns"

    const-string v4, "KindleReaderReturns"

    invoke-interface {v2, v1, v0, v4, v3}, Lcom/amazon/kindle/krx/store/IStoreManager;->returnAsin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/glide/IReturnOfferForAsinCallback;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private showNetworkConnectionDialog()V
    .locals 2

    .line 127
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getAlertDialogManager()Lcom/amazon/kindle/krx/application/IAlertDialogManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/application/IAlertDialogManager$AlertDialogType;->CONNECTION_ERROR:Lcom/amazon/kindle/krx/application/IAlertDialogManager$AlertDialogType;

    .line 130
    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/application/IAlertDialogManager;->displayAlertDialog(Lcom/amazon/kindle/krx/application/IAlertDialogManager$AlertDialogType;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected createNegativeButtonListener(Landroid/app/AlertDialog;)Landroid/view/View$OnClickListener;
    .locals 1

    .line 87
    new-instance v0, Lcom/amazon/kcp/library/returns/ReturnDialogFragment$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kcp/library/returns/ReturnDialogFragment$1;-><init>(Lcom/amazon/kcp/library/returns/ReturnDialogFragment;Landroid/app/AlertDialog;)V

    return-object v0
.end method

.method protected createPositiveButtonListener(Landroid/app/AlertDialog;Ljava/util/List;Ljava/lang/String;)Landroid/view/View$OnClickListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/AlertDialog;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/view/View$OnClickListener;"
        }
    .end annotation

    .line 102
    new-instance v0, Lcom/amazon/kcp/library/returns/ReturnDialogFragment$2;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/amazon/kcp/library/returns/ReturnDialogFragment$2;-><init>(Lcom/amazon/kcp/library/returns/ReturnDialogFragment;Ljava/lang/String;Landroid/app/AlertDialog;Ljava/util/List;)V

    return-object v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    .line 70
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "dialogTitleKey"

    .line 71
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bookIdListKey"

    .line 72
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "booksInfoMetric"

    .line 73
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 74
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 75
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 76
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/amazon/kindle/librarymodule/R$layout;->return_dialog:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 77
    sget v4, Lcom/amazon/kindle/librarymodule/R$id;->positive_button:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v2, v1, p1}, Lcom/amazon/kcp/library/returns/ReturnDialogFragment;->createPositiveButtonListener(Landroid/app/AlertDialog;Ljava/util/List;Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    sget p1, Lcom/amazon/kindle/librarymodule/R$id;->negative_button:I

    invoke-virtual {v3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, v2}, Lcom/amazon/kcp/library/returns/ReturnDialogFragment;->createNegativeButtonListener(Landroid/app/AlertDialog;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    sget p1, Lcom/amazon/kindle/librarymodule/R$id;->dialog_title:I

    invoke-virtual {v3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 80
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    return-object v2
.end method
