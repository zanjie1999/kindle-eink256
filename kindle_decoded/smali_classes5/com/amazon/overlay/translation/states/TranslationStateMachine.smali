.class public Lcom/amazon/overlay/translation/states/TranslationStateMachine;
.super Ljava/lang/Object;
.source "TranslationStateMachine.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private volatile m_currentState:Lcom/amazon/overlay/translation/states/AbstractState;

.field private final m_readerSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final m_stopRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final m_translationEnvironment:Lcom/amazon/overlay/translation/TranslationEnvironment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-class v0, Lcom/amazon/overlay/translation/states/TranslationStateMachine;

    invoke-static {v0}, Lcom/amazon/kcp/translation/Logger;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/overlay/translation/states/TranslationStateMachine;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/overlay/translation/TranslationEnvironment;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/amazon/overlay/translation/states/TranslationStateMachine;->m_translationEnvironment:Lcom/amazon/overlay/translation/TranslationEnvironment;

    .line 33
    iput-object p2, p0, Lcom/amazon/overlay/translation/states/TranslationStateMachine;->m_readerSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 34
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/amazon/overlay/translation/states/TranslationStateMachine;->m_stopRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public getCurrentState()Lcom/amazon/overlay/translation/states/AbstractState;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/amazon/overlay/translation/states/TranslationStateMachine;->m_currentState:Lcom/amazon/overlay/translation/states/AbstractState;

    return-object v0
.end method

.method public getEnvironment()Lcom/amazon/overlay/translation/TranslationEnvironment;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/amazon/overlay/translation/states/TranslationStateMachine;->m_translationEnvironment:Lcom/amazon/overlay/translation/TranslationEnvironment;

    return-object v0
.end method

.method public getReaderSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/amazon/overlay/translation/states/TranslationStateMachine;->m_readerSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object v0
.end method

.method public resume()V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/amazon/overlay/translation/states/TranslationStateMachine;->m_stopRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/amazon/overlay/translation/states/TranslationStateMachine;->m_currentState:Lcom/amazon/overlay/translation/states/AbstractState;

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/amazon/overlay/translation/states/TranslationStateMachine;->m_currentState:Lcom/amazon/overlay/translation/states/AbstractState;

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/states/AbstractState;->resume()V

    goto :goto_0

    .line 104
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/overlay/translation/states/TranslationStateMachine;->start()V

    :goto_0
    return-void
.end method

.method public start()V
    .locals 1

    .line 54
    new-instance v0, Lcom/amazon/overlay/translation/states/Detecting;

    invoke-direct {v0, p0}, Lcom/amazon/overlay/translation/states/Detecting;-><init>(Lcom/amazon/overlay/translation/states/TranslationStateMachine;)V

    invoke-virtual {p0, v0}, Lcom/amazon/overlay/translation/states/TranslationStateMachine;->transitionTo(Lcom/amazon/overlay/translation/states/AbstractState;)V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/amazon/overlay/translation/states/TranslationStateMachine;->m_stopRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/amazon/overlay/translation/states/TranslationStateMachine;->m_currentState:Lcom/amazon/overlay/translation/states/AbstractState;

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/amazon/overlay/translation/states/TranslationStateMachine;->m_currentState:Lcom/amazon/overlay/translation/states/AbstractState;

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/states/AbstractState;->stop()V

    :cond_1
    return-void
.end method

.method public transitionTo(Lcom/amazon/overlay/translation/states/AbstractState;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/amazon/overlay/translation/states/TranslationStateMachine;->m_stopRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 72
    :cond_0
    iput-object p1, p0, Lcom/amazon/overlay/translation/states/TranslationStateMachine;->m_currentState:Lcom/amazon/overlay/translation/states/AbstractState;

    .line 73
    invoke-virtual {p1}, Lcom/amazon/overlay/translation/states/AbstractState;->transitionTo()V

    return-void
.end method
