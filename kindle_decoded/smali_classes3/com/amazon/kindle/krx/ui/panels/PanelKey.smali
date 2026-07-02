.class public Lcom/amazon/kindle/krx/ui/panels/PanelKey;
.super Ljava/lang/Object;
.source "PanelKey.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/krx/ui/panels/PanelKey$PanelLocation;
    }
.end annotation


# instance fields
.field private final book:Lcom/amazon/kindle/krx/content/IBook;

.field private final location:Lcom/amazon/kindle/krx/ui/panels/PanelKey$PanelLocation;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/ui/panels/PanelKey$PanelLocation;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p2, p0, Lcom/amazon/kindle/krx/ui/panels/PanelKey;->location:Lcom/amazon/kindle/krx/ui/panels/PanelKey$PanelLocation;

    .line 33
    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/panels/PanelKey;->book:Lcom/amazon/kindle/krx/content/IBook;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 57
    instance-of v0, p1, Lcom/amazon/kindle/krx/ui/panels/PanelKey;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 59
    check-cast p1, Lcom/amazon/kindle/krx/ui/panels/PanelKey;

    .line 60
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/panels/PanelKey;->book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lcom/amazon/kindle/krx/ui/panels/PanelKey;->book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/panels/PanelKey;->location:Lcom/amazon/kindle/krx/ui/panels/PanelKey$PanelLocation;

    iget-object p1, p1, Lcom/amazon/kindle/krx/ui/panels/PanelKey;->location:Lcom/amazon/kindle/krx/ui/panels/PanelKey$PanelLocation;

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getBook()Lcom/amazon/kindle/krx/content/IBook;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/panels/PanelKey;->book:Lcom/amazon/kindle/krx/content/IBook;

    return-object v0
.end method

.method public getLocation()Lcom/amazon/kindle/krx/ui/panels/PanelKey$PanelLocation;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/panels/PanelKey;->location:Lcom/amazon/kindle/krx/ui/panels/PanelKey$PanelLocation;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 69
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/ui/panels/PanelKey;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/kindle/krx/ui/panels/PanelKey;->location:Lcom/amazon/kindle/krx/ui/panels/PanelKey$PanelLocation;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/krx/ui/panels/PanelKey;->book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
