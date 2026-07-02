.class public Lcom/amazon/kindle/krx/pluginservices/wordwise/WordWiseGlossEntries;
.super Ljava/lang/Object;
.source "WordWiseGlossEntries.java"


# instance fields
.field private book:Lcom/amazon/kindle/krx/content/IBook;

.field private end:Lcom/amazon/kindle/krx/reader/IPosition;

.field private glossEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/amazon/kindle/krx/pluginservices/wordwise/WordWiseGlossEntry;",
            ">;"
        }
    .end annotation
.end field

.field private start:Lcom/amazon/kindle/krx/reader/IPosition;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/krx/pluginservices/wordwise/WordWiseGlossEntries;->glossEntries:Ljava/util/Map;

    .line 35
    iput-object p1, p0, Lcom/amazon/kindle/krx/pluginservices/wordwise/WordWiseGlossEntries;->start:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 36
    iput-object p2, p0, Lcom/amazon/kindle/krx/pluginservices/wordwise/WordWiseGlossEntries;->end:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 37
    iput-object p3, p0, Lcom/amazon/kindle/krx/pluginservices/wordwise/WordWiseGlossEntries;->book:Lcom/amazon/kindle/krx/content/IBook;

    return-void
.end method


# virtual methods
.method public addEntry(Lcom/amazon/kindle/krx/reader/IPosition;IZ)V
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/amazon/kindle/krx/pluginservices/wordwise/WordWiseGlossEntries;->glossEntries:Ljava/util/Map;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/amazon/kindle/krx/pluginservices/wordwise/WordWiseGlossEntry;

    invoke-direct {v2, p1, p2, p3}, Lcom/amazon/kindle/krx/pluginservices/wordwise/WordWiseGlossEntry;-><init>(Lcom/amazon/kindle/krx/reader/IPosition;IZ)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getGlossEntries()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/amazon/kindle/krx/pluginservices/wordwise/WordWiseGlossEntry;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/amazon/kindle/krx/pluginservices/wordwise/WordWiseGlossEntries;->glossEntries:Ljava/util/Map;

    return-object v0
.end method
