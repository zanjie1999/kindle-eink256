.class public final enum Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;
.super Ljava/lang/Enum;
.source "ErrorCodes.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;

.field public static final enum COMPUTE_CONFIGURATION_DATA:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;

.field public static final enum DISCOVERED_PROVISIONABLE_DEVICE:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;

.field public static final enum DISCOVERED_PROVISIONEE_DEVICE:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;

.field public static final enum FINALIZE_ECDHE_AUTHENTICATION_SESSION:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;

.field public static final enum GENERATE_PROVISIONING_SESSION:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;

.field public static final enum GET_CUSTOMER_PROVISIONEES_SETUP_STATUS:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;

.field public static final enum GET_DEVICE_REGISTRATION_STATUS:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;

.field public static final enum GET_PROVISIONABLE_STATUS:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;

.field public static final enum GET_PROVISIONEE_DATA_FROM_SESSION_TOKEN:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;

.field public static final enum GET_WHITELIST_POLICY:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;

.field public static final enum REPORT_EVENT:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;

.field public static final enum START_ECDHE_AUTHENTICATION_SESSION:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;

.field public static final enum UNKNOWN_WEB_SERVICE_ERROR:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;

.field public static final enum VALIDATE_WIFI_SYNC_AUTH_TOKEN:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;

.field private static final VALUES:[Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 912
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN_WEB_SERVICE_ERROR"

    invoke-direct {v0, v2, v1, v1}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;->UNKNOWN_WEB_SERVICE_ERROR:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;

    .line 916
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;

    const/4 v2, 0x1

    const-string v3, "DISCOVERED_PROVISIONABLE_DEVICE"

    invoke-direct {v0, v3, v2, v2}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;->DISCOVERED_PROVISIONABLE_DEVICE:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;

    .line 920
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;

    const/4 v3, 0x2

    const-string v4, "START_ECDHE_AUTHENTICATION_SESSION"

    invoke-direct {v0, v4, v3, v3}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;->START_ECDHE_AUTHENTICATION_SESSION:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;

    .line 924
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;

    const/4 v4, 0x3

    const-string v5, "FINALIZE_ECDHE_AUTHENTICATION_SESSION"

    invoke-direct {v0, v5, v4, v4}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;->FINALIZE_ECDHE_AUTHENTICATION_SESSION:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;

    .line 932
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;

    const/4 v5, 0x4

    const-string v6, "GENERATE_PROVISIONING_SESSION"

    invoke-direct {v0, v6, v5, v5}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;->GENERATE_PROVISIONING_SESSION:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;

    .line 936
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;

    const/4 v6, 0x5

    const-string v7, "REPORT_EVENT"

    invoke-direct {v0, v7, v6, v6}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;->REPORT_EVENT:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;

    .line 940
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;

    const/4 v7, 0x6

    const-string v8, "GET_PROVISIONABLE_STATUS"

    invoke-direct {v0, v8, v7, v7}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;->GET_PROVISIONABLE_STATUS:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;

    .line 944
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;

    const/4 v8, 0x7

    const-string v9, "GET_WHITELIST_POLICY"

    invoke-direct {v0, v9, v8, v8}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;->GET_WHITELIST_POLICY:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;

    .line 948
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;

    const/16 v9, 0x8

    const-string v10, "COMPUTE_CONFIGURATION_DATA"

    invoke-direct {v0, v10, v9, v9}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;->COMPUTE_CONFIGURATION_DATA:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;

    .line 952
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;

    const/16 v10, 0x9

    const-string v11, "GET_DEVICE_REGISTRATION_STATUS"

    invoke-direct {v0, v11, v10, v10}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;->GET_DEVICE_REGISTRATION_STATUS:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;

    .line 956
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;

    const/16 v11, 0xa

    const-string v12, "GET_CUSTOMER_PROVISIONEES_SETUP_STATUS"

    invoke-direct {v0, v12, v11, v11}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;->GET_CUSTOMER_PROVISIONEES_SETUP_STATUS:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;

    .line 960
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;

    const/16 v12, 0xb

    const-string v13, "GET_PROVISIONEE_DATA_FROM_SESSION_TOKEN"

    invoke-direct {v0, v13, v12, v12}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;->GET_PROVISIONEE_DATA_FROM_SESSION_TOKEN:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;

    .line 964
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;

    const/16 v13, 0xc

    const-string v14, "DISCOVERED_PROVISIONEE_DEVICE"

    invoke-direct {v0, v14, v13, v13}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;->DISCOVERED_PROVISIONEE_DEVICE:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;

    .line 968
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;

    const/16 v14, 0xd

    const-string v15, "VALIDATE_WIFI_SYNC_AUTH_TOKEN"

    invoke-direct {v0, v15, v14, v14}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;->VALIDATE_WIFI_SYNC_AUTH_TOKEN:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;

    const/16 v15, 0xe

    new-array v15, v15, [Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;

    .line 907
    sget-object v16, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;->UNKNOWN_WEB_SERVICE_ERROR:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;

    aput-object v16, v15, v1

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;->DISCOVERED_PROVISIONABLE_DEVICE:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;

    aput-object v1, v15, v2

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;->START_ECDHE_AUTHENTICATION_SESSION:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;

    aput-object v1, v15, v3

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;->FINALIZE_ECDHE_AUTHENTICATION_SESSION:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;

    aput-object v1, v15, v4

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;->GENERATE_PROVISIONING_SESSION:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;

    aput-object v1, v15, v5

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;->REPORT_EVENT:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;

    aput-object v1, v15, v6

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;->GET_PROVISIONABLE_STATUS:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;

    aput-object v1, v15, v7

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;->GET_WHITELIST_POLICY:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;

    aput-object v1, v15, v8

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;->COMPUTE_CONFIGURATION_DATA:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;

    aput-object v1, v15, v9

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;->GET_DEVICE_REGISTRATION_STATUS:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;

    aput-object v1, v15, v10

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;->GET_CUSTOMER_PROVISIONEES_SETUP_STATUS:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;

    aput-object v1, v15, v11

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;->GET_PROVISIONEE_DATA_FROM_SESSION_TOKEN:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;

    aput-object v1, v15, v12

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;->DISCOVERED_PROVISIONEE_DEVICE:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;

    aput-object v1, v15, v13

    aput-object v0, v15, v14

    sput-object v15, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;->$VALUES:[Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;

    .line 1070
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType$1;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType$1;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 1090
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;->values()[Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;

    move-result-object v0

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;->VALUES:[Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1103
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1104
    iput p3, p0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;
    .locals 1

    .line 907
    const-class v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;
    .locals 1

    .line 907
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;->$VALUES:[Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;

    invoke-virtual {v0}, [Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 1034
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;->value:I

    return v0
.end method
