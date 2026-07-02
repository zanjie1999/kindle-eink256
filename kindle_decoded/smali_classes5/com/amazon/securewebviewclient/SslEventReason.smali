.class public final enum Lcom/amazon/securewebviewclient/SslEventReason;
.super Ljava/lang/Enum;
.source "SslEventReason.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/securewebviewclient/SslEventReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/securewebviewclient/SslEventReason;

.field public static final enum HTTP_URL_REQUEST:Lcom/amazon/securewebviewclient/SslEventReason;

.field public static final enum SSL_DATE_INVALID:Lcom/amazon/securewebviewclient/SslEventReason;

.field public static final enum SSL_ERROR_GENERIC:Lcom/amazon/securewebviewclient/SslEventReason;

.field public static final enum SSL_EXPIRED:Lcom/amazon/securewebviewclient/SslEventReason;

.field public static final enum SSL_HANDSHAKE_FAILED:Lcom/amazon/securewebviewclient/SslEventReason;

.field public static final enum SSL_IDMISMATCH:Lcom/amazon/securewebviewclient/SslEventReason;

.field public static final enum SSL_INVALID:Lcom/amazon/securewebviewclient/SslEventReason;

.field public static final enum SSL_MAX_ERROR:Lcom/amazon/securewebviewclient/SslEventReason;

.field public static final enum SSL_NOTYETVALID:Lcom/amazon/securewebviewclient/SslEventReason;

.field public static final enum SSL_UNTRUSTED:Lcom/amazon/securewebviewclient/SslEventReason;

