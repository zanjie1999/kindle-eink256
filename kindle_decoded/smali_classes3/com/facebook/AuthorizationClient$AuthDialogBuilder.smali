.class Lcom/facebook/AuthorizationClient$AuthDialogBuilder;
.super Lcom/facebook/widget/WebDialog$Builder;
.source "AuthorizationClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/AuthorizationClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AuthDialogBuilder"
.end annotation


# static fields
.field private static final OAUTH_DIALOG:Ljava/lang/String; = "oauth"


# instance fields
.field private e2e:Ljava/lang/String;

.field private isRerequest:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "oauth"

    .line 904
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/facebook/widget/WebDialog$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/facebook/widget/WebDialog;
    .locals 7

    .line 919
    invoke-virtual {p0}, Lcom/facebook/widget/WebDialog$Builder;->getParameters()Landroid/os/Bundle;

    move-result-object v3

    const-string v0, "redirect_uri"

    const-string v1, "fbconnect://success"

    .line 920
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    invoke-virtual {p0}, Lcom/facebook/widget/WebDialog$Builder;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "client_id"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    iget-object v0, p0, Lcom/facebook/AuthorizationClient$AuthDialogBuilder;->e2e:Ljava/lang/String;

    const-string v1, "e2e"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "response_type"

    const-string v1, "token"

    .line 923
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "return_scopes"

    const-string v1, "true"

    .line 924
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    iget-boolean v0, p0, Lcom/facebook/AuthorizationClient$AuthDialogBuilder;->isRerequest:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/facebook/Settings;->getPlatformCompatibilityEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "auth_type"

    const-string v1, "rerequest"

    .line 928
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    :cond_0
    new-instance v6, Lcom/facebook/widget/WebDialog;

    invoke-virtual {p0}, Lcom/facebook/widget/WebDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/widget/WebDialog$Builder;->getTheme()I

    move-result v4

    invoke-virtual {p0}, Lcom/facebook/widget/WebDialog$Builder;->getListener()Lcom/facebook/widget/WebDialog$OnCompleteListener;

    move-result-object v5

    const-string v2, "oauth"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/facebook/widget/WebDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILcom/facebook/widget/WebDialog$OnCompleteListener;)V

    return-object v6
.end method

.method public setE2E(Ljava/lang/String;)Lcom/facebook/AuthorizationClient$AuthDialogBuilder;
    .locals 0

    .line 908
    iput-object p1, p0, Lcom/facebook/AuthorizationClient$AuthDialogBuilder;->e2e:Ljava/lang/String;

    return-object p0
.end method

.method public setIsRerequest(Z)Lcom/facebook/AuthorizationClient$AuthDialogBuilder;
    .locals 0

    .line 913
    iput-boolean p1, p0, Lcom/facebook/AuthorizationClient$AuthDialogBuilder;->isRerequest:Z

    return-object p0
.end method
