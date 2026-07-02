.class public final enum Lcom/amazon/identity/auth/device/utils/AccountConstants$DeviceRenameError;
.super Ljava/lang/Enum;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/utils/AccountConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeviceRenameError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/identity/auth/device/utils/AccountConstants$DeviceRenameError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/identity/auth/device/utils/AccountConstants$DeviceRenameError;

.field public static final enum AUTHENTICATION_FAILED:Lcom/amazon/identity/auth/device/utils/AccountConstants$DeviceRenameError;

.field public static final enum INVALID_INPUT:Lcom/amazon/identity/auth/device/utils/AccountConstants$DeviceRenameError;

.field public static final enum NAME_ALREADY_USED:Lcom/amazon/identity/auth/device/utils/AccountConstants$DeviceRenameError;

.field public static final enum NETWORK_FAILURE:Lcom/amazon/identity/auth/device/utils/AccountConstants$DeviceRenameError;

.field public static final enum NO_AMAZON_ACCOUNT:Lcom/amazon/identity/auth/device/utils/AccountConstants$DeviceRenameError;

.field public static final enum PARSE_ERROR:Lcom/amazon/identity/auth/device/utils/AccountConstants$DeviceRenameError;

.field public static final enum UNRECOGNIZED:Lcom/amazon/identity/auth/device/utils/AccountConstants$DeviceRenameError;


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 20
    new-instance v0, Lcom/amazon/identity/auth/device/utils/AccountConstants$DeviceRenameError;

    const/4 v1, 0x0

    const-string v2, "NETWORK_FAILURE"

    const-string v3, "NetworkFailure"

    invoke-direct {v0, v2, v1, v1, v3}, Lcom/amazon/identity/auth/device/utils/AccountConstants$DeviceRenameError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/utils/AccountConstants$DeviceRenameError;->NETWORK_FAILURE:Lcom/amazon/identity/auth/device/utils/AccountConstants$DeviceRenameError;

    .line 21
    new-instance v0, Lcom/amazon/identity/auth/device/utils/AccountConstants$DeviceRenameError;

    const/4 v2, 0x1

    const-string v3, "AUTHENTICATION_FAILED"

    const-string v4, "AuthenticationFailed"

    invoke-direct {v0, v3, v2, v2, v4}, Lcom/amazon/identity/auth/device/utils/AccountConstants$DeviceRenameError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/utils/AccountConstants$DeviceRenameError;->AUTHENTICATION_FAILED:Lcom/amazon/identity/auth/device/utils/AccountConstants$DeviceRenameError;

    .line 22
    new-instance v0, Lcom/amazon/identity/auth/device/utils/AccountConstants$DeviceRenameError;

    const/4 v3, 0x2

    const-string v4, "PARSE_ERROR"

    const-string v5, "ParseError"

    invoke-direct {v0, v4, v3, v3, v5}, Lcom/amazon/identity/auth/device/utils/AccountConstants$DeviceRenameError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/utils/AccountConstants$DeviceRenameError;->PARSE_ERROR:Lcom/amazon/identity/auth/device/utils/AccountConstants$DeviceRenameError;

    .line 23
    new-instance v0, Lcom/amazon/identity/auth/device/utils/AccountConstants$DeviceRenameError;

    const/4 v4, 0x3

    const-string v5, "NO_AMAZON_ACCOUNT"

    const-string v6, "NoAmazonAccount"

    invoke-direct {v0, v5, v4, v4, v6}, Lcom/amazon/identity/auth/device/utils/AccountConstants$DeviceRenameError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/utils/AccountConstants$DeviceRenameError;->NO_AMAZON_ACCOUNT:Lcom/amazon/identity/auth/device/utils/AccountConstants$DeviceRenameError;

    .line 24
    new-instance v0, Lcom/amazon/identity/auth/device/utils/AccountConstants$DeviceRenameError;

    const/4 v5, 0x4

    const-string v6, "NAME_ALREADY_USED"

    const-string v7, "NameAlreadyUsed"

    invoke-direct {v0, v6, v5, v5, v7}, Lcom/amazon/identity/auth/device/utils/AccountConstants$DeviceRenameError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/utils/AccountConstants$DeviceRenameError;->NAME_ALREADY_USED:Lcom/amazon/identity/auth/device/utils/AccountConstants$DeviceRenameError;

    .line 25
    new-instance v0, Lcom/amazon/identity/auth/device/utils/AccountConstants$DeviceRenameError;

    const/4 v6, 0x5

    const-string v7, "INVALID_INPUT"

    const-string v8, "InvalidInputs"

    invoke-direct {v0, v7, v6, v6, v8}, Lcom/amazon/identity/auth/device/utils/AccountConstants$DeviceRenameError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/utils/AccountConstants$DeviceRenameError;->INVALID_INPUT:Lcom/amazon/identity/auth/device/utils/AccountConstants$DeviceRenameError;

    .line 26
    new-instance v0, Lcom/amazon/identity/auth/device/utils/AccountConstants$DeviceRenameError;

    const/4 v7, 0x6

    const-string v8, "UNRECOGNIZED"

    const-string v9, "Unrecognized"

    invoke-direct {v0, v8, v7, v7, v9}, Lcom/amazon/identity/auth/device/utils/AccountConstants$DeviceRenameError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/utils/AccountConstants$DeviceRenameError;->UNRECOGNIZED:Lcom/amazon/identity/auth/device/utils/AccountConstants$DeviceRenameError;

    const/4 v8, 0x7

    new-array v8, v8, [Lcom/amazon/identity/auth/device/utils/AccountConstants$DeviceRenameError;

    .line 18
    sget-object v9, Lcom/amazon/identity/auth/device/utils/AccountConstants$DeviceRenameError;->NETWORK_FAILURE:Lcom/amazon/identity/auth/device/utils/AccountConstants$DeviceRenameError;

    aput-object v9, v8, v1

    sget-object v1, Lcom/amazon/identity/auth/device/utils/AccountConstants$DeviceRenameError;->AUTHENTICATION_FAILED:Lcom/amazon/identity/auth/device/utils/AccountConstants$DeviceRenameError;

    aput-object v1, v8, v2

    sget-object v1, Lcom/amazon/identity/auth/device/utils/AccountConstants$DeviceRenameError;->PARSE_ERROR:Lcom/amazon/identity/auth/device/utils/AccountConstants$DeviceRenameError;

    aput-object v1, v8, v3

    sget-object v1, Lcom/amazon/identity/auth/device/utils/AccountConstants$DeviceRenameError;->NO_AMAZON_ACCOUNT:Lcom/amazon/identity/auth/device/utils/AccountConstants$DeviceRenameError;

    aput-object v1, v8, v4

    sget-object v1, Lcom/amazon/identity/auth/device/utils/AccountConstants$DeviceRenameError;->NAME_ALREADY_USED:Lcom/amazon/identity/auth/device/utils/AccountConstants$DeviceRenameError;

    aput-object v1, v8, v5

    sget-object v1, Lcom/amazon/identity/auth/device/utils/AccountConstants$DeviceRenameError;->INVALID_INPUT:Lcom/amazon/identity/auth/device/utils/AccountConstants$DeviceRenameError;

    aput-object v1, v8, v6

    aput-object v0, v8, v7

    sput-object v8, Lcom/amazon/identity/auth/device/utils/AccountConstants$DeviceRenameError;->$VALUES:[Lcom/amazon/identity/auth/device/utils/AccountConstants$DeviceRenameError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput p3, p0, Lcom/amazon/identity/auth/device/utils/AccountConstants$DeviceRenameError;->mValue:I

    .line 34
    iput-object p4, p0, Lcom/amazon/identity/auth/device/utils/AccountConstants$DeviceRenameError;->mName:Ljava/lang/String;

    return-void
.end method

.method public static fromValue(I)Lcom/amazon/identity/auth/device/utils/AccountConstants$DeviceRenameError;
    .locals 5

    .line 49
    invoke-static {}, Lcom/amazon/identity/auth/device/utils/AccountConstants$DeviceRenameError;->values()[Lcom/amazon/identity/auth/device/utils/AccountConstants$DeviceRenameError;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 51
    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/utils/AccountConstants$DeviceRenameError;->value()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 57
    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/identity/auth/device/utils/AccountConstants$DeviceRenameError;
    .locals 1

    .line 18
    const-class v0, Lcom/amazon/identity/auth/device/utils/AccountConstants$DeviceRenameError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/auth/device/utils/AccountConstants$DeviceRenameError;

    return-object p0
.end method

.method public static values()[Lcom/amazon/identity/auth/device/utils/AccountConstants$DeviceRenameError;
    .locals 1

    .line 18
    sget-object v0, Lcom/amazon/identity/auth/device/utils/AccountConstants$DeviceRenameError;->$VALUES:[Lcom/amazon/identity/auth/device/utils/AccountConstants$DeviceRenameError;

    invoke-virtual {v0}, [Lcom/amazon/identity/auth/device/utils/AccountConstants$DeviceRenameError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/identity/auth/device/utils/AccountConstants$DeviceRenameError;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/amazon/identity/auth/device/utils/AccountConstants$DeviceRenameError;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public value()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/amazon/identity/auth/device/utils/AccountConstants$DeviceRenameError;->mValue:I

    return v0
.end method
