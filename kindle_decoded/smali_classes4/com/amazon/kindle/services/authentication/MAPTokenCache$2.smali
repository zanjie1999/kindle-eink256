.class Lcom/amazon/kindle/services/authentication/MAPTokenCache$2;
.super Ljava/lang/Object;
.source "MAPTokenCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/services/authentication/MAPTokenCache;->getValue(Lcom/amazon/kindle/services/authentication/TokenKey;Ljava/lang/String;ZZ)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/services/authentication/MAPTokenCache;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/services/authentication/MAPTokenCache;Ljava/lang/Runnable;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache$2;->this$0:Lcom/amazon/kindle/services/authentication/MAPTokenCache;

    iput-object p2, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache$2;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 187
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache$2;->val$runnable:Ljava/lang/Runnable;

    const-string v2, "USER_EMAIL_Fetcher"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
