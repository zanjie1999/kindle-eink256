.class public Lcom/amazon/kindle/content/BookContentType;
.super Ljava/lang/Object;
.source "BookContentType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/content/BookContentType$ContentType;
    }
.end annotation


# direct methods
.method public static fromFileExtensionAndContentType(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/BookContentType$ContentType;
    .locals 1

    .line 105
    invoke-static {p0}, Lcom/amazon/kindle/content/BookContentType;->getContentTypeFromFileExtension(Ljava/lang/String;)Lcom/amazon/kindle/content/BookContentType$ContentType;

    move-result-object p0

    .line 106
    sget-object v0, Lcom/amazon/kindle/content/BookContentType$ContentType;->UNKNOWN:Lcom/amazon/kindle/content/BookContentType$ContentType;

    if-eq p0, v0, :cond_0

    return-object p0

    .line 109
    :cond_0
    invoke-static {p1}, Lcom/amazon/kindle/content/BookContentType;->getContentType(Ljava/lang/String;)Lcom/amazon/kindle/content/BookContentType$ContentType;

    move-result-object p0

    return-object p0
.end method

.method public static getContentType(Ljava/lang/String;)Lcom/amazon/kindle/content/BookContentType$ContentType;
    .locals 2

    .line 36
    sget-object v0, Lcom/amazon/kindle/content/BookContentType$ContentType;->UNKNOWN:Lcom/amazon/kindle/content/BookContentType$ContentType;

    .line 38
    invoke-static {p0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "application/pdf"

    .line 40
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    sget-object v0, Lcom/amazon/kindle/content/BookContentType$ContentType;->PDF:Lcom/amazon/kindle/content/BookContentType$ContentType;

    goto :goto_1

    :cond_0
    const-string v1, "application/x-mobipocket-ebook"

    .line 42
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "application/x-mobi8-ebook"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "application/msword"

    .line 44
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 45
    sget-object v0, Lcom/amazon/kindle/content/BookContentType$ContentType;->DOC:Lcom/amazon/kindle/content/BookContentType$ContentType;

    goto :goto_1

    :cond_2
    const-string v1, "text/html"

    .line 46
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 47
    sget-object v0, Lcom/amazon/kindle/content/BookContentType$ContentType;->HTML:Lcom/amazon/kindle/content/BookContentType$ContentType;

    goto :goto_1

    :cond_3
    const-string v1, "application/ms-powerpoint"

    .line 48
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 49
    sget-object v0, Lcom/amazon/kindle/content/BookContentType$ContentType;->PPT:Lcom/amazon/kindle/content/BookContentType$ContentType;

    goto :goto_1

    :cond_4
    const-string v1, "text/plain"

    .line 50
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 51
    sget-object v0, Lcom/amazon/kindle/content/BookContentType$ContentType;->TEXT:Lcom/amazon/kindle/content/BookContentType$ContentType;

    goto :goto_1

    :cond_5
    const-string v1, "application/rtf"

    .line 52
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 53
    sget-object v0, Lcom/amazon/kindle/content/BookContentType$ContentType;->RTF:Lcom/amazon/kindle/content/BookContentType$ContentType;

    goto :goto_1

    :cond_6
    const-string v1, "application/x-excel"

    .line 54
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 55
    sget-object v0, Lcom/amazon/kindle/content/BookContentType$ContentType;->XLS:Lcom/amazon/kindle/content/BookContentType$ContentType;

    goto :goto_1

    .line 43
    :cond_7
    :goto_0
    sget-object v0, Lcom/amazon/kindle/content/BookContentType$ContentType;->MOBI:Lcom/amazon/kindle/content/BookContentType$ContentType;

    :cond_8
    :goto_1
    return-object v0
.end method

.method public static getContentTypeFromFileExtension(Ljava/lang/String;)Lcom/amazon/kindle/content/BookContentType$ContentType;
    .locals 2

    .line 76
    sget-object v0, Lcom/amazon/kindle/content/BookContentType$ContentType;->UNKNOWN:Lcom/amazon/kindle/content/BookContentType$ContentType;

    .line 78
    invoke-static {p0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 79
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v1, ".pdf"

    .line 81
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    sget-object v0, Lcom/amazon/kindle/content/BookContentType$ContentType;->PDF:Lcom/amazon/kindle/content/BookContentType$ContentType;

    goto/16 :goto_4

    :cond_0
    const-string v1, ".doc"

    .line 83
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, ".docx"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_3

    :cond_1
    const-string v1, ".html"

    .line 85
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, ".htm"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const-string v1, ".prc"

    .line 87
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, ".mobi"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const-string v1, ".ppt"

    .line 89
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, ".pptx"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    const-string v1, ".txt"

    .line 91
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 92
    sget-object v0, Lcom/amazon/kindle/content/BookContentType$ContentType;->TEXT:Lcom/amazon/kindle/content/BookContentType$ContentType;

    goto :goto_4

    :cond_5
    const-string v1, ".rtf"

    .line 93
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 94
    sget-object v0, Lcom/amazon/kindle/content/BookContentType$ContentType;->RTF:Lcom/amazon/kindle/content/BookContentType$ContentType;

    goto :goto_4

    :cond_6
    const-string v1, ".xls"

    .line 95
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, ".xlsx"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    .line 96
    :cond_7
    sget-object v0, Lcom/amazon/kindle/content/BookContentType$ContentType;->XLS:Lcom/amazon/kindle/content/BookContentType$ContentType;

    goto :goto_4

    .line 90
    :cond_8
    :goto_0
    sget-object v0, Lcom/amazon/kindle/content/BookContentType$ContentType;->PPT:Lcom/amazon/kindle/content/BookContentType$ContentType;

    goto :goto_4

    .line 88
    :cond_9
    :goto_1
    sget-object v0, Lcom/amazon/kindle/content/BookContentType$ContentType;->MOBI:Lcom/amazon/kindle/content/BookContentType$ContentType;

    goto :goto_4

    .line 86
    :cond_a
    :goto_2
    sget-object v0, Lcom/amazon/kindle/content/BookContentType$ContentType;->HTML:Lcom/amazon/kindle/content/BookContentType$ContentType;

    goto :goto_4

    .line 84
    :cond_b
    :goto_3
    sget-object v0, Lcom/amazon/kindle/content/BookContentType$ContentType;->DOC:Lcom/amazon/kindle/content/BookContentType$ContentType;

    :cond_c
    :goto_4
    return-object v0
.end method
