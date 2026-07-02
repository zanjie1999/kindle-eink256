.class public Lcom/amazon/kcp/library/DeleteOwnedSampleDialog;
.super Lcom/amazon/kcp/library/LibraryDialogFragment;
.source "DeleteOwnedSampleDialog.java"


# static fields
.field private static final BOOK_IDS_KEY:Ljava/lang/String; = "BookIds"

.field private static final IS_LOCAL_KEY:Ljava/lang/String; = "IsLocal"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/amazon/kcp/library/LibraryDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/library/DeleteOwnedSampleDialog;Ljava/util/ArrayList;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/DeleteOwnedSampleDialog;->revokeOwnership(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static newInstance(Ljava/util/List;Z)Lcom/amazon/kcp/library/DeleteOwnedSampleDialog;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;Z)",
            "Lcom/amazon/kcp/library/DeleteOwnedSampleDialog;"
        }
    .end annotation

    .line 30
    new-instance v0, Lcom/amazon/kcp/library/DeleteOwnedSampleDialog;

    invoke-direct {v0}, Lcom/amazon/kcp/library/DeleteOwnedSampleDialog;-><init>()V

    .line 31
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 32
    invoke-static {p0}, Lcom/amazon/kcp/util/LibraryUtils;->getContentIds(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p0

    const-string v2, "BookIds"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string p0, "IsLocal"

    .line 33
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 34
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private revokeOwnership(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 99
    new-instance v0, Lcom/amazon/kindle/network/WirelessUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/kindle/network/WirelessUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/amazon/kindle/network/WirelessUtils;->hasNetworkConnectivity()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "ConnectionError"

    invoke-interface {p1, v1, v0}, Lcom/amazon/kcp/application/IUIMessaging;->showAlert(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 105
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 106
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/amazon/kcp/library/ILibraryController;->revokeOwnership(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setupWithChoices(Landroid/app/AlertDialog$Builder;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/AlertDialog$Builder;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 62
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->ok:I

    new-instance v1, Lcom/amazon/kcp/library/DeleteOwnedSampleDialog$1;

    invoke-direct {v1, p0, p2}, Lcom/amazon/kcp/library/DeleteOwnedSampleDialog$1;-><init>(Lcom/amazon/kcp/library/DeleteOwnedSampleDialog;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 79
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object p2, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v0, "DeleteOwnedSampleDialog"

    const-string v1, "DialogCreatedWithChoices"

    invoke-virtual {p1, v0, v1, p2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    return-void
.end method

.method private setupWithMessage(Landroid/app/AlertDialog$Builder;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/AlertDialog$Builder;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 86
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->delete_sample_dialog_message:I

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 87
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->ok:I

    new-instance v1, Lcom/amazon/kcp/library/DeleteOwnedSampleDialog$2;

    invoke-direct {v1, p0, p2}, Lcom/amazon/kcp/library/DeleteOwnedSampleDialog$2;-><init>(Lcom/amazon/kcp/library/DeleteOwnedSampleDialog;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 95
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object p2, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v0, "DeleteOwnedSampleDialog"

    const-string v1, "DialogCreatedWithMessage"

    invoke-virtual {p1, v0, v1, p2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .line 40
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "BookIds"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 41
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "IsLocal"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 43
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 44
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 45
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    sget v3, Lcom/amazon/kindle/librarymodule/R$string;->delete_sample_dialog_title_plural:I

    goto :goto_0

    :cond_0
    sget v3, Lcom/amazon/kindle/librarymodule/R$string;->delete_sample_dialog_title:I

    :goto_0
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 46
    sget v3, Lcom/amazon/kindle/librarymodule/R$string;->cancel:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_1

    .line 49
    sget v0, Lcom/amazon/kindle/librarymodule/R$array;->delete_sample_options:I

    invoke-virtual {v1, v0, v2, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 50
    invoke-direct {p0, v1, p1}, Lcom/amazon/kcp/library/DeleteOwnedSampleDialog;->setupWithChoices(Landroid/app/AlertDialog$Builder;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 52
    :cond_1
    invoke-direct {p0, v1, p1}, Lcom/amazon/kcp/library/DeleteOwnedSampleDialog;->setupWithMessage(Landroid/app/AlertDialog$Builder;Ljava/util/ArrayList;)V

    .line 55
    :goto_1
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
