.class public final enum Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;
.super Ljava/lang/Enum;
.source "TodoType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;

.field public static final enum TodoTypeBook:Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;

.field public static final enum TodoTypeBookSample:Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;

.field public static final enum TodoTypeClientUpdate:Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;

.field public static final enum TodoTypeDRMConfiguration:Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;

.field public static final enum TodoTypeLogs:Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;

.field public static final enum TodoTypeNameUpdate:Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;

.field public static final enum TodoTypePersonal:Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;

.field public static final enum TodoTypeRemoteCommand:Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;

.field public static final enum TodoTypeSetDynamicConfig:Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;

.field public static final enum TodoTypeUnknown:Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;

.field public static final enum TodoTypeUpdateCredentials:Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;

.field public static final enum TodoTypeV2:Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;

.field public static final enum TodoTypeWatermarksSnapshot:Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;


# instance fields
.field private mTypeId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 6
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;

    const/4 v1, 0x0

    const-string v2, "TodoTypeBook"

    const-string v3, "EBOK"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;->TodoTypeBook:Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;

    .line 7
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;

    const/4 v2, 0x1

    const-string v3, "TodoTypeBookSample"

    const-string v4, "EBSP"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;->TodoTypeBookSample:Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;

    .line 8
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;

    const/4 v3, 0x2

    const-string v4, "TodoTypePersonal"

    const-string v5, "PSNL"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;->TodoTypePersonal:Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;

    .line 9
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;

    const/4 v4, 0x3

    const-string v5, "TodoTypeNameUpdate"

    const-string v6, "NAMS"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;->TodoTypeNameUpdate:Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;

    .line 10
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;

    const/4 v5, 0x4

    const-string v6, "TodoTypeRemoteCommand"

    const-string v7, "CMND"

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;->TodoTypeRemoteCommand:Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;

    .line 11
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;

    const/4 v6, 0x5

    const-string v7, "TodoTypeClientUpdate"

    const-string v8, "KCPU"

    invoke-direct {v0, v7, v6, v8}, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;->TodoTypeClientUpdate:Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;

    .line 12
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;

    const/4 v7, 0x6

    const-string v8, "TodoTypeDRMConfiguration"

    const-string v9, "ACSR"

    invoke-direct {v0, v8, v7, v9}, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;->TodoTypeDRMConfiguration:Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;

    .line 13
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;

    const/4 v8, 0x7

    const-string v9, "TodoTypeWatermarksSnapshot"

    const-string v10, "SNAP"

    invoke-direct {v0, v9, v8, v10}, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;->TodoTypeWatermarksSnapshot:Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;

    .line 14
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;

    const/16 v9, 0x8

    const-string v10, "TodoTypeSetDynamicConfig"

    const-string v11, "SCFG"

    invoke-direct {v0, v10, v9, v11}, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;->TodoTypeSetDynamicConfig:Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;

    .line 15
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;

    const/16 v10, 0x9

    const-string v11, "TodoTypeUpdateCredentials"

    const-string v12, "CRED"

    invoke-direct {v0, v11, v10, v12}, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;->TodoTypeUpdateCredentials:Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;

    .line 16
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;

    const/16 v11, 0xa

    const-string v12, "TodoTypeLogs"

    const-string v13, "LOGS"

    invoke-direct {v0, v12, v11, v13}, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;->TodoTypeLogs:Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;

    .line 17
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;

    const/16 v12, 0xb

    const-string v13, "TodoTypeV2"

    const-string v14, "V2"

    invoke-direct {v0, v13, v12, v14}, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;->TodoTypeV2:Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;

    .line 18
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;

    const/16 v13, 0xc

    const-string v14, "TodoTypeUnknown"

    invoke-direct {v0, v14, v13}, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;->TodoTypeUnknown:Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;

    const/16 v14, 0xd

    new-array v14, v14, [Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;

    .line 4
    sget-object v15, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;->TodoTypeBook:Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;

    aput-object v15, v14, v1

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;->TodoTypeBookSample:Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;->TodoTypePersonal:Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;

    aput-object v1, v14, v3

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;->TodoTypeNameUpdate:Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;

    aput-object v1, v14, v4

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;->TodoTypeRemoteCommand:Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;

    aput-object v1, v14, v5

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;->TodoTypeClientUpdate:Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;

    aput-object v1, v14, v6

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;->TodoTypeDRMConfiguration:Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;

    aput-object v1, v14, v7

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;->TodoTypeWatermarksSnapshot:Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;

    aput-object v1, v14, v8

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;->TodoTypeSetDynamicConfig:Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;

    aput-object v1, v14, v9

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;->TodoTypeUpdateCredentials:Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;

    aput-object v1, v14, v10

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;->TodoTypeLogs:Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;

    aput-object v1, v14, v11

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;->TodoTypeV2:Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;

    aput-object v1, v14, v12

    aput-object v0, v14, v13

    sput-object v14, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;->$VALUES:[Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 30
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;->mTypeId:Ljava/lang/String;

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

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput-object p3, p0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;->mTypeId:Ljava/lang/String;

    return-void
.end method

.method public static getTypeById(Ljava/lang/String;)Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;
    .locals 5

    .line 40
    invoke-static {}, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;->values()[Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 42
    invoke-virtual {v3}, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;->getTypeId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 43
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 49
    :cond_1
    sget-object p0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;->TodoTypeUnknown:Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;
    .locals 1

    .line 4
    const-class v0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;
    .locals 1

    .line 4
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;->$VALUES:[Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;

    invoke-virtual {v0}, [Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;

    return-object v0
.end method


# virtual methods
.method getTypeId()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;->mTypeId:Ljava/lang/String;

    return-object v0
.end method
