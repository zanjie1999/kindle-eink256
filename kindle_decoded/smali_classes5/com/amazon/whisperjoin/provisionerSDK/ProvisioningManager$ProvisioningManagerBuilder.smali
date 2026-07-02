.class public Lcom/amazon/whisperjoin/provisionerSDK/ProvisioningManager$ProvisioningManagerBuilder;
.super Ljava/lang/Object;
.source "ProvisioningManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/provisionerSDK/ProvisioningManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProvisioningManagerBuilder"
.end annotation


# instance fields
.field private mRadioConfiguration:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/configuration/RadioConfiguration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/ProvisioningManager$ProvisioningManagerBuilder;->mRadioConfiguration:Ljava/util/Collection;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/whisperjoin/provisionerSDK/ProvisioningManager$ProvisioningManagerBuilder;)Ljava/util/Collection;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/amazon/whisperjoin/provisionerSDK/ProvisioningManager$ProvisioningManagerBuilder;->mRadioConfiguration:Ljava/util/Collection;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/amazon/whisperjoin/provisionerSDK/ProvisioningManager;
    .locals 1

    .line 52
    new-instance v0, Lcom/amazon/whisperjoin/provisionerSDK/ProvisioningManager;

    invoke-direct {v0, p0}, Lcom/amazon/whisperjoin/provisionerSDK/ProvisioningManager;-><init>(Lcom/amazon/whisperjoin/provisionerSDK/ProvisioningManager$ProvisioningManagerBuilder;)V

    return-object v0
.end method

.method public withRadioConfiguration(Ljava/util/Collection;)Lcom/amazon/whisperjoin/provisionerSDK/ProvisioningManager$ProvisioningManagerBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/configuration/RadioConfiguration;",
            ">;)",
            "Lcom/amazon/whisperjoin/provisionerSDK/ProvisioningManager$ProvisioningManagerBuilder;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 44
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/ProvisioningManager$ProvisioningManagerBuilder;->mRadioConfiguration:Ljava/util/Collection;

    return-object p0

    .line 45
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "RadioConfiguration must have at least one interface"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 42
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "RadioConfiguration must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
