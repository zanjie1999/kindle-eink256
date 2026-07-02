.class public Lcom/amazon/whispersync/AmazonDevice/Common/DefaultStorage;
.super Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfigurationStorage;
.source "DefaultStorage.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfigurationStorage;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "clear: Ignore clear storage because a valid storage has not been set."

    .line 58
    invoke-static {v1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public getBool(Ljava/lang/String;Z)Z
    .locals 0

    return p2
.end method

.method public getNum(Ljava/lang/String;I)I
    .locals 0

    return p2
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public removeValue(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string/jumbo p1, "removeValue: Ignore removing key %s because a valid storage has not been set."

    .line 52
    invoke-static {p1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setBool(Ljava/lang/String;Z)V
    .locals 1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const-string/jumbo p1, "setBool: Ignore setting bool with key %s because a valid dynamic configuration storage has not been set."

    .line 45
    invoke-static {p1, p2}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setNum(Ljava/lang/String;I)V
    .locals 1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const-string/jumbo p1, "setNum: Ignore setting num with key %s because a valid dynamic configuration storage has not been set."

    .line 38
    invoke-static {p1, p2}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const-string/jumbo p1, "setString: Ignore setting string with key %s because a valid dynamic configuration storage has not been set."

    .line 31
    invoke-static {p1, p2}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
