.class public Lcom/amazon/ebook/util/text/LanguageTag$TextDirection;
.super Lcom/amazon/ebook/util/lang/AbstractEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ebook/util/text/LanguageTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextDirection"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/ebook/util/text/LanguageTag$TextDirection;

    const-string v1, "left-to-right"

    invoke-direct {v0, v1}, Lcom/amazon/ebook/util/text/LanguageTag$TextDirection;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/amazon/ebook/util/text/LanguageTag$TextDirection;

    const-string/jumbo v1, "right-to-left"

    invoke-direct {v0, v1}, Lcom/amazon/ebook/util/text/LanguageTag$TextDirection;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amazon/ebook/util/lang/AbstractEnum;-><init>(Ljava/lang/String;)V

    return-void
.end method
