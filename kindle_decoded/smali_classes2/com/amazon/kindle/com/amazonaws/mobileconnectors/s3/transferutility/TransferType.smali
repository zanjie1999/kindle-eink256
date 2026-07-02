.class public final enum Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferType;
.super Ljava/lang/Enum;
.source "TransferType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferType;

.field public static final enum ANY:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferType;

.field public static final enum DOWNLOAD:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferType;

.field public static final enum UPLOAD:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 25
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferType;

    const/4 v1, 0x0

    const-string v2, "UPLOAD"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferType;->UPLOAD:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferType;

    .line 29
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferType;

    const/4 v2, 0x1

    const-string v3, "DOWNLOAD"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferType;->DOWNLOAD:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferType;

    .line 33
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferType;

    const/4 v3, 0x2

    const-string v4, "ANY"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferType;->ANY:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferType;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferType;

    .line 21
    sget-object v5, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferType;->UPLOAD:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferType;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferType;->DOWNLOAD:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferType;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferType;->$VALUES:[Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getType(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferType;
    .locals 3

    .line 42
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferType;->UPLOAD:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferType;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    sget-object p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferType;->UPLOAD:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferType;

    return-object p0

    .line 45
    :cond_0
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferType;->DOWNLOAD:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferType;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    sget-object p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferType;->DOWNLOAD:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferType;

    return-object p0

    .line 48
    :cond_1
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferType;->ANY:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferType;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 49
    sget-object p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferType;->ANY:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferType;

    return-object p0

    .line 52
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not a recognized type"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferType;
    .locals 1

    .line 21
    const-class v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferType;
    .locals 1

    .line 21
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferType;->$VALUES:[Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferType;

    invoke-virtual {v0}, [Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferType;

    return-object v0
.end method
