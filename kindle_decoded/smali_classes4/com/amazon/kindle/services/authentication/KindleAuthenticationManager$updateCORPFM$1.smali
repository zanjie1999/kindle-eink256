.class final Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager$updateCORPFM$1;
.super Ljava/lang/Object;
.source "KindleAuthenticationManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->updateCORPFM()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $account:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager$updateCORPFM$1;->this$0:Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;

    iput-object p2, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager$updateCORPFM$1;->$account:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 85
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager$updateCORPFM$1;->this$0:Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;

    invoke-static {v0}, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->access$getTokenCache$p(Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;)Lcom/amazon/kindle/services/authentication/MAPTokenCache;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey;->COR:Lcom/amazon/kindle/services/authentication/TokenKey;

    iget-object v2, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager$updateCORPFM$1;->$account:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->getValue(Lcom/amazon/kindle/services/authentication/TokenKey;Ljava/lang/String;ZZ)Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager$updateCORPFM$1;->this$0:Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;

    invoke-static {v0}, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->access$getTokenCache$p(Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;)Lcom/amazon/kindle/services/authentication/MAPTokenCache;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey;->PFM:Lcom/amazon/kindle/services/authentication/TokenKey;

    iget-object v2, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager$updateCORPFM$1;->$account:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->getValue(Lcom/amazon/kindle/services/authentication/TokenKey;Ljava/lang/String;ZZ)Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager$updateCORPFM$1;->this$0:Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;

    new-instance v1, Lcom/amazon/kindle/event/Event;

    iget-object v2, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager$updateCORPFM$1;->this$0:Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;

    invoke-static {v2}, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->access$getContext$p(Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/amazon/kcp/application/IAuthenticationManager;->COR_PFM_UPDATED:Lcom/amazon/kindle/event/EventType;

    invoke-direct {v1, v2, v3}, Lcom/amazon/kindle/event/Event;-><init>(Ljava/lang/Object;Lcom/amazon/kindle/event/EventType;)V

    invoke-static {v0, v1}, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->access$publishEvent(Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;Lcom/amazon/kindle/event/Event;)V

    return-void
.end method
