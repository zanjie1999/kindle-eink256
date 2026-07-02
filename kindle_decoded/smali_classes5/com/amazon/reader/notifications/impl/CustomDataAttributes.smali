.class public final enum Lcom/amazon/reader/notifications/impl/CustomDataAttributes;
.super Ljava/lang/Enum;
.source "CustomDataAttributes.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/reader/notifications/impl/CustomDataAttributes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/reader/notifications/impl/CustomDataAttributes;

.field public static final enum APP_SOFTWARE_VERSION:Lcom/amazon/reader/notifications/impl/CustomDataAttributes;

.field public static final enum DEVICE_OS_VERSION:Lcom/amazon/reader/notifications/impl/CustomDataAttributes;

.field public static final enum DEVICE_TYPE:Lcom/amazon/reader/notifications/impl/CustomDataAttributes;

.field public static final enum DSN:Lcom/amazon/reader/notifications/impl/CustomDataAttributes;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 19
    new-instance v0, Lcom/amazon/reader/notifications/impl/CustomDataAttributes;

    const/4 v1, 0x0

    const-string v2, "DEVICE_TYPE"

    const-string v3, "deviceType"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/reader/notifications/impl/CustomDataAttributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/reader/notifications/impl/CustomDataAttributes;->DEVICE_TYPE:Lcom/amazon/reader/notifications/impl/CustomDataAttributes;

    .line 20
    new-instance v0, Lcom/amazon/reader/notifications/impl/CustomDataAttributes;

    const/4 v2, 0x1

    const-string v3, "DSN"

    const-string v4, "dsn"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/reader/notifications/impl/CustomDataAttributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/reader/notifications/impl/CustomDataAttributes;->DSN:Lcom/amazon/reader/notifications/impl/CustomDataAttributes;

    .line 21
    new-instance v0, Lcom/amazon/reader/notifications/impl/CustomDataAttributes;

    const/4 v3, 0x2

    const-string v4, "DEVICE_OS_VERSION"

    const-string v5, "deviceOsVersion"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/reader/notifications/impl/CustomDataAttributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/reader/notifications/impl/CustomDataAttributes;->DEVICE_OS_VERSION:Lcom/amazon/reader/notifications/impl/CustomDataAttributes;

    .line 22
    new-instance v0, Lcom/amazon/reader/notifications/impl/CustomDataAttributes;

    const/4 v4, 0x3

    const-string v5, "APP_SOFTWARE_VERSION"

    const-string v6, "appSoftwareVersion"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/reader/notifications/impl/CustomDataAttributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/reader/notifications/impl/CustomDataAttributes;->APP_SOFTWARE_VERSION:Lcom/amazon/reader/notifications/impl/CustomDataAttributes;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/reader/notifications/impl/CustomDataAttributes;

    .line 17
    sget-object v6, Lcom/amazon/reader/notifications/impl/CustomDataAttributes;->DEVICE_TYPE:Lcom/amazon/reader/notifications/impl/CustomDataAttributes;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/reader/notifications/impl/CustomDataAttributes;->DSN:Lcom/amazon/reader/notifications/impl/CustomDataAttributes;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/reader/notifications/impl/CustomDataAttributes;->DEVICE_OS_VERSION:Lcom/amazon/reader/notifications/impl/CustomDataAttributes;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/reader/notifications/impl/CustomDataAttributes;->$VALUES:[Lcom/amazon/reader/notifications/impl/CustomDataAttributes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput-object p3, p0, Lcom/amazon/reader/notifications/impl/CustomDataAttributes;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/reader/notifications/impl/CustomDataAttributes;
    .locals 1

    .line 17
    const-class v0, Lcom/amazon/reader/notifications/impl/CustomDataAttributes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/reader/notifications/impl/CustomDataAttributes;

    return-object p0
.end method

.method public static values()[Lcom/amazon/reader/notifications/impl/CustomDataAttributes;
    .locals 1

    .line 17
    sget-object v0, Lcom/amazon/reader/notifications/impl/CustomDataAttributes;->$VALUES:[Lcom/amazon/reader/notifications/impl/CustomDataAttributes;

    invoke-virtual {v0}, [Lcom/amazon/reader/notifications/impl/CustomDataAttributes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/reader/notifications/impl/CustomDataAttributes;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/amazon/reader/notifications/impl/CustomDataAttributes;->value:Ljava/lang/String;

    return-object v0
.end method
