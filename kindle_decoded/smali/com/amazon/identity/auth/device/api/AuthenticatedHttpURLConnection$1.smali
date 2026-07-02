.class Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection$1;
.super Lcom/amazon/identity/auth/device/jn;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;->performOnConnectionRequested()Ljava/net/HttpURLConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/identity/auth/device/jn<",
        "Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic fD:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection$1;->fD:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;

    invoke-direct {p0, p2}, Lcom/amazon/identity/auth/device/jn;-><init>(Ljava/net/HttpURLConnection;)V

    return-void
.end method


# virtual methods
.method public getBody()[B
    .locals 1

    .line 74
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/jn;->getUrlConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    check-cast v0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;->bc()[B

    move-result-object v0

    return-object v0
.end method
