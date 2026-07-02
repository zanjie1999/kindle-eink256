.class public final enum Lcom/amazon/kindle/pagecurl/CurlStartPosition;
.super Ljava/lang/Enum;
.source "CurlStartPosition.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/pagecurl/CurlStartPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/pagecurl/CurlStartPosition;

.field public static final enum CURL_START_LEFT:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

.field public static final enum CURL_START_NONE:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

.field public static final enum CURL_START_RIGHT:Lcom/amazon/kindle/pagecurl/CurlStartPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 7
    new-instance v0, Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    const/4 v1, 0x0

    const-string v2, "CURL_START_NONE"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/pagecurl/CurlStartPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/pagecurl/CurlStartPosition;->CURL_START_NONE:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    .line 8
    new-instance v0, Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    const/4 v2, 0x1

    const-string v3, "CURL_START_LEFT"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/pagecurl/CurlStartPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/pagecurl/CurlStartPosition;->CURL_START_LEFT:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    .line 9
    new-instance v0, Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    const/4 v3, 0x2

    const-string v4, "CURL_START_RIGHT"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/pagecurl/CurlStartPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/pagecurl/CurlStartPosition;->CURL_START_RIGHT:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    .line 6
    sget-object v5, Lcom/amazon/kindle/pagecurl/CurlStartPosition;->CURL_START_NONE:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/kindle/pagecurl/CurlStartPosition;->CURL_START_LEFT:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/kindle/pagecurl/CurlStartPosition;->$VALUES:[Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/pagecurl/CurlStartPosition;
    .locals 1

    .line 6
    const-class v0, Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/pagecurl/CurlStartPosition;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/kindle/pagecurl/CurlStartPosition;->$VALUES:[Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    invoke-virtual {v0}, [Lcom/amazon/kindle/pagecurl/CurlStartPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    return-object v0
.end method
