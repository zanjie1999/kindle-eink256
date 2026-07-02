.class public Lcom/amazon/bookwizard/glide/AsinOffer;
.super Lcom/amazon/bookwizard/ku/service/KuResponse;
.source "AsinOffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/bookwizard/glide/AsinOffer$AsinInfo;
    }
.end annotation


# instance fields
.field private asinInfo:Lcom/amazon/bookwizard/glide/AsinOffer$AsinInfo;

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/amazon/bookwizard/ku/service/KuResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getAction(Lcom/amazon/bookwizard/glide/ActionType;)Lcom/amazon/bookwizard/glide/Action;
    .locals 6

    .line 47
    iget-object v0, p0, Lcom/amazon/bookwizard/glide/AsinOffer;->asinInfo:Lcom/amazon/bookwizard/glide/AsinOffer$AsinInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/amazon/bookwizard/glide/AsinOffer$AsinInfo;->actions:[Lcom/amazon/bookwizard/glide/Action;

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 51
    :cond_0
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 52
    invoke-virtual {p1, v4}, Lcom/amazon/bookwizard/glide/ActionType;->matches(Lcom/amazon/bookwizard/glide/Action;)Z

    move-result v5

    if-eqz v5, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 64
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/bookwizard/glide/AsinOffer;->status:Ljava/lang/String;

    const-string v2, "STATUS"

    .line 65
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/bookwizard/glide/AsinOffer;->asinInfo:Lcom/amazon/bookwizard/glide/AsinOffer$AsinInfo;

    iget-object v1, v1, Lcom/amazon/bookwizard/glide/AsinOffer$AsinInfo;->actions:[Lcom/amazon/bookwizard/glide/Action;

    const-string v2, "ACTIONS"

    .line 66
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 67
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
