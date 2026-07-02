.class public final enum Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;
.super Ljava/lang/Enum;
.source "HttpMethodName.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;

.field public static final enum DELETE:Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;

.field public static final enum GET:Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;

.field public static final enum HEAD:Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;

.field public static final enum PATCH:Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;

.field public static final enum POST:Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;

.field public static final enum PUT:Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 22
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;

    const/4 v1, 0x0

    const-string v2, "GET"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;->GET:Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;

    .line 25
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;

    const/4 v2, 0x1

    const-string v3, "POST"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;->POST:Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;

    .line 28
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;

    const/4 v3, 0x2

    const-string v4, "PUT"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;->PUT:Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;

    .line 31
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;

    const/4 v4, 0x3

    const-string v5, "DELETE"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;->DELETE:Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;

    .line 34
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;

    const/4 v5, 0x4

    const-string v6, "HEAD"

    invoke-direct {v0, v6, v5}, Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;->HEAD:Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;

    .line 37
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;

    const/4 v6, 0x5

    const-string v7, "PATCH"

    invoke-direct {v0, v7, v6}, Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;->PATCH:Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;

    .line 19
    sget-object v8, Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;->GET:Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;

    aput-object v8, v7, v1

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;->POST:Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;

    aput-object v1, v7, v2

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;->PUT:Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;

    aput-object v1, v7, v3

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;->DELETE:Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;

    aput-object v1, v7, v4

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;->HEAD:Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;->$VALUES:[Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;
    .locals 1

    .line 19
    const-class v0, Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;
    .locals 1

    .line 19
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;->$VALUES:[Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;

    invoke-virtual {v0}, [Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;

    return-object v0
.end method
