.class public final enum Lcom/audible/mobile/activation/ActivationError;
.super Ljava/lang/Enum;
.source "ActivationError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/mobile/activation/ActivationError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/mobile/activation/ActivationError;

.field public static final enum ACTIVATION_ERROR_LIMIT_REACHED:Lcom/audible/mobile/activation/ActivationError;

.field public static final enum ACTIVATION_LIMIT_MSG:Lcom/audible/mobile/activation/ActivationError;

.field public static final enum BAD_LOGIN:Lcom/audible/mobile/activation/ActivationError;

.field public static final enum BAD_LOGIN_ERROR:Lcom/audible/mobile/activation/ActivationError;

.field public static final enum DB_CONNECT_ERROR:Lcom/audible/mobile/activation/ActivationError;

.field public static final enum EXCEEDED_HARDWARE_REGISTRATION_LIMIT:Lcom/audible/mobile/activation/ActivationError;

.field public static final enum EXCEEDED_PDA_REGISTRATION_LIMIT:Lcom/audible/mobile/activation/ActivationError;

.field public static final enum EXCEEDED_SOFTWARE_REGISTRATION_LIMIT:Lcom/audible/mobile/activation/ActivationError;

.field public static final enum FAILED_TO_SAVE_FILE:Lcom/audible/mobile/activation/ActivationError;

.field public static final enum INVALID_PLAYER_ID:Lcom/audible/mobile/activation/ActivationError;

.field public static final enum NONE:Lcom/audible/mobile/activation/ActivationError;

.field public static final enum NO_ACCOUNT_ERROR:Lcom/audible/mobile/activation/ActivationError;

.field public static final enum NO_GROUP_ID:Lcom/audible/mobile/activation/ActivationError;

.field public static final enum NO_RESPONSE:Lcom/audible/mobile/activation/ActivationError;

.field public static final enum PLAYER_ALREADY_REGISTERED:Lcom/audible/mobile/activation/ActivationError;

.field public static final enum PLAYER_NOT_REGISTERED:Lcom/audible/mobile/activation/ActivationError;

.field public static final enum PLAYER_REGISTERED_OTHER_USER:Lcom/audible/mobile/activation/ActivationError;

.field public static final enum PURCHASE_AUTHORIZATION:Lcom/audible/mobile/activation/ActivationError;

.field public static final enum SIGNATURE_GENERATION_FAILURE1:Lcom/audible/mobile/activation/ActivationError;

.field public static final enum SIGNATURE_GENERATION_FAILURE2:Lcom/audible/mobile/activation/ActivationError;

