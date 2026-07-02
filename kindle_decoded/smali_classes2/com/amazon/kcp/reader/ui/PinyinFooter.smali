.class public Lcom/amazon/kcp/reader/ui/PinyinFooter;
.super Lcom/amazon/kcp/reader/ui/WordWiseFooter;
.source "PinyinFooter.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lcom/amazon/kcp/reader/ui/PinyinFooter;

    invoke-static {v0}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/ui/PinyinFooter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/WordWiseFooter;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 36
    sget p1, Lcom/amazon/kindle/ww/R$string;->pinyin_settings_title:I

    iput p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseFooter;->footerTextId:I

    return-void
.end method


# virtual methods
.method protected getAdjustmentActivityClass()Ljava/lang/Class;
    .locals 1

    .line 143
    const-class v0, Lcom/amazon/kcp/reader/ui/PinyinAdjustmentActivity;

    return-object v0
.end method

.method public getFooterText()Ljava/lang/String;
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseFooter;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    .line 61
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isPinyinEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v0}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isPinyinSupported(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->getInstance()Lcom/amazon/kcp/wordwise/gloss/GlossFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->hasAttemptedOpenPinyinModel()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 66
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isPinyinVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 68
    invoke-static {}, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->getInstance()Lcom/amazon/kcp/wordwise/gloss/GlossFactory;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/reader/ui/PinyinFooter$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/reader/ui/PinyinFooter$1;-><init>(Lcom/amazon/kcp/reader/ui/PinyinFooter;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->openPinyinModelForCurrentBookAsync(Ljava/lang/Runnable;)V

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseFooter;->resources:Landroid/content/res/Resources;

    iget v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseFooter;->footerTextId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    .line 80
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/PinyinFooter;->updateFooterText(Z)V

    .line 84
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseFooter;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->getInstance(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;

    move-result-object v0

    .line 85
    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->dictionaryExists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 86
    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->hasShownFtueDialog()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 87
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->hasShownFooterTutorial()Z

    move-result v0

    if-nez v0, :cond_3

    .line 88
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/PinyinFooter;->onGestureAction()Z

    .line 91
    :cond_3
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseFooter;->resources:Landroid/content/res/Resources;

    iget v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseFooter;->footerTextId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onContentStatusChange(Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus$ContentStatusEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 96
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseFooter;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getCurrentActivity()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    if-eqz p1, :cond_0

    .line 97
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isPinyinSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    new-instance v0, Lcom/amazon/kcp/reader/ui/PinyinFooter$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/PinyinFooter$2;-><init>(Lcom/amazon/kcp/reader/ui/PinyinFooter;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onGestureAction()Z
    .locals 5

    .line 41
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/reader/ui/PinyinFooter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/WordWiseFooter;->resources:Landroid/content/res/Resources;

    iget v4, p0, Lcom/amazon/kcp/reader/ui/WordWiseFooter;->footerTextId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isPinyinSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isPinyinEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->dictionaryExists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 46
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isFooterVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 48
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->updateFooter()V

    goto :goto_0

    .line 49
    :cond_1
    iget v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseFooter;->footerTextId:I

    sget v1, Lcom/amazon/kindle/ww/R$string;->pinyin_status_download_failed:I

    if-ne v0, v1, :cond_2

    .line 50
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/WordWiseFooter;->showFailureMessage()V

    goto :goto_0

    .line 51
    :cond_2
    sget v1, Lcom/amazon/kindle/ww/R$string;->pinyin_settings_title:I

    if-ne v0, v1, :cond_3

    .line 52
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/WordWiseFooter;->showWordWiseSlider()V

    :cond_3
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_4
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method protected updateFooterText(Z)V
    .locals 3

    .line 110
    invoke-static {}, Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus;->getInstance()Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus;

    move-result-object v0

    .line 112
    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->dictionaryExists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    sget v0, Lcom/amazon/kindle/ww/R$string;->pinyin_settings_title:I

    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus;->isDownloadingDictionary()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    sget v0, Lcom/amazon/kindle/ww/R$string;->pinyin_status_downloading:I

    goto :goto_0

    .line 118
    :cond_1
    invoke-virtual {v0}, Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus;->hasDictionaryDownloadFailed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 119
    sget v0, Lcom/amazon/kindle/ww/R$string;->pinyin_status_download_failed:I

    goto :goto_0

    .line 120
    :cond_2
    invoke-virtual {v0}, Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus;->hasDictionaryDownloadCompleted()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 121
    sget v0, Lcom/amazon/kindle/ww/R$string;->pinyin_settings_title:I

    goto :goto_0

    .line 122
    :cond_3
    invoke-virtual {v0}, Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus;->isNotDownloadingDictionary()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 123
    sget v0, Lcom/amazon/kindle/ww/R$string;->pinyin_status_not_downloading:I

    goto :goto_0

    .line 125
    :cond_4
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseFooter;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/reader/ui/PinyinFooter;->TAG:Ljava/lang/String;

    const-string v2, "Unknown state"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    sget v0, Lcom/amazon/kindle/ww/R$string;->pinyin_status_download_failed:I

    .line 129
    :goto_0
    iget v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseFooter;->footerTextId:I

    if-eq v0, v1, :cond_5

    .line 130
    iput v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseFooter;->footerTextId:I

    if-eqz p1, :cond_5

    .line 132
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->updateFooter()V

    .line 133
    iget p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseFooter;->footerTextId:I

    sget v0, Lcom/amazon/kindle/ww/R$string;->pinyin_settings_title:I

    if-ne p1, v0, :cond_5

    .line 134
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->refreshGlosses()V

    :cond_5
    return-void
.end method
