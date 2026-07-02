.class public Lcom/amazon/kindle/store/StoreRequest;
.super Ljava/lang/Object;
.source "StoreRequest.java"


# static fields
.field private static final STORE_EXTRAS_PARAMS_KEY:Ljava/lang/String; = "queryParams"

.field private static final STORE_INTENT:Ljava/lang/String; = "com.amazon.webapp.msg.openWebApp.KINDLE_STORE"


# instance fields
.field private context:Landroid/content/Context;

.field private final storeIntent:Landroid/content/Intent;

.field private final storeParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/amazon/kindle/store/StoreRequest;->context:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/amazon/kindle/store/StoreRequest;->storeParams:Ljava/util/HashMap;

    .line 46
    invoke-virtual {p0}, Lcom/amazon/kindle/store/StoreRequest;->createIntent()Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/store/StoreRequest;->storeIntent:Landroid/content/Intent;

    const/high16 p2, 0x10000000

    .line 47
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public addStoreParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/amazon/kindle/store/StoreRequest;->storeParams:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected createIntent()Landroid/content/Intent;
    .locals 2

    .line 82
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.amazon.webapp.msg.openWebApp.KINDLE_STORE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public launchStore()V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/amazon/kindle/store/StoreRequest;->storeParams:Ljava/util/HashMap;

    const-string v1, "queryParams"

    invoke-virtual {p0, v1, v0}, Lcom/amazon/kindle/store/StoreRequest;->putIntentExtra(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 55
    iget-object v0, p0, Lcom/amazon/kindle/store/StoreRequest;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/amazon/kindle/store/StoreRequest;->storeIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public putIntentExtra(Ljava/lang/String;Ljava/io/Serializable;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/amazon/kindle/store/StoreRequest;->storeIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    return-void
.end method
