.class public Lcom/amazon/messaging/odot/webservices/ClassConfigurationParser;
.super Ljava/lang/Object;
.source "ClassConfigurationParser.java"


# static fields
.field private static final CLASS_ELE_KEY_ATT_NAME:Ljava/lang/String; = "key"

.field private static final CLASS_ELE_NAME:Ljava/lang/String; = "class"

.field private static final CLASS_ELE_VALUE_ATT_NAME:Ljava/lang/String; = "value"

.field private static final CLASS_RESOURCE_NAME:Ljava/lang/String; = "dcp_class_configuration"

.field private static final RESOURCE_NOT_FOUND:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mKeyToClassName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mRefHelper:Lcom/amazon/messaging/odot/webservices/util/ReflectionHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lcom/amazon/messaging/odot/webservices/ClassConfigurationParser;

    invoke-static {v0}, Lcom/amazon/messaging/odot/util/OdotMessageUtil;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/messaging/odot/webservices/ClassConfigurationParser;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/ClassConfigurationParser;->mContext:Landroid/content/Context;

    .line 36
    new-instance p1, Lcom/amazon/messaging/odot/webservices/util/ReflectionHelper;

    invoke-direct {p1}, Lcom/amazon/messaging/odot/webservices/util/ReflectionHelper;-><init>()V

    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/ClassConfigurationParser;->mRefHelper:Lcom/amazon/messaging/odot/webservices/util/ReflectionHelper;

    return-void
.end method

.method private createClass(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 139
    sget-object v0, Lcom/amazon/messaging/odot/webservices/ClassConfigurationParser;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 140
    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Attempting to create %s with android.content.Context constructor."

    .line 139
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/messaging/odot/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ClassConfigurationParser;->mRefHelper:Lcom/amazon/messaging/odot/webservices/util/ReflectionHelper;

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v2, v4

    .line 142
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-array v1, v1, [Landroid/content/Context;

    iget-object v3, p0, Lcom/amazon/messaging/odot/webservices/ClassConfigurationParser;->mContext:Landroid/content/Context;

    aput-object v3, v1, v4

    .line 143
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 141
    invoke-virtual {v0, p1, v2, v1}, Lcom/amazon/messaging/odot/webservices/util/ReflectionHelper;->createInstance(Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 147
    sget-object v0, Lcom/amazon/messaging/odot/webservices/ClassConfigurationParser;->TAG:Ljava/lang/String;

    const-string v1, "No Context constructor found, attempting default constructor"

    invoke-static {v0, v1}, Lcom/amazon/messaging/odot/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ClassConfigurationParser;->mRefHelper:Lcom/amazon/messaging/odot/webservices/util/ReflectionHelper;

    invoke-virtual {v0, p1}, Lcom/amazon/messaging/odot/webservices/util/ReflectionHelper;->createInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private getClass(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Lcom/amazon/messaging/odot/webservices/ClassConfigurationParser;->getKeyToClassName()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 53
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 60
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 61
    invoke-virtual {p2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 62
    sget-object v4, Lcom/amazon/messaging/odot/webservices/ClassConfigurationParser;->TAG:Ljava/lang/String;

    const-string v5, "key %s specified a class %s which is not assignable from class %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v2

    aput-object v0, v6, v3

    const/4 p1, 0x2

    .line 65
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v6, p1

    .line 62
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/amazon/messaging/odot/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 69
    :cond_1
    invoke-virtual {v4, p2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    .line 70
    invoke-direct {p0, p1}, Lcom/amazon/messaging/odot/webservices/ClassConfigurationParser;->createClass(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 72
    :catch_0
    sget-object p1, Lcom/amazon/messaging/odot/webservices/ClassConfigurationParser;->TAG:Ljava/lang/String;

    new-array p2, v3, [Ljava/lang/Object;

    aput-object v0, p2, v2

    const-string v0, "class %s does not exist."

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/messaging/odot/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 54
    :cond_2
    :goto_0
    sget-object p2, Lcom/amazon/messaging/odot/webservices/ClassConfigurationParser;->TAG:Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "The configuration file does not have a key for %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/messaging/odot/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private declared-synchronized getKeyToClassName()Ljava/util/Map;
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

    monitor-enter p0

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ClassConfigurationParser;->mKeyToClassName:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 79
    invoke-direct {p0}, Lcom/amazon/messaging/odot/webservices/ClassConfigurationParser;->parseClassConfigurationFile()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/messaging/odot/webservices/ClassConfigurationParser;->mKeyToClassName:Ljava/util/Map;

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ClassConfigurationParser;->mKeyToClassName:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getResourceId()I
    .locals 4

    .line 134
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ClassConfigurationParser;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/messaging/odot/webservices/ClassConfigurationParser;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dcp_class_configuration"

    const-string/jumbo v3, "xml"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private parseClassConfigurationFile()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Lcom/amazon/messaging/odot/webservices/ClassConfigurationParser;->getResourceId()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 88
    sget-object v0, Lcom/amazon/messaging/odot/webservices/ClassConfigurationParser;->TAG:Ljava/lang/String;

    const-string v2, "Could not find class configuration file dcp_class_configuration.xml"

    invoke-static {v0, v2}, Lcom/amazon/messaging/odot/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 92
    :cond_0
    iget-object v2, p0, Lcom/amazon/messaging/odot/webservices/ClassConfigurationParser;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    const-string v2, "XML class configuration could not be parsed"

    if-nez v0, :cond_2

    .line 95
    :try_start_0
    sget-object v3, Lcom/amazon/messaging/odot/webservices/ClassConfigurationParser;->TAG:Ljava/lang/String;

    const-string v4, "Could not get xml for file dcp_class_configuration.xml"

    invoke-static {v3, v4}, Lcom/amazon/messaging/odot/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 106
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_1
    return-object v1

    .line 99
    :cond_2
    :try_start_1
    invoke-direct {p0, v0}, Lcom/amazon/messaging/odot/webservices/ClassConfigurationParser;->parserToMap(Landroid/content/res/XmlResourceParser;)Ljava/util/Map;

    move-result-object v1
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 106
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_3
    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 103
    :try_start_2
    sget-object v3, Lcom/amazon/messaging/odot/webservices/ClassConfigurationParser;->TAG:Ljava/lang/String;

    invoke-static {v3, v2, v1}, Lcom/amazon/messaging/odot/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v0, :cond_4

    goto :goto_0

    :catch_1
    move-exception v1

    .line 101
    sget-object v3, Lcom/amazon/messaging/odot/webservices/ClassConfigurationParser;->TAG:Ljava/lang/String;

    invoke-static {v3, v2, v1}, Lcom/amazon/messaging/odot/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_4

    .line 106
    :goto_0
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 110
    :cond_4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0

    :goto_1
    if-eqz v0, :cond_5

    .line 106
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 108
    :cond_5
    throw v1
.end method

.method private parserToMap(Landroid/content/res/XmlResourceParser;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 115
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v1

    :goto_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 118
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "class"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    const-string v2, "key"

    .line 119
    invoke-interface {p1, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "value"

    .line 120
    invoke-interface {p1, v1, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_0

    .line 123
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    :cond_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public getClassFromConfigurationFile(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/amazon/messaging/odot/webservices/ClassConfigurationParser;->getClass(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 45
    invoke-direct {p0, p3}, Lcom/amazon/messaging/odot/webservices/ClassConfigurationParser;->createClass(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    return-object p1
.end method
