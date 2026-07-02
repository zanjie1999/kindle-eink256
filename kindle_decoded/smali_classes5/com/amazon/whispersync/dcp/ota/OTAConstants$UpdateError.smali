.class public final enum Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;
.super Ljava/lang/Enum;
.source "OTAConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/dcp/ota/OTAConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UpdateError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;

.field public static final enum BATTERY_TOO_LOW:Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;

.field public static final enum DOWNGRADE_OS:Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;

.field public static final enum DOWNLOAD_FAILURE:Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;

.field public static final enum INSUFFICIENT_DISK_SPACE:Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;

.field public static final enum INVALID_SIGNATURE:Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;

.field public static final enum INVALID_UPDATE:Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;

.field public static final enum IO_FAILURE:Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;

.field public static final enum MALFORMED_URI:Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;

.field public static final enum NO_UPDATE_FOUND:Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;

.field public static final enum UNEXPECTED_UPDATE_ERROR:Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;

.field public static final enum USER_INTERACTION_REQUIRED:Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 55
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;

    const/4 v1, 0x0

    const-string v2, "INVALID_UPDATE"

    invoke-direct {v0, v2, v1, v1}, Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;->INVALID_UPDATE:Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;

    .line 56
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;

    const/4 v2, 0x1

    const-string v3, "BATTERY_TOO_LOW"

    invoke-direct {v0, v3, v2, v2}, Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;->BATTERY_TOO_LOW:Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;

    .line 57
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;

    const/4 v3, 0x2

    const-string v4, "NO_UPDATE_FOUND"

    invoke-direct {v0, v4, v3, v3}, Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;->NO_UPDATE_FOUND:Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;

    .line 58
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;

    const/4 v4, 0x3

    const-string v5, "MALFORMED_URI"

    invoke-direct {v0, v5, v4, v4}, Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;->MALFORMED_URI:Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;

    .line 59
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;

    const/4 v5, 0x4

    const-string v6, "IO_FAILURE"

    invoke-direct {v0, v6, v5, v5}, Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;->IO_FAILURE:Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;

    .line 60
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;

    const/4 v6, 0x5

    const-string v7, "UNEXPECTED_UPDATE_ERROR"

    invoke-direct {v0, v7, v6, v6}, Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;->UNEXPECTED_UPDATE_ERROR:Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;

    .line 61
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;

    const/4 v7, 0x6

    const-string v8, "DOWNLOAD_FAILURE"

    invoke-direct {v0, v8, v7, v7}, Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;->DOWNLOAD_FAILURE:Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;

    .line 62
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;

    const/4 v8, 0x7

    const-string v9, "INSUFFICIENT_DISK_SPACE"

    invoke-direct {v0, v9, v8, v8}, Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;->INSUFFICIENT_DISK_SPACE:Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;

    .line 63
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;

    const/16 v9, 0x8

    const-string v10, "DOWNGRADE_OS"

    invoke-direct {v0, v10, v9, v9}, Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;->DOWNGRADE_OS:Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;

    .line 64
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;

    const/16 v10, 0x9

    const-string v11, "INVALID_SIGNATURE"

    invoke-direct {v0, v11, v10, v10}, Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;->INVALID_SIGNATURE:Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;

    .line 65
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;

    const/16 v11, 0xa

    const-string v12, "USER_INTERACTION_REQUIRED"

    invoke-direct {v0, v12, v11, v11}, Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;->USER_INTERACTION_REQUIRED:Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;

    const/16 v12, 0xb

    new-array v12, v12, [Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;

    .line 53
    sget-object v13, Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;->INVALID_UPDATE:Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;

    aput-object v13, v12, v1

    sget-object v1, Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;->BATTERY_TOO_LOW:Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;

    aput-object v1, v12, v2

    sget-object v1, Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;->NO_UPDATE_FOUND:Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;

    aput-object v1, v12, v3

    sget-object v1, Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;->MALFORMED_URI:Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;

    aput-object v1, v12, v4

    sget-object v1, Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;->IO_FAILURE:Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;

    aput-object v1, v12, v5

    sget-object v1, Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;->UNEXPECTED_UPDATE_ERROR:Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;

    aput-object v1, v12, v6

    sget-object v1, Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;->DOWNLOAD_FAILURE:Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;

    aput-object v1, v12, v7

    sget-object v1, Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;->INSUFFICIENT_DISK_SPACE:Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;

    aput-object v1, v12, v8

    sget-object v1, Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;->DOWNGRADE_OS:Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;

    aput-object v1, v12, v9

    sget-object v1, Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;->INVALID_SIGNATURE:Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;

    aput-object v1, v12, v10

    aput-object v0, v12, v11

    sput-object v12, Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;->$VALUES:[Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 71
    iput p3, p0, Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;->mValue:I

    return-void
.end method

.method public static fromValue(I)Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;
    .locals 5

    .line 81
    invoke-static {}, Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;->values()[Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 83
    invoke-virtual {v3}, Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;->value()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 89
    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;
    .locals 1

    .line 53
    const-class v0, Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;
    .locals 1

    .line 53
    sget-object v0, Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;->$VALUES:[Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;

    invoke-virtual {v0}, [Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;->mValue:I

    return v0
.end method
