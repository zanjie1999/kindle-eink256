.class Lcom/amazon/kcp/application/StandaloneApplication$3;
.super Ljava/lang/Object;
.source "StandaloneApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/application/StandaloneApplication;->initializeAppState(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/application/StandaloneApplication;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/StandaloneApplication;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/amazon/kcp/application/StandaloneApplication$3;->this$0:Lcom/amazon/kcp/application/StandaloneApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 226
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontConfigInitializer()Lcom/amazon/kcp/font/FontConfigInitializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/font/FontConfigInitializer;->initializeFonts()V

    return-void
.end method
