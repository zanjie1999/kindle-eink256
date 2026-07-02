.class public final Lcom/amazon/kcp/reader/ui/HushpuppyUpsellDetectorImpl;
.super Ljava/lang/Object;
.source "HushpuppyUpsellDetector.kt"

# interfaces
.implements Lcom/amazon/kcp/reader/ui/HushpuppyUpsellDetector;


# annotations
.annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
    violations = {
        .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskReadViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
    }
.end annotation


# instance fields
.field private final krx:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final prefs:Landroid/content/SharedPreferences;

.field private final weblab:Lcom/amazon/kindle/weblab/LaunchWeblab;


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/reader/ui/HushpuppyUpsellDetectorImpl;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/weblab/LaunchWeblab;Landroid/content/SharedPreferences;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/weblab/LaunchWeblab;Landroid/content/SharedPreferences;)V
    .locals 1

    const-string/jumbo v0, "weblab"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/HushpuppyUpsellDetectorImpl;->krx:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/HushpuppyUpsellDetectorImpl;->weblab:Lcom/amazon/kindle/weblab/LaunchWeblab;

    iput-object p3, p0, Lcom/amazon/kcp/reader/ui/HushpuppyUpsellDetectorImpl;->prefs:Landroid/content/SharedPreferences;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/weblab/LaunchWeblab;Landroid/content/SharedPreferences;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 2

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 136
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    const-string p5, "Utils.getFactory()"

    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    :cond_0
    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_2

    .line 137
    new-instance p2, Lcom/amazon/kindle/weblab/OnOffWeblab;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getWeblabManager()Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    move-result-object p5

    goto :goto_0

    :cond_1
    move-object p5, v0

    :goto_0
    const-string v1, "KINDLE_APP_CORE_245143"

    invoke-direct {p2, p5, v1}, Lcom/amazon/kindle/weblab/OnOffWeblab;-><init>(Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;Ljava/lang/String;)V

    :cond_2
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_4

    if-eqz p1, :cond_3

    .line 138
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p3

    if-eqz p3, :cond_3

    const/4 p4, 0x0

    const-string p5, "HPUpsellSuppression"

    invoke-virtual {p3, p5, p4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p3

    goto :goto_1

    :cond_3
    move-object p3, v0

    :cond_4
    :goto_1
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/reader/ui/HushpuppyUpsellDetectorImpl;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/weblab/LaunchWeblab;Landroid/content/SharedPreferences;)V

    return-void
.end method


# virtual methods
.method public checkAndWrapActionBarDecoration(Lcom/amazon/kindle/krx/ui/IActionBarDecoration;Ljava/lang/String;)Lcom/amazon/kindle/krx/ui/IActionBarDecoration;
    .locals 8

    const-string v0, "decoration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/HushpuppyUpsellDetectorImpl;->isSuppressionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "decoration::class.java.name"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "UpsellPlayerProvider"

    invoke-static {v0, v4, v1, v2, v3}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 143
    new-instance v0, Lcom/amazon/kcp/reader/ui/HPUpsellActionBarDecorationWrapper;

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    invoke-direct/range {v1 .. v7}, Lcom/amazon/kcp/reader/ui/HPUpsellActionBarDecorationWrapper;-><init>(Lcom/amazon/kcp/reader/ui/HushpuppyUpsellDetectorImpl;Ljava/lang/String;Lcom/amazon/kindle/krx/ui/IActionBarDecoration;Lcom/amazon/kindle/krx/thread/IThreadPoolManager;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 144
    invoke-static {}, Lcom/amazon/kcp/reader/ui/HushpuppyUpsellDetectorKt;->access$getTAG$p()Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wrapping upsell for "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-object p1, v0

    :cond_0
    return-object p1
.end method

.method public checkAndWrapLocationSeekerDecoration(Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;Ljava/lang/String;)Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;
    .locals 5

    const-string v0, "decoration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/HushpuppyUpsellDetectorImpl;->isSuppressionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecorationEx;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "decoration::class.java.name"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "PersistentFullPlayerDecoration"

    invoke-static {v0, v4, v1, v2, v3}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 155
    new-instance v0, Lcom/amazon/kcp/reader/ui/HPLocationSeekerDecorationWrapper;

    check-cast p1, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecorationEx;

    invoke-direct {v0, p0, p2, p1}, Lcom/amazon/kcp/reader/ui/HPLocationSeekerDecorationWrapper;-><init>(Lcom/amazon/kcp/reader/ui/HushpuppyUpsellDetectorImpl;Ljava/lang/String;Lcom/amazon/kindle/krx/ui/ILocationSeekerDecorationEx;)V

    .line 156
    invoke-static {}, Lcom/amazon/kcp/reader/ui/HushpuppyUpsellDetectorKt;->access$getTAG$p()Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wrapping seeker for "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-object p1, v0

    :cond_0
    return-object p1
.end method

.method public isSuppressionEnabled()Z
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskReadViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/HushpuppyUpsellDetectorImpl;->prefs:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "WeblabOverride"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    .line 176
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/HushpuppyUpsellDetectorImpl;->weblab:Lcom/amazon/kindle/weblab/LaunchWeblab;

    invoke-interface {v0}, Lcom/amazon/kindle/weblab/LaunchWeblab;->recordTrigger()V

    .line 179
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/HushpuppyUpsellDetectorImpl;->weblab:Lcom/amazon/kindle/weblab/LaunchWeblab;

    invoke-interface {v0}, Lcom/amazon/kindle/weblab/LaunchWeblab;->isOn()Z

    move-result v0

    return v0
.end method
