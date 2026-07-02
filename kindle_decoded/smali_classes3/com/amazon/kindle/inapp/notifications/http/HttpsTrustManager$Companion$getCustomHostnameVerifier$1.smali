.class final Lcom/amazon/kindle/inapp/notifications/http/HttpsTrustManager$Companion$getCustomHostnameVerifier$1;
.super Ljava/lang/Object;
.source "HttpsTrustManager.kt"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/inapp/notifications/http/HttpsTrustManager$Companion;->getCustomHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/inapp/notifications/http/HttpsTrustManager$Companion$getCustomHostnameVerifier$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kindle/inapp/notifications/http/HttpsTrustManager$Companion$getCustomHostnameVerifier$1;

    invoke-direct {v0}, Lcom/amazon/kindle/inapp/notifications/http/HttpsTrustManager$Companion$getCustomHostnameVerifier$1;-><init>()V

    sput-object v0, Lcom/amazon/kindle/inapp/notifications/http/HttpsTrustManager$Companion$getCustomHostnameVerifier$1;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/http/HttpsTrustManager$Companion$getCustomHostnameVerifier$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
