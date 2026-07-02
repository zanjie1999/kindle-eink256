.class Lcom/amazon/kindle/messaging/StandaloneOdotMessageHandler$1;
.super Ljava/lang/Object;
.source "StandaloneOdotMessageHandler.java"

# interfaces
.implements Lcom/amazon/messaging/odot/OdotClient$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/messaging/StandaloneOdotMessageHandler;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$authenticationManager:Lcom/amazon/kcp/application/IAuthenticationManager;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/messaging/StandaloneOdotMessageHandler;Lcom/amazon/kcp/application/IAuthenticationManager;)V
    .locals 0

    .line 45
    iput-object p2, p0, Lcom/amazon/kindle/messaging/StandaloneOdotMessageHandler$1;->val$authenticationManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/amazon/kindle/messaging/StandaloneOdotMessageHandler$1;->val$authenticationManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
