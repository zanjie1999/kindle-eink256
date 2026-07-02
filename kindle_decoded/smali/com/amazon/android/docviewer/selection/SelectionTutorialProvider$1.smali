.class Lcom/amazon/android/docviewer/selection/SelectionTutorialProvider$1;
.super Ljava/lang/Object;
.source "SelectionTutorialProvider.java"

# interfaces
.implements Lcom/amazon/kindle/krx/tutorial/ITutorialStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/selection/SelectionTutorialProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/docviewer/selection/SelectionTutorialProvider;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/selection/SelectionTutorialProvider;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/amazon/android/docviewer/selection/SelectionTutorialProvider$1;->this$0:Lcom/amazon/android/docviewer/selection/SelectionTutorialProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLifecycleListener(Ljava/lang/String;)Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onTutorialStatus(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;Lcom/amazon/kindle/krx/tutorial/TutorialStatus;)V
    .locals 0

    .line 92
    sget-object p2, Lcom/amazon/kindle/krx/tutorial/TutorialStatus;->SHOWN:Lcom/amazon/kindle/krx/tutorial/TutorialStatus;

    invoke-virtual {p4, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "74fa8b1c22bbbacc9a40a737900ae487"

    .line 93
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 94
    iget-object p1, p0, Lcom/amazon/android/docviewer/selection/SelectionTutorialProvider$1;->this$0:Lcom/amazon/android/docviewer/selection/SelectionTutorialProvider;

    invoke-static {p1}, Lcom/amazon/android/docviewer/selection/SelectionTutorialProvider;->access$000(Lcom/amazon/android/docviewer/selection/SelectionTutorialProvider;)Lcom/amazon/kcp/application/EventSettingsController;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/amazon/kcp/application/EventSettingsController;->setQuickHighlightTutorialShownTime(J)V

    .line 95
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    const-string p2, "TutorialOpenTimer"

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->startMetricTimer(Ljava/lang/String;)V

    .line 96
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 98
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    const-string p2, "Book"

    const-string p3, "QuickHighlightTutorialShown"

    invoke-interface {p1, p2, p3}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
