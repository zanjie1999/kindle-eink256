.class Lcom/amazon/kindle/services/authentication/MAPCookiesRetriever$1;
.super Ljava/lang/Object;
.source "MAPCookiesRetriever.java"

# interfaces
.implements Lcom/amazon/identity/auth/device/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/services/authentication/MAPCookiesRetriever;->fetchIdentityCookies(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/services/authentication/MAPCookiesRetriever;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/services/authentication/MAPCookiesRetriever;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/amazon/kindle/services/authentication/MAPCookiesRetriever$1;->this$0:Lcom/amazon/kindle/services/authentication/MAPCookiesRetriever;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "com.amazon.dcp.sso.ErrorCode"

    const/4 v1, -0x1

    .line 116
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "com.amazon.dcp.sso.ErrorMessage"

    .line 117
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 118
    invoke-static {}, Lcom/amazon/kindle/services/authentication/MAPCookiesRetriever;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot retrieve identity cookies from MAP, failed with error code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", error message: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "com.amazon.dcp.sso.ErrorCode"

    .line 107
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/services/authentication/MAPCookiesRetriever$1;->onError(Landroid/os/Bundle;)V

    return-void

    .line 111
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/services/authentication/MAPCookiesRetriever;->access$000()Ljava/lang/String;

    return-void
.end method
