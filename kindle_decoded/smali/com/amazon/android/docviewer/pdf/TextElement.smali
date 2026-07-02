.class public Lcom/amazon/android/docviewer/pdf/TextElement;
.super Ljava/lang/Object;


# instance fields
.field private final bounds:[Lcom/amazon/android/docviewer/pdf/Rectangle;

.field private final kindleIndex:I

.field private final word:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazon/android/docviewer/pdf/Rectangle;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/TextElement;->word:Ljava/lang/String;

    const/4 p1, 0x1

    new-array p1, p1, [Lcom/amazon/android/docviewer/pdf/Rectangle;

    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/TextElement;->bounds:[Lcom/amazon/android/docviewer/pdf/Rectangle;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    iput p3, p0, Lcom/amazon/android/docviewer/pdf/TextElement;->kindleIndex:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Lcom/amazon/android/docviewer/pdf/Rectangle;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/TextElement;->word:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/android/docviewer/pdf/TextElement;->bounds:[Lcom/amazon/android/docviewer/pdf/Rectangle;

    iput p3, p0, Lcom/amazon/android/docviewer/pdf/TextElement;->kindleIndex:I

    return-void
.end method


# virtual methods
.method public getAllBounds()[Lcom/amazon/android/docviewer/pdf/Rectangle;
    .locals 1

    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/TextElement;->bounds:[Lcom/amazon/android/docviewer/pdf/Rectangle;

    return-object v0
.end method

.method public getBounds()Lcom/amazon/android/docviewer/pdf/Rectangle;
    .locals 2

    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/TextElement;->bounds:[Lcom/amazon/android/docviewer/pdf/Rectangle;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getKindleIndex()I
    .locals 1

    iget v0, p0, Lcom/amazon/android/docviewer/pdf/TextElement;->kindleIndex:I

    return v0
.end method

.method public getWord()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/TextElement;->word:Ljava/lang/String;

    return-object v0
.end method
