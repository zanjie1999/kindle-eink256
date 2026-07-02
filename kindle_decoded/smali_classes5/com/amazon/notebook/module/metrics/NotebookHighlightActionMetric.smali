.class public final Lcom/amazon/notebook/module/metrics/NotebookHighlightActionMetric;
.super Ljava/lang/Object;
.source "NotebookHighlightActionMetric.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/notebook/module/metrics/NotebookHighlightActionMetric$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNotebookHighlightActionMetric.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotebookHighlightActionMetric.kt\ncom/amazon/notebook/module/metrics/NotebookHighlightActionMetric\n*L\n1#1,130:1\n*E\n"
.end annotation


# instance fields
.field private final userSettingsController:Lcom/amazon/kcp/application/UserSettingsController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/notebook/module/metrics/NotebookHighlightActionMetric$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/notebook/module/metrics/NotebookHighlightActionMetric$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/amazon/notebook/module/metrics/NotebookHighlightActionMetric;-><init>(Lcom/amazon/kcp/application/UserSettingsController;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/application/UserSettingsController;)V
    .locals 1

    const-string/jumbo v0, "userSettingsController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/amazon/notebook/module/metrics/NotebookHighlightActionMetric;->userSettingsController:Lcom/amazon/kcp/application/UserSettingsController;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/amazon/kcp/application/UserSettingsController;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 65
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    const-string p2, "Utils.getFactory()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p1

    const-string p2, "Utils.getFactory().userSettingsController"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/notebook/module/metrics/NotebookHighlightActionMetric;-><init>(Lcom/amazon/kcp/application/UserSettingsController;)V

    return-void
.end method

.method private final emit(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 69
    :try_start_0
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 70
    :goto_0
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 71
    :cond_1
    sget-object v2, Lcom/amazon/notebook/module/metrics/Starred;->Companion:Lcom/amazon/notebook/module/metrics/Starred$Companion;

    invoke-static {p1}, Lcom/amazon/notebook/AnnotationUtils;->isStarred(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/amazon/notebook/module/metrics/Starred$Companion;->from(Z)Lcom/amazon/notebook/module/metrics/Starred;

    move-result-object v2

    .line 72
    sget-object v3, Lcom/amazon/notebook/module/metrics/Color;->Companion:Lcom/amazon/notebook/module/metrics/Color$Companion;

    invoke-static {p1}, Lcom/amazon/notebook/AnnotationUtils;->getAnnotationColor(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "AnnotationUtils.getAnnotationColor(annotation)"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Lcom/amazon/notebook/module/metrics/Color$Companion;->from(Ljava/lang/String;)Lcom/amazon/notebook/module/metrics/Color;

    move-result-object p1

    .line 74
    sget-object v3, Lcom/amazon/notebook/module/metrics/HighlightMenuSetting;->Companion:Lcom/amazon/notebook/module/metrics/HighlightMenuSetting$Companion;

    iget-object v4, p0, Lcom/amazon/notebook/module/metrics/NotebookHighlightActionMetric;->userSettingsController:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v4}, Lcom/amazon/kcp/application/UserSettingsController;->shouldDisplaySelectionButtonsOnQH()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/amazon/notebook/module/metrics/HighlightMenuSetting$Companion;->from(Z)Lcom/amazon/notebook/module/metrics/HighlightMenuSetting;

    move-result-object v3

    .line 75
    const-class v4, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    invoke-static {v4}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    if-eqz v4, :cond_4

    const-string v5, "highlight_actions"

    const/4 v6, 0x0

    .line 77
    invoke-interface {v4, v5, v6}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->getPayloadBuilder(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v5

    const-string v6, "action"

    .line 78
    invoke-interface {v5, v6, p2}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    const-string v6, "entry_point"

    .line 79
    invoke-interface {v5, v6, p3}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    if-eqz v0, :cond_2

    .line 80
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p3

    const-string/jumbo v0, "start_position"

    invoke-interface {v5, v0, p3}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addInteger(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    :cond_2
    if-eqz v1, :cond_3

    .line 81
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result p3

    const-string v0, "end_position"

    invoke-interface {v5, v0, p3}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addInteger(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    :cond_3
    const-string/jumbo p3, "starred"

    .line 82
    invoke-virtual {v2}, Lcom/amazon/notebook/module/metrics/Starred;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, p3, v0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    const-string p3, "color"

    .line 83
    invoke-virtual {p1}, Lcom/amazon/notebook/module/metrics/Color;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v5, p3, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    const-string p1, "highlight_menu_setting"

    .line 84
    invoke-virtual {v3}, Lcom/amazon/notebook/module/metrics/HighlightMenuSetting;->getValue()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v5, p1, p3}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 87
    invoke-interface {v5}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->build()Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;

    move-result-object p1

    invoke-interface {v4, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->record(Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 90
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to record NotebookHighlightActionMetric: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "NotebookActionMetric"

    invoke-static {p3, p2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public emitChangeColor(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V
    .locals 2

    const-string v0, "annotation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ChangeColor"

    const-string v1, "NotebookItemOverFlowMenu"

    .line 103
    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/notebook/module/metrics/NotebookHighlightActionMetric;->emit(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public emitDelete(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V
    .locals 2

    const-string v0, "annotation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Remove"

    const-string v1, "NotebookItemOverFlowMenu"

    .line 95
    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/notebook/module/metrics/NotebookHighlightActionMetric;->emit(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
