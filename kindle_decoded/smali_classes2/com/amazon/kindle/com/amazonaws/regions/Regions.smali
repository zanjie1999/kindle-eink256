.class public final enum Lcom/amazon/kindle/com/amazonaws/regions/Regions;
.super Ljava/lang/Enum;
.source "Regions.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/com/amazonaws/regions/Regions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/com/amazonaws/regions/Regions;

.field public static final enum AP_NORTHEAST_1:Lcom/amazon/kindle/com/amazonaws/regions/Regions;

.field public static final enum AP_NORTHEAST_2:Lcom/amazon/kindle/com/amazonaws/regions/Regions;

.field public static final enum AP_SOUTHEAST_1:Lcom/amazon/kindle/com/amazonaws/regions/Regions;

.field public static final enum AP_SOUTHEAST_2:Lcom/amazon/kindle/com/amazonaws/regions/Regions;

.field public static final enum AP_SOUTH_1:Lcom/amazon/kindle/com/amazonaws/regions/Regions;

.field public static final enum CA_CENTRAL_1:Lcom/amazon/kindle/com/amazonaws/regions/Regions;

.field public static final enum CN_NORTHWEST_1:Lcom/amazon/kindle/com/amazonaws/regions/Regions;

.field public static final enum CN_NORTH_1:Lcom/amazon/kindle/com/amazonaws/regions/Regions;

.field public static final enum EU_CENTRAL_1:Lcom/amazon/kindle/com/amazonaws/regions/Regions;

.field public static final enum EU_NORTH_1:Lcom/amazon/kindle/com/amazonaws/regions/Regions;

.field public static final enum EU_WEST_1:Lcom/amazon/kindle/com/amazonaws/regions/Regions;

.field public static final enum EU_WEST_2:Lcom/amazon/kindle/com/amazonaws/regions/Regions;

.field public static final enum EU_WEST_3:Lcom/amazon/kindle/com/amazonaws/regions/Regions;

.field public static final enum GovCloud:Lcom/amazon/kindle/com/amazonaws/regions/Regions;

.field public static final enum SA_EAST_1:Lcom/amazon/kindle/com/amazonaws/regions/Regions;

.field public static final enum US_EAST_1:Lcom/amazon/kindle/com/amazonaws/regions/Regions;

.field public static final enum US_EAST_2:Lcom/amazon/kindle/com/amazonaws/regions/Regions;

.field public static final enum US_GOV_EAST_1:Lcom/amazon/kindle/com/amazonaws/regions/Regions;

.field public static final enum US_WEST_1:Lcom/amazon/kindle/com/amazonaws/regions/Regions;

