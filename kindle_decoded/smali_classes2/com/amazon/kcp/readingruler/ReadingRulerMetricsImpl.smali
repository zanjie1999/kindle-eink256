.class public final Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl;
.super Ljava/lang/Object;
.source "ReadingRulerMetricsImpl.kt"

# interfaces
.implements Lcom/amazon/kcp/util/fastmetrics/ReadingRulerMetrics;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$FieldKey;,
        Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$Companion;
    }
.end annotation


# static fields
.field private static final BOOK_OPEN_MODIFIER:Ljava/lang/String; = "bookOpen"


# instance fields
.field private future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private final presetsManager:Lcom/amazon/ksdk/presets/ReadingPresetsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl;-><init>(Lcom/amazon/ksdk/presets/ReadingPresetsManager;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/ksdk/presets/ReadingPresetsManager;)V
    .locals 1

    const-string v0, "presetsManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl;->presetsManager:Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/amazon/ksdk/presets/ReadingPresetsManager;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 21
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl;-><init>(Lcom/amazon/ksdk/presets/ReadingPresetsManager;)V

    return-void
.end method

.method public static final synthetic access$emitBookOpenMetrics(Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl;Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;Ljava/lang/Object;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl;->emitBookOpenMetrics(Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;Ljava/lang/Object;)V

    return-void
.end method

.method private final emitBookOpenMetrics(Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;Ljava/lang/Object;)V
    .locals 2

    .line 51
    invoke-virtual {p1}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaVersion()I

    move-result p1

    new-instance v1, Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$emitBookOpenMetrics$1;

    invoke-direct {v1, p2}, Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$emitBookOpenMetrics$1;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, p1, v1}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper;->recordMetrics(Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public final getPresetsManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl;->presetsManager:Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    return-object v0
.end method

.method public onBookOpened(Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 1

    const-string v0, "docViewer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getReadingRulerEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 38
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p1

    new-instance v0, Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$onBookOpened$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$onBookOpened$1;-><init>(Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl;)V

    invoke-interface {p1, v0}, Lcom/amazon/foundation/internal/IThreadPoolManager;->submitSingleThreadTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl;->future:Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method
