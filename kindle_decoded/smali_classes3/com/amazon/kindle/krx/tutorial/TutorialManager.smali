.class public Lcom/amazon/kindle/krx/tutorial/TutorialManager;
.super Lcom/amazon/kindle/krx/tutorial/BaseTutorialManager;
.source "TutorialManager.java"


# instance fields
.field private final impl:Lcom/amazon/kindle/krx/tutorial/BaseTutorialManager;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/tutorial/BaseTutorialManager;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/amazon/kindle/krx/tutorial/BaseTutorialManager;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/amazon/kindle/krx/tutorial/TutorialManager;->impl:Lcom/amazon/kindle/krx/tutorial/BaseTutorialManager;

    return-void
.end method


# virtual methods
.method public addActionHandler(Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/actions/IActionHandler;)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/amazon/kindle/krx/tutorial/TutorialManager;->impl:Lcom/amazon/kindle/krx/tutorial/BaseTutorialManager;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kindle/krx/tutorial/BaseTutorialManager;->addActionHandler(Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/actions/IActionHandler;)V

    return-void
.end method

.method public addEventObserver(Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/events/IEventObserver;)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/amazon/kindle/krx/tutorial/TutorialManager;->impl:Lcom/amazon/kindle/krx/tutorial/BaseTutorialManager;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kindle/krx/tutorial/BaseTutorialManager;->addEventObserver(Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/events/IEventObserver;)V

    return-void
.end method

.method public addEventSource(Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/events/IEventSource;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/amazon/kindle/krx/tutorial/TutorialManager;->impl:Lcom/amazon/kindle/krx/tutorial/BaseTutorialManager;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kindle/krx/tutorial/BaseTutorialManager;->addEventSource(Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/events/IEventSource;)V

    return-void
.end method

.method public addStatusListener(Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/ITutorialStatusListener;)V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/amazon/kindle/krx/tutorial/TutorialManager;->impl:Lcom/amazon/kindle/krx/tutorial/BaseTutorialManager;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kindle/krx/tutorial/BaseTutorialManager;->addStatusListener(Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/ITutorialStatusListener;)V

    return-void
.end method

.method public broadcastEvent(Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;)V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/amazon/kindle/krx/tutorial/TutorialManager;->impl:Lcom/amazon/kindle/krx/tutorial/BaseTutorialManager;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kindle/krx/tutorial/BaseTutorialManager;->broadcastEvent(Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;)V

    return-void
.end method

.method public deregisterTutorialProvider(Lcom/amazon/kindle/krx/tutorial/TutorialProvider;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/amazon/kindle/krx/tutorial/TutorialManager;->impl:Lcom/amazon/kindle/krx/tutorial/BaseTutorialManager;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/krx/tutorial/BaseTutorialManager;->deregisterTutorialProvider(Lcom/amazon/kindle/krx/tutorial/TutorialProvider;)V

    return-void
.end method

.method public registerCustomTutorialHandler(Lcom/amazon/kindle/krx/tutorial/ICustomTutorialHandler;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/amazon/kindle/krx/tutorial/TutorialManager;->impl:Lcom/amazon/kindle/krx/tutorial/BaseTutorialManager;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/krx/tutorial/BaseTutorialManager;->registerCustomTutorialHandler(Lcom/amazon/kindle/krx/tutorial/ICustomTutorialHandler;)V

    return-void
.end method

.method public registerTutorialProvider(Lcom/amazon/kindle/krx/tutorial/TutorialProvider;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/amazon/kindle/krx/tutorial/TutorialManager;->impl:Lcom/amazon/kindle/krx/tutorial/BaseTutorialManager;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/krx/tutorial/BaseTutorialManager;->registerTutorialProvider(Lcom/amazon/kindle/krx/tutorial/TutorialProvider;)V

    return-void
.end method

.method public removeActionHandler(Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/actions/IActionHandler;)V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/amazon/kindle/krx/tutorial/TutorialManager;->impl:Lcom/amazon/kindle/krx/tutorial/BaseTutorialManager;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kindle/krx/tutorial/BaseTutorialManager;->removeActionHandler(Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/actions/IActionHandler;)V

    return-void
.end method

.method public removeEventObserver(Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/events/IEventObserver;)V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/amazon/kindle/krx/tutorial/TutorialManager;->impl:Lcom/amazon/kindle/krx/tutorial/BaseTutorialManager;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kindle/krx/tutorial/BaseTutorialManager;->removeEventObserver(Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/events/IEventObserver;)V

    return-void
.end method

.method public removeEventSource(Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/events/IEventSource;)V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/amazon/kindle/krx/tutorial/TutorialManager;->impl:Lcom/amazon/kindle/krx/tutorial/BaseTutorialManager;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kindle/krx/tutorial/BaseTutorialManager;->removeEventSource(Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/events/IEventSource;)V

    return-void
.end method

.method public setConditionEvaluator(Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator;)V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/amazon/kindle/krx/tutorial/TutorialManager;->impl:Lcom/amazon/kindle/krx/tutorial/BaseTutorialManager;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kindle/krx/tutorial/BaseTutorialManager;->setConditionEvaluator(Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator;)V

    return-void
.end method
