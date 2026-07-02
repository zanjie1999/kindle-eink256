.class public final Lcom/amazon/kindle/deletecontent/api/DeleteContentApiUtilsKt;
.super Ljava/lang/Object;
.source "DeleteContentApiUtils.kt"


# direct methods
.method public static final convertContentTypeToBookType(Lcom/amazon/kindle/krx/content/ContentType;)Lcom/amazon/kcp/library/models/BookType;
    .locals 1

    const-string v0, "contentType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Lcom/amazon/kindle/deletecontent/api/DeleteContentApiUtilsKt$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 33
    sget-object p0, Lcom/amazon/kcp/library/models/BookType;->BT_UNKNOWN:Lcom/amazon/kcp/library/models/BookType;

    goto :goto_0

    .line 32
    :pswitch_0
    sget-object p0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_PSNL:Lcom/amazon/kcp/library/models/BookType;

    goto :goto_0

    .line 31
    :pswitch_1
    sget-object p0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_PDOC:Lcom/amazon/kcp/library/models/BookType;

    goto :goto_0

    .line 30
    :pswitch_2
    sget-object p0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_NEWSPAPER:Lcom/amazon/kcp/library/models/BookType;

    goto :goto_0

    .line 29
    :pswitch_3
    sget-object p0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_MAGAZINE:Lcom/amazon/kcp/library/models/BookType;

    goto :goto_0

    .line 28
    :pswitch_4
    sget-object p0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_SAMPLE:Lcom/amazon/kcp/library/models/BookType;

    goto :goto_0

    .line 27
    :pswitch_5
    sget-object p0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK:Lcom/amazon/kcp/library/models/BookType;

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final convertContentTypeToCategory(Lcom/amazon/kindle/krx/content/ContentType;)Ljava/lang/String;
    .locals 1

    const-string v0, "contentType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sget-object v0, Lcom/amazon/kindle/deletecontent/api/DeleteContentApiUtilsKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const-string p0, "KindleUnsupported"

    goto :goto_0

    :cond_0
    const-string p0, "KindleEBookSample"

    goto :goto_0

    :cond_1
    const-string p0, "KindleNewspaper"

    goto :goto_0

    :cond_2
    const-string p0, "KindleMagazine"

    goto :goto_0

    :cond_3
    const-string p0, "KindleEBook"

    goto :goto_0

    :cond_4
    const-string p0, "KindlePDoc"

    :goto_0
    return-object p0
.end method

.method public static final encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "input"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "UTF-8"

    .line 38
    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "URLEncoder.encode(input, \"UTF-8\")"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
