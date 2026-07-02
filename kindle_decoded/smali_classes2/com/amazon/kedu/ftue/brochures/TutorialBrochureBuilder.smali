.class public Lcom/amazon/kedu/ftue/brochures/TutorialBrochureBuilder;
.super Ljava/lang/Object;
.source "TutorialBrochureBuilder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.kedu.ftue.brochures.TutorialBrochureBuilder"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private buildBrochureSlide(Lcom/amazon/kedu/ftue/events/TutorialPage;Ljava/lang/String;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kedu/ftue/assets/IAssetManager;)Lcom/amazon/kindle/krx/ui/brochure/IBrochureSlide;
    .locals 3

    .line 74
    invoke-interface {p3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kedu/ftue/events/TutorialPage;->getTextResourceId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-virtual {p1}, Lcom/amazon/kedu/ftue/events/TutorialPage;->getRemoteImageResourceId()Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-virtual {p1}, Lcom/amazon/kedu/ftue/events/TutorialPage;->getImageResource()Ljava/lang/String;

    move-result-object p1

    if-eqz v1, :cond_1

    .line 79
    invoke-interface {p4}, Lcom/amazon/kedu/ftue/assets/IAssetManager;->getContext()Lcom/amazon/kedu/ftue/assets/IAssetContext;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/amazon/kedu/ftue/assets/IAssetContext;->getDrawableFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 82
    sget-object p4, Lcom/amazon/kedu/ftue/brochures/TutorialBrochureBuilder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got drawable file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 87
    :cond_0
    sget-object p1, Lcom/amazon/kedu/ftue/brochures/TutorialBrochureBuilder;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed getting drawable for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No asset for remote item"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 92
    :cond_1
    :goto_0
    invoke-interface {p3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object p3

    invoke-interface {p3, v0, p1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->createTextAndImageBrochureSlide(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/ui/brochure/IBrochureSlide;

    move-result-object p1

    .line 93
    invoke-interface {p1, p2}, Lcom/amazon/kindle/krx/ui/brochure/IBrochureSlide;->setMetricKey(Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public build(Ljava/lang/String;Ljava/util/List;Lcom/amazon/kedu/ftue/events/EventContext;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kedu/ftue/assets/IAssetManager;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/kedu/ftue/events/Tutorial;",
            ">;",
            "Lcom/amazon/kedu/ftue/events/EventContext;",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            "Lcom/amazon/kedu/ftue/assets/IAssetManager;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/tutorial/BrochureTutorial;",
            ">;"
        }
    .end annotation

    .line 41
    invoke-virtual {p0}, Lcom/amazon/kedu/ftue/brochures/TutorialBrochureBuilder;->getMetricManager()Lcom/amazon/kedu/ftue/metrics/MetricManager;

    move-result-object v0

    .line 42
    sget-object v1, Lcom/amazon/kedu/ftue/metrics/Metric;->TUTORIAL_BUILD:Lcom/amazon/kedu/ftue/metrics/Metric;

    invoke-virtual {v0, v1}, Lcom/amazon/kedu/ftue/metrics/MetricManager;->startMetricTimer(Lcom/amazon/kedu/ftue/metrics/Metric;)V

    .line 44
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 45
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kedu/ftue/events/Tutorial;

    .line 47
    invoke-virtual {v2}, Lcom/amazon/kedu/ftue/events/Tutorial;->getTutorialPageProvider()Lcom/amazon/kedu/ftue/events/TutorialPageProvider;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/amazon/kedu/ftue/events/TutorialPageProvider;->get(Lcom/amazon/kedu/ftue/events/EventContext;)Ljava/util/List;

    move-result-object v3

    .line 48
    sget-object v4, Lcom/amazon/kedu/ftue/brochures/TutorialBrochureBuilder;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adding tutorial "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/amazon/kedu/ftue/events/FTUEEvent;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " to brochure with pages "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " pages..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kedu/ftue/events/TutorialPage;

    .line 53
    :try_start_0
    invoke-virtual {v2}, Lcom/amazon/kedu/ftue/events/FTUEEvent;->getMetricKey()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5, p4, p5}, Lcom/amazon/kedu/ftue/brochures/TutorialBrochureBuilder;->buildBrochureSlide(Lcom/amazon/kedu/ftue/events/TutorialPage;Ljava/lang/String;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kedu/ftue/assets/IAssetManager;)Lcom/amazon/kindle/krx/ui/brochure/IBrochureSlide;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    .line 57
    sget-object v6, Lcom/amazon/kedu/ftue/brochures/TutorialBrochureBuilder;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed generating brochure slide for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " in tutorial \'"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/amazon/kedu/ftue/events/FTUEEvent;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'. skipping."

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 62
    :cond_1
    sget-object p2, Lcom/amazon/kedu/ftue/metrics/Metric;->TUTORIAL_BUILD:Lcom/amazon/kedu/ftue/metrics/Metric;

    invoke-virtual {v0, p2}, Lcom/amazon/kedu/ftue/metrics/MetricManager;->stopMetricTimer(Lcom/amazon/kedu/ftue/metrics/Metric;)V

    .line 64
    new-instance p2, Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;

    invoke-direct {p2}, Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;-><init>()V

    .line 65
    invoke-interface {p4}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/amazon/kedu/ftue/R$string;->kf_clickstream_pagetype:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;->clickstreamPageType:Ljava/lang/String;

    .line 66
    iput-object p1, p2, Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;->contextName:Ljava/lang/String;

    .line 68
    new-instance p1, Lcom/amazon/kindle/krx/tutorial/BrochureTutorial;

    invoke-direct {p1, v1, p2}, Lcom/amazon/kindle/krx/tutorial/BrochureTutorial;-><init>(Ljava/util/Collection;Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;)V

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method getMetricManager()Lcom/amazon/kedu/ftue/metrics/MetricManager;
    .locals 1

    .line 100
    invoke-static {}, Lcom/amazon/kedu/ftue/metrics/MetricManager;->getInstance()Lcom/amazon/kedu/ftue/metrics/MetricManager;

    move-result-object v0

    return-object v0
.end method
