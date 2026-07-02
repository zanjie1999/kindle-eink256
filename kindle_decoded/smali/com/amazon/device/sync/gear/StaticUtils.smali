.class public final Lcom/amazon/device/sync/gear/StaticUtils;
.super Ljava/lang/Object;
.source "StaticUtils.java"


# static fields
.field private static final MAPPER:Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;

.field private static final MAX_TOKEN_SIZE_BYTES:I = 0x4

.field private static final UTF_8:Ljava/nio/charset/Charset;

.field private static sConsumerId:Ljava/lang/String;

.field private static sReadFromFile:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 30
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/sync/gear/StaticUtils;->UTF_8:Ljava/nio/charset/Charset;

    .line 32
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;

    invoke-direct {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;-><init>()V

    sput-object v0, Lcom/amazon/device/sync/gear/StaticUtils;->MAPPER:Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;

    const/4 v0, 0x0

    .line 33
    sput-object v0, Lcom/amazon/device/sync/gear/StaticUtils;->sConsumerId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 34
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/sync/gear/StaticUtils;->sReadFromFile:Ljava/lang/Boolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ensureNotRunningOnMainThread()V
    .locals 4

    .line 43
    invoke-static {}, Lcom/amazon/whispersync/dcp/framework/ThreadHelpers;->isRunningOnMainThread()Z

    move-result v0

    const-class v1, Ljava/lang/IllegalStateException;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Cannot call this method on the main thread."

    invoke-static {v0, v1, v3, v2}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkFalse(ZLjava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static readConsumerId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    sget-object v0, Lcom/amazon/device/sync/gear/StaticUtils;->sReadFromFile:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 69
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/sync/gear/StaticUtils;->sReadFromFile:Ljava/lang/Boolean;

    .line 72
    :try_start_0
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string/jumbo v1, "sync-assets.properties"

    invoke-virtual {p0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 74
    invoke-virtual {v0, p0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string/jumbo p0, "wsyncConsumerId"

    .line 75
    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/amazon/device/sync/gear/StaticUtils;->sConsumerId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :catch_0
    :cond_0
    sget-object p0, Lcom/amazon/device/sync/gear/StaticUtils;->sConsumerId:Ljava/lang/String;

    return-object p0
.end method

.method public static splitCollection(Ljava/util/Collection;I)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;I)",
            "Ljava/util/Collection<",
            "Ljava/util/Collection<",
            "TT;>;>;"
        }
    .end annotation

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 53
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 58
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    if-lt v2, p1, :cond_0

    .line 60
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method
