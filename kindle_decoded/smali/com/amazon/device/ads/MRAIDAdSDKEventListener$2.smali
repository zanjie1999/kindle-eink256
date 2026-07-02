.class synthetic Lcom/amazon/device/ads/MRAIDAdSDKEventListener$2;
.super Ljava/lang/Object;
.source "MRAIDAdSDKEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/MRAIDAdSDKEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$device$ads$AdState:[I

.field static final synthetic $SwitchMap$com$amazon$device$ads$SDKEvent$SDKEventType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 90
    invoke-static {}, Lcom/amazon/device/ads/AdState;->values()[Lcom/amazon/device/ads/AdState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/device/ads/MRAIDAdSDKEventListener$2;->$SwitchMap$com$amazon$device$ads$AdState:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/amazon/device/ads/AdState;->EXPANDED:Lcom/amazon/device/ads/AdState;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/amazon/device/ads/MRAIDAdSDKEventListener$2;->$SwitchMap$com$amazon$device$ads$AdState:[I

    sget-object v3, Lcom/amazon/device/ads/AdState;->SHOWING:Lcom/amazon/device/ads/AdState;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/amazon/device/ads/MRAIDAdSDKEventListener$2;->$SwitchMap$com$amazon$device$ads$AdState:[I

    sget-object v4, Lcom/amazon/device/ads/AdState;->RENDERED:Lcom/amazon/device/ads/AdState;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 42
    :catch_2
    invoke-static {}, Lcom/amazon/device/ads/SDKEvent$SDKEventType;->values()[Lcom/amazon/device/ads/SDKEvent$SDKEventType;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/amazon/device/ads/MRAIDAdSDKEventListener$2;->$SwitchMap$com$amazon$device$ads$SDKEvent$SDKEventType:[I

    :try_start_3
    sget-object v4, Lcom/amazon/device/ads/SDKEvent$SDKEventType;->RENDERED:Lcom/amazon/device/ads/SDKEvent$SDKEventType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Lcom/amazon/device/ads/MRAIDAdSDKEventListener$2;->$SwitchMap$com$amazon$device$ads$SDKEvent$SDKEventType:[I

    sget-object v3, Lcom/amazon/device/ads/SDKEvent$SDKEventType;->PLACED:Lcom/amazon/device/ads/SDKEvent$SDKEventType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/amazon/device/ads/MRAIDAdSDKEventListener$2;->$SwitchMap$com$amazon$device$ads$SDKEvent$SDKEventType:[I

    sget-object v1, Lcom/amazon/device/ads/SDKEvent$SDKEventType;->VISIBLE:Lcom/amazon/device/ads/SDKEvent$SDKEventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/amazon/device/ads/MRAIDAdSDKEventListener$2;->$SwitchMap$com$amazon$device$ads$SDKEvent$SDKEventType:[I

    sget-object v1, Lcom/amazon/device/ads/SDKEvent$SDKEventType;->CLOSED:Lcom/amazon/device/ads/SDKEvent$SDKEventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lcom/amazon/device/ads/MRAIDAdSDKEventListener$2;->$SwitchMap$com$amazon$device$ads$SDKEvent$SDKEventType:[I

    sget-object v1, Lcom/amazon/device/ads/SDKEvent$SDKEventType;->RESIZED:Lcom/amazon/device/ads/SDKEvent$SDKEventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lcom/amazon/device/ads/MRAIDAdSDKEventListener$2;->$SwitchMap$com$amazon$device$ads$SDKEvent$SDKEventType:[I

    sget-object v1, Lcom/amazon/device/ads/SDKEvent$SDKEventType;->HIDDEN:Lcom/amazon/device/ads/SDKEvent$SDKEventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v0, Lcom/amazon/device/ads/MRAIDAdSDKEventListener$2;->$SwitchMap$com$amazon$device$ads$SDKEvent$SDKEventType:[I

    sget-object v1, Lcom/amazon/device/ads/SDKEvent$SDKEventType;->DESTROYED:Lcom/amazon/device/ads/SDKEvent$SDKEventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v0, Lcom/amazon/device/ads/MRAIDAdSDKEventListener$2;->$SwitchMap$com$amazon$device$ads$SDKEvent$SDKEventType:[I

    sget-object v1, Lcom/amazon/device/ads/SDKEvent$SDKEventType;->BRIDGE_ADDED:Lcom/amazon/device/ads/SDKEvent$SDKEventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v0, Lcom/amazon/device/ads/MRAIDAdSDKEventListener$2;->$SwitchMap$com$amazon$device$ads$SDKEvent$SDKEventType:[I

    sget-object v1, Lcom/amazon/device/ads/SDKEvent$SDKEventType;->VIEWABLE:Lcom/amazon/device/ads/SDKEvent$SDKEventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    return-void
.end method
