.class public Lcom/amazon/bookwizard/service/WelcomeViewAssets;
.super Ljava/lang/Object;
.source "WelcomeViewAssets.java"


# instance fields
.field private body:Ljava/lang/String;

.field private countryLabel:Ljava/lang/String;

.field private headerWithUsername:Ljava/lang/String;

.field private headerWithoutUsername:Ljava/lang/String;

.field private noButton:Ljava/lang/String;

.field private yesButton:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/amazon/bookwizard/service/WelcomeViewAssets;->headerWithUsername:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcom/amazon/bookwizard/service/WelcomeViewAssets;->headerWithoutUsername:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lcom/amazon/bookwizard/service/WelcomeViewAssets;->body:Ljava/lang/String;

    .line 58
    iput-object p4, p0, Lcom/amazon/bookwizard/service/WelcomeViewAssets;->yesButton:Ljava/lang/String;

    .line 59
    iput-object p5, p0, Lcom/amazon/bookwizard/service/WelcomeViewAssets;->noButton:Ljava/lang/String;

    .line 60
    iput-object p6, p0, Lcom/amazon/bookwizard/service/WelcomeViewAssets;->countryLabel:Ljava/lang/String;

    return-void
.end method

.method public static fromMap(Ljava/util/Map;)Lcom/amazon/bookwizard/service/WelcomeViewAssets;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazon/bookwizard/service/WelcomeViewAssets;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 35
    :cond_0
    new-instance v7, Lcom/amazon/bookwizard/service/WelcomeViewAssets;

    const-string v0, "headerWithUsername"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    const-string v0, "headerWithoutUsername"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    const-string v0, "body"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v0, "yesButton"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v0, "noButton"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    const-string v0, "countryLabel"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Ljava/lang/String;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/amazon/bookwizard/service/WelcomeViewAssets;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v7
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/amazon/bookwizard/service/WelcomeViewAssets;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getHeader()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/amazon/bookwizard/service/WelcomeViewAssets;->headerWithoutUsername:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderFormat()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/amazon/bookwizard/service/WelcomeViewAssets;->headerWithUsername:Ljava/lang/String;

    return-object v0
.end method

.method public getYesButton()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/amazon/bookwizard/service/WelcomeViewAssets;->yesButton:Ljava/lang/String;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/amazon/bookwizard/service/WelcomeViewAssets;->headerWithUsername:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/bookwizard/service/WelcomeViewAssets;->headerWithoutUsername:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/bookwizard/service/WelcomeViewAssets;->body:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/bookwizard/service/WelcomeViewAssets;->yesButton:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
