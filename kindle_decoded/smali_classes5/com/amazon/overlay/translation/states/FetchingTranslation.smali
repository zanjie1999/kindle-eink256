.class public Lcom/amazon/overlay/translation/states/FetchingTranslation;
.super Lcom/amazon/overlay/translation/states/AbstractState;
.source "FetchingTranslation.java"

# interfaces
.implements Lcom/amazon/kcp/translation/service/RequestOnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/overlay/translation/states/AbstractState;",
        "Lcom/amazon/kcp/translation/service/RequestOnCompleteListener<",
        "Lcom/amazon/kcp/translation/service/TranslationResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final TRANSLATION_COMMAND_LOCK:Ljava/lang/Object;


# instance fields
.field private volatile m_stopRequested:Z

.field private m_translationRequest:Lcom/amazon/kcp/translation/service/TranslationRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-class v0, Lcom/amazon/overlay/translation/states/FetchingTranslation;

    invoke-static {v0}, Lcom/amazon/kcp/translation/Logger;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/overlay/translation/states/FetchingTranslation;->TAG:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/amazon/overlay/translation/states/FetchingTranslation;->TRANSLATION_COMMAND_LOCK:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lcom/amazon/overlay/translation/states/TranslationStateMachine;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/amazon/overlay/translation/states/AbstractState;-><init>(Lcom/amazon/overlay/translation/states/TranslationStateMachine;)V

    const/4 p1, 0x0

    .line 29
    iput-object p1, p0, Lcom/amazon/overlay/translation/states/FetchingTranslation;->m_translationRequest:Lcom/amazon/kcp/translation/service/TranslationRequest;

    const/4 p1, 0x0

    .line 45
    iput-boolean p1, p0, Lcom/amazon/overlay/translation/states/FetchingTranslation;->m_stopRequested:Z

    return-void
.end method

.method private buildRequest()Lcom/amazon/kcp/translation/service/TranslationRequest;
    .locals 16

    .line 82
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/overlay/translation/states/AbstractState;->getUI()Lcom/amazon/overlay/translation/TranslationDialogUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/TranslationDialogUI;->getSourceLanguage()Lcom/amazon/overlay/translation/TranslationLanguageButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/TranslationLanguageButton;->getSelectedItem()Lcom/amazon/kcp/translation/Language;

    move-result-object v11

    .line 83
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/overlay/translation/states/AbstractState;->getUI()Lcom/amazon/overlay/translation/TranslationDialogUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/TranslationDialogUI;->getDestinationLanguage()Lcom/amazon/overlay/translation/TranslationLanguageButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/TranslationLanguageButton;->getSelectedItem()Lcom/amazon/kcp/translation/Language;

    move-result-object v12

    .line 84
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    .line 86
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/overlay/translation/states/AbstractState;->getTranslationSelection()Lcom/amazon/overlay/translation/TranslationSelection;

    move-result-object v0

    .line 88
    new-instance v15, Lcom/amazon/kcp/translation/service/TranslationRequest;

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/TranslationSelection;->getBookId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/TranslationSelection;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/TranslationSelection;->getContentGuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/TranslationSelection;->getASIN()Ljava/lang/String;

    move-result-object v5

    .line 89
    invoke-virtual {v0}, Lcom/amazon/overlay/translation/TranslationSelection;->getSerializedStartPosition()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/TranslationSelection;->getSerializedStopPosition()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    .line 90
    invoke-virtual {v0}, Lcom/amazon/overlay/translation/TranslationSelection;->getBookLanguageTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/TranslationSelection;->getDeviceAccountPFM()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/amazon/overlay/translation/states/AbstractState;->getContext()Landroid/content/Context;

    move-result-object v10

    move-object v1, v15

    move-object/from16 v14, p0

    invoke-direct/range {v1 .. v14}, Lcom/amazon/kcp/translation/service/TranslationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/amazon/kcp/translation/Language;Lcom/amazon/kcp/translation/Language;Ljava/util/Locale;Lcom/amazon/kcp/translation/service/RequestOnCompleteListener;)V

    return-object v15
