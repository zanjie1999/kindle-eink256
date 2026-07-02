.class public Lcom/amazon/readingactions/ui/layout/StartActionsLayoutFactory;
.super Ljava/lang/Object;
.source "StartActionsLayoutFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.readingactions.ui.layout.StartActionsLayoutFactory"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static create(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/ea/sidecar/def/Sidecar;)Lcom/amazon/startactions/ui/layout/Layout;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 19
    sget-object p0, Lcom/amazon/readingactions/ui/layout/StartActionsLayoutFactory;->TAG:Ljava/lang/String;

    const-string p1, "Given book is null; Cannot resolve a layout."

    invoke-static {p0, p1}, Lcom/amazon/ea/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 24
    :cond_0
    invoke-static {p0}, Lcom/amazon/readingactions/ui/helpers/StartActionsBookSupport;->isSupported(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v1

    const-string v2, "]"

    if-nez v1, :cond_2

    .line 25
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 26
    sget-object p1, Lcom/amazon/readingactions/ui/layout/StartActionsLayoutFactory;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Given book is not supported. Will not resolve a layout. [contentType="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", bookFormat="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getBookFormat()Lcom/amazon/kindle/krx/content/BookFormat;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", contentClass="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getContentClass()Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 26
    invoke-static {p1, p0}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0

    .line 35
    :cond_2
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 36
    sget-object v1, Lcom/amazon/readingactions/ui/layout/StartActionsLayoutFactory;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Checking cache for sidecar. [asin="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_3
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/startactions/metrics/SessionManager;->containsSessionMetric(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 41
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/startactions/metrics/SessionManager;->getSessionMetric(Ljava/lang/String;)Lcom/amazon/startactions/metrics/Metric;

    move-result-object v0

    .line 45
    :cond_4
    invoke-static {p1}, Lcom/amazon/readingactions/ui/layout/StartActionsLayoutResolver;->getLayout(Lcom/amazon/ea/sidecar/def/Sidecar;)Lcom/amazon/startactions/ui/layout/Layout;

    move-result-object p0

    const-string v1, "DisplayedDefaultLayout"

    if-eqz v0, :cond_5

    .line 49
    invoke-static {v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    :cond_5
    if-nez p0, :cond_8

    .line 53
    sget-object p0, Lcom/amazon/readingactions/ui/layout/StartActionsLayoutFactory;->TAG:Ljava/lang/String;

    const-string v2, "No layout resolved from sidecar! Will attempt to create default StartActions Layout."

    invoke-static {p0, v2}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-static {}, Lcom/amazon/startactions/ui/layout/DefaultLayoutFactory;->tryCreateDefaultStartActionsLayout()Lcom/amazon/startactions/ui/layout/Layout;

    move-result-object p0

    if-nez p0, :cond_6

    .line 56
    sget-object v2, Lcom/amazon/readingactions/ui/layout/StartActionsLayoutFactory;->TAG:Ljava/lang/String;

    const-string v3, "No default layout resolved.  Returning null layout."

    invoke-static {v2, v3}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    if-eqz v0, :cond_8

    .line 59
    invoke-static {v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    if-eqz p0, :cond_7

    const/4 v2, 0x1

    goto :goto_0

    :cond_7
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    :cond_8
    if-eqz v0, :cond_a

    if-eqz p1, :cond_9

    const-string v1, "RefTagSuffix"

    .line 66
    invoke-static {v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/Sidecar;->commonData:Lcom/amazon/ea/sidecar/def/CommonData;

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/CommonData;->refTagSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/amazon/startactions/metrics/Metric;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    if-eqz p0, :cond_a

    const-string p1, "LayoutTag"

    .line 69
    invoke-static {p1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-interface {p0}, Lcom/amazon/startactions/ui/layout/Layout;->getMetricsTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/amazon/startactions/metrics/Metric;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    return-object p0
.end method
