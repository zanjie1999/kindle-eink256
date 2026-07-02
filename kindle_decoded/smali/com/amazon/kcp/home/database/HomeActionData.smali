.class public interface abstract Lcom/amazon/kcp/home/database/HomeActionData;
.super Ljava/lang/Object;
.source "HomeDatabaseModels.kt"


# virtual methods
.method public abstract getAction()Ljava/lang/String;
.end method

.method public abstract getArgs()Ljava/util/Map;
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

.method public abstract getEvent()Ljava/lang/String;
.end method