.end method


# virtual methods
.method public onComplete(Lcom/amazon/kcp/translation/service/TranslationResponse;)V
    .locals 3

    if-nez p1, :cond_2

    .line 126
    iget-object p1, p0, Lcom/amazon/overlay/translation/states/FetchingTranslation;->m_translationRequest:Lcom/amazon/kcp/translation/service/TranslationRequest;

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/download/BaseKRXDownloadRequest;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object p1

    .line 127
    sget-object v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->CONNECTION_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->NO_CONNECTION:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 128
    :cond_0
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p1

    new-instance v0, Lcom/amazon/overlay/translation/states/FetchingTranslation$1;

    invoke-direct {v0, p0}, Lcom/amazon/overlay/translation/states/FetchingTranslation$1;-><init>(Lcom/amazon/overlay/translation/states/FetchingTranslation;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void

    .line 138
    :cond_2
    sget-object v0, Lcom/amazon/overlay/translation/states/FetchingTranslation;->TRANSLATION_COMMAND_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 139
    :try_start_0
    iget-boolean v1, p0, Lcom/amazon/overlay/translation/states/FetchingTranslation;->m_stopRequested:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/amazon/overlay/translation/states/FetchingTranslation;->m_translationRequest:Lcom/amazon/kcp/translation/service/TranslationRequest;

    if-nez v1, :cond_3

    .line 140
    monitor-exit v0

    return-void

    .line 142
    :cond_3
    iget-object v1, p0, Lcom/amazon/overlay/translation/states/AbstractState;->m_stateMachine:Lcom/amazon/overlay/translation/states/TranslationStateMachine;

    invoke-virtual {v1}, Lcom/amazon/overlay/translation/states/TranslationStateMachine;->getEnvironment()Lcom/amazon/overlay/translation/TranslationEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/overlay/translation/TranslationEnvironment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/amazon/overlay/translation/states/FetchingTranslation$2;

    invoke-direct {v2, p0, p1}, Lcom/amazon/overlay/translation/states/FetchingTranslation$2;-><init>(Lcom/amazon/overlay/translation/states/FetchingTranslation;Lcom/amazon/kcp/translation/service/TranslationResponse;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 152
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public bridge synthetic onComplete(Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p1, Lcom/amazon/kcp/translation/service/TranslationResponse;

    invoke-virtual {p0, p1}, Lcom/amazon/overlay/translation/states/FetchingTranslation;->onComplete(Lcom/amazon/kcp/translation/service/TranslationResponse;)V

    return-void
.end method

.method public resume()V
    .locals 1

    const/4 v0, 0x0

    .line 112
    iput-boolean v0, p0, Lcom/amazon/overlay/translation/states/FetchingTranslation;->m_stopRequested:Z

    .line 113
    invoke-virtual {p0}, Lcom/amazon/overlay/translation/states/FetchingTranslation;->transitionTo()V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 100
    sget-object v0, Lcom/amazon/overlay/translation/states/FetchingTranslation;->TRANSLATION_COMMAND_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/amazon/overlay/translation/states/FetchingTranslation;->m_translationRequest:Lcom/amazon/kcp/translation/service/TranslationRequest;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 102
    iput-boolean v1, p0, Lcom/amazon/overlay/translation/states/FetchingTranslation;->m_stopRequested:Z

    .line 104
    iget-object v1, p0, Lcom/amazon/overlay/translation/states/FetchingTranslation;->m_translationRequest:Lcom/amazon/kcp/translation/service/TranslationRequest;

    invoke-virtual {v1}, Lcom/amazon/kcp/translation/service/TranslationRequest;->stopConnectRequest()V

    const/4 v1, 0x0

    .line 105
    iput-object v1, p0, Lcom/amazon/overlay/translation/states/FetchingTranslation;->m_translationRequest:Lcom/amazon/kcp/translation/service/TranslationRequest;

    .line 107
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public transitionTo()V
    .locals 7

    .line 54
    invoke-virtual {p0}, Lcom/amazon/overlay/translation/states/AbstractState;->getUI()Lcom/amazon/overlay/translation/TranslationDialogUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/TranslationDialogUI;->getAttributionMessage()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 55
    invoke-virtual {p0}, Lcom/amazon/overlay/translation/states/AbstractState;->getUI()Lcom/amazon/overlay/translation/TranslationDialogUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/TranslationDialogUI;->getWarningMessage()Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 58
    iget-object v0, p0, Lcom/amazon/overlay/translation/states/AbstractState;->m_translationEnvironment:Lcom/amazon/overlay/translation/TranslationEnvironment;

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/TranslationEnvironment;->getTranslationDialogUI()Lcom/amazon/overlay/translation/TranslationDialogUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/TranslationDialogUI;->getSpeakButton()Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;->HIDE_ICON:Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton;->toggleSpeakIcon(Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;)V

    .line 61
    invoke-virtual {p0}, Lcom/amazon/overlay/translation/states/AbstractState;->getUI()Lcom/amazon/overlay/translation/TranslationDialogUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/TranslationDialogUI;->getResultText()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/overlay/translation/states/AbstractState;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/oat/R$string;->translation_translating:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v0, p0, Lcom/amazon/overlay/translation/states/AbstractState;->m_stateMachine:Lcom/amazon/overlay/translation/states/TranslationStateMachine;

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/states/TranslationStateMachine;->getReaderSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getDownloadManager()Lcom/amazon/kindle/krx/download/IKRXDownloadManager;

    move-result-object v0

    .line 66
    sget-object v1, Lcom/amazon/overlay/translation/states/FetchingTranslation;->TRANSLATION_COMMAND_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 67
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/overlay/translation/states/FetchingTranslation;->buildRequest()Lcom/amazon/kcp/translation/service/TranslationRequest;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/overlay/translation/states/FetchingTranslation;->m_translationRequest:Lcom/amazon/kcp/translation/service/TranslationRequest;

    const-string v2, "TranslationQueryTime"

    .line 68
    invoke-static {v2}, Lcom/amazon/kcp/translation/TMetric;->startMetricTimer(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :try_start_1
    iget-object v2, p0, Lcom/amazon/overlay/translation/states/FetchingTranslation;->m_translationRequest:Lcom/amazon/kcp/translation/service/TranslationRequest;

    invoke-interface {v0, v2}, Lcom/amazon/kindle/krx/download/IKRXDownloadManager;->enqueueDownloadRequest(Lcom/amazon/kindle/krx/download/IKRXDownloadRequest;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 72
    :try_start_2
    sget-object v2, Lcom/amazon/overlay/translation/states/FetchingTranslation;->TAG:Ljava/lang/String;

    const-string v3, "failed to queue translation request"

    invoke-static {v2, v3, v0}, Lcom/amazon/kcp/translation/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    iget-object v0, p0, Lcom/amazon/overlay/translation/states/AbstractState;->m_stateMachine:Lcom/amazon/overlay/translation/states/TranslationStateMachine;

    new-instance v2, Lcom/amazon/overlay/translation/states/TranslationFail;

    iget-object v3, p0, Lcom/amazon/overlay/translation/states/AbstractState;->m_stateMachine:Lcom/amazon/overlay/translation/states/TranslationStateMachine;

    new-instance v4, Lcom/amazon/kcp/translation/service/TranslationResponse;

    invoke-virtual {p0}, Lcom/amazon/overlay/translation/states/AbstractState;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/amazon/kcp/translation/service/TranslationResponse;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v2, v3, v4}, Lcom/amazon/overlay/translation/states/TranslationFail;-><init>(Lcom/amazon/overlay/translation/states/TranslationStateMachine;Lcom/amazon/kcp/translation/service/TranslationResponse;)V

    invoke-virtual {v0, v2}, Lcom/amazon/overlay/translation/states/TranslationStateMachine;->transitionTo(Lcom/amazon/overlay/translation/states/AbstractState;)V

    .line 75
    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
