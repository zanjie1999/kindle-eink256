.class public Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationRequest;
.super Ljava/lang/Object;
.source "CBLRegistrationRequest.java"


# instance fields
.field private final mExpiration:J

.field private final mLinkCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationRequest;->mLinkCode:Ljava/lang/String;

    .line 15
    iput-wide p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationRequest;->mExpiration:J

    .line 17
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationRequest;->validate()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 44
    invoke-static {p0, p1}, Lorg/apache/commons/lang/builder/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getExpiration()J
    .locals 2

    .line 31
    iget-wide v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationRequest;->mExpiration:J

    return-wide v0
.end method

.method public getLinkCode()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationRequest;->mLinkCode:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 49
    invoke-static {p0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->reflectionHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CBLRegistrationRequest [code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationRequest;->mLinkCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", expiration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationRequest;->mExpiration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected validate()V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationRequest;->mLinkCode:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 37
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Link code cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Link code cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
