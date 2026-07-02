.class public Lcom/amazon/notebook/module/exporting/citations/CitationStyleMLA;
.super Lcom/amazon/notebook/module/exporting/citations/CitationStyle;
.source "CitationStyleMLA.java"


# static fields
.field private static final CITATION_FORMAT:Ljava/lang/String; = "%s (%s): %s. <i>%s</i>. %s, %s. Kindle file."

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/notebook/module/exporting/citations/CitationStyleMLA;",
            ">;"
        }
    .end annotation
.end field

.field private static final METRICS_NAME:Ljava/lang/String; = "MLA"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 81
    new-instance v0, Lcom/amazon/notebook/module/exporting/citations/CitationStyleMLA$1;

    invoke-direct {v0}, Lcom/amazon/notebook/module/exporting/citations/CitationStyleMLA$1;-><init>()V

    sput-object v0, Lcom/amazon/notebook/module/exporting/citations/CitationStyleMLA;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/amazon/notebook/module/exporting/citations/CitationStyle;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/amazon/notebook/module/exporting/citations/CitationStyle;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/amazon/notebook/module/exporting/citations/CitationStyleMLA$1;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/amazon/notebook/module/exporting/citations/CitationStyleMLA;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static formatAuthors(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 59
    invoke-static {p0}, Lcom/amazon/notebook/module/exporting/citations/CitationStyle;->extractAuthorNames(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/notebook/module/exporting/citations/CitationAuthorName;

    invoke-virtual {v1}, Lcom/amazon/notebook/module/exporting/citations/CitationAuthorName;->getWholeNameWithComma()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/notebook/module/exporting/citations/CitationAuthorName;

    invoke-virtual {p0}, Lcom/amazon/notebook/module/exporting/citations/CitationAuthorName;->getWholeName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 65
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-le p0, v2, :cond_1

    const-string p0, ", et al"

    .line 66
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public generate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/notebook/module/R$string;->notebook_export_citation:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/amazon/notebook/module/R$string;->notebook_export_citation_style_mla:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p1, v1, v0

    .line 44
    invoke-static {p3}, Lcom/amazon/notebook/module/exporting/citations/CitationStyleMLA;->formatAuthors(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x2

    aput-object p1, v1, p3

    const/4 p1, 0x3

    aput-object p2, v1, p1

    .line 46
    invoke-static {p5}, Lcom/amazon/notebook/module/exporting/citations/CitationStyle;->formatPublisher(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x4

    aput-object p1, v1, p2

    .line 47
    invoke-static {p4}, Lcom/amazon/notebook/module/exporting/citations/CitationStyle;->extractYear(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x5

    aput-object p1, v1, p2

    const-string p1, "%s (%s): %s. <i>%s</i>. %s, %s. Kindle file."

    .line 41
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMetricsName()Ljava/lang/String;
    .locals 1

    const-string v0, "MLA"

    return-object v0
.end method
