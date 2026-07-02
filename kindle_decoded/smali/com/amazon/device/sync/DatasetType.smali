.class public final enum Lcom/amazon/device/sync/DatasetType;
.super Ljava/lang/Enum;
.source "DatasetType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/device/sync/DatasetType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/device/sync/DatasetType;

.field public static final enum Directory:Lcom/amazon/device/sync/DatasetType;

.field public static final enum StringMap:Lcom/amazon/device/sync/DatasetType;

.field public static final enum Unrecognized:Lcom/amazon/device/sync/DatasetType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 8
    new-instance v0, Lcom/amazon/device/sync/DatasetType;

    const/4 v1, 0x0

    const-string v2, "Unrecognized"

    invoke-direct {v0, v2, v1}, Lcom/amazon/device/sync/DatasetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/sync/DatasetType;->Unrecognized:Lcom/amazon/device/sync/DatasetType;

    .line 10
    new-instance v0, Lcom/amazon/device/sync/DatasetType;

    const/4 v2, 0x1

    const-string v3, "StringMap"

    invoke-direct {v0, v3, v2}, Lcom/amazon/device/sync/DatasetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/sync/DatasetType;->StringMap:Lcom/amazon/device/sync/DatasetType;

    .line 12
    new-instance v0, Lcom/amazon/device/sync/DatasetType;

    const/4 v3, 0x2

    const-string v4, "Directory"

    invoke-direct {v0, v4, v3}, Lcom/amazon/device/sync/DatasetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/sync/DatasetType;->Directory:Lcom/amazon/device/sync/DatasetType;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/device/sync/DatasetType;

    .line 5
    sget-object v5, Lcom/amazon/device/sync/DatasetType;->Unrecognized:Lcom/amazon/device/sync/DatasetType;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/device/sync/DatasetType;->StringMap:Lcom/amazon/device/sync/DatasetType;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/device/sync/DatasetType;->$VALUES:[Lcom/amazon/device/sync/DatasetType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/device/sync/DatasetType;
    .locals 1

    .line 5
    const-class v0, Lcom/amazon/device/sync/DatasetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/device/sync/DatasetType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/device/sync/DatasetType;
    .locals 1

    .line 5
    sget-object v0, Lcom/amazon/device/sync/DatasetType;->$VALUES:[Lcom/amazon/device/sync/DatasetType;

    invoke-virtual {v0}, [Lcom/amazon/device/sync/DatasetType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/device/sync/DatasetType;

    return-object v0
.end method
