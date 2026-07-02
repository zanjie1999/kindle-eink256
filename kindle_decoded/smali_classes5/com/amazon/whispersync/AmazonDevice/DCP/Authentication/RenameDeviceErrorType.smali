.class public final enum Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceErrorType;
.super Ljava/lang/Enum;
.source "RenameDeviceErrorType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceErrorType;

.field public static final enum RenameDeviceErrorTypeAlreadyUsed:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceErrorType;

.field public static final enum RenameDeviceErrorTypeInvalidInput:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceErrorType;

.field public static final enum RenameDeviceErrorTypeUnrecognized:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceErrorType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 6
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceErrorType;

    const/4 v1, 0x0

    const-string v2, "RenameDeviceErrorTypeInvalidInput"

    invoke-direct {v0, v2, v1}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceErrorType;->RenameDeviceErrorTypeInvalidInput:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceErrorType;

    .line 7
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceErrorType;

    const/4 v2, 0x1

    const-string v3, "RenameDeviceErrorTypeAlreadyUsed"

    invoke-direct {v0, v3, v2}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceErrorType;->RenameDeviceErrorTypeAlreadyUsed:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceErrorType;

    .line 8
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceErrorType;

    const/4 v3, 0x2

    const-string v4, "RenameDeviceErrorTypeUnrecognized"

    invoke-direct {v0, v4, v3}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceErrorType;->RenameDeviceErrorTypeUnrecognized:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceErrorType;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceErrorType;

    .line 4
    sget-object v5, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceErrorType;->RenameDeviceErrorTypeInvalidInput:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceErrorType;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceErrorType;->RenameDeviceErrorTypeAlreadyUsed:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceErrorType;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceErrorType;->$VALUES:[Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceErrorType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceErrorType;
    .locals 1

    .line 4
    const-class v0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceErrorType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceErrorType;
    .locals 1

    .line 4
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceErrorType;->$VALUES:[Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceErrorType;

    invoke-virtual {v0}, [Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceErrorType;

    return-object v0
.end method
