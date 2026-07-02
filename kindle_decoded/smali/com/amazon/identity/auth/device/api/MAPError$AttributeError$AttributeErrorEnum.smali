.class final enum Lcom/amazon/identity/auth/device/api/MAPError$AttributeError$AttributeErrorEnum;
.super Ljava/lang/Enum;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/api/MAPError$MAPErrorMethods;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/api/MAPError$AttributeError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "AttributeErrorEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/identity/auth/device/api/MAPError$AttributeError$AttributeErrorEnum;",
        ">;",
        "Lcom/amazon/identity/auth/device/api/MAPError$MAPErrorMethods;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/identity/auth/device/api/MAPError$AttributeError$AttributeErrorEnum;

.field public static final enum CANNOT_DETERMINE_OVERRIDE_DEVICE_TYPE:Lcom/amazon/identity/auth/device/api/MAPError$AttributeError$AttributeErrorEnum;

.field public static final enum GET_ATTRIBUTE_FAILED:Lcom/amazon/identity/auth/device/api/MAPError$AttributeError$AttributeErrorEnum;

.field public static final enum KEY_NOT_FOUND:Lcom/amazon/identity/auth/device/api/MAPError$AttributeError$AttributeErrorEnum;

.field public static final enum NOT_A_CHILD_DEVICE_TYPE:Lcom/amazon/identity/auth/device/api/MAPError$AttributeError$AttributeErrorEnum;

.field public static final enum NO_OVERRIDDEN_CHILD_DEVICE_TYPE:Lcom/amazon/identity/auth/device/api/MAPError$AttributeError$AttributeErrorEnum;

.field public static final enum PACKAGE_RUNNING_ON_FIRST_PARTY_DEVICE:Lcom/amazon/identity/auth/device/api/MAPError$AttributeError$AttributeErrorEnum;

.field public static final enum SET_ATTRIBUTE_FAILED:Lcom/amazon/identity/auth/device/api/MAPError$AttributeError$AttributeErrorEnum;

.field public static final enum UNRECOGNIZED_PACKAGE_NAME:Lcom/amazon/identity/auth/device/api/MAPError$AttributeError$AttributeErrorEnum;


# instance fields
.field private mErrorCode:I

.field private mErrorMessage:Ljava/lang/String;

