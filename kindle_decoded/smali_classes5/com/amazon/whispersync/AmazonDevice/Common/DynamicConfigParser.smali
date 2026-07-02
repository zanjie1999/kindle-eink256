.class public Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfigParser;
.super Ljava/lang/Object;
.source "DynamicConfigParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfigKeyValueStore;
    .locals 1

    if-nez p1, :cond_0

    .line 16
    new-instance p1, Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfigKeyValueStore;

    invoke-direct {p1}, Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfigKeyValueStore;-><init>()V

    goto :goto_0

    :cond_0
    const-string v0, "\n"

    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfigParser;->parse([Ljava/lang/String;)Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfigKeyValueStore;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public parse([Ljava/lang/String;)Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfigKeyValueStore;
    .locals 8

    .line 29
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfigKeyValueStore;

    invoke-direct {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfigKeyValueStore;-><init>()V

    if-eqz p1, :cond_4

    .line 31
    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_2

    .line 36
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, p1, v3

    .line 38
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    const-string v5, "="

    .line 43
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    const/4 v7, 0x1

    if-ne v5, v6, :cond_2

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v4, v5, v2

    const-string/jumbo v4, "parse: Cannot add \'%s\'. Does not have a clear key/value seperation."

    .line 46
    invoke-static {v4, v5}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 50
    :cond_2
    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    .line 51
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 53
    invoke-virtual {v0, v6, v4}, Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfigKeyValueStore;->addDynamicConfigKeyValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v6, v5, v2

    aput-object v4, v5, v7

    const-string/jumbo v4, "parse: key:\'%s\' and value:\'%s\' could not be added."

    .line 56
    invoke-static {v4, v5}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-object v0
.end method
