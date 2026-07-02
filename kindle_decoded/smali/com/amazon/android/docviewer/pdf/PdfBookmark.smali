.class public Lcom/amazon/android/docviewer/pdf/PdfBookmark;
.super Ljava/lang/Object;


# static fields
.field public static final POSITION_UNKNOWN:I = -0x1

.field public static final TITLE_UNKNOWN:Ljava/lang/String; = "Pdf Chapter Unknown"


# instance fields
.field private final children:[Lcom/amazon/android/docviewer/pdf/PdfBookmark;

.field private final position:I

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I[Lcom/amazon/android/docviewer/pdf/PdfBookmark;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfBookmark;->title:Ljava/lang/String;

    iput p2, p0, Lcom/amazon/android/docviewer/pdf/PdfBookmark;->position:I

    iput-object p3, p0, Lcom/amazon/android/docviewer/pdf/PdfBookmark;->children:[Lcom/amazon/android/docviewer/pdf/PdfBookmark;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/amazon/android/docviewer/pdf/PdfBookmark;

    if-nez v1, :cond_1

    return v0

    :cond_1
    check-cast p1, Lcom/amazon/android/docviewer/pdf/PdfBookmark;

    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfBookmark;->title:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v2, p1, Lcom/amazon/android/docviewer/pdf/PdfBookmark;->title:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    :cond_2
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfBookmark;->title:Ljava/lang/String;

    const/4 v2, 0x1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lcom/amazon/android/docviewer/pdf/PdfBookmark;->title:Ljava/lang/String;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    xor-int/2addr v1, v3

    if-eqz v1, :cond_5

    return v0

    :cond_5
    iget v1, p0, Lcom/amazon/android/docviewer/pdf/PdfBookmark;->position:I

    iget p1, p1, Lcom/amazon/android/docviewer/pdf/PdfBookmark;->position:I

    if-eq v1, p1, :cond_6

    return v0

    :cond_6
    return v2
.end method

.method public getChildren()[Lcom/amazon/android/docviewer/pdf/PdfBookmark;
    .locals 1

    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfBookmark;->children:[Lcom/amazon/android/docviewer/pdf/PdfBookmark;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Lcom/amazon/android/docviewer/pdf/PdfBookmark;->position:I

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :cond_0
    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfBookmark;->title:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfBookmark;->title:Ljava/lang/String;

    return-object v0

    :cond_1
    :goto_0
    const-string v0, "Pdf Chapter Unknown"

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfBookmark;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x11

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/amazon/android/docviewer/pdf/PdfBookmark;->position:I

    add-int/2addr v0, v1

    return v0
.end method
