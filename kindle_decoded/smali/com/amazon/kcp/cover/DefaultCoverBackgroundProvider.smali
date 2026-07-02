.class final Lcom/amazon/kcp/cover/DefaultCoverBackgroundProvider;
.super Ljava/lang/Object;
.source "DefaultCoverBackgroundProvider.java"

# interfaces
.implements Lcom/amazon/kcp/cover/IDefaultCoverBackgroundProvider;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getImageResource(Lcom/amazon/kcp/library/models/BookType;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/cover/ImageSizes$Type;)I
    .locals 3

    .line 19
    sget-object v0, Lcom/amazon/kcp/cover/DefaultCoverBackgroundProvider$1;->$SwitchMap$com$amazon$kcp$library$models$BookType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_2

    if-eq p1, v0, :cond_2

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    .line 48
    sget p1, Lcom/amazon/kindle/krl/R$drawable;->generic_book_cover_list:I

    return p1

    .line 46
    :cond_0
    sget p1, Lcom/amazon/kindle/krl/R$drawable;->generic_magazine_cover_list:I

    return p1

    .line 44
    :cond_1
    sget p1, Lcom/amazon/kindle/krl/R$drawable;->generic_newspaper_cover_list:I

    return p1

    .line 23
    :cond_2
    invoke-static {p2, p3}, Lcom/amazon/kindle/content/BookContentType;->fromFileExtensionAndContentType(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/BookContentType$ContentType;

    move-result-object p1

    .line 24
    sget-object p2, Lcom/amazon/kcp/cover/DefaultCoverBackgroundProvider$1;->$SwitchMap$com$amazon$kindle$cover$ImageSizes$Type:[I

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p2, p2, p3

    if-eq p2, v2, :cond_5

    if-eq p2, v1, :cond_5

    if-eq p2, v0, :cond_3

    .line 41
    sget p1, Lcom/amazon/kindle/krl/R$drawable;->generic_doc_cover_list:I

    return p1

    .line 34
    :cond_3
    sget-object p2, Lcom/amazon/kcp/cover/DefaultCoverBackgroundProvider$1;->$SwitchMap$com$amazon$kindle$content$BookContentType$ContentType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    if-eq p1, v2, :cond_4

    .line 38
    sget p1, Lcom/amazon/kindle/krl/R$drawable;->file_extension_mobi_small:I

    return p1

    .line 36
    :cond_4
    sget p1, Lcom/amazon/kindle/krl/R$drawable;->file_extension_pdf_small:I

    return p1

    .line 27
    :cond_5
    sget-object p2, Lcom/amazon/kcp/cover/DefaultCoverBackgroundProvider$1;->$SwitchMap$com$amazon$kindle$content$BookContentType$ContentType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    if-eq p1, v2, :cond_6

    .line 31
    sget p1, Lcom/amazon/kindle/krl/R$drawable;->file_extension_mobi_large:I

    return p1

    .line 29
    :cond_6
    sget p1, Lcom/amazon/kindle/krl/R$drawable;->file_extension_pdf_large:I

    return p1
.end method
