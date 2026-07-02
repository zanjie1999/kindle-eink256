.class public Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;
.super Lcom/amazon/kcp/redding/ReddingActivity;
.source "DownloadErrorActivity.java"


# static fields
.field private static final DEFAULT_DOMAIN:Ljava/lang/String;

.field public static final DOWNLOAD_ABORTED_RESULT_CODE:I = 0x3eb

.field public static final EXTRA_BOOK_ID:Ljava/lang/String; = "book_id"

.field public static final EXTRA_CDE_ERROR_CODE:Ljava/lang/String; = "cde_error_code"

.field public static final EXTRA_CDE_ERROR_LINK:Ljava/lang/String; = "cde_error_link"

.field public static final EXTRA_CDE_ERROR_LINK_TITLE:Ljava/lang/String; = "cde_error_link_title"

.field public static final EXTRA_CDE_ERROR_MESSAGE:Ljava/lang/String; = "cde_error_message"

.field public static final EXTRA_CDE_ERROR_TITLE:Ljava/lang/String; = "cde_error_title"

.field public static final EXTRA_ERROR_REASON:Ljava/lang/String; = "error_reason"

.field public static final EXTRA_REMOVE_DOWNLOAD_ON_CANCEL:Ljava/lang/String; = "remove_download_on_cancel"

.field public static final EXTRA_RESTART_OPEN:Ljava/lang/String; = "restart_open"

.field public static final RESTART_DOWNLOAD_RESULT_CODE:I = 0x3ec

.field private static final TAG:Ljava/lang/String;

.field private static final USER_ACTION_CANCEL_BUTTON:Ljava/lang/String; = "Cancel"

.field private static final USER_ACTION_PURCHASE_BUTTON:Ljava/lang/String; = "Purchase"


# instance fields
.field private final NETWORK_SETTINGS_ACTIVITY:I

.field protected bookID:Ljava/lang/String;

.field private cdeErrorCode:Ljava/lang/String;

.field private cdeErrorLink:Ljava/lang/String;

.field private cdeErrorLinkTitle:Ljava/lang/String;

.field private cdeErrorMessage:Ljava/lang/String;

.field private cdeErrorTitle:Ljava/lang/String;

.field protected shouldRemove:Z

.field private shouldRestartOpen:Ljava/lang/Boolean;

.field stateReason:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/Marketplace;->getDomain()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->DEFAULT_DOMAIN:Ljava/lang/String;

    .line 51
    const-class v0, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/amazon/kcp/redding/ReddingActivity;-><init>()V

    const/4 v0, 0x0

    .line 111
    iput v0, p0, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->NETWORK_SETTINGS_ACTIVITY:I

    const/4 v0, 0x1

    .line 130
    iput-boolean v0, p0, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->shouldRemove:Z

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;)Ljava/lang/Boolean;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->shouldRestartOpen:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->cdeErrorLink:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->cdeErrorMessage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->cdeErrorTitle:Ljava/lang/String;

    return-object p0
.end method

