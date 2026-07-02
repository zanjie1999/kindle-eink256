.class public final enum Lcom/amazon/kindle/services/download/AssetPriority;
.super Ljava/lang/Enum;
.source "AssetPriority.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/services/download/AssetPriority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/services/download/AssetPriority;

.field public static final enum DEFERRED:Lcom/amazon/kindle/services/download/AssetPriority;

.field public static final enum OPTIONAL:Lcom/amazon/kindle/services/download/AssetPriority;

.field public static final enum PREFERRED:Lcom/amazon/kindle/services/download/AssetPriority;

.field public static final enum REQUIRED:Lcom/amazon/kindle/services/download/AssetPriority;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final priority:I

.field private final serverString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 17
    new-instance v0, Lcom/amazon/kindle/services/download/AssetPriority;

    const/4 v1, 0x0

    const-string v2, "REQUIRED"

    const-string v3, "required"

    invoke-direct {v0, v2, v1, v3, v1}, Lcom/amazon/kindle/services/download/AssetPriority;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/services/download/AssetPriority;->REQUIRED:Lcom/amazon/kindle/services/download/AssetPriority;

    .line 18
    new-instance v0, Lcom/amazon/kindle/services/download/AssetPriority;

    const/4 v2, 0x1

    const-string v3, "OPTIONAL"

    const-string v4, "optional"

    const/16 v5, 0x64

    invoke-direct {v0, v3, v2, v4, v5}, Lcom/amazon/kindle/services/download/AssetPriority;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/services/download/AssetPriority;->OPTIONAL:Lcom/amazon/kindle/services/download/AssetPriority;

    .line 19
    new-instance v0, Lcom/amazon/kindle/services/download/AssetPriority;

    const/4 v3, 0x2

    const-string v4, "PREFERRED"

    const-string v5, "preferred"

    const/16 v6, 0x14

    invoke-direct {v0, v4, v3, v5, v6}, Lcom/amazon/kindle/services/download/AssetPriority;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/services/download/AssetPriority;->PREFERRED:Lcom/amazon/kindle/services/download/AssetPriority;

    .line 20
    new-instance v0, Lcom/amazon/kindle/services/download/AssetPriority;

    const/4 v4, 0x3

    const-string v5, "DEFERRED"

    const-string v6, "deferred"

    const/16 v7, 0x32

    invoke-direct {v0, v5, v4, v6, v7}, Lcom/amazon/kindle/services/download/AssetPriority;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/services/download/AssetPriority;->DEFERRED:Lcom/amazon/kindle/services/download/AssetPriority;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/kindle/services/download/AssetPriority;

    .line 10
    sget-object v6, Lcom/amazon/kindle/services/download/AssetPriority;->REQUIRED:Lcom/amazon/kindle/services/download/AssetPriority;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/kindle/services/download/AssetPriority;->OPTIONAL:Lcom/amazon/kindle/services/download/AssetPriority;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/kindle/services/download/AssetPriority;->PREFERRED:Lcom/amazon/kindle/services/download/AssetPriority;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/kindle/services/download/AssetPriority;->$VALUES:[Lcom/amazon/kindle/services/download/AssetPriority;

    .line 22
    const-class v0, Lcom/amazon/kindle/services/download/AssetPriority;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/services/download/AssetPriority;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput-object p3, p0, Lcom/amazon/kindle/services/download/AssetPriority;->serverString:Ljava/lang/String;

    .line 28
    iput p4, p0, Lcom/amazon/kindle/services/download/AssetPriority;->priority:I

    return-void
.end method

.method public static getFromSerialized(I)Lcom/amazon/kindle/services/download/AssetPriority;
    .locals 1

    .line 76
    invoke-static {}, Lcom/amazon/kindle/services/download/AssetPriority;->values()[Lcom/amazon/kindle/services/download/AssetPriority;

    move-result-object v0

    array-length v0, v0

    if-lt p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 79
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/services/download/AssetPriority;->values()[Lcom/amazon/kindle/services/download/AssetPriority;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;)Lcom/amazon/kindle/services/download/AssetPriority;
    .locals 5

    .line 59
    invoke-static {}, Lcom/amazon/kindle/services/download/AssetPriority;->values()[Lcom/amazon/kindle/services/download/AssetPriority;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 60
    invoke-virtual {v3}, Lcom/amazon/kindle/services/download/AssetPriority;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized asset priority string : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    sget-object p0, Lcom/amazon/kindle/services/download/AssetPriority;->OPTIONAL:Lcom/amazon/kindle/services/download/AssetPriority;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/services/download/AssetPriority;
    .locals 1

    .line 10
    const-class v0, Lcom/amazon/kindle/services/download/AssetPriority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/services/download/AssetPriority;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/services/download/AssetPriority;
    .locals 1

    .line 10
    sget-object v0, Lcom/amazon/kindle/services/download/AssetPriority;->$VALUES:[Lcom/amazon/kindle/services/download/AssetPriority;

    invoke-virtual {v0}, [Lcom/amazon/kindle/services/download/AssetPriority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/services/download/AssetPriority;

    return-object v0
.end method


# virtual methods
.method public getPriority()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/amazon/kindle/services/download/AssetPriority;->priority:I

    return v0
.end method

.method public getSerializedForm()I
    .locals 1

    .line 72
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method public toIWebRequestPriority()Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;
    .locals 2

    .line 47
    iget v0, p0, Lcom/amazon/kindle/services/download/AssetPriority;->priority:I

    sget-object v1, Lcom/amazon/kindle/services/download/AssetPriority;->REQUIRED:Lcom/amazon/kindle/services/download/AssetPriority;

    iget v1, v1, Lcom/amazon/kindle/services/download/AssetPriority;->priority:I

    if-ne v0, v1, :cond_0

    .line 48
    sget-object v0, Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;->HIGH:Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;

    return-object v0

    .line 50
    :cond_0
    sget-object v0, Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;->MEDIUM:Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/amazon/kindle/services/download/AssetPriority;->serverString:Ljava/lang/String;

    return-object v0
.end method
