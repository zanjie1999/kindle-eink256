.class public final Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfiguration;
.super Ljava/lang/Object;
.source "DynamicConfiguration.java"


# static fields
.field private static final DEFAULT_STORAGE:Lcom/amazon/whispersync/AmazonDevice/Common/DefaultStorage;

.field private static sStorage:Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfigurationStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Common/DefaultStorage;

    invoke-direct {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/DefaultStorage;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfiguration;->DEFAULT_STORAGE:Lcom/amazon/whispersync/AmazonDevice/Common/DefaultStorage;

    .line 8
    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfiguration;->sStorage:Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfigurationStorage;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear()V
    .locals 1

    .line 72
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfiguration;->sStorage:Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfigurationStorage;

    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfigurationStorage;->clear()V

    return-void
.end method

.method public static getBool(Ljava/lang/String;Z)Z
    .locals 1

    .line 46
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfiguration;->sStorage:Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfigurationStorage;

    invoke-virtual {v0, p0, p1}, Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfigurationStorage;->getBool(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getInt(Ljava/lang/String;I)I
    .locals 1

    .line 41
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfiguration;->sStorage:Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfigurationStorage;

    invoke-virtual {v0, p0, p1}, Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfigurationStorage;->getNum(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 29
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfiguration;->sStorage:Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfigurationStorage;

    invoke-virtual {v0, p0}, Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfigurationStorage;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    return-object p0
.end method

.method public static setBool(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfigInvalidException;
        }
    .end annotation

    .line 65
    invoke-static {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfiguration;->throwIfKeyIsInvalid(Ljava/lang/String;)V

    .line 67
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfiguration;->sStorage:Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfigurationStorage;

    invoke-virtual {v0, p0, p1}, Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfigurationStorage;->setBool(Ljava/lang/String;Z)V

    return-void
.end method

.method public static setInt(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfigInvalidException;
        }
    .end annotation

    .line 58
    invoke-static {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfiguration;->throwIfKeyIsInvalid(Ljava/lang/String;)V

    .line 60
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfiguration;->sStorage:Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfigurationStorage;

    invoke-virtual {v0, p0, p1}, Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfigurationStorage;->setNum(Ljava/lang/String;I)V

    return-void
.end method

.method public static setStorage(Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfigurationStorage;)V
    .locals 0

    if-nez p0, :cond_0

    .line 19
    sget-object p0, Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfiguration;->DEFAULT_STORAGE:Lcom/amazon/whispersync/AmazonDevice/Common/DefaultStorage;

    sput-object p0, Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfiguration;->sStorage:Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfigurationStorage;

    goto :goto_0

    .line 23
    :cond_0
    sput-object p0, Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfiguration;->sStorage:Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfigurationStorage;

    :goto_0
    return-void
.end method

.method public static setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfigInvalidException;
        }
    .end annotation

    .line 51
    invoke-static {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfiguration;->throwIfKeyIsInvalid(Ljava/lang/String;)V

    .line 53
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfiguration;->sStorage:Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfigurationStorage;

    invoke-virtual {v0, p0, p1}, Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfigurationStorage;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static throwIfKeyIsInvalid(Ljava/lang/String;)V
    .locals 1

    .line 87
    invoke-static {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfiguration;->validKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const-string p0, "Setting dynamic config failed because the key was null or empty."

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 90
    invoke-static {p0, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static validKey(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 77
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
