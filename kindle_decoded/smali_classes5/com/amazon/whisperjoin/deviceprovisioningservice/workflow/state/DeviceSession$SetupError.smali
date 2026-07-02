.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$SetupError;
.super Ljava/lang/Object;
.source "DeviceSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetupError"
.end annotation


# instance fields
.field private mCause:Ljava/lang/Throwable;

.field private mState:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;)V
    .locals 0

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$SetupError;->mCause:Ljava/lang/Throwable;

    .line 190
    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$SetupError;->mState:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 205
    const-class v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$SetupError;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 207
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$SetupError;

    .line 209
    new-instance v0, Lorg/apache/commons/lang/builder/EqualsBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$SetupError;->mCause:Ljava/lang/Throwable;

    iget-object v2, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$SetupError;->mCause:Ljava/lang/Throwable;

    .line 210
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/EqualsBuilder;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$SetupError;->mState:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;

    iget-object p1, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$SetupError;->mState:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;

    .line 211
    invoke-virtual {v0, v1, p1}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/EqualsBuilder;

    .line 212
    invoke-virtual {v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals()Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 3

    .line 217
    new-instance v0, Lorg/apache/commons/lang/builder/HashCodeBuilder;

    const/16 v1, 0x11

    const/16 v2, 0x25

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang/builder/HashCodeBuilder;-><init>(II)V

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$SetupError;->mCause:Ljava/lang/Throwable;

    .line 218
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$SetupError;->mState:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;

    .line 219
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    .line 220
    invoke-virtual {v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    return v0
.end method
