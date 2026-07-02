.class public interface abstract Lcom/amazon/kcp/application/IDeviceContext;
.super Ljava/lang/Object;
.source "IDeviceContext.java"


# virtual methods
.method public abstract getNotificationTypes()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/amazon/kcp/library/models/BookType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract shouldCloseStoreWhenOpeningBook()Z
.end method

.method public abstract startListeningForLauncherForeground(Lcom/amazon/kcp/redding/ReddingActivity;)V
.end method

.method public abstract stopListeningForLauncherForeground(Lcom/amazon/kcp/redding/ReddingActivity;)V
.end method

.method public abstract supportsBrightnessChanges()Z
.end method
