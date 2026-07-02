.class public final Lcom/amazon/kcp/application/ReaderServicesModule_GetBuiltInUserIdsFactory;
.super Ljava/lang/Object;
.source "ReaderServicesModule_GetBuiltInUserIdsFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljava/util/Set<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final module:Lcom/amazon/kcp/application/ReaderServicesModule;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/application/ReaderServicesModule;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/amazon/kcp/application/ReaderServicesModule_GetBuiltInUserIdsFactory;->module:Lcom/amazon/kcp/application/ReaderServicesModule;

    return-void
.end method

.method public static create(Lcom/amazon/kcp/application/ReaderServicesModule;)Lcom/amazon/kcp/application/ReaderServicesModule_GetBuiltInUserIdsFactory;
    .locals 1

    .line 25
    new-instance v0, Lcom/amazon/kcp/application/ReaderServicesModule_GetBuiltInUserIdsFactory;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/application/ReaderServicesModule_GetBuiltInUserIdsFactory;-><init>(Lcom/amazon/kcp/application/ReaderServicesModule;)V

    return-object v0
.end method

.method public static provideInstance(Lcom/amazon/kcp/application/ReaderServicesModule;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/application/ReaderServicesModule;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 21
    invoke-static {p0}, Lcom/amazon/kcp/application/ReaderServicesModule_GetBuiltInUserIdsFactory;->proxyGetBuiltInUserIds(Lcom/amazon/kcp/application/ReaderServicesModule;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static proxyGetBuiltInUserIds(Lcom/amazon/kcp/application/ReaderServicesModule;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/application/ReaderServicesModule;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 30
    invoke-virtual {p0}, Lcom/amazon/kcp/application/ReaderServicesModule;->getBuiltInUserIds()Ljava/util/Set;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 29
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/amazon/kcp/application/ReaderServicesModule_GetBuiltInUserIdsFactory;->get()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/amazon/kcp/application/ReaderServicesModule_GetBuiltInUserIdsFactory;->module:Lcom/amazon/kcp/application/ReaderServicesModule;

    invoke-static {v0}, Lcom/amazon/kcp/application/ReaderServicesModule_GetBuiltInUserIdsFactory;->provideInstance(Lcom/amazon/kcp/application/ReaderServicesModule;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
