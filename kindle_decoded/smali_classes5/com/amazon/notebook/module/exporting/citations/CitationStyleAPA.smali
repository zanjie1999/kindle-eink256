.class public Lcom/amazon/notebook/module/exporting/citations/CitationStyleAPA;
.super Lcom/amazon/notebook/module/exporting/citations/CitationStyle;
.source "CitationStyleAPA.java"


# static fields
.field private static final CITATION_FORMAT:Ljava/lang/String; = "%s (%s): %s (%s). <i>%s</i> [Kindle Android version]. Retrieved from Amazon.com"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/notebook/module/exporting/citations/CitationStyleAPA;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_AUTHORS_BEFORE_ELLIPSIS:I = 0x7

.field private static final METRICS_NAME:Ljava/lang/String; = "APA"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 99
    new-instance v0, Lcom/amazon/notebook/module/exporting/citations/CitationStyleAPA$1;

    invoke-direct {v0}, Lcom/amazon/notebook/module/exporting/citations/CitationStyleAPA$1;-><init>()V

    sput-object v0, Lcom/amazon/notebook/module/exporting/citations/CitationStyleAPA;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/amazon/notebook/module/exporting/citations/CitationStyle;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/amazon/notebook/module/exporting/citations/CitationStyle;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/amazon/notebook/module/exporting/citations/CitationStyleAPA$1;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/amazon/notebook/module/exporting/citations/CitationStyleAPA;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static formatAuthors(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 65
    invoke-static {p0}, Lcom/amazon/notebook/module/exporting/citations/CitationStyle;->extractAuthorNames(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 67
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/notebook/module/exporting/citations/CitationAuthorName;

    invoke-virtual {v1}, Lcom/amazon/notebook/module/exporting/citations/CitationAuthorName;->getAbbreviatedNameWithComma()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    const/4 v1, 0x1

    .line 71
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    const-string v4, ", "

    if-ge v1, v3, :cond_0

    const/4 v3, 0x6

    if-ge v1, v3, :cond_0

    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/notebook/module/exporting/citations/CitationAuthorName;

    invoke-virtual {v4}, Lcom/amazon/notebook/module/exporting/citations/CitationAuthorName;->getAbbreviatedNameWithComma()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x7

    if-ge v1, v3, :cond_1

    const-string v1, "& "

    goto :goto_1

    :cond_1
    const-string v1, ". . . "

    .line 75
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/notebook/module/exporting/citations/CitationAuthorName;

    invoke-virtual {p0}, Lcom/amazon/notebook/module/exporting/citations/CitationAuthorName;->getAbbreviatedNameWithComma()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string p0, "."

    .line 79
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v2

    if-eq v1, v3, :cond_3

    .line 80
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_4
    const-string p0, ""

    :goto_2
    return-object p0
.end method


# virtual methods
.method public generate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    sget v0, Lcom/amazon/notebook/module/R$string;->notebook_export_citation:I

    invoke-virtual {p5, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p5

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/notebook/module/R$string;->notebook_export_citation_style_apa:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p5, v0, v1

    const/4 p5, 0x1

    aput-object p1, v0, p5

    .line 50
    invoke-static {p3}, Lcom/amazon/notebook/module/exporting/citations/CitationStyleAPA;->formatAuthors(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x2

    aput-object p1, v0, p3

    .line 51
    invoke-static {p4}, Lcom/amazon/notebook/module/exporting/citations/CitationStyle;->extractYear(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x3

    aput-object p1, v0, p3

    const/4 p1, 0x4

    aput-object p2, v0, p1

    const-string p1, "%s (%s): %s (%s). <i>%s</i> [Kindle Android version]. Retrieved from Amazon.com"

    .line 47
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMetricsName()Ljava/lang/String;
    .locals 1

    const-string v0, "APA"

    return-object v0
.end method
