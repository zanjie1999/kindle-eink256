.class final Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection$1;
.super Lcom/amazon/identity/auth/device/jn;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;->openConnection(Ljava/net/HttpURLConnection;Lcom/amazon/identity/auth/device/api/AuthenticationMethod;)Ljava/net/HttpURLConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/identity/auth/device/jn<",
        "Ljava/net/HttpURLConnection;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/net/HttpURLConnection;)V
    .locals 0

    .line 274
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/jn;-><init>(Ljava/net/HttpURLConnection;)V

    return-void
.end method


# virtual methods
.method public getBody()[B
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method
