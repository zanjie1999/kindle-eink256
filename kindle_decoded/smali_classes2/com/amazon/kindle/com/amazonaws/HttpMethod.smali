.class public final enum Lcom/amazon/kindle/com/amazonaws/HttpMethod;
.super Ljava/lang/Enum;
.source "HttpMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/com/amazonaws/HttpMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/com/amazonaws/HttpMethod;

.field public static final enum DELETE:Lcom/amazon/kindle/com/amazonaws/HttpMethod;

.field public static final enum GET:Lcom/amazon/kindle/com/amazonaws/HttpMethod;

.field public static final enum HEAD:Lcom/amazon/kindle/com/amazonaws/HttpMethod;

.field public static final enum PATCH:Lcom/amazon/kindle/com/amazonaws/HttpMethod;

.field public static final enum POST:Lcom/amazon/kindle/com/amazonaws/HttpMethod;

.field public static final enum PUT:Lcom/amazon/kindle/com/amazonaws/HttpMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 24
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/HttpMethod;

    const/4 v1, 0x0

    const-string v2, "GET"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/com/amazonaws/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/HttpMethod;->GET:Lcom/amazon/kindle/com/amazonaws/HttpMethod;

    .line 27
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/HttpMethod;

    const/4 v2, 0x1

    const-string v3, "POST"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/com/amazonaws/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/HttpMethod;->POST:Lcom/amazon/kindle/com/amazonaws/HttpMethod;

    .line 30
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/HttpMethod;

    const/4 v3, 0x2

    const-string v4, "PUT"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/com/amazonaws/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/HttpMethod;->PUT:Lcom/amazon/kindle/com/amazonaws/HttpMethod;

    .line 33
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/HttpMethod;

    const/4 v4, 0x3

    const-string v5, "DELETE"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kindle/com/amazonaws/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/HttpMethod;->DELETE:Lcom/amazon/kindle/com/amazonaws/HttpMethod;

    .line 36
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/HttpMethod;

    const/4 v5, 0x4

    const-string v6, "HEAD"

    invoke-direct {v0, v6, v5}, Lcom/amazon/kindle/com/amazonaws/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/HttpMethod;->HEAD:Lcom/amazon/kindle/com/amazonaws/HttpMethod;

    .line 39
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/HttpMethod;

    const/4 v6, 0x5

    const-string v7, "PATCH"

    invoke-direct {v0, v7, v6}, Lcom/amazon/kindle/com/amazonaws/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/HttpMethod;->PATCH:Lcom/amazon/kindle/com/amazonaws/HttpMethod;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/amazon/kindle/com/amazonaws/HttpMethod;

    .line 21
    sget-object v8, Lcom/amazon/kindle/com/amazonaws/HttpMethod;->GET:Lcom/amazon/kindle/com/amazonaws/HttpMethod;

    aput-object v8, v7, v1

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/HttpMethod;->POST:Lcom/amazon/kindle/com/amazonaws/HttpMethod;

    aput-object v1, v7, v2

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/HttpMethod;->PUT:Lcom/amazon/kindle/com/amazonaws/HttpMethod;

    aput-object v1, v7, v3

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/HttpMethod;->DELETE:Lcom/amazon/kindle/com/amazonaws/HttpMethod;

    aput-object v1, v7, v4

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/HttpMethod;->HEAD:Lcom/amazon/kindle/com/amazonaws/HttpMethod;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/amazon/kindle/com/amazonaws/HttpMethod;->$VALUES:[Lcom/amazon/kindle/com/amazonaws/HttpMethod;

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

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/HttpMethod;
    .locals 1

    .line 21
    const-class v0, Lcom/amazon/kindle/com/amazonaws/HttpMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/com/amazonaws/HttpMethod;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/com/amazonaws/HttpMethod;
    .locals 1

    .line 21
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/HttpMethod;->$VALUES:[Lcom/amazon/kindle/com/amazonaws/HttpMethod;

    invoke-virtual {v0}, [Lcom/amazon/kindle/com/amazonaws/HttpMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/com/amazonaws/HttpMethod;

    return-object v0
.end method
