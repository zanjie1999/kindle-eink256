.class public final Lcom/audible/hushpuppy/common/dialog/DialogManager;
.super Ljava/lang/Object;
.source "DialogManager.java"


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final audiobookSwitcher:Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;

.field private final eventBus:Lde/greenrobot/event/EventBus;

.field protected kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private volatile previousEndOfSyncDialog:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/AlertDialog;",
            ">;"
        }
    .end annotation
.end field

.field private final readerUIManager:Lcom/amazon/kindle/krx/ui/IReaderUIManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/common/dialog/DialogManager;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/common/dialog/DialogManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lde/greenrobot/event/EventBus;Lcom/amazon/kindle/krx/ui/IReaderUIManager;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/audible/hushpuppy/common/dialog/DialogManager;->eventBus:Lde/greenrobot/event/EventBus;

    .line 68
    iput-object p2, p0, Lcom/audible/hushpuppy/common/dialog/DialogManager;->readerUIManager:Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    .line 69
    iput-object p3, p0, Lcom/audible/hushpuppy/common/dialog/DialogManager;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 70
    iput-object p4, p0, Lcom/audible/hushpuppy/common/dialog/DialogManager;->audiobookSwitcher:Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;

    return-void
.end method

.method static synthetic access$000(Lcom/audible/hushpuppy/common/dialog/DialogManager;)Lde/greenrobot/event/EventBus;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/audible/hushpuppy/common/dialog/DialogManager;->eventBus:Lde/greenrobot/event/EventBus;

    return-object p0
.end method

