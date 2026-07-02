.class public final enum Lcom/amazon/kindle/com/amazonaws/Protocol;
.super Ljava/lang/Enum;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/com/amazonaws/Protocol;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/com/amazonaws/Protocol;

.field public static final enum HTTP:Lcom/amazon/kindle/com/amazonaws/Protocol;

.field public static final enum HTTPS:Lcom/amazon/kindle/com/amazonaws/Protocol;


# instance fields
.field private final protocol:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 33
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/Protocol;

    const/4 v1, 0x0

    const-string v2, "HTTP"

    const-string v3, "http"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/kindle/com/amazonaws/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/Protocol;->HTTP:Lcom/amazon/kindle/com/amazonaws/Protocol;

    .line 40
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/Protocol;

    const/4 v2, 0x1

    const-string v3, "HTTPS"

    const-string v4, "https"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/kindle/com/amazonaws/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/Protocol;->HTTPS:Lcom/amazon/kindle/com/amazonaws/Protocol;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/kindle/com/amazonaws/Protocol;

    .line 26
    sget-object v4, Lcom/amazon/kindle/com/amazonaws/Protocol;->HTTP:Lcom/amazon/kindle/com/amazonaws/Protocol;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/kindle/com/amazonaws/Protocol;->$VALUES:[Lcom/amazon/kindle/com/amazonaws/Protocol;

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

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput-object p3, p0, Lcom/amazon/kindle/com/amazonaws/Protocol;->protocol:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/Protocol;
    .locals 1

    .line 26
    const-class v0, Lcom/amazon/kindle/com/amazonaws/Protocol;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/com/amazonaws/Protocol;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/com/amazonaws/Protocol;
    .locals 1

    .line 26
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/Protocol;->$VALUES:[Lcom/amazon/kindle/com/amazonaws/Protocol;

    invoke-virtual {v0}, [Lcom/amazon/kindle/com/amazonaws/Protocol;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/com/amazonaws/Protocol;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/Protocol;->protocol:Ljava/lang/String;

    return-object v0
.end method