.field public static final enum UNKNOWN_ERROR:Lcom/audible/mobile/activation/ActivationError;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 8
    new-instance v0, Lcom/audible/mobile/activation/ActivationError;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lcom/audible/mobile/activation/ActivationError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/activation/ActivationError;->NONE:Lcom/audible/mobile/activation/ActivationError;

    .line 9
    new-instance v0, Lcom/audible/mobile/activation/ActivationError;

    const/4 v2, 0x1

    const-string v3, "NO_RESPONSE"

    invoke-direct {v0, v3, v2}, Lcom/audible/mobile/activation/ActivationError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/activation/ActivationError;->NO_RESPONSE:Lcom/audible/mobile/activation/ActivationError;

    .line 10
    new-instance v0, Lcom/audible/mobile/activation/ActivationError;

    const/4 v3, 0x2

    const-string v4, "UNKNOWN_ERROR"

    invoke-direct {v0, v4, v3}, Lcom/audible/mobile/activation/ActivationError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/activation/ActivationError;->UNKNOWN_ERROR:Lcom/audible/mobile/activation/ActivationError;

    .line 11
    new-instance v0, Lcom/audible/mobile/activation/ActivationError;

    const/4 v4, 0x3

    const-string v5, "FAILED_TO_SAVE_FILE"

    invoke-direct {v0, v5, v4}, Lcom/audible/mobile/activation/ActivationError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/activation/ActivationError;->FAILED_TO_SAVE_FILE:Lcom/audible/mobile/activation/ActivationError;

    .line 12
    new-instance v0, Lcom/audible/mobile/activation/ActivationError;

    const/4 v5, 0x4

    const-string v6, "NO_GROUP_ID"

    invoke-direct {v0, v6, v5}, Lcom/audible/mobile/activation/ActivationError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/activation/ActivationError;->NO_GROUP_ID:Lcom/audible/mobile/activation/ActivationError;

    .line 13
    new-instance v0, Lcom/audible/mobile/activation/ActivationError;

    const/4 v6, 0x5

    const-string v7, "DB_CONNECT_ERROR"

    invoke-direct {v0, v7, v6}, Lcom/audible/mobile/activation/ActivationError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/activation/ActivationError;->DB_CONNECT_ERROR:Lcom/audible/mobile/activation/ActivationError;

    .line 14
    new-instance v0, Lcom/audible/mobile/activation/ActivationError;

    const/4 v7, 0x6

    const-string v8, "NO_ACCOUNT_ERROR"

    invoke-direct {v0, v8, v7}, Lcom/audible/mobile/activation/ActivationError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/activation/ActivationError;->NO_ACCOUNT_ERROR:Lcom/audible/mobile/activation/ActivationError;

    .line 15
    new-instance v0, Lcom/audible/mobile/activation/ActivationError;

    const/4 v8, 0x7

    const-string v9, "BAD_LOGIN"

    invoke-direct {v0, v9, v8}, Lcom/audible/mobile/activation/ActivationError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/activation/ActivationError;->BAD_LOGIN:Lcom/audible/mobile/activation/ActivationError;

    .line 16
    new-instance v0, Lcom/audible/mobile/activation/ActivationError;

    const/16 v9, 0x8

    const-string v10, "BAD_LOGIN_ERROR"

    invoke-direct {v0, v10, v9}, Lcom/audible/mobile/activation/ActivationError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/activation/ActivationError;->BAD_LOGIN_ERROR:Lcom/audible/mobile/activation/ActivationError;

    .line 17
    new-instance v0, Lcom/audible/mobile/activation/ActivationError;

    const/16 v10, 0x9

    const-string v11, "PURCHASE_AUTHORIZATION"

    invoke-direct {v0, v11, v10}, Lcom/audible/mobile/activation/ActivationError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/activation/ActivationError;->PURCHASE_AUTHORIZATION:Lcom/audible/mobile/activation/ActivationError;

    .line 18
    new-instance v0, Lcom/audible/mobile/activation/ActivationError;

    const/16 v11, 0xa

    const-string v12, "PLAYER_NOT_REGISTERED"

    invoke-direct {v0, v12, v11}, Lcom/audible/mobile/activation/ActivationError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/activation/ActivationError;->PLAYER_NOT_REGISTERED:Lcom/audible/mobile/activation/ActivationError;

    .line 19
    new-instance v0, Lcom/audible/mobile/activation/ActivationError;

    const/16 v12, 0xb

    const-string v13, "PLAYER_ALREADY_REGISTERED"

    invoke-direct {v0, v13, v12}, Lcom/audible/mobile/activation/ActivationError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/activation/ActivationError;->PLAYER_ALREADY_REGISTERED:Lcom/audible/mobile/activation/ActivationError;

    .line 20
    new-instance v0, Lcom/audible/mobile/activation/ActivationError;

    const/16 v13, 0xc

    const-string v14, "EXCEEDED_HARDWARE_REGISTRATION_LIMIT"

    invoke-direct {v0, v14, v13}, Lcom/audible/mobile/activation/ActivationError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/activation/ActivationError;->EXCEEDED_HARDWARE_REGISTRATION_LIMIT:Lcom/audible/mobile/activation/ActivationError;

    .line 21
    new-instance v0, Lcom/audible/mobile/activation/ActivationError;

    const/16 v14, 0xd

    const-string v15, "EXCEEDED_PDA_REGISTRATION_LIMIT"

    invoke-direct {v0, v15, v14}, Lcom/audible/mobile/activation/ActivationError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/activation/ActivationError;->EXCEEDED_PDA_REGISTRATION_LIMIT:Lcom/audible/mobile/activation/ActivationError;

    .line 22
    new-instance v0, Lcom/audible/mobile/activation/ActivationError;

    const/16 v15, 0xe

    const-string v14, "EXCEEDED_SOFTWARE_REGISTRATION_LIMIT"

    invoke-direct {v0, v14, v15}, Lcom/audible/mobile/activation/ActivationError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/activation/ActivationError;->EXCEEDED_SOFTWARE_REGISTRATION_LIMIT:Lcom/audible/mobile/activation/ActivationError;

    .line 23
    new-instance v0, Lcom/audible/mobile/activation/ActivationError;

    const/16 v14, 0xf

    const-string v15, "PLAYER_REGISTERED_OTHER_USER"

    invoke-direct {v0, v15, v14}, Lcom/audible/mobile/activation/ActivationError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/activation/ActivationError;->PLAYER_REGISTERED_OTHER_USER:Lcom/audible/mobile/activation/ActivationError;

    .line 24
    new-instance v0, Lcom/audible/mobile/activation/ActivationError;

    const/16 v15, 0x10

    const-string v14, "ACTIVATION_ERROR_LIMIT_REACHED"

    invoke-direct {v0, v14, v15}, Lcom/audible/mobile/activation/ActivationError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/activation/ActivationError;->ACTIVATION_ERROR_LIMIT_REACHED:Lcom/audible/mobile/activation/ActivationError;

    .line 25
    new-instance v0, Lcom/audible/mobile/activation/ActivationError;

    const/16 v14, 0x11

    const-string v15, "SIGNATURE_GENERATION_FAILURE1"

    invoke-direct {v0, v15, v14}, Lcom/audible/mobile/activation/ActivationError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/activation/ActivationError;->SIGNATURE_GENERATION_FAILURE1:Lcom/audible/mobile/activation/ActivationError;

    .line 26
    new-instance v0, Lcom/audible/mobile/activation/ActivationError;

    const/16 v15, 0x12

    const-string v14, "SIGNATURE_GENERATION_FAILURE2"

    invoke-direct {v0, v14, v15}, Lcom/audible/mobile/activation/ActivationError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/activation/ActivationError;->SIGNATURE_GENERATION_FAILURE2:Lcom/audible/mobile/activation/ActivationError;

    .line 27
    new-instance v0, Lcom/audible/mobile/activation/ActivationError;

    const/16 v14, 0x13

    const-string v15, "ACTIVATION_LIMIT_MSG"

    invoke-direct {v0, v15, v14}, Lcom/audible/mobile/activation/ActivationError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/activation/ActivationError;->ACTIVATION_LIMIT_MSG:Lcom/audible/mobile/activation/ActivationError;

    .line 28
    new-instance v0, Lcom/audible/mobile/activation/ActivationError;

    const/16 v15, 0x14

    const-string v14, "INVALID_PLAYER_ID"

    invoke-direct {v0, v14, v15}, Lcom/audible/mobile/activation/ActivationError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/activation/ActivationError;->INVALID_PLAYER_ID:Lcom/audible/mobile/activation/ActivationError;

    const/16 v14, 0x15

    new-array v14, v14, [Lcom/audible/mobile/activation/ActivationError;

    .line 6
    sget-object v16, Lcom/audible/mobile/activation/ActivationError;->NONE:Lcom/audible/mobile/activation/ActivationError;

    aput-object v16, v14, v1

    sget-object v1, Lcom/audible/mobile/activation/ActivationError;->NO_RESPONSE:Lcom/audible/mobile/activation/ActivationError;

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/mobile/activation/ActivationError;->UNKNOWN_ERROR:Lcom/audible/mobile/activation/ActivationError;

    aput-object v1, v14, v3

    sget-object v1, Lcom/audible/mobile/activation/ActivationError;->FAILED_TO_SAVE_FILE:Lcom/audible/mobile/activation/ActivationError;

    aput-object v1, v14, v4

    sget-object v1, Lcom/audible/mobile/activation/ActivationError;->NO_GROUP_ID:Lcom/audible/mobile/activation/ActivationError;

    aput-object v1, v14, v5

    sget-object v1, Lcom/audible/mobile/activation/ActivationError;->DB_CONNECT_ERROR:Lcom/audible/mobile/activation/ActivationError;

    aput-object v1, v14, v6

    sget-object v1, Lcom/audible/mobile/activation/ActivationError;->NO_ACCOUNT_ERROR:Lcom/audible/mobile/activation/ActivationError;

    aput-object v1, v14, v7

    sget-object v1, Lcom/audible/mobile/activation/ActivationError;->BAD_LOGIN:Lcom/audible/mobile/activation/ActivationError;

    aput-object v1, v14, v8

    sget-object v1, Lcom/audible/mobile/activation/ActivationError;->BAD_LOGIN_ERROR:Lcom/audible/mobile/activation/ActivationError;

    aput-object v1, v14, v9

    sget-object v1, Lcom/audible/mobile/activation/ActivationError;->PURCHASE_AUTHORIZATION:Lcom/audible/mobile/activation/ActivationError;

    aput-object v1, v14, v10

    sget-object v1, Lcom/audible/mobile/activation/ActivationError;->PLAYER_NOT_REGISTERED:Lcom/audible/mobile/activation/ActivationError;

    aput-object v1, v14, v11

    sget-object v1, Lcom/audible/mobile/activation/ActivationError;->PLAYER_ALREADY_REGISTERED:Lcom/audible/mobile/activation/ActivationError;

    aput-object v1, v14, v12

    sget-object v1, Lcom/audible/mobile/activation/ActivationError;->EXCEEDED_HARDWARE_REGISTRATION_LIMIT:Lcom/audible/mobile/activation/ActivationError;

    aput-object v1, v14, v13

    sget-object v1, Lcom/audible/mobile/activation/ActivationError;->EXCEEDED_PDA_REGISTRATION_LIMIT:Lcom/audible/mobile/activation/ActivationError;

    const/16 v2, 0xd

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/mobile/activation/ActivationError;->EXCEEDED_SOFTWARE_REGISTRATION_LIMIT:Lcom/audible/mobile/activation/ActivationError;

    const/16 v2, 0xe

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/mobile/activation/ActivationError;->PLAYER_REGISTERED_OTHER_USER:Lcom/audible/mobile/activation/ActivationError;

    const/16 v2, 0xf

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/mobile/activation/ActivationError;->ACTIVATION_ERROR_LIMIT_REACHED:Lcom/audible/mobile/activation/ActivationError;

    const/16 v2, 0x10

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/mobile/activation/ActivationError;->SIGNATURE_GENERATION_FAILURE1:Lcom/audible/mobile/activation/ActivationError;

    const/16 v2, 0x11

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/mobile/activation/ActivationError;->SIGNATURE_GENERATION_FAILURE2:Lcom/audible/mobile/activation/ActivationError;

    const/16 v2, 0x12

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/mobile/activation/ActivationError;->ACTIVATION_LIMIT_MSG:Lcom/audible/mobile/activation/ActivationError;

    const/16 v2, 0x13

    aput-object v1, v14, v2

    aput-object v0, v14, v15

    sput-object v14, Lcom/audible/mobile/activation/ActivationError;->$VALUES:[Lcom/audible/mobile/activation/ActivationError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/mobile/activation/ActivationError;
    .locals 1

    .line 6
    const-class v0, Lcom/audible/mobile/activation/ActivationError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/mobile/activation/ActivationError;

    return-object p0
.end method

.method public static values()[Lcom/audible/mobile/activation/ActivationError;
    .locals 1

    .line 6
    sget-object v0, Lcom/audible/mobile/activation/ActivationError;->$VALUES:[Lcom/audible/mobile/activation/ActivationError;

    invoke-virtual {v0}, [Lcom/audible/mobile/activation/ActivationError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/mobile/activation/ActivationError;

    return-object v0
.end method
