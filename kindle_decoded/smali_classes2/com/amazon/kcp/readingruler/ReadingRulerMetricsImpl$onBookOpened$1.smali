.class final Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$onBookOpened$1;
.super Ljava/lang/Object;
.source "ReadingRulerMetricsImpl.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl;->onBookOpened(Lcom/amazon/android/docviewer/KindleDocViewer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$onBookOpened$1;->this$0:Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 39
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$onBookOpened$1;->this$0:Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl;

    invoke-virtual {v1}, Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl;->getPresetsManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/ksdk/presets/ReadingPreset;->readingRulerColor()Lcom/amazon/ksdk/presets/ReadingRulerColorType;

    move-result-object v1

    .line 41
    iget-object v2, p0, Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$onBookOpened$1;->this$0:Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl;

    sget-object v3, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->READING_RULER_COLOR_METRICS:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl;->access$emitBookOpenMetrics(Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl;Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;Ljava/lang/Object;)V

    .line 42
    iget-object v1, p0, Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$onBookOpened$1;->this$0:Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl;

    sget-object v2, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->READING_RULER_STYLE_METRICS:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    const-string v3, "settings"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getReadingRulerStyle()Lcom/amazon/ksdk/presets/ReadingRulerStyleType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl;->access$emitBookOpenMetrics(Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl;Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;Ljava/lang/Object;)V

    .line 43
    iget-object v1, p0, Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$onBookOpened$1;->this$0:Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl;

    sget-object v2, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->READING_RULER_SIZE_METRICS:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getReadingRulerSize()Lcom/amazon/ksdk/presets/ReadingRulerNumberOfLinesType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl;->access$emitBookOpenMetrics(Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl;Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;Ljava/lang/Object;)V

    .line 44
    iget-object v1, p0, Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$onBookOpened$1;->this$0:Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl;

    sget-object v2, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->READING_RULER_OPACITY_METRICS:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getReadingRulerOpacity()F

    move-result v3

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl;->access$emitBookOpenMetrics(Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl;Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;Ljava/lang/Object;)V

    .line 45
    iget-object v1, p0, Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$onBookOpened$1;->this$0:Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl;

    sget-object v2, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->READING_RULER_TOGGLE_METRICS:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getReadingRulerEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl;->access$emitBookOpenMetrics(Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl;Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;Ljava/lang/Object;)V

    return-void
.end method
