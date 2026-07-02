.class Lcom/amazon/appexpan/client/ResourceSetLoader$ResourceSetVersionCacheLoader;
.super Lcom/google/common/cache/CacheLoader;
.source "ResourceSetLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/appexpan/client/ResourceSetLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResourceSetVersionCacheLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/cache/CacheLoader<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final dao:Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;


# direct methods
.method constructor <init>(Lcom/amazon/appexpan/client/ResourceSetLoader;Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;)V
    .locals 0

    .line 302
    invoke-direct {p0}, Lcom/google/common/cache/CacheLoader;-><init>()V

    .line 303
    iput-object p2, p0, Lcom/amazon/appexpan/client/ResourceSetLoader$ResourceSetVersionCacheLoader;->dao:Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;

    return-void
.end method


# virtual methods
.method public load(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 310
    iget-object v0, p0, Lcom/amazon/appexpan/client/ResourceSetLoader$ResourceSetVersionCacheLoader;->dao:Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;

    invoke-interface {v0, p1}, Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;->getActiveResourceSetVersion(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 316
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public bridge synthetic load(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 297
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/amazon/appexpan/client/ResourceSetLoader$ResourceSetVersionCacheLoader;->load(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
