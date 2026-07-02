.class public final Lcom/amazon/kindle/krx/content/BookGroupItemImpl;
.super Ljava/lang/Object;
.source "BookGroupImpl.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/content/BookGroupItem;


# instance fields
.field private final _book:Lcom/amazon/kindle/krx/content/IBook;

.field private final _label:Ljava/lang/String;

.field private final _position:F


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;F)V
    .locals 1

    const-string v0, "_book"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_label"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/krx/content/BookGroupItemImpl;->_book:Lcom/amazon/kindle/krx/content/IBook;

    iput-object p2, p0, Lcom/amazon/kindle/krx/content/BookGroupItemImpl;->_label:Ljava/lang/String;

    iput p3, p0, Lcom/amazon/kindle/krx/content/BookGroupItemImpl;->_position:F

    return-void
.end method


# virtual methods
.method public getBook()Lcom/amazon/kindle/krx/content/IBook;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/BookGroupItemImpl;->_book:Lcom/amazon/kindle/krx/content/IBook;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/BookGroupItemImpl;->_label:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()F
    .locals 1

    .line 35
    iget v0, p0, Lcom/amazon/kindle/krx/content/BookGroupItemImpl;->_position:F

    return v0
.end method
