.class public Lcom/amazon/ebook/util/text/TextListFormat$FormatListType;
.super Lcom/amazon/ebook/util/lang/AbstractEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ebook/util/text/TextListFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FormatListType"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/ebook/util/text/TextListFormat$FormatListType;

    const-string/jumbo v1, "type_default"

    invoke-direct {v0, v1}, Lcom/amazon/ebook/util/text/TextListFormat$FormatListType;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/amazon/ebook/util/text/TextListFormat$FormatListType;

    const-string/jumbo v1, "type_titles"

    invoke-direct {v0, v1}, Lcom/amazon/ebook/util/text/TextListFormat$FormatListType;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/amazon/ebook/util/text/TextListFormat$FormatListType;

    const-string/jumbo v1, "type_and"

    invoke-direct {v0, v1}, Lcom/amazon/ebook/util/text/TextListFormat$FormatListType;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/amazon/ebook/util/text/TextListFormat$FormatListType;

    const-string/jumbo v1, "type_or"

    invoke-direct {v0, v1}, Lcom/amazon/ebook/util/text/TextListFormat$FormatListType;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amazon/ebook/util/lang/AbstractEnum;-><init>(Ljava/lang/String;)V

    return-void
.end method
