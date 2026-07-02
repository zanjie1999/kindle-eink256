.class synthetic Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow$4;
.super Ljava/lang/Object;
.source "ControlledSetupWorkflow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$whisperjoin$deviceprovisioningservice$workflow$state$DeviceSession$DeviceState:[I

.field static final synthetic $SwitchMap$com$amazon$whisperjoin$deviceprovisioningservice$workflow$state$Event$State:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 207
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;->values()[Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow$4;->$SwitchMap$com$amazon$whisperjoin$deviceprovisioningservice$workflow$state$DeviceSession$DeviceState:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;->CONNECTING:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow$4;->$SwitchMap$com$amazon$whisperjoin$deviceprovisioningservice$workflow$state$DeviceSession$DeviceState:[I

    sget-object v3, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;->CONNECTED:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow$4;->$SwitchMap$com$amazon$whisperjoin$deviceprovisioningservice$workflow$state$DeviceSession$DeviceState:[I

    sget-object v4, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;->GETTING_PROVISIONING_DETAILS:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow$4;->$SwitchMap$com$amazon$whisperjoin$deviceprovisioningservice$workflow$state$DeviceSession$DeviceState:[I

    sget-object v5, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;->PROVISIONING_DETAILS_RECEIVED:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v4, 0x5

    :try_start_4
    sget-object v5, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow$4;->$SwitchMap$com$amazon$whisperjoin$deviceprovisioningservice$workflow$state$DeviceSession$DeviceState:[I

    sget-object v6, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;->PROVISIONING:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v5, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow$4;->$SwitchMap$com$amazon$whisperjoin$deviceprovisioningservice$workflow$state$DeviceSession$DeviceState:[I

    sget-object v6, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;->PROVISIONED:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/4 v7, 0x6

    aput v7, v5, v6
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v5, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow$4;->$SwitchMap$com$amazon$whisperjoin$deviceprovisioningservice$workflow$state$DeviceSession$DeviceState:[I

    sget-object v6, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;->VERIFYING_PROVISIONING:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/4 v7, 0x7

    aput v7, v5, v6
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v5, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow$4;->$SwitchMap$com$amazon$whisperjoin$deviceprovisioningservice$workflow$state$DeviceSession$DeviceState:[I

    sget-object v6, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;->VERIFIED_PROVISIONING:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0x8

    aput v7, v5, v6
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    .line 121
    :catch_7
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;->values()[Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow$4;->$SwitchMap$com$amazon$whisperjoin$deviceprovisioningservice$workflow$state$Event$State:[I

    :try_start_8
    sget-object v6, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;->IDLE:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow$4;->$SwitchMap$com$amazon$whisperjoin$deviceprovisioningservice$workflow$state$Event$State:[I

    sget-object v5, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;->IN_PROGRESS:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v0, v1, v5
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow$4;->$SwitchMap$com$amazon$whisperjoin$deviceprovisioningservice$workflow$state$Event$State:[I

    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;->SUCCESS:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow$4;->$SwitchMap$com$amazon$whisperjoin$deviceprovisioningservice$workflow$state$Event$State:[I

    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;->ERROR:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow$4;->$SwitchMap$com$amazon$whisperjoin$deviceprovisioningservice$workflow$state$Event$State:[I

    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;->UPDATE:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    return-void
.end method
