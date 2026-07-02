.class Lcom/amazon/kcp/groupcontent/GroupContentTutorialProvider;
.super Lcom/amazon/kindle/krx/tutorial/TutorialProvider;
.source "GroupContentTutorialProvider.java"


# static fields
.field private static final GROUP_CONTENT_TOPIC:Ljava/lang/String; = "Library"

.field private static final IS_SERIES_GROUPING_STATE_INITIALIZED:Ljava/lang/String; = "IsSeriesGroupingStateInitialized"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Library"

    .line 22
    invoke-direct {p0, v0}, Lcom/amazon/kindle/krx/tutorial/TutorialProvider;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/krx/tutorial/conditions/InvalidComparisonTypeException;
        }
    .end annotation

    .line 28
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string p3, "IsSeriesGroupingStateInitialized"

    .line 29
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 31
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    .line 32
    invoke-static {}, Lcom/amazon/kcp/util/GroupContentUtils;->isSeriesGroupingInitialized()Z

    move-result p2

    .line 33
    invoke-static {p1, p2, p4}, Lcom/amazon/kindle/tutorial/TutorialComparatorHelper;->compareBooleans(ZZLcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
