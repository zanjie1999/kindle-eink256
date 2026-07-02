.class public final Lcom/amazon/bookwizard/util/M;
.super Ljava/lang/Object;
.source "M.java"


# static fields
.field private static final FB_PREFIX:Ljava/lang/String; = "FB.BookWizard."

.field private static final PREFIX:Ljava/lang/String; = "BookWizard."

.field private static final TAG:Ljava/lang/String; = "com.amazon.bookwizard.util.M"

.field private static am:Lcom/amazon/kindle/krx/application/IApplicationManager;

.field private static metrics:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

.field private static rse:Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static action(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 83
    invoke-static {p0, p1, v0, v1}, Lcom/amazon/bookwizard/util/M;->action(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    return-void
.end method

.method public static action(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 97
    invoke-static {p0, p1, v0, p2}, Lcom/amazon/bookwizard/util/M;->action(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    return-void
.end method

.method public static action(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    const/4 v0, 0x1

    .line 111
    invoke-static {p0, p1, p2, v0}, Lcom/amazon/bookwizard/util/M;->action(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    return-void
.end method

.method public static action(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V
    .locals 7

    .line 127
    sget-object v0, Lcom/amazon/bookwizard/util/M;->metrics:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    if-eqz v0, :cond_0

    .line 128
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v3

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/amazon/bookwizard/util/M;->getPfmSuffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {v3, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v1, Lcom/amazon/bookwizard/util/M;->metrics:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/amazon/bookwizard/util/M;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetrics(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V

    .line 132
    :cond_0
    sget-object p3, Lcom/amazon/bookwizard/util/M;->rse:Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    const-string v0, ""

    if-eqz p3, :cond_2

    .line 133
    invoke-static {}, Lcom/amazon/bookwizard/BookWizardPlugin;->isFallback()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "FB."

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-interface {p3, v1, p1, p2}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 136
    :cond_2
    sget-object p2, Lcom/amazon/bookwizard/util/M;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[action]"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/amazon/bookwizard/BookWizardPlugin;->isFallback()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "[fallback]"

    :cond_3
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " context="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "; name="

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/amazon/bookwizard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static flush()V
    .locals 2

    .line 166
    sget-object v0, Lcom/amazon/bookwizard/util/M;->rse:Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 167
    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->invokeExplicitMessageProcessing(Z)V

    :cond_0
    return-void
.end method

.method private static getPfmSuffix()Ljava/lang/String;
    .locals 2

    .line 186
    sget-object v0, Lcom/amazon/bookwizard/util/M;->am:Lcom/amazon/kindle/krx/application/IApplicationManager;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 190
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/bookwizard/util/M;->am:Lcom/amazon/kindle/krx/application/IApplicationManager;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/application/IUserAccount;->getPreferredMarketplace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method private static getPrefix()Ljava/lang/String;
    .locals 1

    .line 177
    invoke-static {}, Lcom/amazon/bookwizard/BookWizardPlugin;->isFallback()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FB.BookWizard."

    goto :goto_0

    :cond_0
    const-string v0, "BookWizard."

    :goto_0
    return-object v0
.end method

.method public static hide(Ljava/lang/String;)V
    .locals 4

    .line 67
    sget-object v0, Lcom/amazon/bookwizard/util/M;->rse:Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    const-string v1, ""

    if-eqz v0, :cond_1

    .line 68
    invoke-static {}, Lcom/amazon/bookwizard/BookWizardPlugin;->isFallback()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "FB."

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-interface {v0, v2}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->hideContext(Ljava/lang/String;)V

    .line 71
    :cond_1
    sget-object v0, Lcom/amazon/bookwizard/util/M;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[hide]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/amazon/bookwizard/BookWizardPlugin;->isFallback()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v1, "[fallback]"

    :cond_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " context="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/amazon/bookwizard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static init(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    .line 41
    invoke-interface {p0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    sput-object v0, Lcom/amazon/bookwizard/util/M;->metrics:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    .line 42
    invoke-interface {p0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    sput-object v0, Lcom/amazon/bookwizard/util/M;->rse:Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    .line 43
    invoke-interface {p0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p0

    sput-object p0, Lcom/amazon/bookwizard/util/M;->am:Lcom/amazon/kindle/krx/application/IApplicationManager;

    return-void
.end method

.method public static show(Ljava/lang/String;)V
    .locals 4

    .line 53
    sget-object v0, Lcom/amazon/bookwizard/util/M;->rse:Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    const-string v1, ""

    if-eqz v0, :cond_1

    .line 54
    invoke-static {}, Lcom/amazon/bookwizard/BookWizardPlugin;->isFallback()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "FB."

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-interface {v0, v2}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->showContext(Ljava/lang/String;)V

    .line 57
    :cond_1
    sget-object v0, Lcom/amazon/bookwizard/util/M;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[show]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/amazon/bookwizard/BookWizardPlugin;->isFallback()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v1, "[fallback]"

    :cond_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " context="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/amazon/bookwizard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static timer(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4

    .line 150
    sget-object v0, Lcom/amazon/bookwizard/util/M;->metrics:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    if-eqz v0, :cond_0

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/amazon/bookwizard/util/M;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/amazon/bookwizard/util/M;->getPfmSuffix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p2, p3}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportTimerMetric(Ljava/lang/String;Ljava/lang/String;J)V

    .line 153
    :cond_0
    sget-object v0, Lcom/amazon/bookwizard/util/M;->rse:Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    const-string v1, ""

    if-eqz v0, :cond_2

    .line 154
    invoke-static {}, Lcom/amazon/bookwizard/BookWizardPlugin;->isFallback()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "FB."

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    new-instance v3, Lcom/amazon/bookwizard/util/M$1;

    invoke-direct {v3, p2, p3}, Lcom/amazon/bookwizard/util/M$1;-><init>(J)V

    invoke-interface {v0, v2, p1, v3}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 159
    :cond_2
    sget-object v0, Lcom/amazon/bookwizard/util/M;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[timer]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/amazon/bookwizard/BookWizardPlugin;->isFallback()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v1, "[fallback]"

    :cond_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " context="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "; name="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "; time="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/amazon/bookwizard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
