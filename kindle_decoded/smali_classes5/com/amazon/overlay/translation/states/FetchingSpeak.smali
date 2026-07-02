.class public Lcom/amazon/overlay/translation/states/FetchingSpeak;
.super Lcom/amazon/overlay/translation/states/AbstractState;
.source "FetchingSpeak.java"

# interfaces
.implements Lcom/amazon/kcp/translation/service/RequestOnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/overlay/translation/states/AbstractState;",
        "Lcom/amazon/kcp/translation/service/RequestOnCompleteListener<",
        "Lcom/amazon/kcp/translation/service/SpeakResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final SPEAK_COMMAND_LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private m_speakRequest:Lcom/amazon/kcp/translation/service/SpeakRequest;

.field private volatile m_stopRequested:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lcom/amazon/overlay/translation/states/Detecting;

    invoke-static {v0}, Lcom/amazon/kcp/translation/Logger;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/overlay/translation/states/FetchingSpeak;->TAG:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/amazon/overlay/translation/states/FetchingSpeak;->SPEAK_COMMAND_LOCK:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lcom/amazon/overlay/translation/states/TranslationStateMachine;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/amazon/overlay/translation/states/AbstractState;-><init>(Lcom/amazon/overlay/translation/states/TranslationStateMachine;)V

    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lcom/amazon/overlay/translation/states/FetchingSpeak;->m_speakRequest:Lcom/amazon/kcp/translation/service/SpeakRequest;

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lcom/amazon/overlay/translation/states/FetchingSpeak;->m_stopRequested:Z

    return-void
.end method

.method private buildRequest()Lcom/amazon/kcp/translation/service/SpeakRequest;
    .locals 13

    .line 69
    invoke-virtual {p0}, Lcom/amazon/overlay/translation/states/AbstractState;->getUI()Lcom/amazon/overlay/translation/TranslationDialogUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/TranslationDialogUI;->getResultText()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    .line 70
    invoke-virtual {p0}, Lcom/amazon/overlay/translation/states/AbstractState;->getUI()Lcom/amazon/overlay/translation/TranslationDialogUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/TranslationDialogUI;->getDestinationLanguage()Lcom/amazon/overlay/translation/TranslationLanguageButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/TranslationLanguageButton;->getSelectedItem()Lcom/amazon/kcp/translation/Language;

    move-result-object v10

    .line 72
    invoke-virtual {p0}, Lcom/amazon/overlay/translation/states/AbstractState;->getUI()Lcom/amazon/overlay/translation/TranslationDialogUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/TranslationDialogUI;->getSourceLanguage()Lcom/amazon/overlay/translation/TranslationLanguageButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/TranslationLanguageButton;->getSelectedItem()Lcom/amazon/kcp/translation/Language;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/translation/Language;->getLanguageTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    .line 73
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-virtual {v10}, Lcom/amazon/kcp/translation/Language;->getLanguageTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    .line 75
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-static {v0}, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->setSourceLanguage(Ljava/lang/String;)V

    .line 77
    invoke-static {v1}, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->setDestinationLanguage(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/amazon/overlay/translation/states/AbstractState;->getTranslationSelection()Lcom/amazon/overlay/translation/TranslationSelection;

    move-result-object v0

    .line 79
    new-instance v12, Lcom/amazon/kcp/translation/service/SpeakRequest;

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/TranslationSelection;->getBookId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/TranslationSelection;->getASIN()Ljava/lang/String;

    move-result-object v3

    .line 80
    invoke-virtual {v0}, Lcom/amazon/overlay/translation/TranslationSelection;->getSerializedStartPosition()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/TranslationSelection;->getSerializedStopPosition()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    .line 81
    invoke-virtual {v0}, Lcom/amazon/overlay/translation/TranslationSelection;->getContentGuid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/TranslationSelection;->getDeviceAccountPFM()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/amazon/overlay/translation/states/AbstractState;->getContext()Landroid/content/Context;

    move-result-object v8

    move-object v1, v12

    move-object v11, p0

    invoke-direct/range {v1 .. v11}, Lcom/amazon/kcp/translation/service/SpeakRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/amazon/kcp/translation/Language;Lcom/amazon/kcp/translation/service/RequestOnCompleteListener;)V

    return-object v12
