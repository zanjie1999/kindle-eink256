.class public Lcom/amazon/whispersync/communication/MessageIdentity;
.super Ljava/lang/Object;
.source "MessageIdentity.java"


# instance fields
.field protected final mEndpoint:Lamazon/whispersync/communication/identity/EndpointIdentity;

.field private final mMessageId:I


# direct methods
.method public constructor <init>(Lamazon/whispersync/communication/identity/EndpointIdentity;I)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/amazon/whispersync/communication/MessageIdentity;->mEndpoint:Lamazon/whispersync/communication/identity/EndpointIdentity;

    .line 24
    iput p2, p0, Lcom/amazon/whispersync/communication/MessageIdentity;->mMessageId:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 40
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 44
    :cond_2
    check-cast p1, Lcom/amazon/whispersync/communication/MessageIdentity;

    .line 45
    iget v2, p0, Lcom/amazon/whispersync/communication/MessageIdentity;->mMessageId:I

    iget v3, p1, Lcom/amazon/whispersync/communication/MessageIdentity;->mMessageId:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/amazon/whispersync/communication/MessageIdentity;->mEndpoint:Lamazon/whispersync/communication/identity/EndpointIdentity;

    iget-object p1, p1, Lcom/amazon/whispersync/communication/MessageIdentity;->mEndpoint:Lamazon/whispersync/communication/identity/EndpointIdentity;

    invoke-virtual {v2, p1}, Lamazon/whispersync/communication/identity/EndpointIdentity;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/amazon/whispersync/communication/MessageIdentity;->mEndpoint:Lamazon/whispersync/communication/identity/EndpointIdentity;

    invoke-virtual {v0}, Lamazon/whispersync/communication/identity/EndpointIdentity;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/amazon/whispersync/communication/MessageIdentity;->mMessageId:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MessageIdentity [endpoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/communication/MessageIdentity;->mEndpoint:Lamazon/whispersync/communication/identity/EndpointIdentity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", messageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/whispersync/communication/MessageIdentity;->mMessageId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
