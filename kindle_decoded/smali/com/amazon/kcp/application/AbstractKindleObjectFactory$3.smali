.class Lcom/amazon/kcp/application/AbstractKindleObjectFactory$3;
.super Ljava/lang/Object;
.source "AbstractKindleObjectFactory.java"

# interfaces
.implements Lcom/amazon/kindle/cms/ICMSActionRunnerFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getCMSActionRunnerFactory()Lcom/amazon/kindle/cms/ICMSActionRunnerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/AbstractKindleObjectFactory;)V
    .locals 0

    .line 1393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createRunner(Landroid/content/Context;Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;Ljava/util/Collection;Ljava/util/Collection;)Lcom/amazon/kindle/cms/ICMSActionRunner;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/amazon/kindle/cms/ICMSActionRunner;"
        }
    .end annotation

    .line 1415
    new-instance p1, Lcom/amazon/kindle/cms/NopCMSActionRunner;

    invoke-direct {p1}, Lcom/amazon/kindle/cms/NopCMSActionRunner;-><init>()V

    return-object p1
.end method

.method public createRunner(Landroid/content/Context;Ljava/lang/String;JLcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;)Lcom/amazon/kindle/cms/ICMSActionRunner;
    .locals 0

    .line 1409
    new-instance p1, Lcom/amazon/kindle/cms/NopCMSActionRunner;

    invoke-direct {p1}, Lcom/amazon/kindle/cms/NopCMSActionRunner;-><init>()V

    return-object p1
.end method
