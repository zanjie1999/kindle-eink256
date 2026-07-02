.class public Lcom/amazon/kcp/library/fragments/DownloadErrorDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "DownloadErrorDialogFragment.java"


# static fields
.field private static final BOOK_ID_KEY:Ljava/lang/String; = "book_id"

.field private static final DOWNLOAD_TRIGGER:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

.field private static final ERROR_CODE_KEY:Ljava/lang/String; = "error_code"

.field private static final ERROR_MESSAGE_KEY:Ljava/lang/String; = "error_message"

.field private static final ERROR_TITLE_KEY:Ljava/lang/String; = "error_title"

.field private static final IS_PDOC_KEY:Ljava/lang/String; = "is_pdoc"

.field private static final LINK_KEY:Ljava/lang/String; = "link"

.field private static final LINK_TITLE_KEY:Ljava/lang/String; = "link_title"

.field private static final SHOW_CDE_ERROR_KEY:Ljava/lang/String; = "show_cde_error"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bookId:Ljava/lang/String;

.field private dismissButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field private errorCode:I

.field private isPDoc:Z

.field private linkTitle:Ljava/lang/String;

.field private linkUrl:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private positiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field private showCdeError:Z

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    const-class v0, Lcom/amazon/kcp/library/fragments/DownloadErrorDialogFragment;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/fragments/DownloadErrorDialogFragment;->TAG:Ljava/lang/String;

    .line 45
    new-instance v0, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$DOWNLOAD_SYSTEM;

    const-string v1, "DownloadErrorDialog"

    invoke-direct {v0, v1}, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$DOWNLOAD_SYSTEM;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/library/fragments/DownloadErrorDialogFragment;->DOWNLOAD_TRIGGER:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 108
    new-instance v0, Lcom/amazon/kcp/library/fragments/DownloadErrorDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/fragments/DownloadErrorDialogFragment$1;-><init>(Lcom/amazon/kcp/library/fragments/DownloadErrorDialogFragment;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/DownloadErrorDialogFragment;->dismissButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 115
    new-instance v0, Lcom/amazon/kcp/library/fragments/DownloadErrorDialogFragment$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/fragments/DownloadErrorDialogFragment$2;-><init>(Lcom/amazon/kcp/library/fragments/DownloadErrorDialogFragment;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/DownloadErrorDialogFragment;->positiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/library/fragments/DownloadErrorDialogFragment;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/DownloadErrorDialogFragment;->clearBookErrorStateAndExit()V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kcp/library/fragments/DownloadErrorDialogFragment;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/DownloadErrorDialogFragment;->onPositiveButtonClick()V

    return-void
.end method

.method private clearBookErrorStateAndExit()V
    .locals 3

    .line 154
    iget v0, p0, Lcom/amazon/kcp/library/fragments/DownloadErrorDialogFragment;->errorCode:I

    sget-object v1, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->DOCUMENT_OPEN_FAILURE:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 155
    sget-object v0, Lcom/amazon/kcp/library/fragments/DownloadErrorDialogFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cancelling download for bookId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kcp/library/fragments/DownloadErrorDialogFragment;->bookId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/DownloadErrorDialogFragment;->bookId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/library/ILibraryController;->cancelDownload(Ljava/lang/String;)V

    .line 158
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method private getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;
    .locals 1

    .line 149
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    return-object v0
.end method

.method private onPositiveButtonClick()V
    .locals 2

    .line 124
    iget v0, p0, Lcom/amazon/kcp/library/fragments/DownloadErrorDialogFragment;->errorCode:I

    sget-object v1, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->CDE_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 125
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/DownloadErrorDialogFragment;->linkUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/DownloadErrorDialogFragment;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/DownloadErrorDialogFragment;->linkUrl:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IKindleApplicationController;->openUrl(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    goto :goto_0

    .line 129
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/DownloadErrorDialogFragment;->clearBookErrorStateAndExit()V

    goto :goto_0

    .line 133
    :cond_1
    iget v0, p0, Lcom/amazon/kcp/library/fragments/DownloadErrorDialogFragment;->errorCode:I

    sget-object v1, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->NO_CONNECTION:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_2

    new-instance v0, Lcom/amazon/kindle/network/WirelessUtils;

    .line 134
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/kindle/network/WirelessUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/amazon/kindle/network/WirelessUtils;->hasNetworkConnectivity()Z

    move-result v0

    if-nez v0, :cond_2

    .line 135
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x40000000    # 2.0f

    .line 138
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 139
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 140
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/DownloadErrorDialogFragment;->clearBookErrorStateAndExit()V

    goto :goto_0

    .line 143
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/DownloadErrorDialogFragment;->restartDownload()V

    .line 144
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :goto_0
    return-void
.end method

.method private setupDialog(Landroid/app/AlertDialog$Builder;)V
    .locals 3

    .line 167
    iget v0, p0, Lcom/amazon/kcp/library/fragments/DownloadErrorDialogFragment;->errorCode:I

    sget-object v1, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->FILE_SYSTEM_FULL:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 168
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->error_file_system_full_title:I

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 169
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->error_file_system_full_desc:I

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 170
    :cond_0
    iget v0, p0, Lcom/amazon/kcp/library/fragments/DownloadErrorDialogFragment;->errorCode:I

    sget-object v1, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->NO_CONNECTION:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 171
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->error_network_issue_title:I

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 172
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->error_network_issue_desc:I

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 173
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->fix_network_settings:I

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/DownloadErrorDialogFragment;->positiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    .line 175
    :cond_1
    iget v0, p0, Lcom/amazon/kcp/library/fragments/DownloadErrorDialogFragment;->errorCode:I

    sget-object v1, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->CDE_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 176
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/fragments/DownloadErrorDialogFragment;->setupCDEErrorMessage(Landroid/app/AlertDialog$Builder;)Z

    move-result v2

    goto :goto_2

    .line 177
    :cond_2
    iget v0, p0, Lcom/amazon/kcp/library/fragments/DownloadErrorDialogFragment;->errorCode:I

    sget-object v1, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->SERVER_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_6

    iget v0, p0, Lcom/amazon/kcp/library/fragments/DownloadErrorDialogFragment;->errorCode:I

    sget-object v1, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->CONNECTION_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    .line 178
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_3

    goto :goto_1

    .line 183
    :cond_3
    iget v0, p0, Lcom/amazon/kcp/library/fragments/DownloadErrorDialogFragment;->errorCode:I

    sget-object v1, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->DOCUMENT_OPEN_FAILURE:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 184
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->error_document_open_failure_title:I

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 185
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->error_document_open_failure_desc:I

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 186
    :cond_4
    iget v0, p0, Lcom/amazon/kcp/library/fragments/DownloadErrorDialogFragment;->errorCode:I

    sget-object v1, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->WAN_CONTENT_DOWNLOAD_LIMIT_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 187
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->error_wan_download_limit_exceed_title:I

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 188
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->error_wan_download_limit_exceed:I

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 190
    :cond_5
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->error_generic_title:I

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 191
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->error_generic_desc:I

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :goto_0
    const/4 v2, 0x0

    goto :goto_2

    .line 179
    :cond_6
    :goto_1
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->error_title_server_issue:I

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 180
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->error_message_server_issue:I

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 181
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->fix_try_again:I

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/DownloadErrorDialogFragment;->positiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_2
    if-eqz v2, :cond_7

    .line 195
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->dismiss:I

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/DownloadErrorDialogFragment;->dismissButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_3

    .line 197
    :cond_7
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->ok:I

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/DownloadErrorDialogFragment;->dismissButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_3
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 74
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "book_id"

    .line 80
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/DownloadErrorDialogFragment;->bookId:Ljava/lang/String;

    const-string v0, "error_code"

    .line 81
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/library/fragments/DownloadErrorDialogFragment;->errorCode:I

    const-string v0, "error_title"

    .line 82
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/DownloadErrorDialogFragment;->title:Ljava/lang/String;

    const-string v0, "error_message"

    .line 83
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/DownloadErrorDialogFragment;->message:Ljava/lang/String;

    const-string v0, "link"

    .line 84
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/DownloadErrorDialogFragment;->linkUrl:Ljava/lang/String;

    const-string v0, "link_title"

    .line 85
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/DownloadErrorDialogFragment;->linkTitle:Ljava/lang/String;

    const-string v0, "is_pdoc"

    .line 86
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/kcp/library/fragments/DownloadErrorDialogFragment;->isPDoc:Z

    const-string/jumbo v0, "show_cde_error"

    .line 87
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/kcp/library/fragments/DownloadErrorDialogFragment;->showCdeError:Z

    .line 89
    iget p1, p0, Lcom/amazon/kcp/library/fragments/DownloadErrorDialogFragment;->errorCode:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 90
    sget-object p1, Lcom/amazon/kcp/library/fragments/DownloadErrorDialogFragment;->TAG:Ljava/lang/String;

    const-string v0, "DownloadErrorDialogFragment >>> Attempting to show dialog without download error reason. Falling back to generic error message."

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    sget-object p1, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->APP_INTERNAL_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/library/fragments/DownloadErrorDialogFragment;->errorCode:I

    :cond_1
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 99
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 100
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$bool;->should_show_icon_of_alert_dialog:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x1080027

    .line 101
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 103
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/fragments/DownloadErrorDialogFragment;->setupDialog(Landroid/app/AlertDialog$Builder;)V

    .line 105
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method protected restartDownload()V
    .locals 3

    .line 226
    new-instance v0, Lcom/amazon/kindle/network/WirelessUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/kindle/network/WirelessUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/amazon/kindle/network/WirelessUtils;->hasNetworkConnectivity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/DownloadErrorDialogFragment;->bookId:Ljava/lang/String;

    sget-object v2, Lcom/amazon/kcp/library/fragments/DownloadErrorDialogFragment;->DOWNLOAD_TRIGGER:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

    invoke-interface {v0, v1, v2}, Lcom/amazon/kcp/library/ILibraryController;->downloadBook(Ljava/lang/String;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Z

    :cond_0
    return-void
.end method

.method protected setupCDEErrorMessage(Landroid/app/AlertDialog$Builder;)Z
    .locals 3

    .line 205
    iget-boolean v0, p0, Lcom/amazon/kcp/library/fragments/DownloadErrorDialogFragment;->showCdeError:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/DownloadErrorDialogFragment;->message:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/DownloadErrorDialogFragment;->title:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/DownloadErrorDialogFragment;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 207
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/DownloadErrorDialogFragment;->message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 209
    :cond_0
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->error_license_limit_title:I

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 210
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->error_license_limit_desc:I

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 216
    :goto_0
    const-class v0, Lcom/amazon/kindle/krx/payment/PlayBillingUtils;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/payment/PlayBillingUtils;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 217
    invoke-interface {v0}, Lcom/amazon/kindle/krx/payment/PlayBillingUtils;->shouldUsePaymentFlows()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 218
    iget-boolean v0, p0, Lcom/amazon/kcp/library/fragments/DownloadErrorDialogFragment;->isPDoc:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/DownloadErrorDialogFragment;->linkUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 219
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/DownloadErrorDialogFragment;->linkTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/kcp/library/fragments/DownloadErrorDialogFragment;->positiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return v1

    :cond_2
    return v2
.end method
