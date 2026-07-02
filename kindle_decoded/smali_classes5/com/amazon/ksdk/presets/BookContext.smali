.class public final Lcom/amazon/ksdk/presets/BookContext;
.super Ljava/lang/Object;
.source "BookContext.java"


# instance fields
.field final mBookContentType:Lcom/amazon/ksdk/presets/BookContentType;

.field final mBookFlags:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/amazon/ksdk/presets/BookFlag;",
            ">;"
        }
    .end annotation
.end field

.field final mBookFormatType:Lcom/amazon/ksdk/presets/BookFormatType;

.field final mBookLanguage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/ksdk/presets/BookFormatType;Lcom/amazon/ksdk/presets/BookContentType;Ljava/lang/String;Ljava/util/EnumSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/ksdk/presets/BookFormatType;",
            "Lcom/amazon/ksdk/presets/BookContentType;",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet<",
            "Lcom/amazon/ksdk/presets/BookFlag;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/amazon/ksdk/presets/BookContext;->mBookFormatType:Lcom/amazon/ksdk/presets/BookFormatType;

    .line 25
    iput-object p2, p0, Lcom/amazon/ksdk/presets/BookContext;->mBookContentType:Lcom/amazon/ksdk/presets/BookContentType;

    .line 26
    iput-object p3, p0, Lcom/amazon/ksdk/presets/BookContext;->mBookLanguage:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lcom/amazon/ksdk/presets/BookContext;->mBookFlags:Ljava/util/EnumSet;

    return-void
.end method


# virtual methods
.method public getBookContentType()Lcom/amazon/ksdk/presets/BookContentType;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/amazon/ksdk/presets/BookContext;->mBookContentType:Lcom/amazon/ksdk/presets/BookContentType;

    return-object v0
.end method

.method public getBookFlags()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/amazon/ksdk/presets/BookFlag;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/amazon/ksdk/presets/BookContext;->mBookFlags:Ljava/util/EnumSet;

    return-object v0
.end method

.method public getBookFormatType()Lcom/amazon/ksdk/presets/BookFormatType;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/amazon/ksdk/presets/BookContext;->mBookFormatType:Lcom/amazon/ksdk/presets/BookFormatType;

    return-object v0
.end method

.method public getBookLanguage()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/amazon/ksdk/presets/BookContext;->mBookLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BookContext{mBookFormatType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/ksdk/presets/BookContext;->mBookFormatType:Lcom/amazon/ksdk/presets/BookFormatType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",mBookContentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/ksdk/presets/BookContext;->mBookContentType:Lcom/amazon/ksdk/presets/BookContentType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",mBookLanguage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/ksdk/presets/BookContext;->mBookLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mBookFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/ksdk/presets/BookContext;->mBookFlags:Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