.method private createDefaultErrorDialog(Landroidx/appcompat/app/AlertDialog$Builder;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V
    .locals 9

    .line 364
    sget v0, Lcom/amazon/kindle/krl/R$string;->error_generic_title:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 365
    sget v0, Lcom/amazon/kindle/krl/R$string;->error_generic_desc:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 367
    invoke-static {p2}, Lcom/amazon/kindle/services/download/DownloadUtils;->isErrorRetryable(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 368
    sget p2, Lcom/amazon/kindle/krl/R$string;->fix_try_again:I

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 369
    invoke-direct {p0}, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->getRestartDownloadListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v6

    sget p2, Lcom/amazon/kindle/krl/R$string;->download_cancel:I

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->getClearBookAndExitListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v8

    move-object v1, p0

    move-object v2, p1

    .line 368
    invoke-virtual/range {v1 .. v8}, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->buildDialog(Landroidx/appcompat/app/AlertDialog$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 371
    :cond_0
    sget p2, Lcom/amazon/kindle/krl/R$string;->ok:I

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 372
    invoke-virtual {p0}, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->getClearBookAndExitListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 371
    invoke-virtual/range {v1 .. v8}, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->buildDialog(Landroidx/appcompat/app/AlertDialog$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_0
    return-void
.end method

.method private getEnableMobileDataDownloadListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .line 299
    new-instance v0, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity$5;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity$5;-><init>(Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;)V

    return-object v0
.end method

.method private getRestartDownloadListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .line 213
    new-instance v0, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity$2;-><init>(Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;)V

    return-object v0
.end method

.method private getSettingsListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .line 196
    new-instance v0, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity$1;-><init>(Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;)V

    return-object v0
.end method

.method public static hasConnectivity(Landroid/content/Context;)Z
    .locals 2

    .line 424
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getDownloadBookNetworkMode()I

    move-result v0

    .line 425
    new-instance v1, Lcom/amazon/kindle/network/WirelessUtils;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/network/WirelessUtils;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x1

    if-eq v0, p0, :cond_1

    const/4 p0, 0x2

    if-eq v0, p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 428
    :cond_0
    invoke-virtual {v1}, Lcom/amazon/kindle/network/WirelessUtils;->isWifiConnected()Z

    move-result p0

    return p0

    .line 430
    :cond_1
    invoke-virtual {v1}, Lcom/amazon/kindle/network/WirelessUtils;->hasNetworkConnectivity()Z

    move-result p0

    return p0
.end method

.method private showError()V
    .locals 8

    .line 322
    invoke-static {p0}, Lcom/amazon/kindle/utils/KindleDialogUtils;->getAlertDialogBuilder(Landroid/content/Context;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 324
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/amazon/kindle/krl/R$bool;->should_show_icon_of_alert_dialog:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    sget v0, Lcom/amazon/kindle/krl/R$attr;->alertDialogErrorIcon:I

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setIconAttribute(I)Landroidx/appcompat/app/AlertDialog$Builder;

    :cond_0
    const/4 v0, 0x0

    .line 327
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 329
    iget v0, p0, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->stateReason:I

    invoke-static {v0}, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->getFromSerialized(I)Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v0

    .line 330
    sget-object v2, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->FILE_SYSTEM_FULL:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    if-ne v0, v2, :cond_1

    .line 331
    sget v0, Lcom/amazon/kindle/krl/R$string;->error_file_system_full_title:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/amazon/kindle/krl/R$string;->error_file_system_full_desc:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lcom/amazon/kindle/krl/R$string;->fix_try_again:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 332
    invoke-direct {p0}, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->getRestartDownloadListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v5

    sget v0, Lcom/amazon/kindle/krl/R$string;->download_cancel:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->getClearBookAndExitListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v7

    move-object v0, p0

    .line 331
    invoke-virtual/range {v0 .. v7}, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->buildDialog(Landroidx/appcompat/app/AlertDialog$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_1

    .line 333
    :cond_1
    iget-object v2, p0, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->bookID:Ljava/lang/String;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->FORBIDDEN:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    if-ne v0, v2, :cond_2

    iget-object v2, p0, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->cdeErrorMessage:Ljava/lang/String;

    .line 334
    invoke-static {v2}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->cdeErrorTitle:Ljava/lang/String;

    invoke-static {v2}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 335
    iget-object v0, p0, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->cdeErrorTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->cdeErrorMessage:Ljava/lang/String;

    invoke-virtual {p0, v1, v0, v2}, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->createAndShowLicenseLimitReachedErrorDialog(Landroidx/appcompat/app/AlertDialog$Builder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 336
    :cond_2
    sget-object v2, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->SERVER_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    if-eq v0, v2, :cond_9

    sget-object v2, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->CONNECTION_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    if-ne v0, v2, :cond_3

    goto/16 :goto_0

    .line 339
    :cond_3
    sget-object v2, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->HTTP_CLIENT_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    if-ne v0, v2, :cond_4

    .line 340
    sget v0, Lcom/amazon/kindle/krl/R$string;->error_title_server_issue:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/amazon/kindle/krl/R$string;->error_message_server_issue:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lcom/amazon/kindle/krl/R$string;->download_cancel:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->getClearBookAndExitListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->buildDialog(Landroidx/appcompat/app/AlertDialog$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_1

    .line 341
    :cond_4
    sget-object v2, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->DOCUMENT_OPEN_FAILURE:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    if-ne v0, v2, :cond_5

    .line 342
    sget v0, Lcom/amazon/kindle/krl/R$string;->error_document_open_failure_title:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/amazon/kindle/krl/R$string;->error_document_open_failure_desc:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lcom/amazon/kindle/krl/R$string;->fix_try_again:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 343
    invoke-direct {p0}, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->getRestartDownloadListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v5

    sget v0, Lcom/amazon/kindle/krl/R$string;->download_cancel:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->getClearBookAndExitListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v7

    move-object v0, p0

    .line 342
    invoke-virtual/range {v0 .. v7}, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->buildDialog(Landroidx/appcompat/app/AlertDialog$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_1

    .line 344
    :cond_5
    sget-object v2, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->WAN_CONTENT_DOWNLOAD_LIMIT_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    if-ne v0, v2, :cond_6

    .line 345
    sget v0, Lcom/amazon/kindle/krl/R$string;->error_wan_download_limit_exceed_title:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/amazon/kindle/krl/R$string;->error_wan_download_limit_exceed:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lcom/amazon/kindle/krl/R$string;->fix_try_again:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 346
    invoke-direct {p0}, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->getRestartDownloadListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v5

    sget v0, Lcom/amazon/kindle/krl/R$string;->download_cancel:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->getClearBookAndExitListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v7

    move-object v0, p0

    .line 345
    invoke-virtual/range {v0 .. v7}, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->buildDialog(Landroidx/appcompat/app/AlertDialog$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_1

    .line 347
    :cond_6
    sget-object v2, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->NO_CONNECTION:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    if-ne v0, v2, :cond_8

    .line 348
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getNetworkService()Lcom/amazon/kindle/network/INetworkService;

    move-result-object v0

    .line 349
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/application/UserSettingsController;->getDownloadBookNetworkMode()I

    move-result v2

    .line 350
    invoke-interface {v0}, Lcom/amazon/kindle/network/INetworkService;->isWanConnected()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    if-ne v2, v0, :cond_7

    .line 351
    sget v0, Lcom/amazon/kindle/krl/R$string;->error_title_data_control:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/amazon/kindle/krl/R$string;->error_message_data_control:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lcom/amazon/kindle/krl/R$string;->ok:I

    .line 352
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->getEnableMobileDataDownloadListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v5

    sget v0, Lcom/amazon/kindle/krl/R$string;->download_cancel:I

    .line 353
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->getClearBookAndExitListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v7

    move-object v0, p0

    .line 351
    invoke-virtual/range {v0 .. v7}, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->buildDialog(Landroidx/appcompat/app/AlertDialog$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_1

    .line 355
    :cond_7
    sget v0, Lcom/amazon/kindle/krl/R$string;->error_title_connection:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/amazon/kindle/krl/R$string;->error_message_connection:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lcom/amazon/kindle/krl/R$string;->android_settings:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 356
    invoke-direct {p0}, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->getSettingsListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v5

    sget v0, Lcom/amazon/kindle/krl/R$string;->dismiss:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->getClearBookAndExitListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v7

    move-object v0, p0

    .line 355
    invoke-virtual/range {v0 .. v7}, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->buildDialog(Landroidx/appcompat/app/AlertDialog$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_1

    .line 359
    :cond_8
    invoke-direct {p0, v1, v0}, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->createDefaultErrorDialog(Landroidx/appcompat/app/AlertDialog$Builder;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V

    goto :goto_1

    .line 337
    :cond_9
    :goto_0
    sget v0, Lcom/amazon/kindle/krl/R$string;->error_title_server_issue:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/amazon/kindle/krl/R$string;->error_message_server_issue:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lcom/amazon/kindle/krl/R$string;->fix_try_again:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 338
    invoke-direct {p0}, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->getRestartDownloadListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v5

    sget v0, Lcom/amazon/kindle/krl/R$string;->download_cancel:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->getClearBookAndExitListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v7

    move-object v0, p0

    .line 337
    invoke-virtual/range {v0 .. v7}, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->buildDialog(Landroidx/appcompat/app/AlertDialog$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_1
    return-void
.end method


# virtual methods
.method protected buildDialog(Landroidx/appcompat/app/AlertDialog$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 178
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 179
    invoke-virtual {p1, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 180
    invoke-virtual {p1, p4, p5}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    if-eqz p7, :cond_0

    .line 183
    invoke-virtual {p1, p6, p7}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 186
    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/amazon/kindle/dialog/DialogManager;->showDialogSafely(Landroid/content/Context;Landroid/app/Dialog;)Z

    return-void
.end method

.method protected clearBookErrorState()V
    .locals 3

    .line 413
    iget-boolean v0, p0, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->shouldRemove:Z

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->bookID:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->stateReason:I

    sget-object v1, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->DOCUMENT_OPEN_FAILURE:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    .line 416
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 417
    sget-object v0, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cancelling download for bookId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->bookID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->bookID:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/library/ILibraryController;->cancelDownload(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method clearBookErrorStateAndExit()V
    .locals 1

    .line 407
    invoke-virtual {p0}, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->clearBookErrorState()V

    const/16 v0, 0x3eb

    .line 408
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 409
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected createAndShowLicenseLimitReachedErrorDialog(Landroidx/appcompat/app/AlertDialog$Builder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .line 383
    iget-object v0, p0, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->cdeErrorLink:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 384
    const-class v0, Lcom/amazon/kindle/krx/payment/PlayBillingUtils;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/payment/PlayBillingUtils;

    if-eqz v0, :cond_0

    .line 385
    invoke-interface {v0}, Lcom/amazon/kindle/krx/payment/PlayBillingUtils;->shouldUsePaymentFlows()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 387
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$string;->fix_purchase:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 388
    invoke-virtual {p0}, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->getCDEDownloadListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v1

    .line 389
    invoke-virtual {p0}, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->getClearBookAndExitListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    .line 390
    sget v3, Lcom/amazon/kindle/krl/R$string;->download_cancel:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v11, v2

    move-object v2, v1

    move-object v1, v3

    move-object v3, v11

    goto :goto_1

    .line 392
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->getClearBookAndExitListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    .line 393
    sget v2, Lcom/amazon/kindle/krl/R$string;->ok:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v3, v1

    move-object v11, v2

    move-object v2, v0

    move-object v0, v11

    :goto_1
    move-object v7, v0

    move-object v9, v1

    move-object v8, v2

    move-object v10, v3

    goto :goto_2

    .line 397
    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/amazon/kindle/krl/R$string;->ok:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 398
    invoke-virtual {p0}, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->getClearBookAndExitListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    move-object v7, v0

    move-object v9, v1

    move-object v10, v9

    move-object v8, v2

    :goto_2
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    .line 402
    invoke-virtual/range {v3 .. v10}, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->buildDialog(Landroidx/appcompat/app/AlertDialog$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method protected getCDEDownloadListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .line 233
    new-instance v0, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity$3;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity$3;-><init>(Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;)V

    return-object v0
.end method

.method protected getClearBookAndExitListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .line 275
    new-instance v0, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity$4;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity$4;-><init>(Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;)V

    return-object v0
.end method

.method public initialize()V
    .locals 4

    .line 142
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "cde_error_message"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->cdeErrorMessage:Ljava/lang/String;

    .line 143
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "cde_error_title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->cdeErrorTitle:Ljava/lang/String;

    .line 144
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "cde_error_link"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->cdeErrorLink:Ljava/lang/String;

    .line 145
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey;->PFM:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IAuthenticationManager;->fetchToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-static {v0}, Lcom/amazon/kcp/application/Marketplace;->getInstance(Ljava/lang/String;)Lcom/amazon/kcp/application/Marketplace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/Marketplace;->getDomain()Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "cde_error_link_title"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->cdeErrorLinkTitle:Ljava/lang/String;

    .line 148
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "cde_error_code"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->cdeErrorCode:Ljava/lang/String;

    .line 149
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "restart_open"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->shouldRestartOpen:Ljava/lang/Boolean;

    .line 151
    iget-object v1, p0, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->cdeErrorLink:Ljava/lang/String;

    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->cdeErrorLink:Ljava/lang/String;

    sget-object v2, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->DEFAULT_DOMAIN:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->cdeErrorLink:Ljava/lang/String;

    .line 155
    :cond_0
    iget v0, p0, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->stateReason:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 156
    sget-object v0, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->TAG:Ljava/lang/String;

    const-string v1, "DownloadErrorActivity >>> Attempting to start activity without download error reason. Falling back to generic error message."

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    sget-object v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->APP_INTERNAL_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->stateReason:I

    .line 161
    :cond_1
    invoke-direct {p0}, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->showError()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    if-nez p1, :cond_0

    .line 439
    invoke-virtual {p0}, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->restartDownload()V

    const/16 p1, 0x3eb

    .line 440
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 441
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 134
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 135
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "error_reason"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->stateReason:I

    .line 136
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "book_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->bookID:Ljava/lang/String;

    .line 137
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v0, "remove_download_on_cancel"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->shouldRemove:Z

    .line 138
    invoke-virtual {p0}, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->initialize()V

    return-void
.end method

.method protected restartDownload()V
    .locals 2

    .line 452
    iget-object v0, p0, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->bookID:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->hasConnectivity(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 453
    invoke-static {v0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    .line 456
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getDownloadService()Lcom/amazon/kindle/services/download/IDownloadService;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->bookID:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/services/download/IDownloadService;->restartFailedDownloads(Ljava/lang/String;)V

    goto :goto_0

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->bookID:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->hasConnectivity(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 458
    invoke-virtual {p0}, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->clearBookErrorState()V

    :cond_1
    :goto_0
    return-void
.end method
