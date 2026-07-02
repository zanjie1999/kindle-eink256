.class public interface abstract Lcom/amazon/kindle/krx/messaging/ITodoItem;
.super Ljava/lang/Object;
.source "ITodoItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;
    }
.end annotation


# virtual methods
.method public abstract getAction()Ljava/lang/String;
.end method

.method public abstract getContentType()Ljava/lang/String;
.end method

.method public abstract getCreationTimestamp()J
.end method

.method public abstract getExcludedTransportMethods()Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;
.end method

.method public abstract getGuid()Ljava/lang/String;
.end method

.method public abstract getItemAttributes()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getKey()Ljava/lang/String;
.end method

.method public abstract getPriority()I
.end method

.method public abstract getSequence()I
.end method

.method public abstract getServerFailureCode()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getType()Ljava/lang/String;
.end method

.method public abstract getURL()Ljava/lang/String;
.end method

.method public abstract getValue()Ljava/lang/String;
.end method

.method public abstract isIncremental()Z
.end method
