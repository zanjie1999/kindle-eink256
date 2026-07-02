.class public Lcom/amazon/overlay/translation/states/SpeakFail;
.super Lcom/amazon/overlay/translation/states/AbstractState;
.source "SpeakFail.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final m_speakResponse:Lcom/amazon/kcp/translation/service/SpeakResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const-class v0, Lcom/amazon/overlay/translation/states/SpeakFail;

    invoke-static {v0}, Lcom/amazon/kcp/translation/Logger;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/overlay/translation/states/SpeakFail;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/amazon/overlay/translation/states/TranslationStateMachine;Lcom/amazon/kcp/translation/service/SpeakResponse;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/amazon/overlay/translation/states/AbstractState;-><init>(Lcom/amazon/overlay/translation/states/TranslationStateMachine;)V

    .line 27
    iput-object p2, p0, Lcom/amazon/overlay/translation/states/SpeakFail;->m_speakResponse:Lcom/amazon/kcp/translation/service/SpeakResponse;

    return-void
.end method


# virtual methods
.method public transitionTo()V
    .locals 2

    const-string v0, "SpeakQueryError"

    const-string v1, "SpeakQueryTime"

    .line 35
    invoke-static {v0, v1}, Lcom/amazon/kcp/translation/TMetric;->stopMetricTimer(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/amazon/overlay/translation/states/AbstractState;->m_translationEnvironment:Lcom/amazon/overlay/translation/TranslationEnvironment;

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/TranslationEnvironment;->getTranslationDialogUI()Lcom/amazon/overlay/translation/TranslationDialogUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/TranslationDialogUI;->getSpeakButton()Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;->HIDE_ICON:Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton;->toggleSpeakIcon(Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;)V

    return-void
.end method
