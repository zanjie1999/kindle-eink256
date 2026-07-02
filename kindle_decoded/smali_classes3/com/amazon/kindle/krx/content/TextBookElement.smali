.class public Lcom/amazon/kindle/krx/content/TextBookElement;
.super Lcom/amazon/kindle/krx/content/BookElement;
.source "TextBookElement.java"


# instance fields
.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Ljava/lang/String;Ljava/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;",
            "Lcom/amazon/kindle/krx/reader/IPosition;",
            "Lcom/amazon/kindle/krx/reader/IPosition;",
            "Ljava/lang/String;",
            "Ljava/util/Vector<",
            "Lcom/amazon/kindle/krx/reader/Rectangle;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/amazon/kindle/krx/content/BookElement;-><init>(Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Ljava/util/Vector;)V

    .line 20
    iput-object p4, p0, Lcom/amazon/kindle/krx/content/TextBookElement;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toDisplayableString()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/TextBookElement;->text:Ljava/lang/String;

    return-object v0
.end method
