.class public final enum Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSEAlgorithm;
.super Ljava/lang/Enum;
.source "SSEAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSEAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSEAlgorithm;

.field public static final enum AES256:Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSEAlgorithm;

.field public static final enum KMS:Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSEAlgorithm;


# instance fields
.field private final algorithm:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 21
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSEAlgorithm;

    const/4 v1, 0x0

    const-string v2, "AES256"

    invoke-direct {v0, v2, v1, v2}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSEAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSEAlgorithm;->AES256:Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSEAlgorithm;

    .line 22
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSEAlgorithm;

    const/4 v2, 0x1

    const-string v3, "KMS"

    const-string v4, "aws:kms"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSEAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSEAlgorithm;->KMS:Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSEAlgorithm;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSEAlgorithm;

    .line 20
    sget-object v4, Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSEAlgorithm;->AES256:Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSEAlgorithm;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSEAlgorithm;->$VALUES:[Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSEAlgorithm;

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

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput-object p3, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSEAlgorithm;->algorithm:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSEAlgorithm;
    .locals 1

    .line 20
    const-class v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSEAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSEAlgorithm;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSEAlgorithm;
    .locals 1

    .line 20
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSEAlgorithm;->$VALUES:[Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSEAlgorithm;

    invoke-virtual {v0}, [Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSEAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSEAlgorithm;

    return-object v0
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSEAlgorithm;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSEAlgorithm;->algorithm:Ljava/lang/String;

    return-object v0
.end method
