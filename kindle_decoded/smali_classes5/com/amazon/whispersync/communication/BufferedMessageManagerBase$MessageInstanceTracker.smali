.class public Lcom/amazon/whispersync/communication/BufferedMessageManagerBase$MessageInstanceTracker;
.super Ljava/lang/Object;
.source "BufferedMessageManagerBase.java"

# interfaces
.implements Lcom/amazon/whispersync/communication/InstanceTracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/communication/BufferedMessageManagerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MessageInstanceTracker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/communication/InstanceTracker<",
        "Lcom/amazon/whispersync/communication/BufferedMessageManagerBase$MessageIdentityKey;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/communication/BufferedMessageManagerBase;


# direct methods
.method protected constructor <init>(Lcom/amazon/whispersync/communication/BufferedMessageManagerBase;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase$MessageInstanceTracker;->this$0:Lcom/amazon/whispersync/communication/BufferedMessageManagerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTrackedInstances()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/amazon/whispersync/communication/BufferedMessageManagerBase$MessageIdentityKey;",
            ">;"
        }
    .end annotation

    .line 242
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase$MessageInstanceTracker;->this$0:Lcom/amazon/whispersync/communication/BufferedMessageManagerBase;

    iget-object v1, v1, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase;->mMessageFragmentMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 244
    iget-object v1, p0, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase$MessageInstanceTracker;->this$0:Lcom/amazon/whispersync/communication/BufferedMessageManagerBase;

    invoke-static {v1}, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase;->access$000(Lcom/amazon/whispersync/communication/BufferedMessageManagerBase;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public isTimedOut(Lcom/amazon/whispersync/communication/BufferedMessageManagerBase$MessageIdentityKey;)Z
    .locals 6

    .line 221
    iget-object v0, p0, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase$MessageInstanceTracker;->this$0:Lcom/amazon/whispersync/communication/BufferedMessageManagerBase;

    iget-object v0, v0, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase;->mMessageFragmentMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase$ByteBufferChainMessageEntry;

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {v0}, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase$ByteBufferChainMessageEntry;->getLastFragmentArrivalTimeInMillis()J

    move-result-wide v0

    goto :goto_0

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase$MessageInstanceTracker;->this$0:Lcom/amazon/whispersync/communication/BufferedMessageManagerBase;

    invoke-static {v0}, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase;->access$000(Lcom/amazon/whispersync/communication/BufferedMessageManagerBase;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_1

    .line 228
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    .line 231
    :goto_0
    iget-object p1, p0, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase$MessageInstanceTracker;->this$0:Lcom/amazon/whispersync/communication/BufferedMessageManagerBase;

    iget-wide v2, p1, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase;->mMessageTrackingTimeoutInMillis:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    cmp-long p1, v2, v4

    if-gez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public bridge synthetic isTimedOut(Ljava/lang/Object;)Z
    .locals 0

    .line 208
    check-cast p1, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase$MessageIdentityKey;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase$MessageInstanceTracker;->isTimedOut(Lcom/amazon/whispersync/communication/BufferedMessageManagerBase$MessageIdentityKey;)Z

    move-result p1

    return p1
.end method

.method public stopTrackingInstance(Lcom/amazon/whispersync/communication/BufferedMessageManagerBase$MessageIdentityKey;)Z
    .locals 6

    .line 261
    iget-object v0, p0, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase$MessageInstanceTracker;->this$0:Lcom/amazon/whispersync/communication/BufferedMessageManagerBase;

    iget-object v0, v0, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase;->mMessageFragmentMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "instance"

    const/4 v2, 0x2

    const-string/jumbo v3, "stopTrackingInstance"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_0

    .line 262
    invoke-static {}, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase;->access$100()Lcom/amazon/whispersync/dp/logger/DPLogger;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v4

    aput-object p1, v2, v5

    const-string/jumbo p1, "stop tracking buffered message"

    invoke-virtual {v0, v3, p1, v2}, Lcom/amazon/whispersync/dp/logger/DPLogger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase$MessageInstanceTracker;->this$0:Lcom/amazon/whispersync/communication/BufferedMessageManagerBase;

    invoke-static {v0}, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase;->access$000(Lcom/amazon/whispersync/communication/BufferedMessageManagerBase;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 265
    invoke-static {}, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase;->access$100()Lcom/amazon/whispersync/dp/logger/DPLogger;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v4

    aput-object p1, v2, v5

    const-string/jumbo p1, "stop tracking thrown away message"

    invoke-virtual {v0, v3, p1, v2}, Lcom/amazon/whispersync/dp/logger/DPLogger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const/4 v4, 0x1

    goto :goto_1

    .line 269
    :cond_1
    invoke-static {}, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase;->access$100()Lcom/amazon/whispersync/dp/logger/DPLogger;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v4

    aput-object p1, v2, v5

    const-string p1, "message already processed"

    invoke-virtual {v0, v3, p1, v2}, Lcom/amazon/whispersync/dp/logger/DPLogger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return v4
.end method

.method public bridge synthetic stopTrackingInstance(Ljava/lang/Object;)Z
    .locals 0

    .line 208
    check-cast p1, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase$MessageIdentityKey;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase$MessageInstanceTracker;->stopTrackingInstance(Lcom/amazon/whispersync/communication/BufferedMessageManagerBase$MessageIdentityKey;)Z

    move-result p1

    return p1
.end method
