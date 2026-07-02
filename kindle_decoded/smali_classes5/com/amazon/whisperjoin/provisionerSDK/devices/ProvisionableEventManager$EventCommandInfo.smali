.class Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager$EventCommandInfo;
.super Ljava/lang/Object;
.source "ProvisionableEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventCommandInfo"
.end annotation


# instance fields
.field private final mCommand:Lcom/amazon/whisperbridge/constants/Command;

.field private final mCommandReturnTypeToken:Lcom/google/common/reflect/TypeToken;


# direct methods
.method public constructor <init>(Lcom/amazon/whisperbridge/constants/Command;Lcom/google/common/reflect/TypeToken;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager$EventCommandInfo;->mCommand:Lcom/amazon/whisperbridge/constants/Command;

    .line 73
    iput-object p2, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager$EventCommandInfo;->mCommandReturnTypeToken:Lcom/google/common/reflect/TypeToken;

    return-void
.end method


# virtual methods
.method public getCommand()Lcom/amazon/whisperbridge/constants/Command;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager$EventCommandInfo;->mCommand:Lcom/amazon/whisperbridge/constants/Command;

    return-object v0
.end method

.method public getCommandReturnTypeToken()Lcom/google/common/reflect/TypeToken;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager$EventCommandInfo;->mCommandReturnTypeToken:Lcom/google/common/reflect/TypeToken;

    return-object v0
.end method
