.class public Lcom/amazon/overlay/translation/states/SpeakSuccess;
.super Lcom/amazon/overlay/translation/states/AbstractState;
.source "SpeakSuccess.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final m_speakResponse:Lcom/amazon/kcp/translation/service/SpeakResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const-class v0, Lcom/amazon/overlay/translation/states/SpeakSuccess;

    invoke-static {v0}, Lcom/amazon/kcp/translation/Logger;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/overlay/translation/states/SpeakSuccess;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/amazon/overlay/translation/states/TranslationStateMachine;Lcom/amazon/kcp/translation/service/SpeakResponse;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/amazon/overlay/translation/states/AbstractState;-><init>(Lcom/amazon/overlay/translation/states/TranslationStateMachine;)V

    .line 27
    iput-object p2, p0, Lcom/amazon/overlay/translation/states/SpeakSuccess;->m_speakResponse:Lcom/amazon/kcp/translation/service/SpeakResponse;

    return-void
.end method


# virtual methods
.method public stop()V
    .locals 2

    .line 52
    invoke-virtual {p0}, Lcom/amazon/overlay/translation/states/AbstractState;->getSpeakPlayer()Lcom/amazon/overlay/translation/SpeakPlayer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/overlay/translation/SpeakPlayer;->stop(Z)V

    return-void
.end method

.method public transitionTo()V
    .locals 4

    const-string v0, "SpeakQuerySuccess"

    const-string v1, "SpeakQueryTime"

    .line 35
    invoke-static {v0, v1}, Lcom/amazon/kcp/translation/TMetric;->stopMetricTimer(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/overlay/translation/states/AbstractState;->getSpeakPlayer()Lcom/amazon/overlay/translation/SpeakPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/overlay/translation/states/SpeakSuccess;->m_speakResponse:Lcom/amazon/kcp/translation/service/SpeakResponse;

    invoke-virtual {v1}, Lcom/amazon/kcp/translation/service/SpeakResponse;->getAudio()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/overlay/translation/SpeakPlayer;->prepare(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Lcom/amazon/overlay/translation/states/AbstractState;->getSpeakPlayer()Lcom/amazon/overlay/translation/SpeakPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/SpeakPlayer;->play()V
    :try_end_0
    .catch Lcom/amazon/overlay/translation/SpeakPlayer$PrepareException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 41
    sget-object v1, Lcom/amazon/overlay/translation/states/SpeakSuccess;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error preparing audio : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/amazon/kcp/translation/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    iget-object v0, p0, Lcom/amazon/overlay/translation/states/AbstractState;->m_stateMachine:Lcom/amazon/overlay/translation/states/TranslationStateMachine;

    new-instance v1, Lcom/amazon/overlay/translation/states/SpeakFail;

    iget-object v2, p0, Lcom/amazon/overlay/translation/states/AbstractState;->m_stateMachine:Lcom/amazon/overlay/translation/states/TranslationStateMachine;

    iget-object v3, p0, Lcom/amazon/overlay/translation/states/SpeakSuccess;->m_speakResponse:Lcom/amazon/kcp/translation/service/SpeakResponse;

    invoke-direct {v1, v2, v3}, Lcom/amazon/overlay/translation/states/SpeakFail;-><init>(Lcom/amazon/overlay/translation/states/TranslationStateMachine;Lcom/amazon/kcp/translation/service/SpeakResponse;)V

    invoke-virtual {v0, v1}, Lcom/amazon/overlay/translation/states/TranslationStateMachine;->transitionTo(Lcom/amazon/overlay/translation/states/AbstractState;)V

    :goto_0
    return-void
.end method
