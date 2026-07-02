.class public Lcom/amazon/kcp/library/DeleteItemsDialog;
.super Lcom/amazon/kcp/library/LibraryDialogFragment;
.source "DeleteItemsDialog.java"


# static fields
.field private static final IS_LOCAL_KEY:Ljava/lang/String; = "IsLocal"

.field private static final ITEMS_KEY:Ljava/lang/String; = "Items"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Lcom/amazon/kcp/library/DeleteItemsDialog;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/DeleteItemsDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/amazon/kcp/library/LibraryDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 35
    sget-object v0, Lcom/amazon/kcp/library/DeleteItemsDialog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/library/DeleteItemsDialog;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/DeleteItemsDialog;->reportActionItemSelectedMetrics(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/kcp/library/DeleteItemsDialog;Ljava/util/List;)Z
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/DeleteItemsDialog;->deleteRemoteItems(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method private deleteRemoteItems(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/library/ILibraryItemId;",
            ">;)Z"
        }
    .end annotation

    .line 127
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getNetworkService()Lcom/amazon/kindle/network/INetworkService;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/network/INetworkService;->hasNetworkConnectivity()Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "ConnectionError"

    invoke-interface {p1, v1, v0}, Lcom/amazon/kcp/application/IUIMessaging;->showAlert(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 132
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kcp/library/ILibraryController;->deleteRemoteItems(Ljava/util/List;)V

    const/4 p1, 0x1

    return p1
.end method

.method public static newInstance(Ljava/util/List;Z)Lcom/amazon/kcp/library/DeleteItemsDialog;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;Z)",
            "Lcom/amazon/kcp/library/DeleteItemsDialog;"
        }
    .end annotation

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    .line 46
    new-instance v2, Lcom/amazon/kcp/library/LibraryItemId;

    invoke-direct {v2, v1}, Lcom/amazon/kcp/library/LibraryItemId;-><init>(Lcom/amazon/kcp/library/ILibraryDisplayItem;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 48
    :cond_0
    new-instance p0, Lcom/amazon/kcp/library/DeleteItemsDialog;

    invoke-direct {p0}, Lcom/amazon/kcp/library/DeleteItemsDialog;-><init>()V

    .line 49
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "IsLocal"

    .line 50
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "Items"

    .line 51
    invoke-virtual {v1, p1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 52
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method private reportActionItemSelectedMetrics(Ljava/lang/String;)V
    .locals 3

    const-string v0, "LibraryLongPressMenuItemPressed"

    const/4 v1, 0x0

    const-string v2, "Library"

    .line 137
    invoke-static {v0, v1, p1, v2}, Lcom/amazon/kcp/util/fastmetrics/LibraryActionMenuMetricsRecorder;->reportLibraryActionMenuActionSelectedMetrics(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setupWithChoices(Landroid/app/AlertDialog$Builder;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/AlertDialog$Builder;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/library/ILibraryItemId;",
            ">;)V"
        }
    .end annotation

    .line 80
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->ok:I

    new-instance v1, Lcom/amazon/kcp/library/DeleteItemsDialog$1;

    invoke-direct {v1, p0, p2}, Lcom/amazon/kcp/library/DeleteItemsDialog$1;-><init>(Lcom/amazon/kcp/library/DeleteItemsDialog;Ljava/util/List;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 102
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object p2, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v0, "DeleteItemsDialog"

    const-string v1, "DialogCreatedWithChoices"

    invoke-virtual {p1, v0, v1, p2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    return-void
.end method

.method private setupWithMessage(Landroid/app/AlertDialog$Builder;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/AlertDialog$Builder;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/library/ILibraryItemId;",
            ">;)V"
        }
    .end annotation

    .line 107
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->delete_item_dialog_message_plural:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->delete_item_dialog_message:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 108
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->ok:I

    new-instance v1, Lcom/amazon/kcp/library/DeleteItemsDialog$2;

    invoke-direct {v1, p0, p2}, Lcom/amazon/kcp/library/DeleteItemsDialog$2;-><init>(Lcom/amazon/kcp/library/DeleteItemsDialog;Ljava/util/List;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 118
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object p2, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v0, "DeleteItemsDialog"

    const-string v1, "DialogCreatedWithMessage"

    invoke-virtual {p1, v0, v1, p2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .line 58
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "IsLocal"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 59
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Items"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 60
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 61
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    .line 62
    check-cast v2, Lcom/amazon/kindle/krx/library/ILibraryItemId;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeleteItemsDialog.onCreateDialog - with "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " items."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 66
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 67
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    sget v3, Lcom/amazon/kindle/librarymodule/R$string;->delete_item_dialog_title_plural:I

    goto :goto_1

    :cond_1
    sget v3, Lcom/amazon/kindle/librarymodule/R$string;->delete_item_dialog_title:I

    :goto_1
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 68
    sget v3, Lcom/amazon/kindle/librarymodule/R$string;->cancel:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    if-eqz p1, :cond_2

    .line 70
    sget p1, Lcom/amazon/kindle/librarymodule/R$array;->delete_item_options:I

    invoke-virtual {v0, p1, v2, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 71
    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/library/DeleteItemsDialog;->setupWithChoices(Landroid/app/AlertDialog$Builder;Ljava/util/List;)V

    goto :goto_2

    .line 73
    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/library/DeleteItemsDialog;->setupWithMessage(Landroid/app/AlertDialog$Builder;Ljava/util/List;)V

    .line 75
    :goto_2
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
