.class public Lcom/amazon/bookwizard/glide/BuyRequest$BuyResponse;
.super Lcom/amazon/bookwizard/ku/service/KuResponse;
.source "BuyRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/bookwizard/glide/BuyRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BuyResponse"
.end annotation


# instance fields
.field private message:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 171
    invoke-direct {p0}, Lcom/amazon/bookwizard/ku/service/KuResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public isSuccess()Z
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/amazon/bookwizard/glide/BuyRequest$BuyResponse;->status:Ljava/lang/String;

    const-string/jumbo v1, "success"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 189
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/bookwizard/glide/BuyRequest$BuyResponse;->status:Ljava/lang/String;

    const-string v2, "STATUS"

    .line 190
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/bookwizard/glide/BuyRequest$BuyResponse;->message:Ljava/lang/String;

    const-string v2, "MESSAGE"

    .line 191
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/bookwizard/glide/BuyRequest$BuyResponse;->url:Ljava/lang/String;

    const-string v2, "URL"

    .line 192
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 193
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