.field private static final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/amazon/securewebviewclient/SslEventReason;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 10
    new-instance v0, Lcom/amazon/securewebviewclient/SslEventReason;

    const/4 v1, 0x0

    const-string v2, "HTTP_URL_REQUEST"

    invoke-direct {v0, v2, v1}, Lcom/amazon/securewebviewclient/SslEventReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/securewebviewclient/SslEventReason;->HTTP_URL_REQUEST:Lcom/amazon/securewebviewclient/SslEventReason;

    .line 11
    new-instance v0, Lcom/amazon/securewebviewclient/SslEventReason;

    const/4 v2, 0x1

    const-string v3, "SSL_HANDSHAKE_FAILED"

    invoke-direct {v0, v3, v2}, Lcom/amazon/securewebviewclient/SslEventReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/securewebviewclient/SslEventReason;->SSL_HANDSHAKE_FAILED:Lcom/amazon/securewebviewclient/SslEventReason;

    .line 14
    new-instance v0, Lcom/amazon/securewebviewclient/SslEventReason;

    const/4 v3, 0x2

    const-string v4, "SSL_MAX_ERROR"

    invoke-direct {v0, v4, v3}, Lcom/amazon/securewebviewclient/SslEventReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/securewebviewclient/SslEventReason;->SSL_MAX_ERROR:Lcom/amazon/securewebviewclient/SslEventReason;

    .line 15
    new-instance v0, Lcom/amazon/securewebviewclient/SslEventReason;

    const/4 v4, 0x3

    const-string v5, "SSL_INVALID"

    invoke-direct {v0, v5, v4}, Lcom/amazon/securewebviewclient/SslEventReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/securewebviewclient/SslEventReason;->SSL_INVALID:Lcom/amazon/securewebviewclient/SslEventReason;

    .line 16
    new-instance v0, Lcom/amazon/securewebviewclient/SslEventReason;

    const/4 v5, 0x4

    const-string v6, "SSL_DATE_INVALID"

    invoke-direct {v0, v6, v5}, Lcom/amazon/securewebviewclient/SslEventReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/securewebviewclient/SslEventReason;->SSL_DATE_INVALID:Lcom/amazon/securewebviewclient/SslEventReason;

    .line 17
    new-instance v0, Lcom/amazon/securewebviewclient/SslEventReason;

    const/4 v6, 0x5

    const-string v7, "SSL_UNTRUSTED"

    invoke-direct {v0, v7, v6}, Lcom/amazon/securewebviewclient/SslEventReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/securewebviewclient/SslEventReason;->SSL_UNTRUSTED:Lcom/amazon/securewebviewclient/SslEventReason;

    .line 18
    new-instance v0, Lcom/amazon/securewebviewclient/SslEventReason;

    const/4 v7, 0x6

    const-string v8, "SSL_IDMISMATCH"

    invoke-direct {v0, v8, v7}, Lcom/amazon/securewebviewclient/SslEventReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/securewebviewclient/SslEventReason;->SSL_IDMISMATCH:Lcom/amazon/securewebviewclient/SslEventReason;

    .line 19
    new-instance v0, Lcom/amazon/securewebviewclient/SslEventReason;

    const/4 v8, 0x7

    const-string v9, "SSL_EXPIRED"

    invoke-direct {v0, v9, v8}, Lcom/amazon/securewebviewclient/SslEventReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/securewebviewclient/SslEventReason;->SSL_EXPIRED:Lcom/amazon/securewebviewclient/SslEventReason;

    .line 20
    new-instance v0, Lcom/amazon/securewebviewclient/SslEventReason;

    const/16 v9, 0x8

    const-string v10, "SSL_NOTYETVALID"

    invoke-direct {v0, v10, v9}, Lcom/amazon/securewebviewclient/SslEventReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/securewebviewclient/SslEventReason;->SSL_NOTYETVALID:Lcom/amazon/securewebviewclient/SslEventReason;

    .line 22
    new-instance v0, Lcom/amazon/securewebviewclient/SslEventReason;

    const/16 v10, 0x9

    const-string v11, "SSL_ERROR_GENERIC"

    invoke-direct {v0, v11, v10}, Lcom/amazon/securewebviewclient/SslEventReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/securewebviewclient/SslEventReason;->SSL_ERROR_GENERIC:Lcom/amazon/securewebviewclient/SslEventReason;

    const/16 v11, 0xa

    new-array v11, v11, [Lcom/amazon/securewebviewclient/SslEventReason;

    .line 9
    sget-object v12, Lcom/amazon/securewebviewclient/SslEventReason;->HTTP_URL_REQUEST:Lcom/amazon/securewebviewclient/SslEventReason;

    aput-object v12, v11, v1

    sget-object v12, Lcom/amazon/securewebviewclient/SslEventReason;->SSL_HANDSHAKE_FAILED:Lcom/amazon/securewebviewclient/SslEventReason;

    aput-object v12, v11, v2

    sget-object v2, Lcom/amazon/securewebviewclient/SslEventReason;->SSL_MAX_ERROR:Lcom/amazon/securewebviewclient/SslEventReason;

    aput-object v2, v11, v3

    sget-object v2, Lcom/amazon/securewebviewclient/SslEventReason;->SSL_INVALID:Lcom/amazon/securewebviewclient/SslEventReason;

    aput-object v2, v11, v4

    sget-object v2, Lcom/amazon/securewebviewclient/SslEventReason;->SSL_DATE_INVALID:Lcom/amazon/securewebviewclient/SslEventReason;

    aput-object v2, v11, v5

    sget-object v2, Lcom/amazon/securewebviewclient/SslEventReason;->SSL_UNTRUSTED:Lcom/amazon/securewebviewclient/SslEventReason;

    aput-object v2, v11, v6

    sget-object v2, Lcom/amazon/securewebviewclient/SslEventReason;->SSL_IDMISMATCH:Lcom/amazon/securewebviewclient/SslEventReason;

    aput-object v2, v11, v7

    sget-object v2, Lcom/amazon/securewebviewclient/SslEventReason;->SSL_EXPIRED:Lcom/amazon/securewebviewclient/SslEventReason;

    aput-object v2, v11, v8

    sget-object v2, Lcom/amazon/securewebviewclient/SslEventReason;->SSL_NOTYETVALID:Lcom/amazon/securewebviewclient/SslEventReason;

    aput-object v2, v11, v9

    aput-object v0, v11, v10

    sput-object v11, Lcom/amazon/securewebviewclient/SslEventReason;->$VALUES:[Lcom/amazon/securewebviewclient/SslEventReason;

    .line 24
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v7, Lcom/amazon/securewebviewclient/SslEventReason;->SSL_MAX_ERROR:Lcom/amazon/securewebviewclient/SslEventReason;

    invoke-virtual {v0, v2, v7}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v6, Lcom/amazon/securewebviewclient/SslEventReason;->SSL_INVALID:Lcom/amazon/securewebviewclient/SslEventReason;

    invoke-virtual {v0, v2, v6}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v5, Lcom/amazon/securewebviewclient/SslEventReason;->SSL_DATE_INVALID:Lcom/amazon/securewebviewclient/SslEventReason;

    invoke-virtual {v0, v2, v5}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v4, Lcom/amazon/securewebviewclient/SslEventReason;->SSL_UNTRUSTED:Lcom/amazon/securewebviewclient/SslEventReason;

    invoke-virtual {v0, v2, v4}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/amazon/securewebviewclient/SslEventReason;->SSL_IDMISMATCH:Lcom/amazon/securewebviewclient/SslEventReason;

    invoke-virtual {v0, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/amazon/securewebviewclient/SslEventReason;->SSL_NOTYETVALID:Lcom/amazon/securewebviewclient/SslEventReason;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/amazon/securewebviewclient/SslEventReason;->map:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getReasonFromSslError(Landroid/net/http/SslError;)Lcom/amazon/securewebviewclient/SslEventReason;
    .locals 1

    .line 34
    sget-object v0, Lcom/amazon/securewebviewclient/SslEventReason;->map:Ljava/util/Map;

    invoke-virtual {p0}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/securewebviewclient/SslEventReason;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/securewebviewclient/SslEventReason;
    .locals 1

    .line 9
    const-class v0, Lcom/amazon/securewebviewclient/SslEventReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/securewebviewclient/SslEventReason;

    return-object p0
.end method

.method public static values()[Lcom/amazon/securewebviewclient/SslEventReason;
    .locals 1

    .line 9
    sget-object v0, Lcom/amazon/securewebviewclient/SslEventReason;->$VALUES:[Lcom/amazon/securewebviewclient/SslEventReason;

    invoke-virtual {v0}, [Lcom/amazon/securewebviewclient/SslEventReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/securewebviewclient/SslEventReason;

    return-object v0
.end method
