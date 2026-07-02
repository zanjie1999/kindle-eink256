.class final Lcom/amazon/identity/auth/device/ev;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field static final lM:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    new-instance v0, Lcom/amazon/identity/auth/device/fa;

    sget-object v1, Lcom/amazon/identity/auth/device/es;->lL:Ljavax/net/ssl/SSLContext;

    .line 13
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/fa;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    sput-object v0, Lcom/amazon/identity/auth/device/ev;->lM:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method
