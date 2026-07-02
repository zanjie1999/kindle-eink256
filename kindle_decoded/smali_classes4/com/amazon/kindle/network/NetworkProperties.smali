.class public final Lcom/amazon/kindle/network/NetworkProperties;
.super Ljava/lang/Object;
.source "NetworkProperties.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/network/NetworkProperties$FACTORY;
    }
.end annotation


# static fields
.field public static final FACTORY:Lcom/amazon/kindle/network/NetworkProperties$FACTORY;

.field private static final NO_NETWORK:Lcom/amazon/kindle/network/NetworkProperties;

.field private static final TAG:Ljava/lang/String; = "NetworkProperties"


# instance fields
.field private final isConnected:Z

.field private final transportMethod:Lcom/amazon/kindle/network/TransportType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/amazon/kindle/network/NetworkProperties$FACTORY;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/network/NetworkProperties$FACTORY;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kindle/network/NetworkProperties;->FACTORY:Lcom/amazon/kindle/network/NetworkProperties$FACTORY;

    .line 38
    new-instance v0, Lcom/amazon/kindle/network/NetworkProperties;

    sget-object v1, Lcom/amazon/kindle/network/TransportType$None;->INSTANCE:Lcom/amazon/kindle/network/TransportType$None;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/network/NetworkProperties;-><init>(ZLcom/amazon/kindle/network/TransportType;)V

    sput-object v0, Lcom/amazon/kindle/network/NetworkProperties;->NO_NETWORK:Lcom/amazon/kindle/network/NetworkProperties;

    return-void
.end method

.method public constructor <init>(ZLcom/amazon/kindle/network/TransportType;)V
    .locals 1

    const-string v0, "transportMethod"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/amazon/kindle/network/NetworkProperties;->isConnected:Z

    iput-object p2, p0, Lcom/amazon/kindle/network/NetworkProperties;->transportMethod:Lcom/amazon/kindle/network/TransportType;

    return-void
.end method

.method public static final synthetic access$getNO_NETWORK$cp()Lcom/amazon/kindle/network/NetworkProperties;
    .locals 1

    .line 32
    sget-object v0, Lcom/amazon/kindle/network/NetworkProperties;->NO_NETWORK:Lcom/amazon/kindle/network/NetworkProperties;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/amazon/kindle/network/NetworkProperties;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kindle/network/NetworkProperties;

    iget-boolean v0, p0, Lcom/amazon/kindle/network/NetworkProperties;->isConnected:Z

    iget-boolean v1, p1, Lcom/amazon/kindle/network/NetworkProperties;->isConnected:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/network/NetworkProperties;->transportMethod:Lcom/amazon/kindle/network/TransportType;

    iget-object p1, p1, Lcom/amazon/kindle/network/NetworkProperties;->transportMethod:Lcom/amazon/kindle/network/TransportType;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getTransportMethod()Lcom/amazon/kindle/network/TransportType;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/amazon/kindle/network/NetworkProperties;->transportMethod:Lcom/amazon/kindle/network/TransportType;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Lcom/amazon/kindle/network/NetworkProperties;->isConnected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/amazon/kindle/network/NetworkProperties;->transportMethod:Lcom/amazon/kindle/network/TransportType;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final isConnected()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lcom/amazon/kindle/network/NetworkProperties;->isConnected:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkProperties(isConnected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/kindle/network/NetworkProperties;->isConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", transportMethod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/network/NetworkProperties;->transportMethod:Lcom/amazon/kindle/network/TransportType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
