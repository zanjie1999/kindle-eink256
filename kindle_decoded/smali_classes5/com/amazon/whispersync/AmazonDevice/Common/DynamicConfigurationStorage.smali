.class public abstract Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfigurationStorage;
.super Ljava/lang/Object;
.source "DynamicConfigurationStorage.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setGlobalStorage(Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfigurationStorage;)V
    .locals 0

    .line 9
    invoke-static {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfiguration;->setStorage(Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfigurationStorage;)V

    return-void
.end method


# virtual methods
.method public abstract clear()V
.end method

.method public abstract getBool(Ljava/lang/String;Z)Z
.end method

.method public abstract getNum(Ljava/lang/String;I)I
.end method

.method public abstract getString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public processDynamicConfigMessage(Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfigInvalidException;
        }
    .end annotation

    .line 14
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfigParser;

    invoke-direct {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfigParser;-><init>()V

    .line 15
    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfigParser;->parse(Ljava/lang/String;)Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfigKeyValueStore;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    int-to-long v1, v0

    .line 17
    invoke-virtual {p1}, Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfigKeyValueStore;->getNumKeys()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    .line 19
    invoke-virtual {p1, v1, v2}, Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfigKeyValueStore;->getKey(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v2}, Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfigKeyValueStore;->getValue(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfigurationStorage;->setString(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public abstract removeValue(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfigInvalidException;
        }
    .end annotation
.end method

.method public abstract setBool(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfigInvalidException;
        }
    .end annotation
.end method

.method public abstract setNum(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfigInvalidException;
        }
    .end annotation
.end method

.method public abstract setString(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfigInvalidException;
        }
    .end annotation
.end method
