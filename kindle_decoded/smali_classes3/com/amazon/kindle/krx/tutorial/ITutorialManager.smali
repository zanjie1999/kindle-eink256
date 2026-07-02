.class public interface abstract Lcom/amazon/kindle/krx/tutorial/ITutorialManager;
.super Ljava/lang/Object;
.source "ITutorialManager.java"


# virtual methods
.method public abstract addActionHandler(Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/actions/IActionHandler;)V
.end method

.method public abstract addEventObserver(Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/events/IEventObserver;)V
.end method

.method public abstract addEventSource(Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/events/IEventSource;)V
.end method

.method public abstract addStatusListener(Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/ITutorialStatusListener;)V
.end method

.method public abstract broadcastEvent(Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;)V
.end method

.method public abstract deregisterTutorialProvider(Lcom/amazon/kindle/krx/tutorial/TutorialProvider;)V
.end method

.method public abstract registerCustomTutorialHandler(Lcom/amazon/kindle/krx/tutorial/ICustomTutorialHandler;)V
.end method

.method public abstract registerTutorialProvider(Lcom/amazon/kindle/krx/tutorial/TutorialProvider;)V
.end method

.method public abstract removeActionHandler(Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/actions/IActionHandler;)V
.end method

.method public abstract removeEventObserver(Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/events/IEventObserver;)V
.end method

.method public abstract removeEventSource(Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/events/IEventSource;)V
.end method

.method public abstract setConditionEvaluator(Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator;)V
.end method
