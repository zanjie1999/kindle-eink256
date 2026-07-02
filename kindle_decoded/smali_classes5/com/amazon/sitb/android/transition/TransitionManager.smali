.class public Lcom/amazon/sitb/android/transition/TransitionManager;
.super Ljava/lang/Object;
.source "TransitionManager.java"


# instance fields
.field private final excerptService:Lcom/amazon/sitb/android/transition/ExcerptService;

.field private pubSubEventsManager:Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

.field private final transitionFactory:Lcom/amazon/sitb/android/transition/TransitionFactory;

.field private final transitionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/sitb/android/transition/Transition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/sitb/android/transition/TransitionFactory;Lcom/amazon/sitb/android/transition/ExcerptService;Lcom/amazon/kindle/krx/events/IPubSubEventsManager;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/amazon/sitb/android/transition/TransitionManager;->transitionFactory:Lcom/amazon/sitb/android/transition/TransitionFactory;

    .line 30
    iput-object p2, p0, Lcom/amazon/sitb/android/transition/TransitionManager;->excerptService:Lcom/amazon/sitb/android/transition/ExcerptService;

    .line 31
    iput-object p3, p0, Lcom/amazon/sitb/android/transition/TransitionManager;->pubSubEventsManager:Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    .line 32
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/sitb/android/transition/TransitionManager;->transitionMap:Ljava/util/Map;

    return-void
.end method

.method private create(Lcom/amazon/sitb/android/transition/Transition;)Lcom/amazon/sitb/android/transition/Transition;
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/amazon/sitb/android/transition/TransitionManager;->pubSubEventsManager:Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 59
    iget-object v0, p0, Lcom/amazon/sitb/android/transition/TransitionManager;->transitionMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amazon/sitb/android/transition/Transition;->getDestinationBookId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method


# virtual methods
.method public createSampleTransition(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IPosition;Landroid/widget/Toast;)Lcom/amazon/sitb/android/transition/Transition;
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/amazon/sitb/android/transition/TransitionManager;->excerptService:Lcom/amazon/sitb/android/transition/ExcerptService;

    invoke-virtual {v0, p2}, Lcom/amazon/sitb/android/transition/ExcerptService;->getExcerpt(Lcom/amazon/kindle/krx/reader/IPosition;)Ljava/lang/String;

    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/amazon/sitb/android/transition/TransitionManager;->transitionFactory:Lcom/amazon/sitb/android/transition/TransitionFactory;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/amazon/sitb/android/transition/TransitionFactory;->createSampleTransition(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IPosition;Landroid/widget/Toast;Ljava/lang/String;)Lcom/amazon/sitb/android/transition/Transition;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/sitb/android/transition/TransitionManager;->create(Lcom/amazon/sitb/android/transition/Transition;)Lcom/amazon/sitb/android/transition/Transition;

    return-object p1
.end method

.method public createTransition(Lcom/amazon/kindle/krx/content/IBook;Landroid/widget/Toast;)Lcom/amazon/sitb/android/transition/Transition;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/amazon/sitb/android/transition/TransitionManager;->transitionFactory:Lcom/amazon/sitb/android/transition/TransitionFactory;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/sitb/android/transition/TransitionFactory;->createTransition(Lcom/amazon/kindle/krx/content/IBook;Landroid/widget/Toast;)Lcom/amazon/sitb/android/transition/Transition;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/sitb/android/transition/TransitionManager;->create(Lcom/amazon/sitb/android/transition/Transition;)Lcom/amazon/sitb/android/transition/Transition;

    return-object p1
.end method

.method public finished(Lcom/amazon/sitb/android/transition/Transition;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/amazon/sitb/android/transition/TransitionManager;->transitionMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amazon/sitb/android/transition/Transition;->getDestinationBookId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
