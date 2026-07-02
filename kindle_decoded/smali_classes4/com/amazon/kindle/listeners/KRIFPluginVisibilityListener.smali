.class public Lcom/amazon/kindle/listeners/KRIFPluginVisibilityListener;
.super Ljava/lang/Object;
.source "KRIFPluginVisibilityListener.java"

# interfaces
.implements Lcom/amazon/krf/platform/PluginVisibilityLifeCycleListener;


# static fields
.field private static final AUDIO_PLUGIN:Ljava/lang/String; = "AudioPlugin"

.field private static final ID_KEY:Ljava/lang/String; = "Id"

.field private static final IMAGE_KRF:Ljava/lang/String; = "ImageKRF"

.field private static final IMAGE_PLUGIN:Ljava/lang/String; = "ImagePlugin"

.field private static final NAME_KEY:Ljava/lang/String; = "Name"

.field private static final PAGE_TYPE:Ljava/lang/String; = "AVI"

.field private static final PLUGIN_AVAILABLE:Ljava/lang/String; = "PluginAvailable"

.field private static final PLUGIN_HIDDEN:Ljava/lang/String; = "PluginHidden"

.field private static final PLUGIN_SHOWN:Ljava/lang/String; = "PluginShown"

.field private static final PLUGIN_UNAVAILABLE:Ljava/lang/String; = "PluginUnavailable"

.field private static final TAG:Ljava/lang/String; = "KRIFPluginVisibilityListener"

.field private static final TIMESTAMP_KEY:Ljava/lang/String; = "Timestamp"

.field private static final VIDEO_PLUGIN:Ljava/lang/String; = "VideoPlugin"

.field private static final WEBVIEW_PLUGIN:Ljava/lang/String; = "WebViewPlugin"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPluginVisibilityLifeCycleChange(Lcom/amazon/krf/platform/PluginVisibilityLifeCycleEvent;)V
    .locals 7

    .line 36
    invoke-virtual {p1}, Lcom/amazon/krf/platform/PluginVisibilityLifeCycleEvent;->getPluginName()Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/listeners/KRIFPluginVisibilityListener;->shouldRecordMetricsForPlugin(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 42
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/krf/platform/PluginVisibilityLifeCycleEvent;->getTimeStamp()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    .line 43
    invoke-virtual {p1}, Lcom/amazon/krf/platform/PluginVisibilityLifeCycleEvent;->getPluginID()Ljava/lang/String;

    move-result-object v2

    .line 45
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "Name"

    .line 46
    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "Timestamp"

    .line 47
    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "Id"

    .line 48
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v4, Lcom/amazon/kindle/listeners/KRIFPluginVisibilityListener$1;->$SwitchMap$com$amazon$krf$platform$PluginVisibilityLifeCycleEvent$PluginVisibilityLifeCycleEnum:[I

    invoke-virtual {p1}, Lcom/amazon/krf/platform/PluginVisibilityLifeCycleEvent;->getEventType()Lcom/amazon/krf/platform/PluginVisibilityLifeCycleEvent$PluginVisibilityLifeCycleEnum;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v4, p1

    const/4 v4, 0x1

    const-string v5, "AVI"

    const-string v6, " "

    if-eq p1, v4, :cond_4

    const/4 v4, 0x2

    if-eq p1, v4, :cond_3

    const/4 v4, 0x3

    if-eq p1, v4, :cond_2

    const/4 v4, 0x4

    if-eq p1, v4, :cond_1

    goto/16 :goto_0

    .line 67
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PLUGIN_UNAVAILABLE: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string p1, "PluginUnavailable"

    .line 68
    invoke-static {v5, p1, v3}, Lcom/amazon/metrics/ClickstreamMetrics;->recordEventWithMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 62
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PLUGIN_HIDDEN: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string p1, "PluginHidden"

    .line 63
    invoke-static {v5, p1, v3}, Lcom/amazon/metrics/ClickstreamMetrics;->recordEventWithMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 57
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PLUGIN_SHOWN: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string p1, "PluginShown"

    .line 58
    invoke-static {v5, p1, v3}, Lcom/amazon/metrics/ClickstreamMetrics;->recordEventWithMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 52
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PLUGIN_AVAILABLE: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string p1, "PluginAvailable"

    .line 53
    invoke-static {v5, p1, v3}, Lcom/amazon/metrics/ClickstreamMetrics;->recordEventWithMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :goto_0
    return-void
.end method

.method shouldRecordMetricsForPlugin(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "AudioPlugin"

    .line 75
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ImageKRF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ImagePlugin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "VideoPlugin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "WebViewPlugin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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
