.class final Lcom/amazon/bookwizard/service/SarsRequest$1;
.super Ljava/util/HashMap;
.source "SarsRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/bookwizard/service/SarsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 48
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://sars.amazon.com/bookwizard/%s"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CA:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->BR:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->MX:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->RU:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://sars-eu.amazon.com/bookwizard/%s"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->DE:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->FR:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IT:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->ES:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IN:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->NL:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://sars-fe.amazon.com/bookwizard/%s"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->AU:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://sars-cn.amazon.com/bookwizard/%s"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
