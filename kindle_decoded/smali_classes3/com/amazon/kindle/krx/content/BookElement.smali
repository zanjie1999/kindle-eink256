.class public Lcom/amazon/kindle/krx/content/BookElement;
.super Ljava/lang/Object;
.source "BookElement.java"

# interfaces
.implements Lcom/amazon/kindle/krx/content/IBookElement;


# static fields
.field public static final UNKNOWN_PAGE_ELEMENT_TYPE:I = -0x1


# instance fields
.field private coveringRectangles:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/amazon/kindle/krx/reader/Rectangle;",
            ">;"
        }
    .end annotation
.end field

.field private final end:Lcom/amazon/kindle/krx/reader/IPosition;

.field private final start:Lcom/amazon/kindle/krx/reader/IPosition;

.field private final type:Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Ljava/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;",
            "Lcom/amazon/kindle/krx/reader/IPosition;",
            "Lcom/amazon/kindle/krx/reader/IPosition;",
            "Ljava/util/Vector<",
            "Lcom/amazon/kindle/krx/reader/Rectangle;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/amazon/kindle/krx/content/BookElement;->type:Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;

    .line 24
    iput-object p2, p0, Lcom/amazon/kindle/krx/content/BookElement;->start:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 25
    iput-object p3, p0, Lcom/amazon/kindle/krx/content/BookElement;->end:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 26
    iput-object p4, p0, Lcom/amazon/kindle/krx/content/BookElement;->coveringRectangles:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public getBookElementType()Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/BookElement;->type:Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;

    return-object v0
.end method

.method public getCoveringRectangles()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Lcom/amazon/kindle/krx/reader/Rectangle;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/BookElement;->coveringRectangles:Ljava/util/Vector;

    return-object v0
.end method

.method public getEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/BookElement;->end:Lcom/amazon/kindle/krx/reader/IPosition;

    return-object v0
.end method

.method public getStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/BookElement;->start:Lcom/amazon/kindle/krx/reader/IPosition;

    return-object v0
.end method

.method public toDisplayableString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
