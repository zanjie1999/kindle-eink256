.class final Lcom/amazon/kindle/store/StorefrontContext1P$1;
.super Ljava/util/HashMap;
.source "StorefrontContext1P.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/store/StorefrontContext1P;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Lcom/amazon/kindle/store/StorefrontContext1P;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$bookStoreContextStringList:Ljava/util/List;

.field final synthetic val$newsstandStoreContextStringList:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 1

    .line 33
    iput-object p1, p0, Lcom/amazon/kindle/store/StorefrontContext1P$1;->val$bookStoreContextStringList:Ljava/util/List;

    iput-object p2, p0, Lcom/amazon/kindle/store/StorefrontContext1P$1;->val$newsstandStoreContextStringList:Ljava/util/List;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 35
    iget-object p1, p0, Lcom/amazon/kindle/store/StorefrontContext1P$1;->val$bookStoreContextStringList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 36
    sget-object v0, Lcom/amazon/kindle/store/StorefrontContext1P;->BOOKS:Lcom/amazon/kindle/store/StorefrontContext1P;

    invoke-virtual {p0, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 39
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/store/StorefrontContext1P$1;->val$newsstandStoreContextStringList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 40
    sget-object v0, Lcom/amazon/kindle/store/StorefrontContext1P;->NEWSSTAND:Lcom/amazon/kindle/store/StorefrontContext1P;

    invoke-virtual {p0, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    return-void
.end method
