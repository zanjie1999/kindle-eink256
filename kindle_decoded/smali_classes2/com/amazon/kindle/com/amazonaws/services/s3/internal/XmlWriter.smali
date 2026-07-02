.class public Lcom/amazon/kindle/com/amazonaws/services/s3/internal/XmlWriter;
.super Ljava/lang/Object;
.source "XmlWriter.java"


# instance fields
.field sb:Ljava/lang/StringBuilder;

.field tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/XmlWriter;->tags:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/XmlWriter;->sb:Ljava/lang/StringBuilder;

    return-void
.end method

.method private appendEscapedString(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 5

    if-nez p1, :cond_0

    const-string p1, ""

    .line 141
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_a

    .line 143
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_7

    const/16 v4, 0xa

    if-eq v3, v4, :cond_6

    const/16 v4, 0xd

    if-eq v3, v4, :cond_5

    const/16 v4, 0x22

    if-eq v3, v4, :cond_4

    const/16 v4, 0x26

    if-eq v3, v4, :cond_3

    const/16 v4, 0x3c

    if-eq v3, v4, :cond_2

    const/16 v4, 0x3e

    if-eq v3, v4, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    const-string v3, "&gt;"

    goto :goto_1

    :cond_2
    const-string v3, "&lt;"

    goto :goto_1

    :cond_3
    const-string v3, "&amp;"

    goto :goto_1

    :cond_4
    const-string v3, "&quot;"

    goto :goto_1

    :cond_5
    const-string v3, "&#13;"

    goto :goto_1

    :cond_6
    const-string v3, "&#10;"

    goto :goto_1

    :cond_7
    const-string v3, "&#9;"

    :goto_1
    if-eqz v3, :cond_9

    if-ge v2, v1, :cond_8

    .line 177
    invoke-virtual {p2, p1, v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 178
    :cond_8
    iget-object v2, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/XmlWriter;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v1, 0x1

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_a
    if-ge v2, v1, :cond_b

    .line 185
    iget-object p2, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/XmlWriter;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1, v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    :cond_b
    return-void
.end method


# virtual methods
.method public end()Lcom/amazon/kindle/com/amazonaws/services/s3/internal/XmlWriter;
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/XmlWriter;->tags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 93
    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/XmlWriter;->sb:Ljava/lang/StringBuilder;

    const-string v2, "</"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ">"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public getBytes()[B
    .locals 2

    .line 103
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/XmlWriter;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/util/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public start(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/s3/internal/XmlWriter;
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/XmlWriter;->sb:Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/XmlWriter;->tags:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/XmlWriter;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public value(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/s3/internal/XmlWriter;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/XmlWriter;->sb:Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/XmlWriter;->appendEscapedString(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    return-object p0
.end method
