.class public Lcom/amazon/ea/util/BookUtil;
.super Ljava/lang/Object;
.source "BookUtil.java"


# direct methods
.method public static getFormattedContentType(Lcom/amazon/kindle/krx/content/ContentType;)Ljava/lang/String;
    .locals 1

    .line 18
    sget-object v0, Lcom/amazon/ea/util/BookUtil$1;->$SwitchMap$com$amazon$kindle$krx$content$ContentType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string p0, "AUDI"

    return-object p0

    :pswitch_1
    const-string p0, "OFFICE_DOC"

    return-object p0

    :pswitch_2
    const-string p0, "PSNL"

    return-object p0

    :pswitch_3
    const-string p0, "PDF"

    return-object p0

    :pswitch_4
    const-string p0, "PDOC"

    return-object p0

    :pswitch_5
    const-string p0, "NWPR"

    return-object p0

    :pswitch_6
    const-string p0, "MAGZ"

    return-object p0

    :pswitch_7
    const-string p0, "EBSP"

    return-object p0

    :pswitch_8
    const-string p0, "EBOK"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
