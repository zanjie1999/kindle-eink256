.class public Lcom/amazon/kcp/application/LibraryFactorySingleton;
.super Ljava/lang/Object;
.source "LibraryFactorySingleton.java"


# static fields
.field private static factoryInstance:Lcom/amazon/kcp/application/ILibraryFactory;


# direct methods
.method public static getFactory()Lcom/amazon/kcp/application/ILibraryFactory;
    .locals 2

    .line 18
    sget-object v0, Lcom/amazon/kcp/application/LibraryFactorySingleton;->factoryInstance:Lcom/amazon/kcp/application/ILibraryFactory;

    if-eqz v0, :cond_0

    return-object v0

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempting to get LibraryFactory before it has been set!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setFactory(Lcom/amazon/kcp/application/ILibraryFactory;)V
    .locals 0

    .line 14
    sput-object p0, Lcom/amazon/kcp/application/LibraryFactorySingleton;->factoryInstance:Lcom/amazon/kcp/application/ILibraryFactory;

    return-void
.end method
