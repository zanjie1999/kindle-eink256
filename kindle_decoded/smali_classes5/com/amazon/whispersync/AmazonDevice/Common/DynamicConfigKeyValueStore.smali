.class public Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfigKeyValueStore;
.super Ljava/lang/Object;
.source "DynamicConfigKeyValueStore.java"


# instance fields
.field private final mKeyValueLookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfigKeyValueStore;->mKeyValueLookup:Ljava/util/Map;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfigKeyValueStore;->mKeys:Ljava/util/List;

    return-void
.end method


# virtual methods
.method addDynamicConfigKeyValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfigKeyValueStore;->isValidKeyValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    new-array p2, p1, [Ljava/lang/Object;

    const-string v0, "addDynamicConfigKeyValue: Could not add entry because it was invalid."

    .line 24
    invoke-static {v0, p2}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfigKeyValueStore;->mKeys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfigKeyValueStore;->mKeyValueLookup:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method

.method public getKey(J)Ljava/lang/String;
    .locals 3

    .line 41
    invoke-virtual {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfigKeyValueStore;->getNumKeys()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "getKey: index out of range"

    .line 43
    invoke-static {p2, p1}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfigKeyValueStore;->mKeys:Ljava/util/List;

    long-to-int p2, p1

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getNumKeys()J
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfigKeyValueStore;->mKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getValue(J)Ljava/lang/String;
    .locals 3

    .line 52
    invoke-virtual {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfigKeyValueStore;->getNumKeys()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "getValue: index out of range"

    .line 54
    invoke-static {p2, p1}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfigKeyValueStore;->mKeys:Ljava/util/List;

    long-to-int p2, p1

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 60
    iget-object p2, p0, Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfigKeyValueStore;->mKeyValueLookup:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getValueByKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfigKeyValueStore;->mKeyValueLookup:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public isValidKeyValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 70
    invoke-static {p1}, Lcom/amazon/whispersync/AmazonDevice/Common/RequestValidationHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "isValidKeyValue: Key/Value combination was invalid. Key was null or empty"

    .line 72
    invoke-static {p2, p1}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_0
    if-nez p2, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "isValidKeyValue: Key/Value combination was invalid. Value was null"

    .line 78
    invoke-static {p2, p1}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 82
    :cond_1
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfigKeyValueStore;->getValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "isValidKeyValue: Key/Value combination was invalid. The key was already added."

    .line 84
    invoke-static {p2, p1}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method
