.class public interface abstract Lcom/amazon/ras/uservalidation/IGoodreadsAccountUtil;
.super Ljava/lang/Object;
.source "IGoodreadsAccountUtil.java"


# virtual methods
.method public abstract fetchData()V
.end method

.method public abstract fetchData(Z)V
.end method

.method public abstract getGrokState()Lcom/amazon/ras/uservalidation/models/GrokState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/ras/uservalidation/exception/GoodreadsAccountUtilException;
        }
    .end annotation
.end method

.method public abstract getProfileLink()Lcom/amazon/ras/uservalidation/models/ProfileLink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/ras/uservalidation/exception/GoodreadsAccountUtilException;
        }
    .end annotation
.end method

.method public abstract isGrokLinked()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/ras/uservalidation/exception/GoodreadsAccountUtilException;
        }
    .end annotation
.end method