.method static synthetic access$100(Lcom/audible/hushpuppy/common/dialog/DialogManager;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/audible/hushpuppy/common/dialog/DialogManager;->previousEndOfSyncDialog:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$102(Lcom/audible/hushpuppy/common/dialog/DialogManager;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/audible/hushpuppy/common/dialog/DialogManager;->previousEndOfSyncDialog:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method static synthetic access$200(Lcom/audible/hushpuppy/common/dialog/DialogManager;Ljava/lang/ref/WeakReference;)Z
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/common/dialog/DialogManager;->isDialogAlreadyShowing(Ljava/lang/ref/WeakReference;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/audible/hushpuppy/common/dialog/DialogManager;)Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/audible/hushpuppy/common/dialog/DialogManager;->audiobookSwitcher:Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;

    return-object p0
.end method

.method private fixString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    .line 241
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 242
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private isDialogAlreadyShowing(Ljava/lang/ref/WeakReference;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/AlertDialog;",
            ">;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 224
    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlertDialog;

    :goto_0
    if-eqz p1, :cond_1

    .line 225
    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 226
    sget-object p1, Lcom/audible/hushpuppy/common/dialog/DialogManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Skipping duplicate AlertDialog!"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private showDialog(Landroid/content/Context;Landroid/app/AlertDialog$Builder;)V
    .locals 1

    .line 207
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 208
    new-instance p1, Lcom/audible/hushpuppy/common/dialog/DialogManager$7;

    invoke-direct {p1, p0, p2}, Lcom/audible/hushpuppy/common/dialog/DialogManager$7;-><init>(Lcom/audible/hushpuppy/common/dialog/DialogManager;Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public clearCachedDialogs()V
    .locals 2

    .line 197
    sget-object v0, Lcom/audible/hushpuppy/common/dialog/DialogManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "clearCachedDialogs"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 198
    iput-object v0, p0, Lcom/audible/hushpuppy/common/dialog/DialogManager;->previousEndOfSyncDialog:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public onCancelOrder()V
    .locals 8

    .line 77
    iget-object v0, p0, Lcom/audible/hushpuppy/common/dialog/DialogManager;->readerUIManager:Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getCurrentActivity()Landroid/content/Context;

    move-result-object v0

    .line 79
    new-instance v1, Lcom/audible/hushpuppy/common/dialog/ThemedAlertDialogBuilder;

    iget-object v2, p0, Lcom/audible/hushpuppy/common/dialog/DialogManager;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {v2}, Lcom/audible/hushpuppy/extensions/darkmode/DarkModeUtils;->getColorModeFromAppTheme(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/audible/hushpuppy/common/dialog/ThemedAlertDialogBuilder;-><init>(Landroid/content/Context;Lcom/amazon/kindle/krx/ui/ColorMode;)V

    .line 80
    sget v2, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->audiobook_unbuy_instructions_dialog_title:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 82
    iget-object v2, p0, Lcom/audible/hushpuppy/common/dialog/DialogManager;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/application/IUserAccount;->getCountryOfResidence()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DE"

    .line 88
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 89
    sget v2, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->audiobook_unbuy_instructions_dialog_de:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :cond_0
    const-string v3, "GB"

    .line 90
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 91
    sget v2, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->audiobook_unbuy_instructions_dialog_uk:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :cond_1
    const-string v3, "AU"

    .line 92
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 93
    sget v2, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->audiobook_unbuy_instructions_dialog_au:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :cond_2
    const-string v3, "US"

    .line 94
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 95
    sget v2, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->audiobook_unbuy_instructions_dialog_us:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 97
    :cond_3
    sget-object v3, Lcom/audible/hushpuppy/common/dialog/DialogManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to find country code "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; using US as default."

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-interface {v3, v4}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    .line 98
    sget v2, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->audiobook_unbuy_instructions_dialog_us:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 101
    :goto_0
    sget v2, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->close:I

    new-instance v3, Lcom/audible/hushpuppy/common/dialog/DialogManager$1;

    invoke-direct {v3, p0}, Lcom/audible/hushpuppy/common/dialog/DialogManager$1;-><init>(Lcom/audible/hushpuppy/common/dialog/DialogManager;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 106
    invoke-direct {p0, v0, v1}, Lcom/audible/hushpuppy/common/dialog/DialogManager;->showDialog(Landroid/content/Context;Landroid/app/AlertDialog$Builder;)V

    return-void
.end method

.method public onEndOfSample(Lcom/audible/mobile/domain/Asin;)V
    .locals 3

    .line 174
    iget-object p1, p0, Lcom/audible/hushpuppy/common/dialog/DialogManager;->readerUIManager:Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getCurrentActivity()Landroid/content/Context;

    move-result-object p1

    .line 176
    new-instance v0, Lcom/audible/hushpuppy/common/dialog/DialogManager$6;

    invoke-direct {v0, p0}, Lcom/audible/hushpuppy/common/dialog/DialogManager$6;-><init>(Lcom/audible/hushpuppy/common/dialog/DialogManager;)V

    .line 185
    new-instance v1, Lcom/audible/hushpuppy/common/dialog/ThemedAlertDialogBuilder;

    iget-object v2, p0, Lcom/audible/hushpuppy/common/dialog/DialogManager;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {v2}, Lcom/audible/hushpuppy/extensions/darkmode/DarkModeUtils;->getColorModeFromAppTheme(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/audible/hushpuppy/common/dialog/ThemedAlertDialogBuilder;-><init>(Landroid/content/Context;Lcom/amazon/kindle/krx/ui/ColorMode;)V

    .line 186
    sget v2, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->end_of_sample_content:I

    invoke-direct {p0, p1, v2}, Lcom/audible/hushpuppy/common/dialog/DialogManager;->fixString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 187
    sget v2, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->buy:I

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 188
    sget v2, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->no_thanks:I

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 189
    invoke-direct {p0, p1, v1}, Lcom/audible/hushpuppy/common/dialog/DialogManager;->showDialog(Landroid/content/Context;Landroid/app/AlertDialog$Builder;)V

    return-void
.end method

.method public onEndOfSynchronizedContent()V
    .locals 4

    .line 116
    iget-object v0, p0, Lcom/audible/hushpuppy/common/dialog/DialogManager;->readerUIManager:Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getCurrentActivity()Landroid/content/Context;

    move-result-object v0

    .line 118
    new-instance v1, Lcom/audible/hushpuppy/common/dialog/ThemedAlertDialogBuilder;

    iget-object v2, p0, Lcom/audible/hushpuppy/common/dialog/DialogManager;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {v2}, Lcom/audible/hushpuppy/extensions/darkmode/DarkModeUtils;->getColorModeFromAppTheme(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/audible/hushpuppy/common/dialog/ThemedAlertDialogBuilder;-><init>(Landroid/content/Context;Lcom/amazon/kindle/krx/ui/ColorMode;)V

    .line 119
    sget v2, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->no_more_content:I

    invoke-direct {p0, v0, v2}, Lcom/audible/hushpuppy/common/dialog/DialogManager;->fixString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 120
    sget v2, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->continue_reading:I

    new-instance v3, Lcom/audible/hushpuppy/common/dialog/DialogManager$2;

    invoke-direct {v3, p0}, Lcom/audible/hushpuppy/common/dialog/DialogManager$2;-><init>(Lcom/audible/hushpuppy/common/dialog/DialogManager;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 126
    iget-object v2, p0, Lcom/audible/hushpuppy/common/dialog/DialogManager;->previousEndOfSyncDialog:Ljava/lang/ref/WeakReference;

    invoke-direct {p0, v2}, Lcom/audible/hushpuppy/common/dialog/DialogManager;->isDialogAlreadyShowing(Ljava/lang/ref/WeakReference;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 127
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 128
    new-instance v0, Lcom/audible/hushpuppy/common/dialog/DialogManager$3;

    invoke-direct {v0, p0, v1}, Lcom/audible/hushpuppy/common/dialog/DialogManager$3;-><init>(Lcom/audible/hushpuppy/common/dialog/DialogManager;Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onUnsynchronizedContent(Lcom/audible/hushpuppy/common/misc/IVoidCallback;)V
    .locals 4

    .line 147
    iget-object v0, p0, Lcom/audible/hushpuppy/common/dialog/DialogManager;->readerUIManager:Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getCurrentActivity()Landroid/content/Context;

    move-result-object v0

    .line 149
    sget-object v1, Lcom/audible/hushpuppy/common/dialog/DialogManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "onUnsynchronizedSelection positiveCallback"

    invoke-interface {v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 150
    new-instance v1, Lcom/audible/hushpuppy/common/dialog/ThemedAlertDialogBuilder;

    iget-object v2, p0, Lcom/audible/hushpuppy/common/dialog/DialogManager;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {v2}, Lcom/audible/hushpuppy/extensions/darkmode/DarkModeUtils;->getColorModeFromAppTheme(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/audible/hushpuppy/common/dialog/ThemedAlertDialogBuilder;-><init>(Landroid/content/Context;Lcom/amazon/kindle/krx/ui/ColorMode;)V

    .line 151
    sget v2, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->audiobook_narration_is_not_available_for_this_location:I

    invoke-direct {p0, v0, v2}, Lcom/audible/hushpuppy/common/dialog/DialogManager;->fixString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 153
    sget v2, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->next_audio_location:I

    new-instance v3, Lcom/audible/hushpuppy/common/dialog/DialogManager$4;

    invoke-direct {v3, p0, p1}, Lcom/audible/hushpuppy/common/dialog/DialogManager$4;-><init>(Lcom/audible/hushpuppy/common/dialog/DialogManager;Lcom/audible/hushpuppy/common/misc/IVoidCallback;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 158
    sget p1, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->close:I

    new-instance v2, Lcom/audible/hushpuppy/common/dialog/DialogManager$5;

    invoke-direct {v2, p0}, Lcom/audible/hushpuppy/common/dialog/DialogManager$5;-><init>(Lcom/audible/hushpuppy/common/dialog/DialogManager;)V

    invoke-virtual {v1, p1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 163
    invoke-direct {p0, v0, v1}, Lcom/audible/hushpuppy/common/dialog/DialogManager;->showDialog(Landroid/content/Context;Landroid/app/AlertDialog$Builder;)V

    return-void
.end method
