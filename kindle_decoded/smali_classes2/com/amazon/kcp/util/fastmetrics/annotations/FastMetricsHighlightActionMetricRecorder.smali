.class public final Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder;
.super Ljava/lang/Object;
.source "HighlightActionMetricRecorder.kt"

# interfaces
.implements Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder$Starred;,
        Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder$HighlightMenuSetting;,
        Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder$Color;
    }
.end annotation


# instance fields
.field private final recordingFunction:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;",
            "+",
            "Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final userSettingsController:Lcom/amazon/kcp/application/UserSettingsController;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/application/UserSettingsController;Lkotlin/jvm/functions/Function3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/application/UserSettingsController;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;",
            "+",
            "Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "userSettingsController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recordingFunction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder;->userSettingsController:Lcom/amazon/kcp/application/UserSettingsController;

    iput-object p2, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder;->recordingFunction:Lkotlin/jvm/functions/Function3;

    return-void
.end method

.method public static final synthetic access$add(Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder;Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;Lcom/amazon/kcp/util/fastmetrics/annotations/Key;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder;->add(Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;Lcom/amazon/kcp/util/fastmetrics/annotations/Key;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$add(Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder;Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;Lcom/amazon/kcp/util/fastmetrics/annotations/Key;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder;->add(Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;Lcom/amazon/kcp/util/fastmetrics/annotations/Key;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object p0

    return-object p0
.end method

.method private final add(Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;Lcom/amazon/kcp/util/fastmetrics/annotations/Key;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;
    .locals 0

    .line 139
    invoke-virtual {p2}, Lcom/amazon/kcp/util/fastmetrics/annotations/Key;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addInteger(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object p1

    const-string p2, "addInteger(key.value, value)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final add(Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;Lcom/amazon/kcp/util/fastmetrics/annotations/Key;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;
    .locals 0

    .line 138
    invoke-virtual {p2}, Lcom/amazon/kcp/util/fastmetrics/annotations/Key;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object p1

    const-string p2, "addString(key.value, value)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final record(Lcom/amazon/kcp/util/fastmetrics/annotations/Action;Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V
    .locals 12

    .line 120
    invoke-interface {p3}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v6, v0

    goto :goto_0

    :cond_0
    move-object v6, v1

    .line 121
    :goto_0
    invoke-interface {p3}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_1
    move-object v7, v1

    .line 122
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder$Starred;->Companion:Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder$Starred$Companion;

    invoke-static {p3}, Lcom/amazon/kcp/util/AnnotationUtils;->isStarred(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder$Starred$Companion;->from(Z)Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder$Starred;

    move-result-object v8

    .line 123
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder$HighlightMenuSetting;->Companion:Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder$HighlightMenuSetting$Companion;

    iget-object v1, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder;->userSettingsController:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/UserSettingsController;->shouldDisplaySelectionButtonsOnQH()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder$HighlightMenuSetting$Companion;->from(Z)Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder$HighlightMenuSetting;

    move-result-object v9

    .line 124
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder$Color;->Companion:Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder$Color$Companion;

    invoke-static {p3}, Lcom/amazon/kcp/util/AnnotationUtils;->getAnnotationColor(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "AnnotationUtils.getAnnotationColor(annotation)"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder$Color$Companion;->from(Ljava/lang/String;)Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder$Color;

    move-result-object v10

    .line 126
    iget-object p3, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder;->recordingFunction:Lkotlin/jvm/functions/Function3;

    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->HIGHLIGHT_ACTION:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v0}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaName()Ljava/lang/String;

    move-result-object v0

    .line 127
    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->HIGHLIGHT_ACTION:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v1}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v11, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder$record$1;

    move-object v2, v11

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v2 .. v10}, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder$record$1;-><init>(Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder;Lcom/amazon/kcp/util/fastmetrics/annotations/Action;Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder$Starred;Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder$HighlightMenuSetting;Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder$Color;)V

    invoke-interface {p3, v0, v1, v11}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public recordChangedColor(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;)V
    .locals 1

    const-string v0, "annotation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entryPoint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/annotations/Action;->CHANGE_COLOR:Lcom/amazon/kcp/util/fastmetrics/annotations/Action;

    invoke-direct {p0, v0, p2, p1}, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder;->record(Lcom/amazon/kcp/util/fastmetrics/annotations/Action;Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V

    return-void
.end method

.method public recordCreated(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;)V
    .locals 1

    const-string v0, "annotation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entryPoint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/annotations/Action;->ADD:Lcom/amazon/kcp/util/fastmetrics/annotations/Action;

    invoke-direct {p0, v0, p2, p1}, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder;->record(Lcom/amazon/kcp/util/fastmetrics/annotations/Action;Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V

    return-void
.end method

.method public recordDeleted(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;)V
    .locals 1

    const-string v0, "annotation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entryPoint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/annotations/Action;->REMOVE:Lcom/amazon/kcp/util/fastmetrics/annotations/Action;

    invoke-direct {p0, v0, p2, p1}, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder;->record(Lcom/amazon/kcp/util/fastmetrics/annotations/Action;Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V

    return-void
.end method

.method public recordEdited(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;)V
    .locals 1

    const-string v0, "annotation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entryPoint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/annotations/Action;->EDIT:Lcom/amazon/kcp/util/fastmetrics/annotations/Action;

    invoke-direct {p0, v0, p2, p1}, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder;->record(Lcom/amazon/kcp/util/fastmetrics/annotations/Action;Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V

    return-void
.end method
