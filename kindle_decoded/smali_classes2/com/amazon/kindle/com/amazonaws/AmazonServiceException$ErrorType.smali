.class public final enum Lcom/amazon/kindle/com/amazonaws/AmazonServiceException$ErrorType;
.super Ljava/lang/Enum;
.source "AmazonServiceException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/com/amazonaws/AmazonServiceException$ErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/com/amazonaws/AmazonServiceException$ErrorType;

.field public static final enum Client:Lcom/amazon/kindle/com/amazonaws/AmazonServiceException$ErrorType;

.field public static final enum Service:Lcom/amazon/kindle/com/amazonaws/AmazonServiceException$ErrorType;

.field public static final enum Unknown:Lcom/amazon/kindle/com/amazonaws/AmazonServiceException$ErrorType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 60
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException$ErrorType;

    const/4 v1, 0x0

    const-string v2, "Client"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException$ErrorType;->Client:Lcom/amazon/kindle/com/amazonaws/AmazonServiceException$ErrorType;

    .line 63
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException$ErrorType;

    const/4 v2, 0x1

    const-string v3, "Service"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException$ErrorType;->Service:Lcom/amazon/kindle/com/amazonaws/AmazonServiceException$ErrorType;

    .line 66
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException$ErrorType;

    const/4 v3, 0x2

    const-string v4, "Unknown"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException$ErrorType;->Unknown:Lcom/amazon/kindle/com/amazonaws/AmazonServiceException$ErrorType;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/kindle/com/amazonaws/AmazonServiceException$ErrorType;

    .line 58
    sget-object v5, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException$ErrorType;->Client:Lcom/amazon/kindle/com/amazonaws/AmazonServiceException$ErrorType;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException$ErrorType;->Service:Lcom/amazon/kindle/com/amazonaws/AmazonServiceException$ErrorType;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException$ErrorType;->$VALUES:[Lcom/amazon/kindle/com/amazonaws/AmazonServiceException$ErrorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/AmazonServiceException$ErrorType;
    .locals 1

    .line 58
    const-class v0, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException$ErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException$ErrorType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/com/amazonaws/AmazonServiceException$ErrorType;
    .locals 1

    .line 58
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException$ErrorType;->$VALUES:[Lcom/amazon/kindle/com/amazonaws/AmazonServiceException$ErrorType;

    invoke-virtual {v0}, [Lcom/amazon/kindle/com/amazonaws/AmazonServiceException$ErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/com/amazonaws/AmazonServiceException$ErrorType;

    return-object v0
.end method
