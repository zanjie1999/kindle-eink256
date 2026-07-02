.class public Lcom/amazon/xray/plugin/util/NavigatorUtil;
.super Ljava/lang/Object;
.source "NavigatorUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.xray.plugin.util.NavigatorUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createPosition(I)Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 3

    .line 101
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 103
    sget-object p0, Lcom/amazon/xray/plugin/util/NavigatorUtil;->TAG:Ljava/lang/String;

    const-string v0, "error creating position, unable to get current book navigator"

    invoke-static {p0, v0}, Lcom/amazon/xray/plugin/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 109
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getPositionFactory()Lcom/amazon/kindle/krx/reader/IPositionFactory;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    .line 115
    sget-object p0, Lcom/amazon/xray/plugin/util/NavigatorUtil;->TAG:Ljava/lang/String;

    const-string v0, "error creating position, unable to get current book position factory"

    invoke-static {p0, v0}, Lcom/amazon/xray/plugin/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 119
    :cond_1
    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/reader/IPositionFactory;->createFromInt(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 111
    sget-object v0, Lcom/amazon/xray/plugin/util/NavigatorUtil;->TAG:Ljava/lang/String;

    const-string v2, "error creating position, sdk claims illegal state"

    invoke-static {v0, v2, p0}, Lcom/amazon/xray/plugin/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public static getCurrentPageEnd()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 4

    .line 74
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 76
    sget-object v0, Lcom/amazon/xray/plugin/util/NavigatorUtil;->TAG:Ljava/lang/String;

    const-string v2, "error getting end page position, unable to get navigator for current book"

    invoke-static {v0, v2}, Lcom/amazon/xray/plugin/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 82
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getCurrentPageEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    if-nez v1, :cond_1

    .line 84
    sget-object v0, Lcom/amazon/xray/plugin/util/NavigatorUtil;->TAG:Ljava/lang/String;

    const-string v2, "error getting end page position, sdk returned null page end"

    invoke-static {v0, v2}, Lcom/amazon/xray/plugin/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 87
    sget-object v2, Lcom/amazon/xray/plugin/util/NavigatorUtil;->TAG:Ljava/lang/String;

    const-string v3, "error getting end page position, sdk claims illegal state"

    invoke-static {v2, v3, v0}, Lcom/amazon/xray/plugin/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-object v1
.end method

.method public static getCurrentPageRange()Lcom/amazon/xray/model/object/PositionRange;
    .locals 4

    .line 31
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 33
    sget-object v0, Lcom/amazon/xray/plugin/util/NavigatorUtil;->TAG:Ljava/lang/String;

    const-string v2, "error getting page, unable to get navigator for current book"

    invoke-static {v0, v2}, Lcom/amazon/xray/plugin/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 40
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getCurrentPageStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    if-nez v2, :cond_1

    .line 42
    sget-object v0, Lcom/amazon/xray/plugin/util/NavigatorUtil;->TAG:Ljava/lang/String;

    const-string v2, "error getting page, sdk returned null page start"

    invoke-static {v0, v2}, Lcom/amazon/xray/plugin/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 45
    :cond_1
    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    .line 47
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getCurrentPageEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    if-nez v0, :cond_2

    .line 49
    sget-object v0, Lcom/amazon/xray/plugin/util/NavigatorUtil;->TAG:Ljava/lang/String;

    const-string v2, "error getting page, sdk returned null page end"

    invoke-static {v0, v2}, Lcom/amazon/xray/plugin/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 52
    :cond_2
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    if-gez v2, :cond_3

    .line 59
    sget-object v0, Lcom/amazon/xray/plugin/util/NavigatorUtil;->TAG:Ljava/lang/String;

    const-string v2, "error getting page, sdk returned negative page start"

    invoke-static {v0, v2}, Lcom/amazon/xray/plugin/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_3
    if-ge v0, v2, :cond_4

    .line 63
    sget-object v0, Lcom/amazon/xray/plugin/util/NavigatorUtil;->TAG:Ljava/lang/String;

    const-string v1, "sdk returned negative page length, assuming zero length"

    invoke-static {v0, v1}, Lcom/amazon/xray/plugin/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 67
    :cond_4
    new-instance v1, Lcom/amazon/xray/model/object/PositionRange;

    sub-int/2addr v0, v2

    invoke-direct {v1, v2, v0}, Lcom/amazon/xray/model/object/PositionRange;-><init>(II)V

    return-object v1

    :catch_0
    move-exception v0

    .line 54
    sget-object v2, Lcom/amazon/xray/plugin/util/NavigatorUtil;->TAG:Ljava/lang/String;

    const-string v3, "error getting page, sdk claims illegal state"

    invoke-static {v2, v3, v0}, Lcom/amazon/xray/plugin/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public static getPercentageThroughBook()I
    .locals 3

    .line 127
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 129
    sget-object v0, Lcom/amazon/xray/plugin/util/NavigatorUtil;->TAG:Ljava/lang/String;

    const-string v2, "error getting percentage through book, unable to get current book navigator"

    invoke-static {v0, v2}, Lcom/amazon/xray/plugin/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 132
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    .line 133
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getCurrentPageEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    if-eqz v2, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    .line 138
    :cond_1
    invoke-interface {v0, v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getPercentage(Lcom/amazon/kindle/krx/reader/IPosition;)D

    move-result-wide v0

    double-to-int v0, v0

    return v0

    .line 135
    :cond_2
    :goto_0
    sget-object v0, Lcom/amazon/xray/plugin/util/NavigatorUtil;->TAG:Ljava/lang/String;

    const-string v2, "error getting percentage through book, cannot get necessary positions"

    invoke-static {v0, v2}, Lcom/amazon/xray/plugin/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static goToPosition(Lcom/amazon/kindle/krx/reader/IPosition;)V
    .locals 4

    .line 148
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    .line 150
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v1

    if-nez v1, :cond_0

    .line 152
    sget-object p0, Lcom/amazon/xray/plugin/util/NavigatorUtil;->TAG:Ljava/lang/String;

    const-string v0, "error going to position, unable to get current book navigator"

    invoke-static {p0, v0}, Lcom/amazon/xray/plugin/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v2, 0x1

    const-string v3, "Xray"

    .line 156
    invoke-interface {v1, p0, v2, v3}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->goToPosition(Lcom/amazon/kindle/krx/reader/IPosition;ZLjava/lang/String;)V

    .line 159
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p0

    const-class v0, Lcom/amazon/xray/plugin/util/NavigatorUtil;

    invoke-interface {p0, v0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p0

    .line 160
    new-instance v0, Lcom/amazon/xray/plugin/event/XrayNavigationEvent;

    invoke-direct {v0}, Lcom/amazon/xray/plugin/event/XrayNavigationEvent;-><init>()V

    invoke-interface {p0, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method
