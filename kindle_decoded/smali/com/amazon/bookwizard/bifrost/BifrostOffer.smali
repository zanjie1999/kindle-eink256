.class public Lcom/amazon/bookwizard/bifrost/BifrostOffer;
.super Lcom/amazon/bookwizard/ku/service/KuResponse;
.source "BifrostOffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/bookwizard/bifrost/BifrostOffer$PersonalizedActionOutput;,
        Lcom/amazon/bookwizard/bifrost/BifrostOffer$Resource;
    }
.end annotation


# instance fields
.field private resources:[Lcom/amazon/bookwizard/bifrost/BifrostOffer$Resource;

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/amazon/bookwizard/ku/service/KuResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getAction(Lcom/amazon/bookwizard/glide/ActionType;)Lcom/amazon/bookwizard/bifrost/PersonalizedAction;
    .locals 5

    if-eqz p1, :cond_1

    .line 36
    iget-object v0, p0, Lcom/amazon/bookwizard/bifrost/BifrostOffer;->resources:[Lcom/amazon/bookwizard/bifrost/BifrostOffer$Resource;

    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 37
    aget-object v0, v0, v1

    .line 38
    iget-object v0, v0, Lcom/amazon/bookwizard/bifrost/BifrostOffer$Resource;->personalizedActionOutput:Lcom/amazon/bookwizard/bifrost/BifrostOffer$PersonalizedActionOutput;

    if-eqz v0, :cond_1

    .line 39
    iget-object v0, v0, Lcom/amazon/bookwizard/bifrost/BifrostOffer$PersonalizedActionOutput;->personalizedActions:[Lcom/amazon/bookwizard/bifrost/PersonalizedAction;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 40
    invoke-virtual {p1, v3}, Lcom/amazon/bookwizard/glide/ActionType;->matches(Lcom/amazon/bookwizard/bifrost/PersonalizedAction;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