.field public static final enum US_WEST_2:Lcom/amazon/kindle/com/amazonaws/regions/Regions;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 24
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/regions/Regions;

    const/4 v1, 0x0

    const-string v2, "GovCloud"

    const-string/jumbo v3, "us-gov-west-1"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/kindle/com/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/regions/Regions;->GovCloud:Lcom/amazon/kindle/com/amazonaws/regions/Regions;

    .line 27
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/regions/Regions;

    const/4 v2, 0x1

    const-string v3, "US_GOV_EAST_1"

    const-string/jumbo v4, "us-gov-east-1"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/kindle/com/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/regions/Regions;->US_GOV_EAST_1:Lcom/amazon/kindle/com/amazonaws/regions/Regions;

    .line 30
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/regions/Regions;

    const/4 v3, 0x2

    const-string v4, "US_EAST_1"

    const-string/jumbo v5, "us-east-1"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/kindle/com/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/regions/Regions;->US_EAST_1:Lcom/amazon/kindle/com/amazonaws/regions/Regions;

    .line 33
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/regions/Regions;

    const/4 v4, 0x3

    const-string v5, "US_EAST_2"

    const-string/jumbo v6, "us-east-2"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/kindle/com/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/regions/Regions;->US_EAST_2:Lcom/amazon/kindle/com/amazonaws/regions/Regions;

    .line 36
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/regions/Regions;

    const/4 v5, 0x4

    const-string v6, "US_WEST_1"

    const-string/jumbo v7, "us-west-1"

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/kindle/com/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/regions/Regions;->US_WEST_1:Lcom/amazon/kindle/com/amazonaws/regions/Regions;

    .line 39
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/regions/Regions;

    const/4 v6, 0x5

    const-string v7, "US_WEST_2"

    const-string/jumbo v8, "us-west-2"

    invoke-direct {v0, v7, v6, v8}, Lcom/amazon/kindle/com/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/regions/Regions;->US_WEST_2:Lcom/amazon/kindle/com/amazonaws/regions/Regions;

    .line 42
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/regions/Regions;

    const/4 v7, 0x6

    const-string v8, "EU_WEST_1"

    const-string v9, "eu-west-1"

    invoke-direct {v0, v8, v7, v9}, Lcom/amazon/kindle/com/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/regions/Regions;->EU_WEST_1:Lcom/amazon/kindle/com/amazonaws/regions/Regions;

    .line 45
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/regions/Regions;

    const/4 v8, 0x7

    const-string v9, "EU_WEST_2"

    const-string v10, "eu-west-2"

    invoke-direct {v0, v9, v8, v10}, Lcom/amazon/kindle/com/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/regions/Regions;->EU_WEST_2:Lcom/amazon/kindle/com/amazonaws/regions/Regions;

    .line 48
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/regions/Regions;

    const/16 v9, 0x8

    const-string v10, "EU_WEST_3"

    const-string v11, "eu-west-3"

    invoke-direct {v0, v10, v9, v11}, Lcom/amazon/kindle/com/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/regions/Regions;->EU_WEST_3:Lcom/amazon/kindle/com/amazonaws/regions/Regions;

    .line 51
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/regions/Regions;

    const/16 v10, 0x9

    const-string v11, "EU_CENTRAL_1"

    const-string v12, "eu-central-1"

    invoke-direct {v0, v11, v10, v12}, Lcom/amazon/kindle/com/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/regions/Regions;->EU_CENTRAL_1:Lcom/amazon/kindle/com/amazonaws/regions/Regions;

    .line 54
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/regions/Regions;

    const/16 v11, 0xa

    const-string v12, "EU_NORTH_1"

    const-string v13, "eu-north-1"

    invoke-direct {v0, v12, v11, v13}, Lcom/amazon/kindle/com/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/regions/Regions;->EU_NORTH_1:Lcom/amazon/kindle/com/amazonaws/regions/Regions;

    .line 57
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/regions/Regions;

    const/16 v12, 0xb

    const-string v13, "AP_SOUTH_1"

    const-string v14, "ap-south-1"

    invoke-direct {v0, v13, v12, v14}, Lcom/amazon/kindle/com/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/regions/Regions;->AP_SOUTH_1:Lcom/amazon/kindle/com/amazonaws/regions/Regions;

    .line 60
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/regions/Regions;

    const/16 v13, 0xc

    const-string v14, "AP_SOUTHEAST_1"

    const-string v15, "ap-southeast-1"

    invoke-direct {v0, v14, v13, v15}, Lcom/amazon/kindle/com/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/regions/Regions;->AP_SOUTHEAST_1:Lcom/amazon/kindle/com/amazonaws/regions/Regions;

    .line 63
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/regions/Regions;

    const/16 v14, 0xd

    const-string v15, "AP_SOUTHEAST_2"

    const-string v13, "ap-southeast-2"

    invoke-direct {v0, v15, v14, v13}, Lcom/amazon/kindle/com/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/regions/Regions;->AP_SOUTHEAST_2:Lcom/amazon/kindle/com/amazonaws/regions/Regions;

    .line 66
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/regions/Regions;

    const/16 v13, 0xe

    const-string v15, "AP_NORTHEAST_1"

    const-string v14, "ap-northeast-1"

    invoke-direct {v0, v15, v13, v14}, Lcom/amazon/kindle/com/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/regions/Regions;->AP_NORTHEAST_1:Lcom/amazon/kindle/com/amazonaws/regions/Regions;

    .line 69
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/regions/Regions;

    const/16 v14, 0xf

    const-string v15, "AP_NORTHEAST_2"

    const-string v13, "ap-northeast-2"

    invoke-direct {v0, v15, v14, v13}, Lcom/amazon/kindle/com/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/regions/Regions;->AP_NORTHEAST_2:Lcom/amazon/kindle/com/amazonaws/regions/Regions;

    .line 72
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/regions/Regions;

    const/16 v13, 0x10

    const-string v15, "SA_EAST_1"

    const-string v14, "sa-east-1"

    invoke-direct {v0, v15, v13, v14}, Lcom/amazon/kindle/com/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/regions/Regions;->SA_EAST_1:Lcom/amazon/kindle/com/amazonaws/regions/Regions;

    .line 75
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/regions/Regions;

    const/16 v14, 0x11

    const-string v15, "CA_CENTRAL_1"

    const-string v13, "ca-central-1"

    invoke-direct {v0, v15, v14, v13}, Lcom/amazon/kindle/com/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/regions/Regions;->CA_CENTRAL_1:Lcom/amazon/kindle/com/amazonaws/regions/Regions;

    .line 78
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/regions/Regions;

    const/16 v13, 0x12

    const-string v15, "CN_NORTH_1"

    const-string v14, "cn-north-1"

    invoke-direct {v0, v15, v13, v14}, Lcom/amazon/kindle/com/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/regions/Regions;->CN_NORTH_1:Lcom/amazon/kindle/com/amazonaws/regions/Regions;

    .line 81
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/regions/Regions;

    const/16 v14, 0x13

    const-string v15, "CN_NORTHWEST_1"

    const-string v13, "cn-northwest-1"

    invoke-direct {v0, v15, v14, v13}, Lcom/amazon/kindle/com/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/regions/Regions;->CN_NORTHWEST_1:Lcom/amazon/kindle/com/amazonaws/regions/Regions;

    const/16 v13, 0x14

    new-array v13, v13, [Lcom/amazon/kindle/com/amazonaws/regions/Regions;

    .line 21
    sget-object v15, Lcom/amazon/kindle/com/amazonaws/regions/Regions;->GovCloud:Lcom/amazon/kindle/com/amazonaws/regions/Regions;

    aput-object v15, v13, v1

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/regions/Regions;->US_GOV_EAST_1:Lcom/amazon/kindle/com/amazonaws/regions/Regions;

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/regions/Regions;->US_EAST_1:Lcom/amazon/kindle/com/amazonaws/regions/Regions;

    aput-object v1, v13, v3

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/regions/Regions;->US_EAST_2:Lcom/amazon/kindle/com/amazonaws/regions/Regions;

    aput-object v1, v13, v4

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/regions/Regions;->US_WEST_1:Lcom/amazon/kindle/com/amazonaws/regions/Regions;

    aput-object v1, v13, v5

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/regions/Regions;->US_WEST_2:Lcom/amazon/kindle/com/amazonaws/regions/Regions;

    aput-object v1, v13, v6

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/regions/Regions;->EU_WEST_1:Lcom/amazon/kindle/com/amazonaws/regions/Regions;

    aput-object v1, v13, v7

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/regions/Regions;->EU_WEST_2:Lcom/amazon/kindle/com/amazonaws/regions/Regions;

    aput-object v1, v13, v8

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/regions/Regions;->EU_WEST_3:Lcom/amazon/kindle/com/amazonaws/regions/Regions;

    aput-object v1, v13, v9

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/regions/Regions;->EU_CENTRAL_1:Lcom/amazon/kindle/com/amazonaws/regions/Regions;

    aput-object v1, v13, v10

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/regions/Regions;->EU_NORTH_1:Lcom/amazon/kindle/com/amazonaws/regions/Regions;

    aput-object v1, v13, v11

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/regions/Regions;->AP_SOUTH_1:Lcom/amazon/kindle/com/amazonaws/regions/Regions;

    aput-object v1, v13, v12

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/regions/Regions;->AP_SOUTHEAST_1:Lcom/amazon/kindle/com/amazonaws/regions/Regions;

    const/16 v2, 0xc

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/regions/Regions;->AP_SOUTHEAST_2:Lcom/amazon/kindle/com/amazonaws/regions/Regions;

    const/16 v2, 0xd

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/regions/Regions;->AP_NORTHEAST_1:Lcom/amazon/kindle/com/amazonaws/regions/Regions;

    const/16 v2, 0xe

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/regions/Regions;->AP_NORTHEAST_2:Lcom/amazon/kindle/com/amazonaws/regions/Regions;

    const/16 v2, 0xf

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/regions/Regions;->SA_EAST_1:Lcom/amazon/kindle/com/amazonaws/regions/Regions;

    const/16 v2, 0x10

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/regions/Regions;->CA_CENTRAL_1:Lcom/amazon/kindle/com/amazonaws/regions/Regions;

    const/16 v2, 0x11

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/regions/Regions;->CN_NORTH_1:Lcom/amazon/kindle/com/amazonaws/regions/Regions;

    const/16 v2, 0x12

    aput-object v1, v13, v2

    aput-object v0, v13, v14

    sput-object v13, Lcom/amazon/kindle/com/amazonaws/regions/Regions;->$VALUES:[Lcom/amazon/kindle/com/amazonaws/regions/Regions;

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

    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 92
    iput-object p3, p0, Lcom/amazon/kindle/com/amazonaws/regions/Regions;->name:Ljava/lang/String;

    return-void
.end method

.method public static fromName(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/regions/Regions;
    .locals 5

    .line 109
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/regions/Regions;->values()[Lcom/amazon/kindle/com/amazonaws/regions/Regions;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 110
    invoke-virtual {v3}, Lcom/amazon/kindle/com/amazonaws/regions/Regions;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 114
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create enum from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " value!"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/regions/Regions;
    .locals 1

    .line 21
    const-class v0, Lcom/amazon/kindle/com/amazonaws/regions/Regions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/com/amazonaws/regions/Regions;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/com/amazonaws/regions/Regions;
    .locals 1

    .line 21
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/regions/Regions;->$VALUES:[Lcom/amazon/kindle/com/amazonaws/regions/Regions;

    invoke-virtual {v0}, [Lcom/amazon/kindle/com/amazonaws/regions/Regions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/com/amazonaws/regions/Regions;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/regions/Regions;->name:Ljava/lang/String;

    return-object v0
.end method
