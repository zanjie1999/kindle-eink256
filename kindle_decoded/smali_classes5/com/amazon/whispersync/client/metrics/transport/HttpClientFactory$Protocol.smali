.class final enum Lcom/amazon/whispersync/client/metrics/transport/HttpClientFactory$Protocol;
.super Ljava/lang/Enum;
.source "HttpClientFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/client/metrics/transport/HttpClientFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Protocol"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whispersync/client/metrics/transport/HttpClientFactory$Protocol;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whispersync/client/metrics/transport/HttpClientFactory$Protocol;

.field public static final enum HTTP:Lcom/amazon/whispersync/client/metrics/transport/HttpClientFactory$Protocol;

.field public static final enum HTTPS:Lcom/amazon/whispersync/client/metrics/transport/HttpClientFactory$Protocol;


# instance fields
.field private final mPort:I

.field private final mScheme:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 34
    new-instance v0, Lcom/amazon/whispersync/client/metrics/transport/HttpClientFactory$Protocol;

    const/4 v1, 0x0

    const-string v2, "HTTP"

    const/16 v3, 0x50

    const-string v4, "http"

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/amazon/whispersync/client/metrics/transport/HttpClientFactory$Protocol;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/client/metrics/transport/HttpClientFactory$Protocol;->HTTP:Lcom/amazon/whispersync/client/metrics/transport/HttpClientFactory$Protocol;

    .line 35
    new-instance v0, Lcom/amazon/whispersync/client/metrics/transport/HttpClientFactory$Protocol;

    const/4 v2, 0x1

    const-string v3, "HTTPS"

    const/16 v4, 0x1bb

    const-string v5, "https"

    invoke-direct {v0, v3, v2, v4, v5}, Lcom/amazon/whispersync/client/metrics/transport/HttpClientFactory$Protocol;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/client/metrics/transport/HttpClientFactory$Protocol;->HTTPS:Lcom/amazon/whispersync/client/metrics/transport/HttpClientFactory$Protocol;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/whispersync/client/metrics/transport/HttpClientFactory$Protocol;

    .line 33
    sget-object v4, Lcom/amazon/whispersync/client/metrics/transport/HttpClientFactory$Protocol;->HTTP:Lcom/amazon/whispersync/client/metrics/transport/HttpClientFactory$Protocol;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/whispersync/client/metrics/transport/HttpClientFactory$Protocol;->$VALUES:[Lcom/amazon/whispersync/client/metrics/transport/HttpClientFactory$Protocol;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput p3, p0, Lcom/amazon/whispersync/client/metrics/transport/HttpClientFactory$Protocol;->mPort:I

    .line 42
    iput-object p4, p0, Lcom/amazon/whispersync/client/metrics/transport/HttpClientFactory$Protocol;->mScheme:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whispersync/client/metrics/transport/HttpClientFactory$Protocol;
    .locals 1

    .line 33
    const-class v0, Lcom/amazon/whispersync/client/metrics/transport/HttpClientFactory$Protocol;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/client/metrics/transport/HttpClientFactory$Protocol;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whispersync/client/metrics/transport/HttpClientFactory$Protocol;
    .locals 1

    .line 33
    sget-object v0, Lcom/amazon/whispersync/client/metrics/transport/HttpClientFactory$Protocol;->$VALUES:[Lcom/amazon/whispersync/client/metrics/transport/HttpClientFactory$Protocol;

    invoke-virtual {v0}, [Lcom/amazon/whispersync/client/metrics/transport/HttpClientFactory$Protocol;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whispersync/client/metrics/transport/HttpClientFactory$Protocol;

    return-object v0
.end method


# virtual methods
.method public final getPort()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/amazon/whispersync/client/metrics/transport/HttpClientFactory$Protocol;->mPort:I

    return v0
.end method

.method public final getScheme()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/transport/HttpClientFactory$Protocol;->mScheme:Ljava/lang/String;

    return-object v0
.end method
