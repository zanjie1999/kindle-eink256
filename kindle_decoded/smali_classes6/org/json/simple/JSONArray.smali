.class public Lorg/json/simple/JSONArray;
.super Ljava/util/ArrayList;
.source "JSONArray.java"

# interfaces
.implements Ljava/util/List;
.implements Lorg/json/simple/JSONAware;
.implements Lorg/json/simple/JSONStreamAware;


# static fields
.field private static final serialVersionUID:J = 0x36ed996451b68eedL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method public static toJSONString(Ljava/util/List;)Ljava/lang/String;
    .locals 4

    const-string v0, "null"

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x1

    .line 76
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 77
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/16 v3, 0x5b

    .line 79
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 80
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/16 v3, 0x2c

    .line 84
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 86
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 88
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 91
    :cond_2
    invoke-static {v3}, Lorg/json/simple/JSONValue;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_3
    const/16 p0, 0x5d

    .line 93
    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 94
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static writeJSONString(Ljava/util/List;Ljava/io/Writer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "null"

    if-nez p0, :cond_0

    .line 33
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 38
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/16 v2, 0x5b

    .line 40
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    .line 41
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/16 v2, 0x2c

    .line 45
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    .line 47
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 49
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_2
    invoke-static {v2, p1}, Lorg/json/simple/JSONValue;->writeJSONString(Ljava/lang/Object;Ljava/io/Writer;)V

    goto :goto_0

    :cond_3
    const/16 p0, 0x5d

    .line 55
    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(I)V

    return-void
.end method


# virtual methods
.method public toJSONString()Ljava/lang/String;
    .locals 1

    .line 98
    invoke-static {p0}, Lorg/json/simple/JSONArray;->toJSONString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 102
    invoke-virtual {p0}, Lorg/json/simple/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeJSONString(Ljava/io/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    invoke-static {p0, p1}, Lorg/json/simple/JSONArray;->writeJSONString(Ljava/util/List;Ljava/io/Writer;)V

    return-void
.end method
