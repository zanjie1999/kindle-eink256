.class synthetic Lcom/amazon/weblab/mobile/service/BasePathProvider$1;
.super Ljava/lang/Object;
.source "BasePathProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/weblab/mobile/service/BasePathProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$weblab$mobile$settings$MobileWeblabServiceEndpoint:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 40
    invoke-static {}, Lcom/amazon/weblab/mobile/settings/MobileWeblabServiceEndpoint;->values()[Lcom/amazon/weblab/mobile/settings/MobileWeblabServiceEndpoint;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/weblab/mobile/service/BasePathProvider$1;->$SwitchMap$com$amazon$weblab$mobile$settings$MobileWeblabServiceEndpoint:[I

    :try_start_0
    sget-object v1, Lcom/amazon/weblab/mobile/settings/MobileWeblabServiceEndpoint;->PROD:Lcom/amazon/weblab/mobile/settings/MobileWeblabServiceEndpoint;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/amazon/weblab/mobile/service/BasePathProvider$1;->$SwitchMap$com$amazon$weblab$mobile$settings$MobileWeblabServiceEndpoint:[I

    sget-object v1, Lcom/amazon/weblab/mobile/settings/MobileWeblabServiceEndpoint;->GAMMA:Lcom/amazon/weblab/mobile/settings/MobileWeblabServiceEndpoint;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/amazon/weblab/mobile/service/BasePathProvider$1;->$SwitchMap$com$amazon$weblab$mobile$settings$MobileWeblabServiceEndpoint:[I

    sget-object v1, Lcom/amazon/weblab/mobile/settings/MobileWeblabServiceEndpoint;->BETA:Lcom/amazon/weblab/mobile/settings/MobileWeblabServiceEndpoint;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
