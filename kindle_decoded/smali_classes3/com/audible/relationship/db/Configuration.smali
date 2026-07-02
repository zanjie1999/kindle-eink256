.class public final Lcom/audible/relationship/db/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"

# interfaces
.implements Lcom/audible/relationship/db/IConfiguration;


# instance fields
.field private final keyValueStorage:Lcom/audible/relationship/db/IKeyValueStorage;


# direct methods
.method public constructor <init>(Lcom/audible/relationship/db/IKeyValueStorage;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/audible/relationship/db/Configuration;->keyValueStorage:Lcom/audible/relationship/db/IKeyValueStorage;

    return-void
.end method


# virtual methods
.method public clearSessionId()Z
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/audible/relationship/db/Configuration;->keyValueStorage:Lcom/audible/relationship/db/IKeyValueStorage;

    const-string v1, "session_id"

    invoke-interface {v0, v1}, Lcom/audible/relationship/db/IKeyValueStorage;->delete(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getSessionId()I
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/audible/relationship/db/Configuration;->keyValueStorage:Lcom/audible/relationship/db/IKeyValueStorage;

    const-string v1, "session_id"

    invoke-interface {v0, v1}, Lcom/audible/relationship/db/IKeyValueStorage;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 35
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public incrementAndGetSessionId()I
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/audible/relationship/db/Configuration;->keyValueStorage:Lcom/audible/relationship/db/IKeyValueStorage;

    const-string v1, "session_id"

    invoke-interface {v0, v1}, Lcom/audible/relationship/db/IKeyValueStorage;->incrementAndGetValueAsInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
