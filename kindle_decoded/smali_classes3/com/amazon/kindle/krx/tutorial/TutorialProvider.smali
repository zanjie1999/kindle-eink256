.class public abstract Lcom/amazon/kindle/krx/tutorial/TutorialProvider;
.super Ljava/lang/Object;
.source "TutorialProvider.java"

# interfaces
.implements Lcom/amazon/kindle/krx/tutorial/events/IEventSource;
.implements Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator;
.implements Lcom/amazon/kindle/krx/tutorial/ITutorialStatusListener;
.implements Lcom/amazon/kindle/krx/tutorial/actions/IActionHandler;


# static fields
.field private static final allTopics:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final observers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/krx/tutorial/events/IEventObserver;",
            ">;"
        }
    .end annotation
.end field

.field protected final topic:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/amazon/kindle/krx/tutorial/TutorialProvider;->allTopics:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    sget-object v0, Lcom/amazon/kindle/krx/tutorial/TutorialProvider;->allTopics:Ljava/util/Set;

    monitor-enter v0

    .line 54
    :try_start_0
    sget-object v1, Lcom/amazon/kindle/krx/tutorial/TutorialProvider;->allTopics:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 58
    sget-object v1, Lcom/amazon/kindle/krx/tutorial/TutorialProvider;->allTopics:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    iput-object p1, p0, Lcom/amazon/kindle/krx/tutorial/TutorialProvider;->topic:Ljava/lang/String;

    .line 61
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/krx/tutorial/TutorialProvider;->observers:Ljava/util/Set;

    return-void

    .line 56
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tutorial provider with topic "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " already exists."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception p1

    .line 59
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public final addObserver(Lcom/amazon/kindle/krx/tutorial/events/IEventObserver;)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/amazon/kindle/krx/tutorial/TutorialProvider;->observers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public abstract evaluate(Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/krx/tutorial/conditions/InvalidComparisonTypeException;
        }
    .end annotation
.end method

.method public getLifecycleListener(Ljava/lang/String;)Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final getTopic()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/amazon/kindle/krx/tutorial/TutorialProvider;->topic:Ljava/lang/String;

    return-object v0
.end method

.method public handleAction(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onTutorialStatus(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;Lcom/amazon/kindle/krx/tutorial/TutorialStatus;)V
    .locals 0

    return-void
.end method

.method public final publishEvent(Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;)V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/amazon/kindle/krx/tutorial/TutorialProvider;->observers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/tutorial/events/IEventObserver;

    .line 73
    invoke-interface {v1, p1}, Lcom/amazon/kindle/krx/tutorial/events/IEventObserver;->notify(Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final removeObserver(Lcom/amazon/kindle/krx/tutorial/events/IEventObserver;)V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/amazon/kindle/krx/tutorial/TutorialProvider;->observers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
