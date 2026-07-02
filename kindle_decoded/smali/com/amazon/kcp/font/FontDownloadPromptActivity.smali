.class public Lcom/amazon/kcp/font/FontDownloadPromptActivity;
.super Lcom/amazon/kcp/redding/ReddingActivity;
.source "FontDownloadPromptActivity.java"


# static fields
.field public static final LANGUAGE:Ljava/lang/String; = "language"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private language:Ljava/lang/String;

.field private messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private promptEvent:Lcom/amazon/kcp/font/FontDownloadConfirmationEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/amazon/kcp/font/FontDownloadPromptActivity;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/font/FontDownloadPromptActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/amazon/kcp/redding/ReddingActivity;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/amazon/kcp/font/FontDownloadPromptActivity;Lcom/amazon/kcp/font/FontDownloadConfirmationEvent;)Lcom/amazon/kcp/font/FontDownloadConfirmationEvent;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/amazon/kcp/font/FontDownloadPromptActivity;->promptEvent:Lcom/amazon/kcp/font/FontDownloadConfirmationEvent;

    return-object p1
.end method

.method static synthetic access$100(Lcom/amazon/kcp/font/FontDownloadPromptActivity;)Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/amazon/kcp/font/FontDownloadPromptActivity;->language:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/kcp/font/FontDownloadPromptActivity;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/amazon/kcp/font/FontDownloadPromptActivity;->publishEventAndExitActivity()V

    return-void
.end method

.method private getDialogStyle()I
    .locals 2

    .line 75
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getColorModeId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v0

    .line 76
    sget-object v1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->BLACK:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->NIGHT:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    sget v0, Lcom/amazon/kindle/thirdparty/R$style;->ruby_dialog_light:I

    return v0

    .line 77
    :cond_1
    :goto_0
    sget v0, Lcom/amazon/kindle/thirdparty/R$style;->ruby_dialog_dark:I

    return v0
.end method

.method private publishEventAndExitActivity()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/amazon/kcp/font/FontDownloadPromptActivity;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    iget-object v1, p0, Lcom/amazon/kcp/font/FontDownloadPromptActivity;->promptEvent:Lcom/amazon/kcp/font/FontDownloadConfirmationEvent;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 71
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private showPromptDialog()V
    .locals 3

    .line 47
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {p0}, Lcom/amazon/kcp/font/FontDownloadPromptActivity;->getDialogStyle()I

    move-result v1

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    .line 48
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 49
    sget v1, Lcom/amazon/kindle/thirdparty/R$string;->font_download_prompt_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 50
    sget v1, Lcom/amazon/kindle/thirdparty/R$string;->font_download_prompt_message:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 51
    sget v1, Lcom/amazon/kindle/thirdparty/R$string;->font_download_prompt_positive_value:I

    new-instance v2, Lcom/amazon/kcp/font/FontDownloadPromptActivity$1;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/font/FontDownloadPromptActivity$1;-><init>(Lcom/amazon/kcp/font/FontDownloadPromptActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 58
    sget v1, Lcom/amazon/kindle/thirdparty/R$string;->font_download_prompt_negative_value:I

    new-instance v2, Lcom/amazon/kcp/font/FontDownloadPromptActivity$2;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/font/FontDownloadPromptActivity$2;-><init>(Lcom/amazon/kcp/font/FontDownloadPromptActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 66
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/amazon/kindle/dialog/DialogManager;->showDialogSafely(Landroid/content/Context;Landroid/app/Dialog;)Z

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 36
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "language"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/font/FontDownloadPromptActivity;->language:Ljava/lang/String;

    .line 38
    invoke-static {p1}, Lcom/amazon/kcp/font/ManualFontDownloadHelper;->getFont(Ljava/lang/String;)Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;

    move-result-object p1

    if-nez p1, :cond_0

    .line 39
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 42
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    const-class v0, Lcom/amazon/kcp/font/FontDownloadPromptActivity;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/font/FontDownloadPromptActivity;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 43
    invoke-direct {p0}, Lcom/amazon/kcp/font/FontDownloadPromptActivity;->showPromptDialog()V

    return-void
.end method
