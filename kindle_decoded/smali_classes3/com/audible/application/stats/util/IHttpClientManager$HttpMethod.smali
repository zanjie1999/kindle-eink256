.class public final enum Lcom/audible/application/stats/util/IHttpClientManager$HttpMethod;
.super Ljava/lang/Enum;
.source "IHttpClientManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/application/stats/util/IHttpClientManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HttpMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/application/stats/util/IHttpClientManager$HttpMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/application/stats/util/IHttpClientManager$HttpMethod;

.field public static final enum GET:Lcom/audible/application/stats/util/IHttpClientManager$HttpMethod;

.field public static final enum POST:Lcom/audible/application/stats/util/IHttpClientManager$HttpMethod;

.field public static final enum PUT:Lcom/audible/application/stats/util/IHttpClientManager$HttpMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 25
    new-instance v0, Lcom/audible/application/stats/util/IHttpClientManager$HttpMethod;

    const/4 v1, 0x0

    const-string v2, "GET"

    invoke-direct {v0, v2, v1}, Lcom/audible/application/stats/util/IHttpClientManager$HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/application/stats/util/IHttpClientManager$HttpMethod;->GET:Lcom/audible/application/stats/util/IHttpClientManager$HttpMethod;

    new-instance v0, Lcom/audible/application/stats/util/IHttpClientManager$HttpMethod;

    const/4 v2, 0x1

    const-string v3, "POST"

    invoke-direct {v0, v3, v2}, Lcom/audible/application/stats/util/IHttpClientManager$HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/application/stats/util/IHttpClientManager$HttpMethod;->POST:Lcom/audible/application/stats/util/IHttpClientManager$HttpMethod;

    new-instance v0, Lcom/audible/application/stats/util/IHttpClientManager$HttpMethod;

    const/4 v3, 0x2

    const-string v4, "PUT"

    invoke-direct {v0, v4, v3}, Lcom/audible/application/stats/util/IHttpClientManager$HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/application/stats/util/IHttpClientManager$HttpMethod;->PUT:Lcom/audible/application/stats/util/IHttpClientManager$HttpMethod;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/audible/application/stats/util/IHttpClientManager$HttpMethod;

    .line 24
    sget-object v5, Lcom/audible/application/stats/util/IHttpClientManager$HttpMethod;->GET:Lcom/audible/application/stats/util/IHttpClientManager$HttpMethod;

    aput-object v5, v4, v1

    sget-object v1, Lcom/audible/application/stats/util/IHttpClientManager$HttpMethod;->POST:Lcom/audible/application/stats/util/IHttpClientManager$HttpMethod;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/audible/application/stats/util/IHttpClientManager$HttpMethod;->$VALUES:[Lcom/audible/application/stats/util/IHttpClientManager$HttpMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/application/stats/util/IHttpClientManager$HttpMethod;
    .locals 1

    .line 24
    const-class v0, Lcom/audible/application/stats/util/IHttpClientManager$HttpMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/application/stats/util/IHttpClientManager$HttpMethod;

    return-object p0
.end method

.method public static values()[Lcom/audible/application/stats/util/IHttpClientManager$HttpMethod;
    .locals 1

    .line 24
    sget-object v0, Lcom/audible/application/stats/util/IHttpClientManager$HttpMethod;->$VALUES:[Lcom/audible/application/stats/util/IHttpClientManager$HttpMethod;

    invoke-virtual {v0}, [Lcom/audible/application/stats/util/IHttpClientManager$HttpMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/application/stats/util/IHttpClientManager$HttpMethod;

    return-object v0
.end method
