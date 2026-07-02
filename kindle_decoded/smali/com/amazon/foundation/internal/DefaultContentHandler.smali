.class public abstract Lcom/amazon/foundation/internal/DefaultContentHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "DefaultContentHandler.java"


# static fields
.field private static DEBUG_RESPONSE:Z = false

.field private static final ERROR_MESSAGE_NODE:Ljava/lang/String; = "ErrorMessage"

.field private static ERROR_NODES:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final KINDLE_SERVICE_ERROR_NODE:Ljava/lang/String; = "KindleWebServicesError"


# instance fields
.field private debugFirstElement:Ljava/lang/String;

.field private debugResponse:Ljava/lang/StringBuilder;

.field private error:Ljava/lang/String;

.field private errorMessage:Ljava/lang/String;

.field protected hasError:Z

.field private stack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 69
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "FileNotFoundError"

    const-string v2, "DeviceAlreadyRegistered"

    const-string v3, "CredentialsRequired"

    const-string v4, "InvalidAsin"

    const-string v5, "InvalidOrder"

    const-string v6, "InsufficentFunds"

    const-string v7, "UnknownError"

    const-string v8, "UnBuyError"

    const-string v9, "DuplicateDeviceName"

    const-string v10, "InternalError"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/amazon/foundation/internal/DefaultContentHandler;->ERROR_NODES:Ljava/util/Set;

    const/4 v0, 0x0

    .line 89
    sput-boolean v0, Lcom/amazon/foundation/internal/DefaultContentHandler;->DEBUG_RESPONSE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcom/amazon/foundation/internal/DefaultContentHandler;->hasError:Z

    .line 86
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/amazon/foundation/internal/DefaultContentHandler;->stack:Ljava/util/Stack;

    const/4 v0, 0x0

    .line 90
    iput-object v0, p0, Lcom/amazon/foundation/internal/DefaultContentHandler;->debugResponse:Ljava/lang/StringBuilder;

    .line 91
    iput-object v0, p0, Lcom/amazon/foundation/internal/DefaultContentHandler;->debugFirstElement:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/amazon/foundation/internal/DefaultContentHandler;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 161
    sget-boolean v0, Lcom/amazon/foundation/internal/DefaultContentHandler;->DEBUG_RESPONSE:Z

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/amazon/foundation/internal/DefaultContentHandler;->debugResponse:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    if-nez p3, :cond_0

    return-void

    .line 137
    :cond_0
    iget-object p1, p0, Lcom/amazon/foundation/internal/DefaultContentHandler;->stack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 139
    iget-boolean p2, p0, Lcom/amazon/foundation/internal/DefaultContentHandler;->hasError:Z

    if-nez p2, :cond_1

    .line 140
    invoke-virtual {p0, p3, p1}, Lcom/amazon/foundation/internal/DefaultContentHandler;->onElementEnd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p2, "ErrorMessage"

    .line 141
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 142
    iput-object p1, p0, Lcom/amazon/foundation/internal/DefaultContentHandler;->errorMessage:Ljava/lang/String;

    .line 145
    :cond_2
    :goto_0
    sget-boolean p1, Lcom/amazon/foundation/internal/DefaultContentHandler;->DEBUG_RESPONSE:Z

    if-eqz p1, :cond_3

    .line 146
    iget-object p1, p0, Lcom/amazon/foundation/internal/DefaultContentHandler;->debugResponse:Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "</"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ">\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    iget-object p1, p0, Lcom/amazon/foundation/internal/DefaultContentHandler;->debugFirstElement:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 149
    const-class p1, Lcom/amazon/foundation/internal/DefaultContentHandler;

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "DefaultContentHandler Response: \n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/amazon/foundation/internal/DefaultContentHandler;->debugResponse:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 p1, 0x0

    .line 150
    iput-object p1, p0, Lcom/amazon/foundation/internal/DefaultContentHandler;->debugResponse:Ljava/lang/StringBuilder;

    .line 151
    iput-object p1, p0, Lcom/amazon/foundation/internal/DefaultContentHandler;->debugFirstElement:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method public abstract onElementEnd(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onElementStart(Ljava/lang/String;Lorg/xml/sax/Attributes;)V
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    if-nez p3, :cond_0

    return-void

    :cond_0
    const-string p1, "KindleWebServicesError"

    .line 99
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 100
    iput-boolean p1, p0, Lcom/amazon/foundation/internal/DefaultContentHandler;->hasError:Z

    goto :goto_0

    .line 101
    :cond_1
    iget-boolean p1, p0, Lcom/amazon/foundation/internal/DefaultContentHandler;->hasError:Z

    if-nez p1, :cond_2

    .line 102
    invoke-virtual {p0, p3, p4}, Lcom/amazon/foundation/internal/DefaultContentHandler;->onElementStart(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    goto :goto_0

    .line 105
    :cond_2
    sget-object p1, Lcom/amazon/foundation/internal/DefaultContentHandler;->ERROR_NODES:Ljava/util/Set;

    invoke-interface {p1, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 106
    iput-object p3, p0, Lcom/amazon/foundation/internal/DefaultContentHandler;->error:Ljava/lang/String;

    .line 109
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/amazon/foundation/internal/DefaultContentHandler;->stack:Ljava/util/Stack;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-boolean p1, Lcom/amazon/foundation/internal/DefaultContentHandler;->DEBUG_RESPONSE:Z

    if-eqz p1, :cond_6

    .line 112
    iget-object p1, p0, Lcom/amazon/foundation/internal/DefaultContentHandler;->debugFirstElement:Ljava/lang/String;

    const-string p2, "<"

    if-nez p1, :cond_5

    .line 113
    iput-object p3, p0, Lcom/amazon/foundation/internal/DefaultContentHandler;->debugFirstElement:Ljava/lang/String;

    .line 114
    new-instance p1, Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/foundation/internal/DefaultContentHandler;->debugResponse:Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    .line 116
    :goto_1
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result p2

    if-ge p1, p2, :cond_4

    .line 117
    iget-object p2, p0, Lcom/amazon/foundation/internal/DefaultContentHandler;->debugResponse:Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    iget-object p2, p0, Lcom/amazon/foundation/internal/DefaultContentHandler;->debugResponse:Ljava/lang/StringBuilder;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "=\""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    iget-object p2, p0, Lcom/amazon/foundation/internal/DefaultContentHandler;->debugResponse:Ljava/lang/StringBuilder;

    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    iget-object p2, p0, Lcom/amazon/foundation/internal/DefaultContentHandler;->debugResponse:Ljava/lang/StringBuilder;

    const-string p3, "\""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 123
    :cond_4
    iget-object p1, p0, Lcom/amazon/foundation/internal/DefaultContentHandler;->debugResponse:Ljava/lang/StringBuilder;

    const-string p2, ">\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 125
    :cond_5
    iget-object p1, p0, Lcom/amazon/foundation/internal/DefaultContentHandler;->debugResponse:Ljava/lang/StringBuilder;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ">"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    :goto_2
    return-void
.end method
