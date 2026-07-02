.class public final enum Lcom/amazon/kindle/com/amazonaws/services/s3/model/StorageClass;
.super Ljava/lang/Enum;
.source "StorageClass.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/com/amazonaws/services/s3/model/StorageClass;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/com/amazonaws/services/s3/model/StorageClass;

.field public static final enum Glacier:Lcom/amazon/kindle/com/amazonaws/services/s3/model/StorageClass;

.field public static final enum IntelligentTiering:Lcom/amazon/kindle/com/amazonaws/services/s3/model/StorageClass;

.field public static final enum OneZoneInfrequentAccess:Lcom/amazon/kindle/com/amazonaws/services/s3/model/StorageClass;

.field public static final enum ReducedRedundancy:Lcom/amazon/kindle/com/amazonaws/services/s3/model/StorageClass;

.field public static final enum Standard:Lcom/amazon/kindle/com/amazonaws/services/s3/model/StorageClass;

.field public static final enum StandardInfrequentAccess:Lcom/amazon/kindle/com/amazonaws/services/s3/model/StorageClass;


# instance fields
.field private final storageClassId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 42
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/StorageClass;

    const/4 v1, 0x0

    const-string v2, "Standard"

    const-string v3, "STANDARD"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/StorageClass;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/StorageClass;->Standard:Lcom/amazon/kindle/com/amazonaws/services/s3/model/StorageClass;

    .line 51
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/StorageClass;

    const/4 v2, 0x1

    const-string v3, "ReducedRedundancy"

    const-string v4, "REDUCED_REDUNDANCY"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/StorageClass;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/StorageClass;->ReducedRedundancy:Lcom/amazon/kindle/com/amazonaws/services/s3/model/StorageClass;

    .line 58
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/StorageClass;

    const/4 v3, 0x2

    const-string v4, "Glacier"

    const-string v5, "GLACIER"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/StorageClass;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/StorageClass;->Glacier:Lcom/amazon/kindle/com/amazonaws/services/s3/model/StorageClass;

    .line 63
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/StorageClass;

    const/4 v4, 0x3

    const-string v5, "StandardInfrequentAccess"

    const-string v6, "STANDARD_IA"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/StorageClass;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/StorageClass;->StandardInfrequentAccess:Lcom/amazon/kindle/com/amazonaws/services/s3/model/StorageClass;

    .line 69
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/StorageClass;

    const/4 v5, 0x4

    const-string v6, "OneZoneInfrequentAccess"

    const-string v7, "ONEZONE_IA"

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/StorageClass;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/StorageClass;->OneZoneInfrequentAccess:Lcom/amazon/kindle/com/amazonaws/services/s3/model/StorageClass;

    .line 79
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/StorageClass;

    const/4 v6, 0x5

    const-string v7, "IntelligentTiering"

    const-string v8, "INTELLIGENT_TIERING"

    invoke-direct {v0, v7, v6, v8}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/StorageClass;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/StorageClass;->IntelligentTiering:Lcom/amazon/kindle/com/amazonaws/services/s3/model/StorageClass;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/amazon/kindle/com/amazonaws/services/s3/model/StorageClass;

    .line 34
    sget-object v8, Lcom/amazon/kindle/com/amazonaws/services/s3/model/StorageClass;->Standard:Lcom/amazon/kindle/com/amazonaws/services/s3/model/StorageClass;

    aput-object v8, v7, v1

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/services/s3/model/StorageClass;->ReducedRedundancy:Lcom/amazon/kindle/com/amazonaws/services/s3/model/StorageClass;

    aput-object v1, v7, v2

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/services/s3/model/StorageClass;->Glacier:Lcom/amazon/kindle/com/amazonaws/services/s3/model/StorageClass;

    aput-object v1, v7, v3

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/services/s3/model/StorageClass;->StandardInfrequentAccess:Lcom/amazon/kindle/com/amazonaws/services/s3/model/StorageClass;

    aput-object v1, v7, v4

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/services/s3/model/StorageClass;->OneZoneInfrequentAccess:Lcom/amazon/kindle/com/amazonaws/services/s3/model/StorageClass;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/amazon/kindle/com/amazonaws/services/s3/model/StorageClass;->$VALUES:[Lcom/amazon/kindle/com/amazonaws/services/s3/model/StorageClass;

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

    .line 108
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 109
    iput-object p3, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/StorageClass;->storageClassId:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/StorageClass;
    .locals 1

    .line 34
    const-class v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/StorageClass;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/StorageClass;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/com/amazonaws/services/s3/model/StorageClass;
    .locals 1

    .line 34
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/StorageClass;->$VALUES:[Lcom/amazon/kindle/com/amazonaws/services/s3/model/StorageClass;

    invoke-virtual {v0}, [Lcom/amazon/kindle/com/amazonaws/services/s3/model/StorageClass;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/com/amazonaws/services/s3/model/StorageClass;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/StorageClass;->storageClassId:Ljava/lang/String;

    return-object v0
.end method
