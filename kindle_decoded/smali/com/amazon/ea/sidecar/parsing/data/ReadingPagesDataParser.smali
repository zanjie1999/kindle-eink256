.class public Lcom/amazon/ea/sidecar/parsing/data/ReadingPagesDataParser;
.super Ljava/lang/Object;
.source "ReadingPagesDataParser.java"


# static fields
.field private static final TAG_PAGES:Ljava/lang/String; = "pagesInBook"


# direct methods
.method public static parse(Lorg/json/JSONObject;)Lcom/amazon/ea/sidecar/def/data/ReadingPagesData;
    .locals 2

    const-string/jumbo v0, "pagesInBook"

    const/4 v1, -0x1

    .line 31
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 32
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 35
    :cond_0
    new-instance v0, Lcom/amazon/ea/sidecar/def/data/ReadingPagesData;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-direct {v0, p0}, Lcom/amazon/ea/sidecar/def/data/ReadingPagesData;-><init>(I)V

    return-object v0
.end method
