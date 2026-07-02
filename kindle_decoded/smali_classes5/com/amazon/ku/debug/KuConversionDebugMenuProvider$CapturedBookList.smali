.class Lcom/amazon/ku/debug/KuConversionDebugMenuProvider$CapturedBookList;
.super Ljava/lang/Object;
.source "KuConversionDebugMenuProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ku/debug/KuConversionDebugMenuProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CapturedBookList"
.end annotation


# instance fields
.field private books:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "books"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/ku/data/CapturedBook;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic access$400(Lcom/amazon/ku/debug/KuConversionDebugMenuProvider$CapturedBookList;)Ljava/util/List;
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/amazon/ku/debug/KuConversionDebugMenuProvider$CapturedBookList;->books:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$402(Lcom/amazon/ku/debug/KuConversionDebugMenuProvider$CapturedBookList;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/amazon/ku/debug/KuConversionDebugMenuProvider$CapturedBookList;->books:Ljava/util/List;

    return-object p1
.end method
