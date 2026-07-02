.class public final enum Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;
.super Ljava/lang/Enum;
.source "CannedAccessControlList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;

.field public static final enum AuthenticatedRead:Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;

.field public static final enum AwsExecRead:Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;

.field public static final enum BucketOwnerFullControl:Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;

.field public static final enum BucketOwnerRead:Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;

.field public static final enum LogDeliveryWrite:Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;

.field public static final enum Private:Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;

.field public static final enum PublicRead:Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;

.field public static final enum PublicReadWrite:Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;


# instance fields
.field private final cannedAclHeader:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 39
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;

    const/4 v1, 0x0

    const-string v2, "Private"

    const-string v3, "private"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;->Private:Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;

    .line 50
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;

    const/4 v2, 0x1

    const-string v3, "PublicRead"

    const-string v4, "public-read"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;->PublicRead:Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;

    .line 60
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;

    const/4 v3, 0x2

    const-string v4, "PublicReadWrite"

    const-string v5, "public-read-write"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;->PublicReadWrite:Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;

    .line 67
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;

    const/4 v4, 0x3

    const-string v5, "AuthenticatedRead"

    const-string v6, "authenticated-read"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;->AuthenticatedRead:Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;

    .line 79
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;

    const/4 v5, 0x4

    const-string v6, "LogDeliveryWrite"

    const-string v7, "log-delivery-write"

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;->LogDeliveryWrite:Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;

    .line 90
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;

    const/4 v6, 0x5

    const-string v7, "BucketOwnerRead"

    const-string v8, "bucket-owner-read"

    invoke-direct {v0, v7, v6, v8}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;->BucketOwnerRead:Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;

    .line 101
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;

    const/4 v7, 0x6

    const-string v8, "BucketOwnerFullControl"

    const-string v9, "bucket-owner-full-control"

    invoke-direct {v0, v8, v7, v9}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;->BucketOwnerFullControl:Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;

    .line 108
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;

    const/4 v8, 0x7

    const-string v9, "AwsExecRead"

    const-string v10, "aws-exec-read"

    invoke-direct {v0, v9, v8, v10}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;->AwsExecRead:Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;

    const/16 v9, 0x8

    new-array v9, v9, [Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;

    .line 31
    sget-object v10, Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;->Private:Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;

    aput-object v10, v9, v1

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;->PublicRead:Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;

    aput-object v1, v9, v2

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;->PublicReadWrite:Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;

    aput-object v1, v9, v3

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;->AuthenticatedRead:Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;

    aput-object v1, v9, v4

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;->LogDeliveryWrite:Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;

    aput-object v1, v9, v5

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;->BucketOwnerRead:Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;

    aput-object v1, v9, v6

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;->BucketOwnerFullControl:Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;

    aput-object v1, v9, v7

    aput-object v0, v9, v8

    sput-object v9, Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;->$VALUES:[Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;

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

    .line 113
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 114
    iput-object p3, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;->cannedAclHeader:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;
    .locals 1

    .line 31
    const-class v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;
    .locals 1

    .line 31
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;->$VALUES:[Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;

    invoke-virtual {v0}, [Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;->cannedAclHeader:Ljava/lang/String;

    return-object v0
.end method
