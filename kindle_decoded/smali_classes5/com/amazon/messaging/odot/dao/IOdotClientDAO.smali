.class public interface abstract Lcom/amazon/messaging/odot/dao/IOdotClientDAO;
.super Ljava/lang/Object;
.source "IOdotClientDAO.java"


# virtual methods
.method public abstract deleteAllOdotMessages()Z
.end method

.method public abstract deleteDefunctOdotMessages(Ljava/lang/String;)Z
.end method

.method public abstract deleteOdotMessage(Ljava/lang/String;)Z
.end method

.method public abstract getMessageCountPerRequester()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOdotMessage(Ljava/lang/String;)Lcom/amazon/messaging/odot/dto/IOdotMessage;
.end method

.method public abstract getPendingOdotMessages(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/amazon/messaging/odot/dto/IOdotMessage;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRequestersAboveQueueSize()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertOdotMessage(Lcom/amazon/messaging/odot/dto/IOdotMessage;)Z
.end method

.method public abstract updateOdotMessage(Lcom/amazon/messaging/odot/dto/IOdotMessage;)Z
.end method