.end method


# virtual methods
.method public onComplete(Lcom/amazon/kcp/translation/service/SpeakResponse;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 122
    :cond_0
    sget-object v0, Lcom/amazon/overlay/translation/states/FetchingSpeak;->SPEAK_COMMAND_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 123
    :try_start_0
    iget-boolean v1, p0, Lcom/amazon/overlay/translation/states/FetchingSpeak;->m_stopRequested:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/amazon/overlay/translation/states/FetchingSpeak;->m_speakRequest:Lcom/amazon/kcp/translation/service/SpeakRequest;

    if-nez v1, :cond_1

    goto :goto_0

    .line 126
    :cond_1
    iget-object v1, p0, Lcom/amazon/overlay/translation/states/AbstractState;->m_stateMachine:Lcom/amazon/overlay/translation/states/TranslationStateMachine;

    invoke-virtual {v1}, Lcom/amazon/overlay/translation/states/TranslationStateMachine;->getEnvironment()Lcom/amazon/overlay/translation/TranslationEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/overlay/translation/TranslationEnvironment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/amazon/overlay/translation/states/FetchingSpeak$1;

    invoke-direct {v2, p0, p1}, Lcom/amazon/overlay/translation/states/FetchingSpeak$1;-><init>(Lcom/amazon/overlay/translation/states/FetchingSpeak;Lcom/amazon/kcp/translation/service/SpeakResponse;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 136
    monitor-exit v0

    return-void

    .line 124
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 136
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public bridge synthetic onComplete(Ljava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p1, Lcom/amazon/kcp/translation/service/SpeakResponse;

    invoke-virtual {p0, p1}, Lcom/amazon/overlay/translation/states/FetchingSpeak;->onComplete(Lcom/amazon/kcp/translation/service/SpeakResponse;)V

    return-void
.end method

.method public resume()V
    .locals 1

    const/4 v0, 0x0

    .line 105
    iput-boolean v0, p0, Lcom/amazon/overlay/translation/states/FetchingSpeak;->m_stopRequested:Z

    .line 106
    invoke-virtual {p0}, Lcom/amazon/overlay/translation/states/FetchingSpeak;->transitionTo()V

    return-void
.end method

.method public stop()V
    .locals 3

    .line 91
    sget-object v0, Lcom/amazon/overlay/translation/states/FetchingSpeak;->SPEAK_COMMAND_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 92
    :try_start_0
    iget-object v1, p0, Lcom/amazon/overlay/translation/states/FetchingSpeak;->m_speakRequest:Lcom/amazon/kcp/translation/service/SpeakRequest;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 93
    iput-boolean v1, p0, Lcom/amazon/overlay/translation/states/FetchingSpeak;->m_stopRequested:Z

    .line 95
    iget-object v1, p0, Lcom/amazon/overlay/translation/states/FetchingSpeak;->m_speakRequest:Lcom/amazon/kcp/translation/service/SpeakRequest;

    invoke-virtual {v1}, Lcom/amazon/kcp/translation/service/SpeakRequest;->stopConnectRequest()V

    const/4 v1, 0x0

    .line 96
    iput-object v1, p0, Lcom/amazon/overlay/translation/states/FetchingSpeak;->m_speakRequest:Lcom/amazon/kcp/translation/service/SpeakRequest;

    .line 97
    invoke-virtual {p0}, Lcom/amazon/overlay/translation/states/AbstractState;->getSpeakPlayer()Lcom/amazon/overlay/translation/SpeakPlayer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/amazon/overlay/translation/SpeakPlayer;->stop(Z)V

    .line 98
    iget-object v1, p0, Lcom/amazon/overlay/translation/states/AbstractState;->m_translationEnvironment:Lcom/amazon/overlay/translation/TranslationEnvironment;

    invoke-virtual {v1}, Lcom/amazon/overlay/translation/TranslationEnvironment;->getTranslationDialogUI()Lcom/amazon/overlay/translation/TranslationDialogUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/overlay/translation/TranslationDialogUI;->getSpeakButton()Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;->HIDE_ICON:Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton;->toggleSpeakIcon(Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;)V

    .line 100
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

    .line 47
    iget-object v0, p0, Lcom/amazon/overlay/translation/states/AbstractState;->m_translationEnvironment:Lcom/amazon/overlay/translation/TranslationEnvironment;

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/TranslationEnvironment;->getTranslationDialogUI()Lcom/amazon/overlay/translation/TranslationDialogUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/TranslationDialogUI;->getSpeakButton()Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;->PROGRESS_ICON:Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton;->toggleSpeakIcon(Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;)V

    .line 49
    invoke-virtual {p0}, Lcom/amazon/overlay/translation/states/AbstractState;->getSpeakPlayer()Lcom/amazon/overlay/translation/SpeakPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/SpeakPlayer;->reset()V

    .line 52
    iget-object v0, p0, Lcom/amazon/overlay/translation/states/AbstractState;->m_stateMachine:Lcom/amazon/overlay/translation/states/TranslationStateMachine;

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/states/TranslationStateMachine;->getReaderSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getDownloadManager()Lcom/amazon/kindle/krx/download/IKRXDownloadManager;

    move-result-object v0

    .line 53
    sget-object v1, Lcom/amazon/overlay/translation/states/FetchingSpeak;->SPEAK_COMMAND_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 54
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/overlay/translation/states/FetchingSpeak;->buildRequest()Lcom/amazon/kcp/translation/service/SpeakRequest;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/overlay/translation/states/FetchingSpeak;->m_speakRequest:Lcom/amazon/kcp/translation/service/SpeakRequest;

    const-string v2, "SpeakQueryTime"

    .line 55
    invoke-static {v2}, Lcom/amazon/kcp/translation/TMetric;->startMetricTimer(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :try_start_1
    iget-object v2, p0, Lcom/amazon/overlay/translation/states/FetchingSpeak;->m_speakRequest:Lcom/amazon/kcp/translation/service/SpeakRequest;

    invoke-interface {v0, v2}, Lcom/amazon/kindle/krx/download/IKRXDownloadManager;->enqueueDownloadRequest(Lcom/amazon/kindle/krx/download/IKRXDownloadRequest;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 59
    :try_start_2
    sget-object v2, Lcom/amazon/overlay/translation/states/FetchingSpeak;->TAG:Ljava/lang/String;

    const-string v3, "failed to queue speak request"

    invoke-static {v2, v3, v0}, Lcom/amazon/kcp/translation/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    iget-object v0, p0, Lcom/amazon/overlay/translation/states/AbstractState;->m_stateMachine:Lcom/amazon/overlay/translation/states/TranslationStateMachine;

    new-instance v2, Lcom/amazon/overlay/translation/states/SpeakFail;

    iget-object v3, p0, Lcom/amazon/overlay/translation/states/AbstractState;->m_stateMachine:Lcom/amazon/overlay/translation/states/TranslationStateMachine;

    new-instance v4, Lcom/amazon/kcp/translation/service/SpeakResponse;

    invoke-virtual {p0}, Lcom/amazon/overlay/translation/states/AbstractState;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/amazon/kcp/translation/service/SpeakResponse;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v2, v3, v4}, Lcom/amazon/overlay/translation/states/SpeakFail;-><init>(Lcom/amazon/overlay/translation/states/TranslationStateMachine;Lcom/amazon/kcp/translation/service/SpeakResponse;)V

    invoke-virtual {v0, v2}, Lcom/amazon/overlay/translation/states/TranslationStateMachine;->transitionTo(Lcom/amazon/overlay/translation/states/AbstractState;)V

    .line 62
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
