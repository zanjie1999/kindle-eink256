.class final Lcom/facebook/model/JsonUtil$JSONObjectEntry;
.super Ljava/lang/Object;
.source "JsonUtil.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/model/JsonUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "JSONObjectEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final key:Ljava/lang/String;

.field private final value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/facebook/model/JsonUtil$JSONObjectEntry;->key:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/facebook/model/JsonUtil$JSONObjectEntry;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lcom/facebook/model/JsonUtil$JSONObjectEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/facebook/model/JsonUtil$JSONObjectEntry;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/facebook/model/JsonUtil$JSONObjectEntry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 69
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "JSONObjectEntry is immutable"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
