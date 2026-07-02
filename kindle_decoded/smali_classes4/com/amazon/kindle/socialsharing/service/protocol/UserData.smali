.class public Lcom/amazon/kindle/socialsharing/service/protocol/UserData;
.super Ljava/lang/Object;
.source "UserData.java"


# instance fields
.field private cid:Ljava/lang/String;

.field private marketplace:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setCid(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/service/protocol/UserData;->cid:Ljava/lang/String;

    return-void
.end method

.method public setMarketplace(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/service/protocol/UserData;->marketplace:Ljava/lang/String;

    return-void
.end method