.field private mErrorType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 384
    new-instance v6, Lcom/amazon/identity/auth/device/api/MAPError$AttributeError$AttributeErrorEnum;

    const-string v1, "SET_ATTRIBUTE_FAILED"

    const/4 v2, 0x0

    const/16 v3, 0x12c

    const-string v4, "SetAttributeFailed"

    const-string v5, "An error occurred while setting the attribute"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/amazon/identity/auth/device/api/MAPError$AttributeError$AttributeErrorEnum;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/amazon/identity/auth/device/api/MAPError$AttributeError$AttributeErrorEnum;->SET_ATTRIBUTE_FAILED:Lcom/amazon/identity/auth/device/api/MAPError$AttributeError$AttributeErrorEnum;

    .line 385
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPError$AttributeError$AttributeErrorEnum;

    const-string v8, "GET_ATTRIBUTE_FAILED"

    const/4 v9, 0x1

    const/16 v10, 0x12d

    const-string v11, "GetAttributeFailed"

    const-string v12, "An error occurred while getting the attribute"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/identity/auth/device/api/MAPError$AttributeError$AttributeErrorEnum;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPError$AttributeError$AttributeErrorEnum;->GET_ATTRIBUTE_FAILED:Lcom/amazon/identity/auth/device/api/MAPError$AttributeError$AttributeErrorEnum;

    .line 386
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPError$AttributeError$AttributeErrorEnum;

    const-string v2, "KEY_NOT_FOUND"

    const/4 v3, 0x2

    const/16 v4, 0x12e

    const-string v5, "KeyNotFound"

    const-string v6, "Could not find key"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/identity/auth/device/api/MAPError$AttributeError$AttributeErrorEnum;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPError$AttributeError$AttributeErrorEnum;->KEY_NOT_FOUND:Lcom/amazon/identity/auth/device/api/MAPError$AttributeError$AttributeErrorEnum;

    .line 387
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPError$AttributeError$AttributeErrorEnum;

    const-string v8, "CANNOT_DETERMINE_OVERRIDE_DEVICE_TYPE"

    const/4 v9, 0x3

    const/16 v10, 0x12f

    const-string v11, "CannotDetermineOverrideDeviceType"

    const-string v12, "Cannot determine the override device type"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/identity/auth/device/api/MAPError$AttributeError$AttributeErrorEnum;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPError$AttributeError$AttributeErrorEnum;->CANNOT_DETERMINE_OVERRIDE_DEVICE_TYPE:Lcom/amazon/identity/auth/device/api/MAPError$AttributeError$AttributeErrorEnum;

    .line 388
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPError$AttributeError$AttributeErrorEnum;

    const-string v2, "NO_OVERRIDDEN_CHILD_DEVICE_TYPE"

    const/4 v3, 0x4

    const/16 v4, 0x130

    const-string v5, "NoOverriddenChildDeviceType"

    const-string v6, "The package doesn\'t have an overridden child device type to rename child device."

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/identity/auth/device/api/MAPError$AttributeError$AttributeErrorEnum;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPError$AttributeError$AttributeErrorEnum;->NO_OVERRIDDEN_CHILD_DEVICE_TYPE:Lcom/amazon/identity/auth/device/api/MAPError$AttributeError$AttributeErrorEnum;

    .line 389
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPError$AttributeError$AttributeErrorEnum;

    const-string v8, "PACKAGE_RUNNING_ON_FIRST_PARTY_DEVICE"

    const/4 v9, 0x5

    const/16 v10, 0x131

    const-string v11, "PackageRunningOnFirstPartyDevice"

    const-string v12, "The package is running on a first party device, so the child device type cannot be overridden"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/identity/auth/device/api/MAPError$AttributeError$AttributeErrorEnum;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPError$AttributeError$AttributeErrorEnum;->PACKAGE_RUNNING_ON_FIRST_PARTY_DEVICE:Lcom/amazon/identity/auth/device/api/MAPError$AttributeError$AttributeErrorEnum;

    .line 390
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPError$AttributeError$AttributeErrorEnum;

    const-string v2, "NOT_A_CHILD_DEVICE_TYPE"

    const/4 v3, 0x6

    const/16 v4, 0x132

    const-string v5, "NotAChildDeviceType"

    const-string v6, "This is not a child device type"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/identity/auth/device/api/MAPError$AttributeError$AttributeErrorEnum;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPError$AttributeError$AttributeErrorEnum;->NOT_A_CHILD_DEVICE_TYPE:Lcom/amazon/identity/auth/device/api/MAPError$AttributeError$AttributeErrorEnum;

    .line 391
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPError$AttributeError$AttributeErrorEnum;

    const-string v8, "UNRECOGNIZED_PACKAGE_NAME"

    const/4 v9, 0x7

    const/16 v10, 0x133

    const-string v11, "UnrecognizedPackageName"

    const-string v12, "Package cannot be found or trusted to rename child device"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/identity/auth/device/api/MAPError$AttributeError$AttributeErrorEnum;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPError$AttributeError$AttributeErrorEnum;->UNRECOGNIZED_PACKAGE_NAME:Lcom/amazon/identity/auth/device/api/MAPError$AttributeError$AttributeErrorEnum;

    const/16 v1, 0x8

    new-array v1, v1, [Lcom/amazon/identity/auth/device/api/MAPError$AttributeError$AttributeErrorEnum;

    .line 382
    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$AttributeError$AttributeErrorEnum;->SET_ATTRIBUTE_FAILED:Lcom/amazon/identity/auth/device/api/MAPError$AttributeError$AttributeErrorEnum;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$AttributeError$AttributeErrorEnum;->GET_ATTRIBUTE_FAILED:Lcom/amazon/identity/auth/device/api/MAPError$AttributeError$AttributeErrorEnum;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$AttributeError$AttributeErrorEnum;->KEY_NOT_FOUND:Lcom/amazon/identity/auth/device/api/MAPError$AttributeError$AttributeErrorEnum;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$AttributeError$AttributeErrorEnum;->CANNOT_DETERMINE_OVERRIDE_DEVICE_TYPE:Lcom/amazon/identity/auth/device/api/MAPError$AttributeError$AttributeErrorEnum;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$AttributeError$AttributeErrorEnum;->NO_OVERRIDDEN_CHILD_DEVICE_TYPE:Lcom/amazon/identity/auth/device/api/MAPError$AttributeError$AttributeErrorEnum;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$AttributeError$AttributeErrorEnum;->PACKAGE_RUNNING_ON_FIRST_PARTY_DEVICE:Lcom/amazon/identity/auth/device/api/MAPError$AttributeError$AttributeErrorEnum;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$AttributeError$AttributeErrorEnum;->NOT_A_CHILD_DEVICE_TYPE:Lcom/amazon/identity/auth/device/api/MAPError$AttributeError$AttributeErrorEnum;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const/4 v2, 0x7

    aput-object v0, v1, v2

    sput-object v1, Lcom/amazon/identity/auth/device/api/MAPError$AttributeError$AttributeErrorEnum;->$VALUES:[Lcom/amazon/identity/auth/device/api/MAPError$AttributeError$AttributeErrorEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 398
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 399
    iput p3, p0, Lcom/amazon/identity/auth/device/api/MAPError$AttributeError$AttributeErrorEnum;->mErrorCode:I

    .line 400
    iput-object p4, p0, Lcom/amazon/identity/auth/device/api/MAPError$AttributeError$AttributeErrorEnum;->mErrorType:Ljava/lang/String;

    .line 401
    iput-object p5, p0, Lcom/amazon/identity/auth/device/api/MAPError$AttributeError$AttributeErrorEnum;->mErrorMessage:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/identity/auth/device/api/MAPError$AttributeError$AttributeErrorEnum;
    .locals 1

    .line 382
    const-class v0, Lcom/amazon/identity/auth/device/api/MAPError$AttributeError$AttributeErrorEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/auth/device/api/MAPError$AttributeError$AttributeErrorEnum;

    return-object p0
.end method

.method public static values()[Lcom/amazon/identity/auth/device/api/MAPError$AttributeError$AttributeErrorEnum;
    .locals 1

    .line 382
    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPError$AttributeError$AttributeErrorEnum;->$VALUES:[Lcom/amazon/identity/auth/device/api/MAPError$AttributeError$AttributeErrorEnum;

    invoke-virtual {v0}, [Lcom/amazon/identity/auth/device/api/MAPError$AttributeError$AttributeErrorEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/identity/auth/device/api/MAPError$AttributeError$AttributeErrorEnum;

    return-object v0
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .line 406
    iget v0, p0, Lcom/amazon/identity/auth/device/api/MAPError$AttributeError$AttributeErrorEnum;->mErrorCode:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPError$AttributeError$AttributeErrorEnum;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorType()Ljava/lang/String;
    .locals 1

    .line 416
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPError$AttributeError$AttributeErrorEnum;->mErrorType:Ljava/lang/String;

    return-object v0
.end method
