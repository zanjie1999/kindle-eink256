.class interface abstract Lcom/amazon/kindle/cms/api/UpdateStrategy;
.super Ljava/lang/Object;
.source "UpdateStrategy.java"


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/cms/api/CommunicationException;
        }
    .end annotation
.end method

.method public abstract delete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/cms/api/CommunicationException;
        }
    .end annotation
.end method

.method public abstract update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/cms/ipc/ItemInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/cms/api/CommunicationException;
        }
    .end annotation
.end method
