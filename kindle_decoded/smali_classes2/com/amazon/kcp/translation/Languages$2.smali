.class final Lcom/amazon/kcp/translation/Languages$2;
.super Ljava/util/HashMap;
.source "Languages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/translation/Languages;->verifyCachedLanguages(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Lcom/amazon/kcp/translation/Language;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 2

    .line 103
    invoke-direct {p0, p1}, Ljava/util/HashMap;-><init>(I)V

    .line 105
    invoke-static {}, Lcom/amazon/kcp/translation/Languages;->access$000()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/translation/Language;

    .line 106
    invoke-virtual {v0}, Lcom/amazon/kcp/translation/Language;->getLanguageTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method
