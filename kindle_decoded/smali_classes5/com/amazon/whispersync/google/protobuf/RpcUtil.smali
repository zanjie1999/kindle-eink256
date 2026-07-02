.class public final Lcom/amazon/whispersync/google/protobuf/RpcUtil;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/google/protobuf/RpcUtil$AlreadyCalledException;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/whispersync/google/protobuf/Message;Lcom/amazon/whispersync/google/protobuf/Message;)Lcom/amazon/whispersync/google/protobuf/Message;
    .locals 0

    invoke-static {p0, p1}, Lcom/amazon/whispersync/google/protobuf/RpcUtil;->copyAsType(Lcom/amazon/whispersync/google/protobuf/Message;Lcom/amazon/whispersync/google/protobuf/Message;)Lcom/amazon/whispersync/google/protobuf/Message;

    move-result-object p0

    return-object p0
.end method

.method private static copyAsType(Lcom/amazon/whispersync/google/protobuf/Message;Lcom/amazon/whispersync/google/protobuf/Message;)Lcom/amazon/whispersync/google/protobuf/Message;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type::",
            "Lcom/amazon/whispersync/google/protobuf/Message;",
            ">(TType;",
            "Lcom/amazon/whispersync/google/protobuf/Message;",
            ")TType;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/amazon/whispersync/google/protobuf/Message;->newBuilderForType()Lcom/amazon/whispersync/google/protobuf/Message$Builder;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/amazon/whispersync/google/protobuf/Message$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/Message;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;

    move-result-object p0

    invoke-interface {p0}, Lcom/amazon/whispersync/google/protobuf/Message$Builder;->build()Lcom/amazon/whispersync/google/protobuf/Message;

    move-result-object p0

    return-object p0
.end method

.method public static generalizeCallback(Lcom/amazon/whispersync/google/protobuf/RpcCallback;Ljava/lang/Class;Lcom/amazon/whispersync/google/protobuf/Message;)Lcom/amazon/whispersync/google/protobuf/RpcCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type::",
            "Lcom/amazon/whispersync/google/protobuf/Message;",
            ">(",
            "Lcom/amazon/whispersync/google/protobuf/RpcCallback<",
            "TType;>;",
            "Ljava/lang/Class<",
            "TType;>;TType;)",
            "Lcom/amazon/whispersync/google/protobuf/RpcCallback<",
            "Lcom/amazon/whispersync/google/protobuf/Message;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/amazon/whispersync/google/protobuf/RpcUtil$1;

    invoke-direct {v0, p1, p2, p0}, Lcom/amazon/whispersync/google/protobuf/RpcUtil$1;-><init>(Ljava/lang/Class;Lcom/amazon/whispersync/google/protobuf/Message;Lcom/amazon/whispersync/google/protobuf/RpcCallback;)V

    return-object v0
.end method

.method public static newOneTimeCallback(Lcom/amazon/whispersync/google/protobuf/RpcCallback;)Lcom/amazon/whispersync/google/protobuf/RpcCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ParameterType:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/google/protobuf/RpcCallback<",
            "TParameterType;>;)",
            "Lcom/amazon/whispersync/google/protobuf/RpcCallback<",
            "TParameterType;>;"
        }
    .end annotation

    new-instance v0, Lcom/amazon/whispersync/google/protobuf/RpcUtil$2;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/google/protobuf/RpcUtil$2;-><init>(Lcom/amazon/whispersync/google/protobuf/RpcCallback;)V

    return-object v0
.end method

.method public static specializeCallback(Lcom/amazon/whispersync/google/protobuf/RpcCallback;)Lcom/amazon/whispersync/google/protobuf/RpcCallback;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type::",
            "Lcom/amazon/whispersync/google/protobuf/Message;",
            ">(",
            "Lcom/amazon/whispersync/google/protobuf/RpcCallback<",
            "Lcom/amazon/whispersync/google/protobuf/Message;",
            ">;)",
            "Lcom/amazon/whispersync/google/protobuf/RpcCallback<",
            "TType;>;"
        }
    .end annotation

    return-object p0
.end method
