.class interface abstract Lcom/amazon/weblab/mobile/repository/IStorage;
.super Ljava/lang/Object;
.source "IStorage.java"


# virtual methods
.method public abstract hasBackup()Z
.end method

.method public abstract readBackup()Lcom/amazon/weblab/mobile/repository/StorageEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method public abstract writeBackup(Lcom/amazon/weblab/mobile/repository/StorageEntity;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method
