.class Lcom/amazon/kcp/application/ReddingApplication$5;
.super Ljava/lang/Object;
.source "ReddingApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/application/ReddingApplication;->initializeMAP()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/application/ReddingApplication;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/ReddingApplication;)V
    .locals 0

    .line 505
    iput-object p1, p0, Lcom/amazon/kcp/application/ReddingApplication$5;->this$0:Lcom/amazon/kcp/application/ReddingApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 508
    iget-object v0, p0, Lcom/amazon/kcp/application/ReddingApplication$5;->this$0:Lcom/amazon/kcp/application/ReddingApplication;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/api/MAPInit;->getInstance(Landroid/content/Context;)Lcom/amazon/identity/auth/device/api/MAPInit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/MAPInit;->initialize()V

    return-void
.end method
