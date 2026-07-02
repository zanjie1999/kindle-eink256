.class public Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/TrustProviderInitializationFailedException;
.super Ljava/lang/Exception;
.source "TrustProviderInitializationFailedException.java"


# instance fields
.field private final mFailureCause:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 17
    iput-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/TrustProviderInitializationFailedException;->mFailureCause:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "TrustProvider initialization failed"

    .line 21
    invoke-direct {p0, v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/TrustProviderInitializationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 31
    const-class v0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/TrustProviderInitializationFailedException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 32
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/TrustProviderInitializationFailedException;

    .line 33
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/TrustProviderInitializationFailedException;->mFailureCause:Ljava/lang/Throwable;

    iget-object p1, p1, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/TrustProviderInitializationFailedException;->mFailureCause:Ljava/lang/Throwable;

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 38
    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/TrustProviderInitializationFailedException;->mFailureCause:Ljava/lang/Throwable;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 43
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/TrustProviderInitializationFailedException;->mFailureCause:Ljava/lang/Throwable;

    const-string v2, "mFailureCause"

    .line 44
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 45
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
