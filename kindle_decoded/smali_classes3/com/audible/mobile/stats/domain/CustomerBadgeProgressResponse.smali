.class public Lcom/audible/mobile/stats/domain/CustomerBadgeProgressResponse;
.super Ljava/lang/Object;
.source "CustomerBadgeProgressResponse.java"


# static fields
.field private static final CUSTOMER_BADGES:Ljava/lang/String; = "customer_badges"


# instance fields
.field private final customerBadgeProgress:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/audible/mobile/stats/domain/CustomerBadgeProgressResponse;->customerBadgeProgress:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "customer_badges"

    .line 26
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/audible/mobile/stats/domain/CustomerBadgeProgressResponse;->customerBadgeProgress:Ljava/util/List;

    const/4 v0, 0x0

    .line 28
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 29
    iget-object v1, p0, Lcom/audible/mobile/stats/domain/CustomerBadgeProgressResponse;->customerBadgeProgress:Ljava/util/List;

    new-instance v2, Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getCustomerBadgeProgress()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/audible/mobile/stats/domain/CustomerBadgeProgressResponse;->customerBadgeProgress:Ljava/util/List;

    return-object v0
.end method
