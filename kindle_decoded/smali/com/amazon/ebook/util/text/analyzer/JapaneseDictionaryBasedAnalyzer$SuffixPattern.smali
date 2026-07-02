.class Lcom/amazon/ebook/util/text/analyzer/JapaneseDictionaryBasedAnalyzer$SuffixPattern;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ebook/util/text/analyzer/JapaneseDictionaryBasedAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SuffixPattern"
.end annotation


# instance fields
.field private baseformSuffix:Ljava/lang/String;

.field private suffixes:Ljava/util/Set;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/ebook/util/text/analyzer/JapaneseDictionaryBasedAnalyzer$SuffixPattern;->baseformSuffix:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/ebook/util/text/analyzer/JapaneseDictionaryBasedAnalyzer$SuffixPattern;->suffixes:Ljava/util/Set;

    return-void
.end method
