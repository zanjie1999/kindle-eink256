.class public Lcom/amazon/weblab/mobile/repository/RepositoryFactory;
.super Ljava/lang/Object;
.source "RepositoryFactory.java"


# static fields
.field private static sFolder:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/amazon/weblab/mobile/repository/RepositoryFactory;->sFolder:Ljava/util/HashSet;

    return-void
.end method

.method public static createRepository(Lcom/amazon/weblab/mobile/repository/RepositoryType;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/weblab/mobile/cache/ICachePolicy;)Lcom/amazon/weblab/mobile/repository/IRepository;
    .locals 4

    .line 15
    sget-object v0, Lcom/amazon/weblab/mobile/repository/RepositoryFactory;->sFolder:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 18
    sget-object v0, Lcom/amazon/weblab/mobile/repository/RepositoryFactory$1;->$SwitchMap$com$amazon$weblab$mobile$repository$RepositoryType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v0, v0, v3

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 23
    sget-object p0, Lcom/amazon/weblab/mobile/repository/RepositoryFactory;->sFolder:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 24
    new-instance p0, Lcom/amazon/weblab/mobile/repository/Repository;

    new-instance v0, Lcom/amazon/weblab/mobile/repository/LazyStorage;

    invoke-direct {v0, p1, p2}, Lcom/amazon/weblab/mobile/repository/LazyStorage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p3, v0, p2}, Lcom/amazon/weblab/mobile/repository/Repository;-><init>(Lcom/amazon/weblab/mobile/cache/ICachePolicy;Lcom/amazon/weblab/mobile/repository/IStorage;Ljava/lang/String;)V

    .line 25
    new-instance v0, Lcom/amazon/weblab/mobile/repository/Repository;

    new-instance v1, Lcom/amazon/weblab/mobile/repository/FileStorage;

    invoke-direct {v1, p1, p2}, Lcom/amazon/weblab/mobile/repository/FileStorage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, p3, v1, p2}, Lcom/amazon/weblab/mobile/repository/Repository;-><init>(Lcom/amazon/weblab/mobile/cache/ICachePolicy;Lcom/amazon/weblab/mobile/repository/IStorage;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0, v0}, Lcom/amazon/weblab/mobile/repository/Repository;->setFailsafeRepository(Lcom/amazon/weblab/mobile/repository/IRepository;)V

    return-object p0

    .line 29
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-array p2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v1

    const-string p0, "The %s is not supported"

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_1
    sget-object p0, Lcom/amazon/weblab/mobile/repository/RepositoryFactory;->sFolder:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 21
    new-instance p0, Lcom/amazon/weblab/mobile/repository/Repository;

    new-instance v0, Lcom/amazon/weblab/mobile/repository/FileStorage;

    invoke-direct {v0, p1, p2}, Lcom/amazon/weblab/mobile/repository/FileStorage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p3, v0, p2}, Lcom/amazon/weblab/mobile/repository/Repository;-><init>(Lcom/amazon/weblab/mobile/cache/ICachePolicy;Lcom/amazon/weblab/mobile/repository/IStorage;Ljava/lang/String;)V

    return-object p0

    .line 16
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v1

    const-string p1, "The %s it is in use by another repository"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
