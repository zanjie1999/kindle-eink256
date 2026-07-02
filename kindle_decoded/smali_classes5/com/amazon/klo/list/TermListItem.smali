.class public Lcom/amazon/klo/list/TermListItem;
.super Ljava/lang/Object;
.source "TermListItem.java"


# instance fields
.field private m_Card:Lorg/json/JSONObject;

.field private m_Definition:Lorg/json/JSONObject;

.field private m_DetailedDefinition:Lorg/json/JSONObject;

.field private m_json:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/amazon/klo/list/TermListItem;->m_Definition:Lorg/json/JSONObject;

    .line 15
    iput-object v0, p0, Lcom/amazon/klo/list/TermListItem;->m_Card:Lorg/json/JSONObject;

    .line 16
    iput-object v0, p0, Lcom/amazon/klo/list/TermListItem;->m_DetailedDefinition:Lorg/json/JSONObject;

    .line 37
    iput-object p1, p0, Lcom/amazon/klo/list/TermListItem;->m_json:Lorg/json/JSONObject;

    .line 38
    iput-object v0, p0, Lcom/amazon/klo/list/TermListItem;->m_Definition:Lorg/json/JSONObject;

    .line 39
    iput-object v0, p0, Lcom/amazon/klo/list/TermListItem;->m_Card:Lorg/json/JSONObject;

    .line 40
    iput-object v0, p0, Lcom/amazon/klo/list/TermListItem;->m_DetailedDefinition:Lorg/json/JSONObject;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/amazon/klo/list/TermListItem;->m_Definition:Lorg/json/JSONObject;

    .line 15
    iput-object v0, p0, Lcom/amazon/klo/list/TermListItem;->m_Card:Lorg/json/JSONObject;

    .line 16
    iput-object v0, p0, Lcom/amazon/klo/list/TermListItem;->m_DetailedDefinition:Lorg/json/JSONObject;

    .line 29
    iput-object p1, p0, Lcom/amazon/klo/list/TermListItem;->m_json:Lorg/json/JSONObject;

    .line 30
    iput-object p2, p0, Lcom/amazon/klo/list/TermListItem;->m_Definition:Lorg/json/JSONObject;

    .line 31
    iput-object v0, p0, Lcom/amazon/klo/list/TermListItem;->m_Card:Lorg/json/JSONObject;

    .line 32
    iput-object v0, p0, Lcom/amazon/klo/list/TermListItem;->m_DetailedDefinition:Lorg/json/JSONObject;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/amazon/klo/list/TermListItem;->m_Definition:Lorg/json/JSONObject;

    .line 15
    iput-object v0, p0, Lcom/amazon/klo/list/TermListItem;->m_Card:Lorg/json/JSONObject;

    .line 16
    iput-object v0, p0, Lcom/amazon/klo/list/TermListItem;->m_DetailedDefinition:Lorg/json/JSONObject;

    .line 20
    iput-object p1, p0, Lcom/amazon/klo/list/TermListItem;->m_json:Lorg/json/JSONObject;

    .line 21
    iput-object v0, p0, Lcom/amazon/klo/list/TermListItem;->m_Definition:Lorg/json/JSONObject;

    .line 22
    iput-object p2, p0, Lcom/amazon/klo/list/TermListItem;->m_Card:Lorg/json/JSONObject;

    .line 23
    iput-object p3, p0, Lcom/amazon/klo/list/TermListItem;->m_DetailedDefinition:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public getDetailDefinition()Ljava/lang/String;
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/amazon/klo/list/TermListItem;->m_DetailedDefinition:Lorg/json/JSONObject;

    const-string v1, "definition"

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/amazon/klo/list/TermListItem;->m_Definition:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    .line 72
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public getJson()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/amazon/klo/list/TermListItem;->m_json:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJsonObject()Lorg/json/JSONObject;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/amazon/klo/list/TermListItem;->m_json:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getLicense()Ljava/lang/String;
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/amazon/klo/list/TermListItem;->m_DetailedDefinition:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    const-string v1, "licenseDescription"

    .line 112
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getLicenseUrl()Ljava/lang/String;
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/amazon/klo/list/TermListItem;->m_DetailedDefinition:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    const-string v1, "licenseUrl"

    .line 124
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getListDefinition()Ljava/lang/String;
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/amazon/klo/list/TermListItem;->m_Card:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    const-string v1, "card"

    .line 52
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/amazon/klo/list/TermListItem;->m_Definition:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    const-string v1, "definition"

    .line 56
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public getLocations()Lorg/json/JSONArray;
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/amazon/klo/list/TermListItem;->m_json:Lorg/json/JSONObject;

    const-string v1, "locs"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/amazon/klo/list/TermListItem;->m_json:Lorg/json/JSONObject;

    const-string/jumbo v1, "term"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/amazon/klo/list/TermListItem;->m_DetailedDefinition:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    const-string/jumbo v1, "source"

    .line 84
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/amazon/klo/list/TermListItem;->m_Definition:Lorg/json/JSONObject;

    const-string v1, ""

    if-eqz v0, :cond_1

    const-string v2, "definition"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "glossary"

    return-object v0

    :cond_1
    return-object v1
.end method

.method public getSrcUrl()Ljava/lang/String;
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/amazon/klo/list/TermListItem;->m_DetailedDefinition:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    const-string/jumbo v1, "url"

    .line 100
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method
