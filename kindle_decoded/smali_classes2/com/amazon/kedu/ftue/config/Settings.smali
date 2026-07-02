.class public Lcom/amazon/kedu/ftue/config/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# static fields
.field private static final INSTANCE:Lcom/amazon/kedu/ftue/config/Settings;


# instance fields
.field private enabledForFormats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kedu/ftue/util/Format;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lcom/amazon/kedu/ftue/config/Settings;

    invoke-direct {v0}, Lcom/amazon/kedu/ftue/config/Settings;-><init>()V

    sput-object v0, Lcom/amazon/kedu/ftue/config/Settings;->INSTANCE:Lcom/amazon/kedu/ftue/config/Settings;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kedu/ftue/config/Settings;->enabledForFormats:Ljava/util/Map;

    return-void
.end method

.method public static isEnabled(Lcom/amazon/kedu/ftue/util/Format;)Z
    .locals 1

    .line 111
    sget-object v0, Lcom/amazon/kedu/ftue/config/Settings;->INSTANCE:Lcom/amazon/kedu/ftue/config/Settings;

    invoke-virtual {v0, p0}, Lcom/amazon/kedu/ftue/config/Settings;->isEnableInstance(Lcom/amazon/kedu/ftue/util/Format;)Z

    move-result p0

    return p0
.end method

.method public static setEnabled(Lcom/amazon/kedu/ftue/util/Format;Z)V
    .locals 1

    .line 101
    sget-object v0, Lcom/amazon/kedu/ftue/config/Settings;->INSTANCE:Lcom/amazon/kedu/ftue/config/Settings;

    invoke-virtual {v0, p0, p1}, Lcom/amazon/kedu/ftue/config/Settings;->setEnabledInstance(Lcom/amazon/kedu/ftue/util/Format;Z)V

    return-void
.end method


# virtual methods
.method getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 1

    .line 74
    invoke-static {}, Lcom/amazon/kedu/ftue/Plugin;->getSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    return-object v0
.end method

.method isEnableInstance(Lcom/amazon/kedu/ftue/util/Format;)Z
    .locals 5

    if-eqz p1, :cond_4

    .line 39
    iget-object v0, p0, Lcom/amazon/kedu/ftue/config/Settings;->enabledForFormats:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 41
    const-class v0, Lcom/amazon/kedu/ftue/config/Settings;

    monitor-enter v0

    .line 44
    :try_start_0
    sget-object v1, Lcom/amazon/kedu/ftue/config/Settings$1;->$SwitchMap$com$amazon$kedu$ftue$util$Format:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 50
    :cond_0
    sget v1, Lcom/amazon/kedu/ftue/R$bool;->kedu_ftue_enabled_on_reflowable:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 47
    :cond_1
    sget v1, Lcom/amazon/kedu/ftue/R$bool;->kedu_ftue_enabled_on_fixed_format:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 59
    invoke-virtual {p0}, Lcom/amazon/kedu/ftue/config/Settings;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 60
    invoke-interface {v3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 62
    invoke-interface {v3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 65
    :cond_2
    iget-object v1, p0, Lcom/amazon/kedu/ftue/config/Settings;->enabledForFormats:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 69
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/amazon/kedu/ftue/config/Settings;->enabledForFormats:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 36
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid format type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setEnabledInstance(Lcom/amazon/kedu/ftue/util/Format;Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 88
    const-class v0, Lcom/amazon/kedu/ftue/config/Settings;

    monitor-enter v0

    .line 90
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kedu/ftue/config/Settings;->enabledForFormats:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 86
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid format"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
