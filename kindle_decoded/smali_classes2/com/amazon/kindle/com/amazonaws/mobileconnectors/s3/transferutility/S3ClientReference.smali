.class Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/S3ClientReference;
.super Ljava/lang/Object;
.source "S3ClientReference.java"


# static fields
.field private static map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/S3ClientReference;->map:Ljava/util/Map;

    return-void
.end method

.method public static get(Ljava/lang/Integer;)Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3;
    .locals 1

    .line 52
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/S3ClientReference;->map:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3;

    return-object p0
.end method

.method public static remove(Ljava/lang/Integer;)V
    .locals 1

    .line 61
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/S3ClientReference;->map:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
