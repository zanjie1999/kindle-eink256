.class Lcom/amazon/kindle/tutorial/EventActivationResolver$EvaluationTask;
.super Ljava/lang/Object;
.source "EventActivationResolver.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/tutorial/EventActivationResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EvaluationTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/amazon/kindle/tutorial/model/ActivationInstance;",
        ">;"
    }
.end annotation


# instance fields
.field final activation:Lcom/amazon/kindle/tutorial/model/ActivationInstance;

.field final event:Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;

.field final tutorialManager:Lcom/amazon/kindle/tutorial/AndroidTutorialManager;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/tutorial/model/ActivationInstance;Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;Lcom/amazon/kindle/tutorial/AndroidTutorialManager;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/amazon/kindle/tutorial/EventActivationResolver$EvaluationTask;->activation:Lcom/amazon/kindle/tutorial/model/ActivationInstance;

    .line 56
    iput-object p2, p0, Lcom/amazon/kindle/tutorial/EventActivationResolver$EvaluationTask;->event:Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;

    .line 57
    iput-object p3, p0, Lcom/amazon/kindle/tutorial/EventActivationResolver$EvaluationTask;->tutorialManager:Lcom/amazon/kindle/tutorial/AndroidTutorialManager;

    return-void
.end method


# virtual methods
.method public call()Lcom/amazon/kindle/tutorial/model/ActivationInstance;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/EventActivationResolver$EvaluationTask;->activation:Lcom/amazon/kindle/tutorial/model/ActivationInstance;

    invoke-virtual {v0}, Lcom/amazon/kindle/tutorial/model/ActivationInstance;->getActivationConfig()Lcom/amazon/kindle/tutorial/model/ActivationConfig;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lcom/amazon/kindle/tutorial/model/ActivationConfig;->getCondition()Lcom/amazon/kindle/tutorial/ICondition;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v1, p0, Lcom/amazon/kindle/tutorial/EventActivationResolver$EvaluationTask;->tutorialManager:Lcom/amazon/kindle/tutorial/AndroidTutorialManager;

    iget-object v2, p0, Lcom/amazon/kindle/tutorial/EventActivationResolver$EvaluationTask;->event:Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/tutorial/ICondition;->evaluate(Lcom/amazon/kindle/tutorial/AndroidTutorialManager;Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/EventActivationResolver$EvaluationTask;->activation:Lcom/amazon/kindle/tutorial/model/ActivationInstance;

    return-object v0

    .line 67
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/tutorial/EventActivationResolver;->access$000()Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/amazon/kindle/tutorial/EventActivationResolver$EvaluationTask;->activation:Lcom/amazon/kindle/tutorial/model/ActivationInstance;

    invoke-virtual {v2}, Lcom/amazon/kindle/tutorial/model/ActivationInstance;->getTutorialConfig()Lcom/amazon/kindle/tutorial/model/TutorialConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kindle/tutorial/model/TutorialConfig;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Condition was NOT met. Skipping %s."

    invoke-static {v1, v0}, Lcom/amazon/kindle/log/Lazy;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/kindle/log/Lazy;

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Lcom/amazon/kindle/tutorial/EventActivationResolver$EvaluationTask;->call()Lcom/amazon/kindle/tutorial/model/ActivationInstance;

    move-result-object v0

    return-object v0
.end method
