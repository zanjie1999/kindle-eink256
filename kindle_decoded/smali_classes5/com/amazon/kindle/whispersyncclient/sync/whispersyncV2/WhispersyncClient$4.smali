.class synthetic Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient$4;
.super Ljava/lang/Object;
.source "WhispersyncClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$device$sync$Change$Type:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 431
    invoke-static {}, Lcom/amazon/device/sync/Change$Type;->values()[Lcom/amazon/device/sync/Change$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient$4;->$SwitchMap$com$amazon$device$sync$Change$Type:[I

    :try_start_0
    sget-object v1, Lcom/amazon/device/sync/Change$Type;->ADDED:Lcom/amazon/device/sync/Change$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient$4;->$SwitchMap$com$amazon$device$sync$Change$Type:[I

    sget-object v1, Lcom/amazon/device/sync/Change$Type;->UPDATED:Lcom/amazon/device/sync/Change$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient$4;->$SwitchMap$com$amazon$device$sync$Change$Type:[I

    sget-object v1, Lcom/amazon/device/sync/Change$Type;->DELETED:Lcom/amazon/device/sync/Change$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
