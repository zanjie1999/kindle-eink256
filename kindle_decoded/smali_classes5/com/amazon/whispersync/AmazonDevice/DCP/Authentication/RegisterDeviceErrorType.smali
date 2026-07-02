.class public final enum Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceErrorType;
.super Ljava/lang/Enum;
.source "RegisterDeviceErrorType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceErrorType;

.field public static final enum RegisterDeviceErrorTypeCustomerNotFound:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceErrorType;

.field public static final enum RegisterDeviceErrorTypeDeviceAlreadyRegistered:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceErrorType;

.field public static final enum RegisterDeviceErrorTypeDuplicateDeviceName:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceErrorType;

.field public static final enum RegisterDeviceErrorTypeUnrecognized:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceErrorType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 6
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceErrorType;

    const/4 v1, 0x0

    const-string v2, "RegisterDeviceErrorTypeCustomerNotFound"

    invoke-direct {v0, v2, v1}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceErrorType;->RegisterDeviceErrorTypeCustomerNotFound:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceErrorType;

    .line 7
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceErrorType;

    const/4 v2, 0x1

    const-string v3, "RegisterDeviceErrorTypeDeviceAlreadyRegistered"

    invoke-direct {v0, v3, v2}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceErrorType;->RegisterDeviceErrorTypeDeviceAlreadyRegistered:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceErrorType;

    .line 8
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceErrorType;

    const/4 v3, 0x2

    const-string v4, "RegisterDeviceErrorTypeDuplicateDeviceName"

    invoke-direct {v0, v4, v3}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceErrorType;->RegisterDeviceErrorTypeDuplicateDeviceName:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceErrorType;

    .line 9
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceErrorType;

    const/4 v4, 0x3

    const-string v5, "RegisterDeviceErrorTypeUnrecognized"

    invoke-direct {v0, v5, v4}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceErrorType;->RegisterDeviceErrorTypeUnrecognized:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceErrorType;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceErrorType;

    .line 4
    sget-object v6, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceErrorType;->RegisterDeviceErrorTypeCustomerNotFound:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceErrorType;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceErrorType;->RegisterDeviceErrorTypeDeviceAlreadyRegistered:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceErrorType;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceErrorType;->RegisterDeviceErrorTypeDuplicateDeviceName:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceErrorType;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceErrorType;->$VALUES:[Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceErrorType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceErrorType;
    .locals 1

    .line 4
    const-class v0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceErrorType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceErrorType;
    .locals 1

    .line 4
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceErrorType;->$VALUES:[Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceErrorType;

    invoke-virtual {v0}, [Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceErrorType;

    return-object v0
.end method
