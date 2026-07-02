.class public final enum Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;
.super Ljava/lang/Enum;
.source "KindleWebserviceErrorType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;

.field public static final enum KindleWebserviceErrorTypeCredentialsRequired:Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;

.field public static final enum KindleWebserviceErrorTypeDeviceAlreadyRegistered:Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;

.field public static final enum KindleWebserviceErrorTypeDuplicateDeviceName:Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;

.field public static final enum KindleWebserviceErrorTypeFileNotFound:Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;

.field public static final enum KindleWebserviceErrorTypeInsufficientFunds:Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;

.field public static final enum KindleWebserviceErrorTypeInternalError:Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;

.field public static final enum KindleWebserviceErrorTypeInvalidAsin:Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;

.field public static final enum KindleWebserviceErrorTypeInvalidOrder:Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;

.field public static final enum KindleWebserviceErrorTypeUnbuyError:Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;

.field public static final enum KindleWebserviceErrorTypeUnknownError:Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;

.field public static final enum KindleWebserviceErrorTypeUnrecognized:Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 6
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;

    const/4 v1, 0x0

    const-string v2, "KindleWebserviceErrorTypeFileNotFound"

    invoke-direct {v0, v2, v1}, Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;->KindleWebserviceErrorTypeFileNotFound:Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;

    .line 7
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;

    const/4 v2, 0x1

    const-string v3, "KindleWebserviceErrorTypeDeviceAlreadyRegistered"

    invoke-direct {v0, v3, v2}, Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;->KindleWebserviceErrorTypeDeviceAlreadyRegistered:Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;

    .line 8
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;

    const/4 v3, 0x2

    const-string v4, "KindleWebserviceErrorTypeCredentialsRequired"

    invoke-direct {v0, v4, v3}, Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;->KindleWebserviceErrorTypeCredentialsRequired:Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;

    .line 9
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;

    const/4 v4, 0x3

    const-string v5, "KindleWebserviceErrorTypeInvalidAsin"

    invoke-direct {v0, v5, v4}, Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;->KindleWebserviceErrorTypeInvalidAsin:Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;

    .line 10
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;

    const/4 v5, 0x4

    const-string v6, "KindleWebserviceErrorTypeInvalidOrder"

    invoke-direct {v0, v6, v5}, Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;->KindleWebserviceErrorTypeInvalidOrder:Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;

    .line 11
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;

    const/4 v6, 0x5

    const-string v7, "KindleWebserviceErrorTypeInsufficientFunds"

    invoke-direct {v0, v7, v6}, Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;->KindleWebserviceErrorTypeInsufficientFunds:Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;

    .line 12
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;

    const/4 v7, 0x6

    const-string v8, "KindleWebserviceErrorTypeUnknownError"

    invoke-direct {v0, v8, v7}, Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;->KindleWebserviceErrorTypeUnknownError:Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;

    .line 13
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;

    const/4 v8, 0x7

    const-string v9, "KindleWebserviceErrorTypeUnbuyError"

    invoke-direct {v0, v9, v8}, Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;->KindleWebserviceErrorTypeUnbuyError:Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;

    .line 14
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;

    const/16 v9, 0x8

    const-string v10, "KindleWebserviceErrorTypeDuplicateDeviceName"

    invoke-direct {v0, v10, v9}, Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;->KindleWebserviceErrorTypeDuplicateDeviceName:Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;

    .line 15
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;

    const/16 v10, 0x9

    const-string v11, "KindleWebserviceErrorTypeInternalError"

    invoke-direct {v0, v11, v10}, Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;->KindleWebserviceErrorTypeInternalError:Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;

    .line 16
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;

    const/16 v11, 0xa

    const-string v12, "KindleWebserviceErrorTypeUnrecognized"

    invoke-direct {v0, v12, v11}, Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;->KindleWebserviceErrorTypeUnrecognized:Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;

    const/16 v12, 0xb

    new-array v12, v12, [Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;

    .line 4
    sget-object v13, Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;->KindleWebserviceErrorTypeFileNotFound:Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;

    aput-object v13, v12, v1

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;->KindleWebserviceErrorTypeDeviceAlreadyRegistered:Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;

    aput-object v1, v12, v2

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;->KindleWebserviceErrorTypeCredentialsRequired:Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;

    aput-object v1, v12, v3

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;->KindleWebserviceErrorTypeInvalidAsin:Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;

    aput-object v1, v12, v4

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;->KindleWebserviceErrorTypeInvalidOrder:Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;

    aput-object v1, v12, v5

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;->KindleWebserviceErrorTypeInsufficientFunds:Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;

    aput-object v1, v12, v6

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;->KindleWebserviceErrorTypeUnknownError:Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;

    aput-object v1, v12, v7

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;->KindleWebserviceErrorTypeUnbuyError:Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;

    aput-object v1, v12, v8

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;->KindleWebserviceErrorTypeDuplicateDeviceName:Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;

    aput-object v1, v12, v9

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;->KindleWebserviceErrorTypeInternalError:Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;

    aput-object v1, v12, v10

    aput-object v0, v12, v11

    sput-object v12, Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;->$VALUES:[Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;
    .locals 1

    .line 4
    const-class v0, Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;
    .locals 1

    .line 4
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;->$VALUES:[Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;

    invoke-virtual {v0}, [Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;

    return-object v0
.end method
