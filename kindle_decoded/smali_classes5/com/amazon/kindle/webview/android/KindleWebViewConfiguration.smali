.class public final Lcom/amazon/kindle/webview/android/KindleWebViewConfiguration;
.super Ljava/lang/Object;
.source "KindleWebViewConfiguration.kt"


# instance fields
.field private enableAutoTextResizing:Z

.field private enableOfflineSupport:Z

.field private enableReloadOnThemeChange:Z

.field private metricsId:Ljava/lang/String;

.field private requestQueryParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private requestTimeout:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, "metricsId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/webview/android/KindleWebViewConfiguration;->metricsId:Ljava/lang/String;

    const-wide/16 v0, 0x4e20

    .line 7
    iput-wide v0, p0, Lcom/amazon/kindle/webview/android/KindleWebViewConfiguration;->requestTimeout:J

    .line 13
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/webview/android/KindleWebViewConfiguration;->requestQueryParams:Ljava/util/Map;

    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lcom/amazon/kindle/webview/android/KindleWebViewConfiguration;->enableAutoTextResizing:Z

    .line 24
    iput-boolean p1, p0, Lcom/amazon/kindle/webview/android/KindleWebViewConfiguration;->enableReloadOnThemeChange:Z

    .line 29
    iput-boolean p1, p0, Lcom/amazon/kindle/webview/android/KindleWebViewConfiguration;->enableOfflineSupport:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/amazon/kindle/webview/android/KindleWebViewConfiguration;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kindle/webview/android/KindleWebViewConfiguration;

    iget-object v0, p0, Lcom/amazon/kindle/webview/android/KindleWebViewConfiguration;->metricsId:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/kindle/webview/android/KindleWebViewConfiguration;->metricsId:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getEnableAutoTextResizing()Z
    .locals 1

    .line 18
    iget-boolean v0, p0, Lcom/amazon/kindle/webview/android/KindleWebViewConfiguration;->enableAutoTextResizing:Z

    return v0
.end method

.method public final getEnableOfflineSupport()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lcom/amazon/kindle/webview/android/KindleWebViewConfiguration;->enableOfflineSupport:Z

    return v0
.end method

.method public final getEnableReloadOnThemeChange()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lcom/amazon/kindle/webview/android/KindleWebViewConfiguration;->enableReloadOnThemeChange:Z

    return v0
.end method

.method public final getMetricsId()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/amazon/kindle/webview/android/KindleWebViewConfiguration;->metricsId:Ljava/lang/String;

    return-object v0
.end method

.method public final getRequestQueryParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/amazon/kindle/webview/android/KindleWebViewConfiguration;->requestQueryParams:Ljava/util/Map;

    return-object v0
.end method

.method public final getRequestTimeout()J
    .locals 2

    .line 7
    iget-wide v0, p0, Lcom/amazon/kindle/webview/android/KindleWebViewConfiguration;->requestTimeout:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/webview/android/KindleWebViewConfiguration;->metricsId:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final setRequestQueryParams(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iput-object p1, p0, Lcom/amazon/kindle/webview/android/KindleWebViewConfiguration;->requestQueryParams:Ljava/util/Map;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KindleWebViewConfiguration(metricsId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/webview/android/KindleWebViewConfiguration;->metricsId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
