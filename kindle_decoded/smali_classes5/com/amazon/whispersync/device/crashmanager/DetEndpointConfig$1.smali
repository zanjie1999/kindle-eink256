.class synthetic Lcom/amazon/whispersync/device/crashmanager/DetEndpointConfig$1;
.super Ljava/lang/Object;
.source "DetEndpointConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/device/crashmanager/DetEndpointConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$device$crashmanager$Domain:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 14
    invoke-static {}, Lcom/amazon/whispersync/device/crashmanager/Domain;->values()[Lcom/amazon/whispersync/device/crashmanager/Domain;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/whispersync/device/crashmanager/DetEndpointConfig$1;->$SwitchMap$com$amazon$device$crashmanager$Domain:[I

    :try_start_0
    sget-object v1, Lcom/amazon/whispersync/device/crashmanager/Domain;->PROD:Lcom/amazon/whispersync/device/crashmanager/Domain;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/amazon/whispersync/device/crashmanager/DetEndpointConfig$1;->$SwitchMap$com$amazon$device$crashmanager$Domain:[I

    sget-object v1, Lcom/amazon/whispersync/device/crashmanager/Domain;->BETA:Lcom/amazon/whispersync/device/crashmanager/Domain;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
