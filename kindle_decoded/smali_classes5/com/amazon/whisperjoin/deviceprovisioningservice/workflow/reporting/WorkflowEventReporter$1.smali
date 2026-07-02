.class synthetic Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter$1;
.super Ljava/lang/Object;
.source "WorkflowEventReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$whisperjoin$deviceprovisioningservice$workflow$provisioning$type$ConnectionOperationStatusUpdate$State:[I

.field static final synthetic $SwitchMap$com$amazon$whisperjoin$deviceprovisioningservice$workflow$state$DeviceSession$DeviceState:[I

.field static final synthetic $SwitchMap$com$amazon$whisperjoin$deviceprovisioningservice$workflow$state$Event$State:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 147
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;->values()[Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter$1;->$SwitchMap$com$amazon$whisperjoin$deviceprovisioningservice$workflow$state$DeviceSession$DeviceState:[I

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
    sget-object v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter$1;->$SwitchMap$com$amazon$whisperjoin$deviceprovisioningservice$workflow$state$DeviceSession$DeviceState:[I

    sget-object v3, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;->CONNECTED:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter$1;->$SwitchMap$com$amazon$whisperjoin$deviceprovisioningservice$workflow$state$DeviceSession$DeviceState:[I

    sget-object v4, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;->GETTING_PROVISIONING_DETAILS:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v3, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter$1;->$SwitchMap$com$amazon$whisperjoin$deviceprovisioningservice$workflow$state$DeviceSession$DeviceState:[I

    sget-object v4, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;->PROVISIONING_DETAILS_RECEIVED:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x4

    aput v5, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v3, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter$1;->$SwitchMap$com$amazon$whisperjoin$deviceprovisioningservice$workflow$state$DeviceSession$DeviceState:[I

    sget-object v4, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;->PROVISIONING:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x5

    aput v5, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v3, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter$1;->$SwitchMap$com$amazon$whisperjoin$deviceprovisioningservice$workflow$state$DeviceSession$DeviceState:[I

    sget-object v4, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;->PROVISIONED:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x6

    aput v5, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v3, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter$1;->$SwitchMap$com$amazon$whisperjoin$deviceprovisioningservice$workflow$state$DeviceSession$DeviceState:[I

    sget-object v4, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;->VERIFYING_PROVISIONING:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x7

    aput v5, v3, v4
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v3, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter$1;->$SwitchMap$com$amazon$whisperjoin$deviceprovisioningservice$workflow$state$DeviceSession$DeviceState:[I

    sget-object v4, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;->VERIFIED_PROVISIONING:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/16 v5, 0x8

    aput v5, v3, v4
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    .line 97
    :catch_7
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;->values()[Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter$1;->$SwitchMap$com$amazon$whisperjoin$deviceprovisioningservice$workflow$state$Event$State:[I

    :try_start_8
    sget-object v4, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;->SUCCESS:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v3, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter$1;->$SwitchMap$com$amazon$whisperjoin$deviceprovisioningservice$workflow$state$Event$State:[I

    sget-object v4, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;->UPDATE:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v3, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter$1;->$SwitchMap$com$amazon$whisperjoin$deviceprovisioningservice$workflow$state$Event$State:[I

    sget-object v4, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;->ERROR:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    .line 110
    :catch_a
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate$State;->values()[Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate$State;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter$1;->$SwitchMap$com$amazon$whisperjoin$deviceprovisioningservice$workflow$provisioning$type$ConnectionOperationStatusUpdate$State:[I

    :try_start_b
    sget-object v3, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate$State;->CONNECTING_TO_DEVICE_FAILURE:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate$State;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter$1;->$SwitchMap$com$amazon$whisperjoin$deviceprovisioningservice$workflow$provisioning$type$ConnectionOperationStatusUpdate$State:[I

    sget-object v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate$State;->SECURE_CHANNEL_ESTABLISHMENT_FAILURE:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate$State;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    return-void
.end method
