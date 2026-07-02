.class public Lcom/fasterxml/jackson/core/filter/TokenFilter;
.super Ljava/lang/Object;
.source "TokenFilter.java"


# static fields
.field public static final INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lcom/fasterxml/jackson/core/filter/TokenFilter;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected _includeScalar()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public filterFinishArray()V
    .locals 0

    return-void
.end method

.method public filterStartArray()Lcom/fasterxml/jackson/core/filter/TokenFilter;
    .locals 0

    return-object p0
.end method

.method public filterStartObject()Lcom/fasterxml/jackson/core/filter/TokenFilter;
    .locals 0

    return-object p0
.end method

.method public includeElement(I)Lcom/fasterxml/jackson/core/filter/TokenFilter;
    .locals 0

    return-object p0
.end method

.method public includeProperty(Ljava/lang/String;)Lcom/fasterxml/jackson/core/filter/TokenFilter;
    .locals 0

    return-object p0
.end method

.method public includeRootValue(I)Lcom/fasterxml/jackson/core/filter/TokenFilter;
    .locals 0

    return-object p0
.end method

.method public includeValue(Lcom/fasterxml/jackson/core/JsonParser;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->_includeScalar()Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 343
    sget-object v0, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne p0, v0, :cond_0

    const-string v0, "TokenFilter.INCLUDE_ALL"

    return-object v0

    .line 346
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
